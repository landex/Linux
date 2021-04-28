# Ubuntu in WSL2

After completed the installation of WSL2 and the configuration of **Windows Terminal**, now we will configure and customize the ***Ubuntu***.

# Update the packages

The first thing that we need make is update the installed packages of your system.

```bash
sudo apt-get update && sudo apt-get upgrade -y
```

# Installing the ZSHELL the best Shell for me

To install the ***Zshell*** run comman below.

```bash
sudo apt install zsh -y
```

Verify the version of ***ZShell*** installed with command below, the expected is return the version **5.8**.

```bash
zsh --version
```

Set up the ***ZShell*** as default **Shell**.

```bash
sudo usermod -s /usr/bin/zsh $(whoami)
```

Now to effective the changes you close and open the terminal, if this window is displayed, the new terminal was set up with default, and now we need make the configurations.


<img align="center" src="https://github.com/landex/Linux/blob/main/UbuntuWSL/images/zshell_start_20210426_235211.png" alt="drawing" width="400"/>


In window above, click button **0** to create an ***.kshrc*** file only, we will configure manually the ***ZShell***.

## ZShell files configuration

### ZShell files

* ***.zshenv*** - Should only contain user’s environment variables.
* ***.zprofile*** - Can be used to execute commands just after logging in.
* ***.zshrc*** - Should be used for the shell configuration and for executing commands.
* ***.zlogin*** - Same purpose than .zprofile, but read just after .zshrc.
* ***.zlogout*** - Can be used to execute commands when a shell exit.

In this moment we will use only ***.zshenv*** and ***.zshrc***.

By default the Zsh will try to find the user’s configuration files in the ***$HOME*** directory. You can change it by setting the environment variable ***$ZDOTDIR***.

To organize, first create a folder in home directory in this case I'll call the ***.zfiles***.

* Home Directory
```bash
pwd
/home/yourusername
```

* Create the folder ***.zfiles***
```bash
mkdir .zfiles
```

* Access the folder created
```bash
cd .zfiles

pwd
/home/yourusername/.zfiles

```

* Now return to ***home*** directory, and create the file called ***.zshenv*** in this case the file must be have this name.

```bash
ls -ltra .zshenv
-rw-r--r-- 1 yourusername yourusername 0 Apr 27 14:33 .zshenv

pwd
/home/yourusername

```

* Now we will configure the ***.zshenv***.

```bash
echo 'export XDG_CONFIG_HOME="$HOME/.zfiles"'                                                 >> .zshenv
echo 'export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"'                                    >> .zshenv
echo 'export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"'                                         >> .zshenv
echo 'export ZDOTDIR="$XDG_CONFIG_HOME/.zfiles"'                                              >> .zshenv
echo 'export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath'                             >> .zshenv
echo 'export HISTSIZE=10000                   # Maximum events for internal history'          >> .zshenv
echo 'export SAVEHIST=10000                   # Maximum events in history file'               >> .zshenv
```

* Copy the ***.zshrc*** to folder mv .zfiles.

```bash
mv .zshrc .zfiles
```

* Syntax Highlight.

Access the ***.zfiles*** and run command below.

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

After download completed run command below to enable syntax highlight, and close and open shell to enable.

```bash
echo 'source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> $ZDOTDIR/.zshrc
```

* Grep with colored results.

```bash
echo "# Alias to Colored Grep" >> $ZDOTDIR/.zshrc
echo "alias grep='grep --color=auto'" >> $ZDOTDIR/.zshrc
echo "alias fgrep='fgrep --color=auto'" >> $ZDOTDIR/.zshrc
echo "alias egrep='egrep --color=auto'" >> $ZDOTDIR/.zshrc
```

## PS1 Variables

What is the PS1!? The PS1 is default interactive prompt (this is the variable most often customized).

The Values to use in PS1.

|Sequence   |Printed                                                         |
|-----------|----------------------------------------------------------------|
| %T	      | System time (HH:MM).                                           |
| %*	      | System time (HH:MM:SS).                                        |
| %D	      | System date (YY-MM-DD).                                        |
| %n	      | Current username.                                              |
| %B - %b	  | Begin - end bold print.                                        |
| %U - %u	  | Begin - end underlining.                                       |
| %d	      | The current working directory.                                 |
| %~	      | The current working directory, relative to the home directory. |
| %M	      | The computer's hostname.                                       |
| %m	      | The computer's hostname (truncated before the first period).   |
| %l	      | The current tty.                                               |

Below my PS1 that I use. You need inform in your ***.kshrc***.

```shell
echo '# The PS1 Variables' >> $ZDOTDIR/.zshrc 
echo 'export PS1="[%n@%m][%~] " ' >> $ZDOTDIR/.zshrc 
```
:rainbow: **Colors and more colors**.... :rainbow:

Other thing that I like is add colors in PS1 output. 

Below have the code of colors to your increment your terminal. And to add **BOLD** and other formatting in your PS1 configuration or in output of commands in terminal.

Below have the list of colors that you can use.



<img align="center" src="https://github.com/landex/MacBook/blob/main/BigSur/BigSur_Images/Screen%20Shot%202020-11-08%20at%2022.05.06.png" alt="drawing" width="450"/>



Example of command to define a colored output in PS1.

```shell
PS1='%B%F{108}YOURUSERNAME%f%b in %F{062}%~%f -> '
```

The output is.



<img align="center" src="https://github.com/landex/MacBook/blob/main/BigSur/BigSur_Images/Screen%20Shot%202020-11-08%20at%2022.22.21.png" alt="drawing" width="450"/>



## References

:point_right: [Zshell Configuration](https://thevaluable.dev/zsh-install-configure-mouseless/)


