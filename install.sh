#!/bin/bash
# Definindo variáveis para as cores e estilos
RESET="\033[0m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"

BOLD="\033[1m"
UNDERLINE="\033[4m"
BLINK="\033[5m"
REVERSE="\033[7m"

sleep 5

printf "${BLINK} Começando o processo de Instalação de dependências!\n"

sleep 2

printf "${RED}\nAtenção !!!\n"

printf "${BLUE}Essa primeira parte requer acompanhamento, "
printf "${RED}não saia daqui.\n"

# Comando termux-change-repo não parece estar correto, talvez você queira algo como:
# termux-change-repo

apt update -y && pkg upgrade -y &> /dev/null/
printf "Atualizando repositórios..."
termux-setup-storage
sleep 2

function Packet_Installer {
    sudo apt-get install git -y &> /dev/null
    printf "${BLUE}\nInstalando Git\n"

    sleep 2
clear
    sudo apt-get install python3 -y &> /dev/null
    printf "${BLUE}\nInstalando Python3\n"

    sleep 2
clear
    sudo apt-get install python3-pip -y &> /dev/null
    printf "${BLUE}\nInstalando Pip\n"

    sleep 2
clear
    sudo apt-get install whois -y &> /dev/null
    printf "${BLUE}\n\nInstalando Whois\n"

    sleep 2
clear
    sudo apt-get install inetutils-traceroute -y &> /dev/null
    printf "${BLUE}\n\nInstalando Traceroute\n"

    sleep 2
clear
    sudo apt-get install php -y &> /dev/null
    printf "${BLUE}\n\nInstalando PHP\n"

    sleep 2
clear
    sudo apt-get install wkhtmltopdf -y &> /dev/null
    printf "${BLUE}\n\nInstalando WKHTMLTOPDF\n"

    sleep 2
clear
    sudo apt-get install snapd -y &> /dev/null
    printf "${BLUE}\n\nInstalando SNAPD\n"

    sleep 2
clear
    sudo snap install ngrok --classic &> /dev/null
    printf "${BLUE}\n\nInstalando Ngrok\n"

    sleep 2
clear
    sudo pip3 install -r requirements.txt &> /dev/null
    printf "${BLUE}\n\nINSTALANDO-PYTHON-REQUIREMENTS...\n"

    sleep 2
clear
    printf "${GREEN}\n\n[+]${WHITE} Dependências instaladas com sucesso!${GREEN} [+]\n"
}

Packet_Installer

function InstalaGits {
    function inicio_Novamente {
        cd /data/data/com.termux/files/home/
    }
    RED="\033[0;31m"
    inicio_Novamente
    git clone https://github.com/Lursy7/Persux.git &> /dev/null
    printf "${RED}\nInstalando Persux\n"
    sleep 2
    clear
    inicio_Novamente
    git clone https://github.com/Lucksi/Mr.Holmes.git &> /dev/null
    printf "${RED}\nInstalando Mr.Holmes\n"
    sleep 2
    clear
    inicio_Novamente
    git clone https://github.com/sherlock-project/sherlock.git Sherlock &> /dev/null
    printf "${RED}\nInstalando Sherlock\n"
    sleep 2
    clear
    inicio_Novamente
    git clone https://github.com/JoseZpt/T-root Root &> /dev/null
    printf "${RED}\nInstalando T-Root\n"
    sleep 2
    clear
    inicio_Novamente
    git clone https://github.com/khansaad1275/Termux-YTD2.0 YTD2 &> /dev/null
    printf "${RED} \nInstalando Termux-YTD2.0\n"
}

InstalaGits
