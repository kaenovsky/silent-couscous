# silent-couscous

When using [AzuraCast](https://www.azuracast.com/) for a radio web server, you may notice that after one song ends and the next one starts, a few seconds of delay due to fade in and fade out effects are automatically applied to the file. This is mostly annoying with short audio files. 

This bash script will help you to add 3 seconds of silence at the beginning and at the end of every file within a directory using `sox` for audio manipulation.

# steps to use

1. Install sox if you haven't. For Debian based distros:

```sh
sudo apt install sox
```

For other Linux distros, macOS or Windows, check out [sox documentation](https://sox.sourceforge.net/).

2. Go to your directory where all the .wav files are located:

```sh
cd myWavFilesDir
```

3. Get this script with git:

```sh
git clone git@github.com:kaenovsky/silent-couscous.git
```

If you don't have ssh you can use `git clone https://github.com/kaenovsky/silent-couscous.git` or just create an empty .sh file and copy the few lines of code, save and go to step 4.

4. Give the file execution permission:

```sh
sudo chmod +x silent-couscous/silent-sec.sh
```

5. Run the file within the directory:

```sh
bash silent-couscous/silent-sec.sh
```

> This assumes you have cloned the git repo and you have this 'silent-couscous' directory which is the repo's name. 
> If you have just paste the code and into a file and that's located in the same directory, don't use the folder just run the file.

Wait a few seconds, especially if there are a lot of files (you probabaly should test this with few files first).
Now all your files should have 3 seconds of silent extra at beginning and end. You can change the amount of seconds to your need.