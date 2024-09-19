#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusal sport: " NOUN1
read -p "2. A fun verb: " VERB1
read -p "3. What's your favorite animal: " NOUN2
read -p "4. A strange adverb: " ADVERB1
read -p "5. A famous person: " NAME1
read -p "6. Your favorite adjective: " ADJ1
read -p "7. A random place: " PLACE1
read -p "8. Another adjective: " ADJ2

clear
sleep 3

echo "Once upon a time a $ADJ2 $NOUN2 was found playing $NOUN1.
Upon further inspection, the $NOUN2 was actually $NAME1!
After seeing this, you decide to go to the $PLACE1 to clear
your head. However, at the $PLACE1 you run into an actual
$NOUN2 who appeared to be $VERB1 $ADVERB1. What a day!" 
