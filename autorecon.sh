#!/bin/bash

printBanner() {
	printf "\n\033[1;32m"
	printf "\t   / \  _   _| |_ ___ |  _ \|___ /  ___ ___  _ __ \n"
	printf "\t  / _ \| | | | __/ _ \| |_) | |_ \ / __/ _ \| '_ \ \n" 
	printf "\t / ___ \ |_| | || (_) |  _ < ___) | (_| (_) | | | |\n"
	printf "\t/_/   \_\__,_|\__\___/|_| \_\____/ \___\___/|_| |_|\n"
                                                           
	printf "\t\t  A Recon Automation bash script by DA\033[33mv1.0\n\n"	
	printf "\033[m\n"
}
printBanner

domain=$1

printf "\t  __       _             \n"
printf "\t (_    |_ |_._    ._ _   \n"
printf "\t __)|_||_)|_| ||_|| | | \n"

printf "\t\t-----Subdomain scanning----\033[33m\n\n"

echo ".............Running subfinder,assetfinder,Sublist3r,knockpy..............."

sub_enum()
{
	mkdir $domain
subfinder -d $domain -o $domain/subfinder.txt
/usr/local/go/bin/assetfinder -subs-only $domain | tee $domain/assetfinder.txt
/usr/local/pentools/Sublist3r/sublist3r.py -d $domain -o $domain/sublister.txt
/usr/local/pentools/knock/knockpy.py $domain
}
sub_enum

printf "\n--------Subdomain Enumeration Completed---------\n\n"

printf "\t   _   _   _   _   _   _   _   \n"
printf "\t  / \ / \ / \ / \ / \ / \ / \  \n"
printf "\t ( U | r | l | F | i | n | d ) \n"
printf "\t  \_/ \_/ \_/ \_/ \_/ \_/ \_/  \n"

printf "\t\t --------Crawling URLs---------\033[33m\n\n"                              


url_find()
{
/usr/local/go/bin/waybackurls $domain > $domain/waybackurls.txt
/usr/local/go/bin/gau $domain > $domain/gau.txt
}
url_find

printf "\n--------Crawling Completed---------\n\n"

printf "\t    ___                            \n"
printf "\t   (|  \ o  ,_   ()  _   _,        \n"
printf "\t    |   || /  |  /\ /   / |  /|/|  \n"
printf "\t   (\__/ |/   |//(_)\__/\/|_/ | |_/ \n"
printf "\t\t --------Directory scan started---------\033[33m\n\n"	

dir_scan()
{
/usr/local/go/bin/gobuster dir -u https://www.$domain -w /usr/share/wordlists/dirbuster/directory-list-1.0.txt -o $domain/gobuster.txt
}
dir_scan

printf "\n--------DirScan completed---------\n\n"

printf "\t __   __    _    _ ___  \n"
printf "\t \ \ / /  _| |_ | / __| \n"
printf "\t  \ V / || | | || \__ \ \n"
printf "\t   \_/ \_,_|_|\__/|___/ \n"
printf "\t\t --------Scanning for vulnerable JS libraries---------\033[33m\n\n"

vul_js()
{
/usr/local/pentools/DSJS/dsjs.py -u "www.$domain" > $domain/vuljs.txt
}
vul_js

printf "\n----------VulJS scan completed-----------\n\n"