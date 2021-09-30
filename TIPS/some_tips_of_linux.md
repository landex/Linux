#### Como criar um home

```bash
sudo mkhomedir_helper <USER_NAME>
```

#### POP OS

Acessano a partição criptografada

```bash
sudo cryptsetup luksOpen /dev/path cryptdata
```

```bash
sudo luscan
```

```bash
sudo vgchange -ay
```

Depois disto é só montar a partição

```bash
sudo mount /dev/path /mnt
```
