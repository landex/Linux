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


Follow the configuration that will be displayed in window. Fell Free.

* Home Directory

```bash
pwd
/home/yourusername
```

* Let's insert some settings in our ***.zshrc*** file.

```bash
DESKTOP-KCKTG5J% ls -ltra .zshrc
-rw-r--r-- 1 yourusername yourusername 330 May 16 11:08 .zshrc
DESKTOP-KCKTG5J%
```

* Syntax Highlight.

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

To void the possible change to delete the folder, we will hidden the folder run command below, to hidden the folde.

```bash
DESKTOP-KCKTG5J% mv zsh-syntax-highlighting .zsh-syntax-highlighting
```

After download completed run command below to enable syntax highlight, and close and open shell to enable.

```bash
echo " #Inster the syntax highlighting configuration" >> ~/.zshrc
echo 'source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
```

* Grep with colored results.

```bash
echo "# Alias to Colored Grep" >> ~/.zshrc
echo "alias grep='grep --color=auto'" >> ~/.zshrc
echo "alias fgrep='fgrep --color=auto'" >> ~/.zshrc
echo "alias egrep='egrep --color=auto'" >> ~/.zshrc
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

:point_right: [Move to Zshell](https://scriptingosx.com/2019/11/new-book-release-day-moving-to-zsh/)


