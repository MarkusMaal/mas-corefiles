#!/bin/bash
while true; do
	clear
	echo
	echo "Käsurea tööriistad"
	echo
	echo "1. APT tööriistad"
	echo "2. Markuse arvuti integratsioon"
	echo "3. Võrgutööriistad"
	echo "4. Välju"
	echo
	read -rsn1 -p "Sisestage arv: " ans
	if [ "$ans" = "1" ]; then
		while true; do
			clear
			echo
			echo "APT tööriistad"
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
	elif [ "$ans" = "4" ]; then
		echo
		echo "Head aega!"
		break
	elif [ "$ans" = "3" ]; then
		while true; do
			clear
			echo
			echo "Võrgutööriistad"
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
				nmap -sn 192.168.8.0/24
				echo && echo
				read -rsn1 -p "Vajutage ükskõik millist klahvi, et minna tagasi. . . "
			elif [ "$nans" = "4" ]; then
				clear
				sudo nano /etc/samba/smb.conf
			elif [ "$nans" = "5" ]; then
				echo && echo
				sudo system-config-samba
			elif [ "$nans" = "6" ]; then
				clear
				sudo pcmanfm /var/www/html
			elif [ "$nans" = "7" ]; then
				break
			fi
		done
	elif [ "$ans" = "2" ]; then
		while true; do
			clear
			echo
			echo "Markuse arvuti integratsioon"
			echo
			echo "1. Kuva arvuti sõrmejälg"
			echo "2. Ava Markuse arvuti asjade teabe ja haldamiserakendus"
			echo "3. Ava integratsioonimenüü"
			echo "4. Tagasi"
			echo
			read -rsn1 -p "Sisestage arv: " pmpt
			if [ "$pmpt" = "1" ]; then
				clear
				cd /internal_storage
				for f in *; do
				    if [ -d "$f" ]; then
					file="/internal_storage/$f/mas/edition.txt"
					if test -f "$file"; then
						clear
						echo
						tag=$( tail -n 1 "$file" )
						echo "$tag"
				        fi
				    fi
				done
				echo && echo
				read -rsn1 -p "Jätkamiseks vajutage ükskõik millist klahvi . . ."
			elif [ "$pmpt" = "2" ]; then
				~/scripts/showmas.sh
			elif [ "$pmpt" = "3" ]; then
				~/scripts/masmenu.sh
			elif [ "$pmpt" = "4" ]; then
				break
			fi
		done
	fi
done
