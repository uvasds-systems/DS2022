#!/bin/bash


clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " NOUN1
read -p "2. Name a place: " NOUN2
read -p "3. Name your favorite color: " ADJECTIVE1
read -p "4. Name a celebrity: " NOUN3
read -p "5. Name an action you regularly do: " VERB1
read -p "6. Describe how someone might walk into a room. " ADVERB1
read -p "7. Name a body part: " NOUN4
read -p "8. A word that describes your personality " ADJECTIVE2

echo “Once upon a time, I watched the dumbest sport alive, $NOUN1, in $NOUN2.”
echo “The better team wore the color $ADJECTIVE1 while the stupid one wore a greenish brown.”
echo “The coach of the stupid team was named Coach $NOUN3 and during the whole entire game, they $VERB1 across the field.”
echo “At the end of the game, the brown team won and walked $ADVERB1 off the field.
echo “Coach $NOUN3 was sitting on the ground, and nobody saw them, so they ended up breaking their $NOUN4.
echo “The players made a $ADJECTIVE2 face and called 911.”
echo “The end.” 
