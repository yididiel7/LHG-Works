# FileType: ".inputrc Sample"
# Author:   "Sr. Yididiel Hills"🐧️
# Date:     "Sun Thu 04 May 2023 14:26:37" 
==========================================


[
// Insert datetime using default format text
  { "keys": ["ctrl+f5", "ctrl+f5"],
    "command": "insert_date" },

// Insert datetime using the specified format
  // Locale date
  { "keys": ["ctrl+f5", "ctrl+d"],
    "command": "insert_date",
    "args": {"format": "%x"} },

  // iso date (YYYY-MM-DD)
  { "keys": ["ctrl+shift+f5", "ctrl+shift+d"],
    "command": "insert_date",
    "args": {"format": "%Y-%m-%d"} },

  // Locale time
  { "keys": ["ctrl+f5", "ctrl+t"],
    "command": "insert_date",
    "args": {"format": "%X"} },

  // iso time (HH:MM:SS)
  { "keys": ["ctrl+shift+f5", "ctrl+shift+t"],
    "command": "insert_date",
    "args": {"format": "%H:%M:%S"} },

  // Locale date and time with timezone name (not for 'local' timezone)
  { "keys": ["ctrl+f5", "ctrl+z"],
    "command": "insert_date",
    "args": {"format": "%c %Z"} },

  // Full iso date and time
  { "keys": ["ctrl+f5", "ctrl+i"],
    "command": "insert_date",
    "args": {"format": "iso"} },

  // Locale date and time converted to UTC (with timezone name)
  { "keys": ["ctrl+f5", "ctrl+u"],
    "command": "insert_date",
    "args": {"format": "%c %Z", "tz_out": "UTC"} },

  // Unix time (seconds since the epoch, in UTC)
  { "keys": ["ctrl+f5", "ctrl+x"],
    "command": "insert_date",
    "args": {"format": "unix"} },

// Prompt for user input ("format" behaves as default text)
// and output timezone, if none provided,
// and then insert the datetime with these parameters
  { "keys": ["alt+f5"],
    "command": "insert_date_prompt" },

// Show the panel with pre-defined options from settings
  { "keys": ["f5"],
    "command": "insert_date_panel" }
]


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
