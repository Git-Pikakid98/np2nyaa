# np2nyaa
A hdi file launcher for Neko Project II.. Or more specifically for [Neko Project 21/W](https://github.com/simk98/np21w)

# Why did you make this?
Neko Project II is a well known, open source emulator for the PC-98 by NEC and is considered by many to be the best of the best... So what's the issue?
\
Neko Project II and even it's forks have all included a big issue when it comes to the command line. That being the ability to drag and drop .hdi files is absolutely impossible. Users have to manually open it from within.
\
Versions like the RetroArch core do this automatically, but some may prefer to use the standalone version
\
Which is where np2nyaa comes into play. Please be aware that np2nyaa is NOT a Neko Project II fork and is in fact it's own program, so you WILL require an install of [Neko Project 21/W](https://github.com/simk98/np21w). I have no idea if this works on any other version.

# What does it do?
It writes a config file which [Neko Project 21/W](https://github.com/simk98/np21w) can read in order to boot to a specified file by simply writing your dropped .hdi file to a new config file. It will then run said config file in your install

# How do I run this?
This tool is intended to be ran from a launcher such as Launchbox or Playnite. Simply set your emulator config to the following
\
`"np2nyaa.exe" "{your_preferred_np2_exe}"`
\
I may create a version that just accepts .hdi files later

### <b><u>Building requirements</b></u>

[AutoHotkey v2](https://github.com/AutoHotkey/AutoHotkey/releases)
\
[Ahk2Exe](https://github.com/AutoHotkey/Ahk2Exe/releases)
\
[Upx](https://github.com/upx/upx/releases)

<details>
<summary>If compiling with Compile-in-ator</summary>

###### Use the following environment variables or you WILL encounter errors
`%AHK%` AutoHotkey

</details>
