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


### References

[Configuring Zsh Without Dependencies](https://thevaluable.dev/zsh-install-configure-mouseless/)

[How to Install and Setup Zsh in Ubuntu 20.04](https://www.tecmint.com/install-zsh-in-ubuntu/)
