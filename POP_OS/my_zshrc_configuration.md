## This is my configuration of zshrc in POP OS 21.

The first step is install ***zsh***.

```bash
sudo apt install zsh
```

Set up the ***zsh*** with default *Shell*.

```bash
chsh -s $(which zsh) 
```

Restart you machine, and open the terminal again, the window below will be displayed. Select option 0 to system create an empty file in your home directory.


<img align="center" src="https://github.com/landex/Linux/blob/main/POP_OS/Images/Screenshot%20from%202021-07-23%2010-47-11.png" alt="drawing" width="400"/>


```bash

pop-os% ls -ltra .zshrc
-rw-rw-r-- 1 yourusername yourusername 29 jul 22 03:09 .zshrc
pop-os% pwd
/home/yourusername
pop-os% 

```

ZSH config files

* ***.zshenv*** - Should only contain user’s environment variables.
* ***.zprofile*** - Can be used to execute commands just after logging in.
* ***.zshrc*** - Should be used for the shell configuration and for executing commands.
* ***.zlogin*** - Same purpose than ***.zprofile***, but read just after ***.zshrc***.
* ***.zlogout*** - Can be used to execute commands when a shell exit.

We will create a folder to organize your configuration files, but the file ***.zshenv*** must be continue in your home directory. See below.

* Folder created with files that we will use.

```bash
pop-os% pwd
/home/landileite/.zsh
pop-os% 
```

```bash
pop-os% ls -ltra
total 4
-rw-rw-r-- 1 yourusername yourusername  29 jul 22 03:09 .zshrc
-rw-rw-r-- 1 yourusername yourusername   0 jul 23 10:57 .zprofile
-rw-rw-r-- 1 yourusername yourusername   0 jul 23 10:57 .zlogin
-rw-rw-r-- 1 yourusername yourusername   0 jul 23 10:57 .zlogout
pop-os% pwd
/home/landileite/.zsh
pop-os% 

```

* ***zshenv*** file in your home directory

```bash
pop-os% pwd
/home/yourusername
pop-os% touch .zshenv
pop-os% ls -ltra .zshenv 
-rw-rw-r-- 1 yourusername yourusername 0 jul 23 10:59 .zshenv
pop-os% 

```

No we will configure our ***.zshenv*** file.

In our home directory run commands below.

```bash
echo '# ZSH configurations ti define the $ZDOTDIR' >> .zshenv
echo 'export XDG_CONFIG_HOME="$HOME/..zsh"' >> .zshenv
echo 'export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"' >> .zshenv 
echo 'export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"' >> .zshenv 
echo 'export ZDOTDIR="$XDG_CONFIG_HOME"' >> .zshenv
```



### References

[Configuring Zsh Without Dependencies](https://thevaluable.dev/zsh-install-configure-mouseless/)

[How to Install and Setup Zsh in Ubuntu 20.04](https://www.tecmint.com/install-zsh-in-ubuntu/)

[XDG Base Directory](https://wiki.archlinux.org/title/XDG_Base_Directory)
