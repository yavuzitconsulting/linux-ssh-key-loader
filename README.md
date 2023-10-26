# linux-ssh-key-loader
A Bash script that automatically loads SSH keys into the ssh agent

If you have a large directory full of different SSH-Keys with all possible formats and variations, this makes your life easier.
The script detects SSH keys that start with "-----BEGIN OPENSSH PRIVATE KEY-----"
then it loads them into the ssh agent, and prompts for the password if necessary.

It does this for all files in the directory that the script is in.

So just pop this script into your ssh-keys directory and run it, easy as that.