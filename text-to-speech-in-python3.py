#!/usr/bin/env python3
"""python3
pyttsx3 is a Python library that allows you to convert text to speech using text-to-speech engines. Here's a simple example to get you started:
Install the pyttsx3 library: $ sudo pacman -S python-pyttsx3 
"""

import pyttsx3

# Initialize the text-to-speech engine
engine = pyttsx3.init()

# Set properties (optional)
engine.setProperty('rate', 150)  # Speed of speech
engine.setProperty('volume', 1.0)  # Volume level (0.0 to 1.0)

# Get input from the user
text_to_speak = input("Enter the text you want to convert to speech: ")

# Convert text to speech
engine.say(text_to_speak)

# Wait for the speech to finish
engine.runAndWait()
