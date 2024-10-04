#!/opt/anaconda3/bin/python3

import os
import json
import requests

GHUSER = os.getenv('ziyajasani')

url = "https://api.github.com/users/{0}/events'.format(GUSER)

r = json.loads(requests.get(url).text)

for x in r[:5]:
  event = x['type'] + ' :: ' + x['repo']['name']
  print(event)

print(r)
