## Meu Guia de instalação do POP OS 21.04

Para instalação do POP OS 21.04 + BTRFS eu uso o guia do Willi Mutschler no seguinte site [Pop!_OS 21.04: installation guide with btrfs-LVM-luks and auto-apt snapshots with Timeshift](https://mutschler.eu/linux/install-guides/pop-os-btrfs-21-04/).

### Os proximos passos

*  ***Instalando o Chrome:*** para instalar o Chrome basta realizar o download da propria página [Download Chrome](https://www.google.com/chrome/?brand=BNSD&gclid=EAIaIQobChMIg-qt_-ai8wIVDgaRCh02qQ1LEAAYASAAEgIGePD_BwE&gclsrc=aw.ds)

* ***Gnome Tweaks:*** um grande utilitário para podermos configurar fonte e temas do Gnome.

```bash
sudo apt install gnome-tweak-tool 
```
Depois de instalado configuro as seguintes coisas.
Aumento a fonte, para uma melhor visualização, não sei porque mas em telas full hd o texto fica muito pequeno. Abaixo tem o print de como deixo a configuração.



<img align="center" src="https://github.com/landex/Linux/blob/main/POP_OS_21_04/IMAGES/Screenshot%20from%202021-09-28%2020-24-54.png" alt="drawing" width="400"/>



* Fira Code

Depois que conheci, sempre instalo essa fonte, acho ela a melhor...

```bash
sudo apt install fonts-firacode
```

* Video VLC e alguns codecs para assistir videos no laptop.

***VLC***
```bash
sudo apt install -y vlc
```
***Codecs***
```bash
sudo apt install -y libavcodec-extra libdvd-pkg; sudo dpkg-reconfigure libdvd-pkg
```

* Definindo um hostname melhor
```bash
hostnamectl set-hostname machine
```
* Instalando o ***vim***
O *vim* é um excelente editor, para aquelas horas que você só quer editar um arquivo rápido de configurações. Por default ele já vem instalado nas distros **Linux**, mas gosto de instalar o ***vim***
```bash
sudo apt install -y vim
```

Depois de instalado o ***vim*** vamos criar um arquivo de configuração, para salvar algumas preferências do ***vim***.

Em nosso diretório home, vamos criar o arquivo ***.vimrc***.
```bash
/home/yourusername
```
Ficando desta forma.
```bash
/home/yourusername
yourusername@machine:~$ ls -ltra .vimrc 
-rw-rw-r-- 1 yourusername yourusername 0 set 29 08:23 .vimrc
```
Ao lado temos o arquivo que utilizo, [.vimrc](https://github.com/landex/Linux/blob/main/POP_OS_21_04/FILE/vimrc).

* VSCODE

Depois do ***VIM*** vamos instalar o ***VSCODE*** que é um dos melhores editores de texto do mundo, ou praticamente uma IDE.

Adicione os repositório e realize a instalação.
```bash
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
```

Aqui temos o arquivo de configuração que utilizo, [VSCODE settings.json](https://github.com/landex/Linux/blob/main/POP_OS_21_04/FILE/settings.json)


* RUBY 3

Uma das linguagens mais utilizadas em automação de testes, com isso vou mostrar o passso de como instalar.

Faça o download, pode ser na pasta de downloads.

```bash
wget https://cache.ruby-lang.org/pub/ruby/3.0/ruby-3.0.2.tar.gz
```

Descompacte o arquivo
```bash
tar -xf ruby-3.0.2.tar.gz
```

Acesse a pasta e execute o comando abaixo.
```bash
/home/yourusername/Downloads/ruby-3.0.2
./configure --enable-optimizations
```

Iniciando o build
```bash
make -j 2
```
Instalando
```bash
sudo make install
```

* Otimizando o uso da bateria

```bash
sudo apt install -y tlp tlp-rdw
``` 

Depois de instalado execute o comando abaixo e sem seguida faça o reboot
```bash
sudo tlp start
```

Depois do reboot veja se está rodando.
```bash
sudo systemctl status tlp.service
```



### Referências

[Instalação do POP OS 21.04](https://mutschler.eu/linux/install-guides/pop-os-btrfs-21-04/)

[Download do Chrome](https://www.google.com/chrome/?brand=BNSD&gclid=EAIaIQobChMIg-qt_-ai8wIVDgaRCh02qQ1LEAAYASAAEgIGePD_BwE&gclsrc=aw.ds)

[Coisas para Fazer depois de Instalar o Ubuntu](https://mutschler.eu/linux/install-guides/ubuntu-post-install/)

[VSCode no POP OS](https://www.codegrepper.com/code-examples/shell/how+to+install+vs+code+in+pop+os)

[FiraCode](https://dev.to/josuerodriguez98/installing-firacode-on-windows-and-ubuntu-1fn1)

