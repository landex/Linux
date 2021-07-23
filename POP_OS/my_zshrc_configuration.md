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
echo '# The ZSH configurations to define the $ZDOTDIR' >> .zshenv
echo 'export XDG_CONFIG_HOME="$HOME/..zsh"' >> .zshenv
echo 'export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"' >> .zshenv 
echo 'export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"' >> .zshenv 
echo 'export ZDOTDIR="$XDG_CONFIG_HOME"' >> .zshenv
```

After this close and reopen your terminal and run commando below to testing configuration.

```bash
pop-os% echo $ZDOTDIR
/home/yourusername/.zsh
pop-os% 
```

Add history configuration in your ***.zshenv*** file.

```bash
echo '' >> .zshenv
echo '' >> .zshenv
echo '# The history configuration' >> .zshenv
echo 'export HISTFILE="$ZDOTDIR/.zsh_history"     # History filepath' >> .zshenv 
echo 'export HISTSIZE=10000                   # Maximum events for internal history' >> .zshenv
echo 'export SAVEHIST=10000                   # Maximum events in history file' >> .zshenv 
```

To testing the changes close and open terminal see that your history file is created.

```bash
pop-os% pwd
/home/yourusername/.zsh
pop-os% ls -ltra .zsh_history 
-rw------- 1 yourusername yourusername 25 jul 23 11:18 .zsh_history
pop-os% 
```

Syntax Highlighting

* To enable the syntax highlighting in your ***.zsh*** directory run command of **git** below.

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

* Run commands below to add in your ***.zshrc***

```bash
echo '# To enable the syntax highlighting' >> $ZDOTDIR/.zshrc
echo 'source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> $ZDOTDIR/.zshrc
```

# .ZSHRC

Now we will add some configuration to customize your interactive shell in this case the ***Z Shell***.

This is our current ***.zshrc*** file.

```bash
pop-os% cat .zshrc
# Created by newuser for 5.8
# To enable the syntax highlighting
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
pop-os% 
```

some useful aliases

* Colored ls and grep

```bash
echo "" >> $ZDOTDIR/.zshrc
echo "# My aliases" >> $ZDOTDIR/.zshrc
echo "# LS Aliases" >> $ZDOTDIR/.zshrc
echo "alias ls='ls --color=auto'" >> $ZDOTDIR/.zshrc
echo "" >> $ZDOTDIR/.zshrc
echo "# GREP Aliases" >> $ZDOTDIR/.zshrc
echo "alias grep='grep --color=auto'" >> $ZDOTDIR/.zshrc
echo "alias fgrep='fgrep --color=auto'" >> $ZDOTDIR/.zshrc
echo "alias egrep='egrep --color=auto'" >> $ZDOTDIR/.zshrc
```

* Files Manipulations

These alias help our during copy, move and delete files.

```bash
echo "" >> $ZDOTDIR/.zshrc
echo "# To confirm before overriting something" >> $ZDOTDIR/.zshrc
echo "alias cp='cp -i'" >> $ZDOTDIR/.zshrc
echo "alias mv='mv -i'" >> $ZDOTDIR/.zshrc
echo "alias rm='rm -i'" >> $ZDOTDIR/.zshrc
```

* Customize your PS1 and PS2  

The Values to use in PS1.

|Sequence  |Printed                                                         |
|----------|----------------------------------------------------------------|
| %T	      | System time (HH:MM).                                           |
| %*	      | System time (HH:MM:SS).                                        |
| %D	      | System date (YY-MM-DD).                                        |
| %n	      | Current username.                                              |
| %B - %b	 | Begin - end bold print.                                        |
| %U - %u	 | Begin - end underlining.                                       |
| %d	      | The current working directory.                                 |
| %~	      | The current working directory, relative to the home directory. |
| %M	      | The computer's hostname.                                       |
| %m	      | The computer's hostname (truncated before the first period).   |
| %l	      | The current tty.                                               |

Below have the list of colors that you can use.



<img align="center" src="https://github.com/landex/MacBook/blob/main/BigSur/BigSur_Images/Screen%20Shot%202020-11-08%20at%2022.05.06.png" alt="drawing" width="450"/>



Example of command to define a colored output in PS1.

Add configuration

```bash
echo '# My PS1 configuration' >> $ZDOTDIR/.zshrc
echo "export PS1='%B%F{108}YOURUSERNAME%f%b in %F{062}%~%f -> '" >> $ZDOTDIR/.zshrc
```

The output is.



<img align="center" src="https://github.com/landex/MacBook/blob/main/BigSur/BigSur_Images/Screen%20Shot%202020-11-08%20at%2022.22.21.png" alt="drawing" width="450"/>



### References

[Configuring Zsh Without Dependencies](https://thevaluable.dev/zsh-install-configure-mouseless/)

[How to Install and Setup Zsh in Ubuntu 20.04](https://www.tecmint.com/install-zsh-in-ubuntu/)

[XDG Base Directory](https://wiki.archlinux.org/title/XDG_Base_Directory)

[Derek Taylor dotfiles](https://gitlab.com/dwt1/dotfiles)

[Zsh/Guide](https://wiki.gentoo.org/wiki/Zsh/Guide)
