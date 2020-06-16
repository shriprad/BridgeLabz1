#!/bin/bash -x

declare -A sounds

sounds[dog]="bark"
sounds[cow]="mooh"
sounds[bird]="tweet"
sounds[wolf]="howl"


echo "Dog Sound" ${sounds[dog]}

echo "Animals Sound" ${sounds[@]}

echo "ALl animals" ${!sounds[@]}
