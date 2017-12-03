yamaha-remote 🔌
===

> english version below

### Description
Script permettant d'allumer un amplificateur de salon Yamaha disposant d'une prise ethernet (fonction network).
Testé avec un amplificateur Yamaha RXV475 et un Raspberry Pi B+ sous Domoticz.

Script composé d'un unique fichier **yamaha-remote.sh** qui permet :

- d'allumer l'amplificateur
- d'éteindre l'amplificateur

### 🚦 Configuration minimale
- interpréteur bash

### 🚀 Utilisation
Il est recommandé de créer le dossier **/home/pi/script_bm** pour y stocker le script. Ce script ne nécessite pas de droits root.

```
chmod +x yamaha-remote.sh
./yamaha-remote.sh <ON|OFF>
```

### 🇺🇸 English version

### [EN] Description
Script to start oor shutdown a Yamaha amplifier connected with ethernet (network function).
Tested on Yamaha RXV475 amplifier with Raspberry Pi B + under Domoticz.

The script works with the single file **yamaha-remote.sh** which allows for :

- Turn ON the amplifier
- Turn OFF the amplifier

### [EN] 🚦 Requirements
- bash interpreter

### [EN] 🚀 Usage
It is recommended to create the directory **/home/pi/script_bm** and put the script inside. Does not require root permissions.

```
chmod +x yamaha-remote.sh
./yamaha-remote.sh <ON|OFF>
```