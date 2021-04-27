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
DESKTOP-KL90B82% pwd
/home/yourusername
```

* Create the folder ***.zfiles***
```bash
DESKTOP-KL90B82% mkdir .zfiles
```

* Access the folder created
```bash
DESKTOP-KL90B82% cd .zfiles
DESKTOP-KL90B82% pwd
/home/yourusername/.zfiles
DESKTOP-KL90B82%
```
