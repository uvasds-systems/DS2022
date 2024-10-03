# Lab 3: Basic Scripting

Follow the steps below for practice with writing scripts. There are three scripts you will develop in this lab - two in `bash` and one in `python3`. Commit all three to your forked copy of the course repository, and paste the containing folder's GitHub URL into Canvas for submission.

## 1. Write a `bash` Mad-Lib

> A Mad Lib is a word game where players fill in the blanks of a story with words to create a humorous story. 

1. Create a new file `madlib.sh` and edit it using `nano`:

2. Add a `bash` "shebang" line to the first line of your file.

3. Two lines below, clear the screen and add an introduction to the user:

    ```bash
    clear
    echo "Let's build a mad-lib!"
    ```

4. Next, start the logic of your script. Use the format below for collecting at least eight (8) variables through separate prompts to the user. Each should have a different prompt and a different variable name. You may want to use ALL CAPS for variables simply for visibility while programming:

    ```bash
    read -p "1. Name an unusual sport: " NOUN1
    ```

5. Repeat more `read` lines to gather nouns, verbs, adjectives, and adverbs totaling at least eight. (More are fine!)

6. Next, use one or more `echo` commands to tell a story using all the words you have collected. Think of this as a "Once upon a time ..." story, or a "And then ..." story. There are plenty of examples online. Your code should gather user input and then tell the story using those inputs.

7. Save your file. `chmod` it appropriately and test it. Debug as needed.

8. The file you add, commit, and push should execute flawlessly. 

## 2. Convert a TSV file bundle

This multi-step `bash` script should retrieve a tar compressed archive from a remote web address, convert its filetype, remove blank lines, and re-compress into an archive.

1. Create a script `convert-bundle.sh` and add a shebang.

2. Using `curl` or `wget` fetch this tarball:

    ```
    https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
    ```

3. Decompress / open the compressed archive using `tar`.

4. Remove any empty rows from the dataset. To do this, use ONE of these two commands:

    ```
    # awk can remove spaces
    awk '!/^[[:space:]]*$/' myfile.tsv

    # tr can remove spaces
    cat myfile.tsv | tr -s '\n' > my_new_file.tsv
    ```

5. Convert the tab-separated file into a comma-separated file format. See [**this page**](../class/scripts/convert-tsv-to-csv.sh) for three methods.

6. Next, add a line of code to count how many lines of data remain in the data file. Remember that Row 1 contains headers, so it should not be counted. Another line should echo that value to the screen.

7. Finally, the script should create a new tarball named `converted-archive.tar.gz` containing the cleaned CSV file.

8. Use `chmod` to make your script executable, and run it. Make sure no errors occur.


## 3. Use Python to fetch remote data

For this script you will need Python3 installed on your local system.

Python3 should be available in your path. Use `which python3` to find the path. That path should be something like `/usr/bin/python3`

You will also need to install the `requests` library for Python. To do this, run this command:

```
python3 -m pip install requests

# or

pip install requests
```

1. Create a new script called `github-events.py` and open it in an editor.

2. Put your Python3 path in a shebang line. Use the command below to find your `PATH` to python:

    ```
    which python3
    ```

3. For this script you will need to set an environment variable in your `bash` shell. Edit your `~/.bashrc` file and export a new `var` named `GITHUB_USER`. Give it the value of your own GitHub username.

    ```
    export GITHUB_USER="nmagee"
    ```

    After you add this line, run the command `source ~/.bashrc` to load this new value into your environment.
   
4.  Back to your Python script. In order to work with `env` variables and remote APIs you need three imports:

    ```python3
    import os
    import json
    import requests
    ```
    To retrieve the value of an environment variable in Python, use this syntax:

    ```
    GHUSER = os.getenv('GITHUB_USER')
    ```

    You can test that this works by using Python interactively. Load your imports and execute that line, and you should be able to `print(GHUSER)` to get your username.

5. Next, we will use this variable to fetch the recent activity for this user account (you!) in GitHub. First let's configure the remote endpoint to get that information. The format for that API address is:

    ```
    https://api.github.com/users/USERNAME/events
    ```

    To dynamically insert your GITHUB_USER name into this URL, define a `url` variable like this:

    ```
    url = 'https://api.github.com/users/{0}/events'.format(GHUSER)
    ```

    You will know if this is formatted correctly if you `print(url)` within Python and see a well-formed address.

6. Use this address to fetch your recent GitHub activity with the `requests` library. We will load the response back from the API into a variable, and loop through the first five responses:

    ```
    r = json.loads(requests.get(url).text)

    for x in r[:5]:
      event = x['type'] + ' :: ' + x['repo']['name']
      print(event)
    ```

    Take a moment to `print(r)` and view all the results. You can also do this by opening the fully-formatted URL above in a web browser. Note the variety of data available around your work in GitHub. 

    Much more information on the [**GitHub API is available**](https://docs.github.com/en/rest?apiVersion=2022-11-28). 

7. Use `chmod` to make your script executable, and run it. Make sure no errors occur.
   

## Submit your work

You created three separate scripts for this lab. Add/commit/push them to your fork of the DS2022 repository, in a folder `my-work/lab3`. Submit the GitHub URL to that directory within Canvas.

