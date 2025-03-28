#!/bin/bash
[ "$1" = "s" ] && [xhost >& /dev/null] && startx && exit
[ "$1" = "s" ] && clear && exit
STATUS="$(java -jar ~/.mas/verifile2.jar || echo 'FAILED')"
if [ "$STATUS" = "FAILED" ]; then echo "Püsivuskontrolli käivitamine nurjus. Skript peatati ohutuse tagamiseks."; exit; fi
if [ "$STATUS" = "FOREIGN" ]; then echo "See seade ei vasta Markuse arvuti asjade standarditele. Skript peatati ohutuse tagamiseks."; exit; fi
if [ "$STATUS" = "TAMPERED" ]; then echo "Väljaande faili on volitamata muudetud! Skript peatati ohutuse tagamiseks."; exit; fi
    cleanup() {
        clear
        fastfetch -c screenfetch -l ~/.mas/mas_incons/mas_general.png --logo-width 32
        echo "Kirjutage \"m\", et avada Markuse asjade käsurea töövahendid"
        tput cnorm
    }
    trap cleanup EXIT
    tput civis
    E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "+//0-033")
    SESSION_TYPE="$(loginctl show-session $(awk '/tty/ {print $1}' <(loginctl)) -p Type | awk -F= '{print $2}')"
    BASE_DISTRO="$(cat /etc/os-release | grep "ID_LIKE" | cut -d = -f 2 | tr -d '\"')"
    COLOR="40"
    function SESSION_TOOLS() {
        if xhost >& /dev/null ; then
            pkill -kill -u $USER
        else
            startx
        fi
    }

    function MAS_TOOLS() {
        MLM=4
        i=0;
        TPUT 3 7
        $E " Markuse arvuti juhtpaneel"
        echo
        echo
        echo " Markuse arvuti asjade haldamine."
        echo
        MA0(){ TPUT 6 2; $E " Taaskäivita Markuse asjad                                "; TPUT 1 1;}
        MA1(){ TPUT 7 2; $E " Markuse asjad teave                                      "; TPUT 1 1;}
        MA2(){ TPUT 8 2; $E " Markuse mälupulk                                         "; TPUT 1 1;}
        MA3(){ TPUT 9 2; $E " Taaskäivita töölaud (KDE Plasma)                          "; TPUT 1 1;}
        MA4(){ TPUT 10 2; $E " Tagasi                                                   "; TPUT 1 1;}
        FOOT
        MASHEAD() { TPUT 3 7; $E " Markuse arvuti juhtpaneel"; }
        MASMENU(){ for each in $(seq 0 $MLM);do MA${each};done;}
        MASMENU
        MASINIT(){ BLUE;MASHEAD;FOOT;MASMENU;}
        SCB(){ REFRESHB;MARK;$S;cur=`ARROW`;}
        REFRESHB(){ after=$((i+1)); before=$((i-1))
                    if [[ $before -lt 0  ]];then before=$MLM;fi
                    if [[ $after -gt $MLM ]];then after=0;fi
                    if [[ $j -lt $i      ]];then UNMARK;MA$before;else UNMARK;fi
                    if [[ $after -eq 0   ]] || [[ $before -eq $MLM ]];then
                    UNMARK; MA$before; MA$after;fi;j=$i;UNMARK;MA$before;MA$after;DRAWLOGO;}
        while [[ "$O" != " " ]]; do case $i in
            0) S=MA0;SCB;if [[ $cur = "" ]];then C;MAS_EXEC "0";$b;MASINIT;fi;;
            1) S=MA1;SCB;if [[ $cur = "" ]];then C;MAS_EXEC "1";$b;MASINIT;fi;;
            2) S=MA2;SCB;if [[ $cur = "" ]];then C;MAS_EXEC "2";$b;MASINIT;fi;;
            3) S=MA3;SCB;if [[ $cur = "" ]];then C;MAS_EXEC "3";$b;MASINIT;fi;;
            4) S=MA4;SCB;if [[ $cur = "" ]];then C;i=0;return;$b;MASINIT;fi;;
        esac;POSITION;done
    }

    function MAS_EXEC() {
        if [ "$1" = "1" ]; then
            EFILE="/home/$USER/.mas/edition.txt"
            TPUT 1 1
            DRAWLOGO
            TPUT 3 8
            echo "Markuse asjad teave"
            echo
            echo
            echo "* Versiooni info *"
            echo
            echo "Nimi: $(head -11 $EFILE | tail -1)"
            echo "Väljaanne: $(head -2 $EFILE | tail -1)"
            echo "Versioon: $(head -3 $EFILE | tail -1)"
            echo "Järk: $(head -4 $EFILE | tail -1)"
            echo
            echo "* Juurutamise info *"
            echo
            echo "Juurutatud: $(head -5 $EFILE | tail -1)"
            echo "Kasutajanimi: $(head -6 $EFILE | tail -1)"
            echo "Keel: $(head -7 $EFILE | tail -1)"
            echo "Windowsi versioon: $(head -8 $EFILE | tail -1)"
            echo "Verifile 3.0 olek: $STATUS"
            pushd /internal_storage > /dev/null
            for f in *; do
                if [ -d "$f" ]; then
                file="/internal_storage/$f/mas/edition.txt"
                if test -f "$file"; then
                    tag=$( tail -n 1 "$file" )
                    echo "Verifile 2.0 räsi: $tag"
                    break
                    fi
                fi
            done
            popd > /dev/null
            echo
            echo "Funktsioonid: $(head -9 $EFILE | tail -1)"
            echo "Ebaturvaline PIN kood: $(head -10 $EFILE | tail -1)"
            echo
            read -rsn1 -p "Vajutage ükskõik millist klahvi, et minna tagasi . . . "
        elif [ "$1" = "2" ]; then
            TPUT 1 1
            DRAWLOGO
            TPUT 3 8
            echo "Markuse mälupulk"
            echo
            echo
            NOFLASH="true"
            for l in $(lsblk -o MOUNTPOINTS -n); do
                if [ -f "$l/E_INFO/edition.txt" ]; then
                    echo "Leiti mälupulk: $l (Väljaanne: $(cat $l/E_INFO/edition.txt))"
                    NOFLASH="false"
                fi
            done
            [ "$NOFLASH" = "true" ] && echo "Ühtegi mälupulka ei leitud"
            echo
            read -rsn1 -p "Vajutage ükskõik millist klahvi, et minna tagasi . . . "
        elif [ "$1" = "3" ]; then
            kquitapp5 plasmashell </dev/null &>/dev/null & disown
            kstart5 plasmashell </dev/null &>/dev/null & disown
        elif [ "$1" = "0" ]; then
            clear
            TPUT 1 1
            DRAWLOGO
            TPUT 3 8
            echo "Markuse arvuti asjad"
            echo
            echo
            echo "Protsesside peatamine..."
            echo " Töölaud"
            kquitapp5 plasmashell </dev/null &>/dev/null & disown
            echo " M.A.I.A. server"
            killall python3
            echo " Markuse arvuti integratsioonitarkvara"
            killall "Markuse arvuti integratsioonitarkvara"
            echo "Protsesside käivitamine..."
            echo " Töölaud"
            kstart5 plasmashell </dev/null &>/dev/null & disown
            echo " M.A.I.A. server"
            python3 ~/.mas/maia/server.py </dev/null &>/dev/null & disown
            echo " Markuse arvuti integratsioonitarkvara"
            /home/$USER/.mas/Markuse\ asjad/Markuse\ arvuti\ integratsioonitarkvara </dev/null &>/dev/null & disown
            echo
            echo "Õnnestus"
            read -rsn1 -p "Vajutage ükskõik millist klahvi, et minna tagasi . . . "
        fi
    }

    function APT_TOOLS() {
        echo -e "\e[40m\e[37m"
    	if [ "$1" = "1" ]; then
            if [ "$BASE_DISTRO" = "arch" ]; then
                APT_TOOLS "0"
                return;
            fi
            while true; do
                clear
                TPUT 1 1
                DRAWLOGO
                TPUT 3 8
                echo "APT tööriistad"
                echo
                echo
                echo "1. Lisa repositoorium (add-apt-repository)"
                echo "2. Uuenda andmebaasi (apt update)"
                echo "3. Paigalda tarkvara (apt install)"
                echo "4. Eemalda tarkvara (apt remove)"
                echo "5. Eemalda üleliigne tarkvara (apt autoremove)"
                echo "6. Otsi värskendusi olemasolevatele rakendustele ja paigalda kui saadaval (apt upgrade)"
                echo "7. Tagasi"
                echo
                read -rsn1 -p "Sisestage arv: " ans
                echo
                if [ "$ans" = "1" ]; then
                    read -p "Sisestage PPA aadress: " ppa
                    sudo add-apt-repository $ppa -y
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "2" ]; then
                    sudo apt update
                    sudo apt-get update
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "3" ]; then
                    read -p "Sisestage rakendus(t)e nimi (eraldatud tühikutega): " packages
                    sudo apt install $packages -y
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "4" ]; then
                    read -p "Sisestage rakendus(t)e nimi (eraldatud tühikutega): " packages
                    sudo apt remove $packages -y
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "5" ]; then
                    sudo apt autoremove -y
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "6" ]; then
                    sudo apt full-upgrade -y
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "apt upgrade ebaõnnestus, proovin pkcon update"
                        pkcon update -y
                        if [ "$?" = "0" ]; then
                            read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                        else
                            echo "Midagi läks valesti (olek: $?)"
                            read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                        fi
                    fi
                elif [ "$ans" = "7" ]; then
                    break
                fi
            done
        
    	elif [ "$1" = "0" ]; then
            while true; do
                clear
                TPUT 1 1
                DRAWLOGO
                TPUT 3 8
                echo "Pacman tööriistad"
                echo
                echo
                echo "1. Uuenda andmebaasi (pacman -Sy)"
                echo "2. Paigalda tarkvara (pacman -S)"
                echo "3. Eemalda tarkvara (pacman -R)"
                echo "4. Otsi värskendusi olemasolevatele rakendustele ja paigalda kui saadaval (pacman -Syu)"
                echo "5. Eemalda lukustus, lahendab mõned probleemid (/var/lib/pacman/db.lck)"
                echo "6. Tagasi"
                echo
                read -rsn1 -p "Sisestage arv: " ans
                echo
                if [ "$ans" = "1" ]; then
                    sudo pacman -Sy
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "2" ]; then
                    read -p "Sisestage rakendus(t)e nimi (eraldatud tühikutega): " packages
                    sudo pacman -S $packages
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "3" ]; then
                    read -p "Sisestage rakendus(t)e nimi (eraldatud tühikutega): " packages
                    sudo pacman -R $packages
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "4" ]; then
                    sudo pacman -Syu
                    if [ "$?" = "0" ]; then
                        read -rsn1 -p "Valmis. Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    else
                        echo "Midagi läks valesti (olek: $?)"
                        read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . . "
                    fi
                elif [ "$ans" = "5" ]; then
                    sudo rm /var/lib/pacman/db.lck
                elif [ "$ans" = "6" ]; then
                    break
                fi
            done
    	elif [ "$1" = "2" ]; then
            while true; do
                clear
                TPUT 1 1
                DRAWLOGO
                TPUT 3 8
                echo "Kerneli logi - vajutage ükskõik millist klahvi, et väljuda"
                echo
                echo
                sudo dmesg | tail -n 28
                read -rsn1 -t 5 && break
            done
            return
    	elif [ "$1" = "3" ]; then
            while true; do
                clear
                TPUT 1 1
                DRAWLOGO
                TPUT 3 8
                echo "Võrgutööriistad"
                echo
                echo
                echo "1. Kuva kohalikud võrguliidesed (ifconfig)"
                echo "2. Leia domeeni avalik IP (ping)"
                echo "3. Kuva kõik võrguga ühendatud IP aadressid (nmap -sn)"
                echo "4. Samba serveri konfigureerimine (/etc/smb/samba.conf)"
                echo "5. Graafiline liidesega Samba serveri konfiguratsioon"
                echo "6. Apache kaust (/var/www/html)"
                echo "7. Tagasi"
                echo
                read -rsn1 -p "Sisestage arv: " nans
                echo
                if [ "$nans" = "1" ]; then
                    clear
                    ifconfig
                    echo && echo
                    read -rsn1 -p "Vajutage ükskõik millist klahvi, et minna tagasi. . . "
                elif [ "$nans" = "2" ]; then
                    clear
                    read -p "Sisestage pingitav aadress: " pingable
                    ping "$pingable"
                    echo && echo
                    read -rsn1 -p "Vajutage ükskõik millist klahvi, et minna tagasi. . . "
                elif [ "$nans" = "3" ]; then
                    clear
                    echo
                    echo "Võrgu skanneerimine..."
                    echo
                    nmap -sn 192.168.1.0/24
                    echo && echo
                    read -rsn1 -p "Vajutage ükskõik millist klahvi, et minna tagasi. . . "
                elif [ "$nans" = "4" ]; then
                    clear
                    sudo nano /etc/samba/smb.conf
                elif [ "$nans" = "5" ]; then
                    echo && echo
                    sudo system-config-samba
                elif [ "$nans" = "6" ]; then
 REFRESH(){ after=$((i+1)); before=$((i-1))
            if [[ $before -lt 0  ]];then before=$LM;fi
            if [[ $after -gt $LM ]];then after=0;fi
            if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;fi
            if [[ $after -eq 0   ]] || [[ $before -eq $LM ]];then
            UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;DRAWLOGO;}
                    clear
                    sudo pcmanfm /var/www/html
                elif [ "$nans" = "7" ]; then
                    break
                fi
            done
        fi
    }

    # new 2025 menu layout
    function DRAWLOGO() {
      # red
      TPUT 2 4
      echo -e "\e[31m\xE2\xAC\xA4"

      # green
      TPUT 3 5
      echo -e "\e[32m\xE2\xAC\xA4"

      # cyan
      TPUT 4 4
      echo -e "\e[94m\xE2\xAC\xA4"

      # yellow
      TPUT 3 3
      echo -e "\e[93m\xE2\xAC\xA4\e[${COLOR};37m"
    }

        E='echo -e';e='echo -en';trap "R;exit" 2
     ESC=$( $e "\033")
    TPUT(){ $e "\033[${1};${2}H";}
   CLEAR(){ $e "\033c";}; CLEAR;
   CIVIS(){ $e "\033[?25l";}
    DRAW(){ $e "";}
   WRITE(){ $e "\033(B";}
    MARK(){ $e "\033[7m";}
  UNMARK(){ $e "\033[27m";}
    BLUE(){ $e "\033c\033[H\033[J\033[37;${COLOR}m\033[J";};BLUE
       C(){ CLEAR;BLUE;}
    HEAD(){ TPUT 3 7
            $E " Markuse arvuti tööristad";UNMARK
            DRAW
            for each in $(seq 1 9);do
             $E "                                                                               "
            done;WRITE;}
            i=0; CLEAR; CIVIS;NULL=/dev/null
    FOOT(){ TPUT 13 0
            printf " \xE2\x86\xB5 Kinnita valik";
            printf " \xE2\x86\x95 Muuda valikut"; }
   ARROW(){ read -s -n3 key 2>/dev/null >&2
            if [[ $key = $ESC[A ]];then echo up;fi
            if [[ $key = $ESC[B ]];then echo dn;fi;}
POSITION(){ if [[ $cur = up ]];then ((i--));fi
            if [[ $cur = dn ]];then ((i++));fi
            if [[ i -lt 0   ]];then i=$LM;fi
            if [[ i -gt $LM ]];then i=0;fi;}
 REFRESH(){ after=$((i+1)); before=$((i-1))
            if [[ $before -lt 0  ]];then before=$LM;fi
            if [[ $after -gt $LM ]];then after=0;fi
            if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;fi
            if [[ $after -eq 0   ]] || [[ $before -eq $LM ]];then
            UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;DRAWLOGO;}
      M0(){ TPUT 6 2; $E " Markuse arvuti juhtpaneel                                "; TPUT 1 1;}
      if [ "$BASE_DISTRO" = "debian" ]; then
        M1(){ TPUT 7 2; $E " APT paketihaldur                                         "; TPUT 1 1;}
      elif [ "$BASE_DISTRO" = "arch" ]; then
        M1(){ TPUT 7 2; $E " Pacman paketihaldur                                      "; TPUT 1 1;}
      fi
      if [ xhost >& /dev/null ] || [ "$SESSION_TYPE" = "wayland" ] ; then
        M2(){ TPUT 8 2; $E " Võrguriistad                                             "; TPUT 1 1;}
      else
        M2(){ TPUT 8 2; $E " V6rguriistad                                             "; TPUT 1 1;}
      fi
      M3(){ TPUT 9 2; $E " Kerneli logi                                             "; TPUT 1 1;}
      if [ xhost >& /dev/null ] || [ "$SESSION_TYPE" = "wayland" ] ; then
      M4(){ TPUT 10 2; $E " Välja logimine                                           "; TPUT 1 1;}
      else
      M4(){ TPUT 10 2; $E " Laadi kasutajaliides (startx)                            "; TPUT 1 1;}
      fi
      M5(){ TPUT 11 2; $E " Välju                                                    "; TPUT 1 1;}
     LM=5    #Last Menu number
    MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    INIT(){ BLUE;HEAD;FOOT;MENU;}
      SC(){ REFRESH;MARK;$S;cur=`ARROW`;}
      ES(){ MARK;$e "\nENTER = peamenüü ";$b;read;INIT;};INIT
while [[ "$O" != " " ]]; do case $i in
      0) S=M0;SC;if [[ $cur = "" ]];then C;MAS_TOOLS;$b;INIT;fi;;
      1) S=M1;SC;if [[ $cur = "" ]];then C;APT_TOOLS "1";$b;INIT;fi;;
      2) S=M2;SC;if [[ $cur = "" ]];then C;APT_TOOLS "3";$b;INIT;fi;;
      3) S=M3;SC;if [[ $cur = "" ]];then C;APT_TOOLS "2";$b;INIT;fi;;
      4) S=M4;SC;if [[ $cur = "" ]];then C;SESSION_TOOLS;$b;INIT;fi;;
      5) S=M5;SC;if [[ $cur = "" ]];then C;$e "\e[40m\e[37m ";clear;exit 0;fi;;
esac;POSITION;done

esac;POSITION;done
