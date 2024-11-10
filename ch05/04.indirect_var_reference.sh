#!/bin/bash
animal="cat"
cat="meow"
dog="bark"
env=production
production_db='prod_db'
development_db='dev_db'

# Indirect reference to get the sound
sound_var="animal"

# Get the sound of the animal
echo ${!sound_var} 
echo ${!env}_db
