#!/bin/bash

clear
echo "Let's build a mad-lib!"

#prompts
read -p "1. Name of a UVA professor: " NAME1
read -p "2. Name a verb: " VERB2
read -p "3. Name a building on Grounds: " PLACE3
read -p "4. Name an emotion: " EMOTE4
read -p "5. Name another building on Grounds: " PLACE5
read -p "6. Name a quantity greater than one: " QUANT6
read -p "7. Name a food (plural): " FOOD7
read -p "8. Name an unusual activity: " ACT8
read -p "9. Name a celebrity: " CELEB9

#composing the mad lib
echo "One day, $NAME1 was $VERB2 in $PLACE3."
echo "They suddenly felt $EMOTE4, so they decided to go to $PLACE5."
echo "There, they ate $QUANT6 $FOOD7 with Jim Ryan."
echo "The two decided to start a $ACT8 club."
echo "The club became so popular that $CELEB9 even joined!"
