#!/bin/bash

printBanner() {
	printf "\n\033[1;32m"
	printf "\t  ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄  \n"
	printf "\t ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌ \n"
	printf "\t ▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌     ▐░▌ \n"
	printf "\t ▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌          ▐░▌       ▐░▌▐░▌▐░▌    ▐░▌ \n"
	printf "\t ▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌          ▐░▌       ▐░▌▐░▌ ▐░▌   ▐░▌ \n"
	printf "\t ▐░░░░░░░░░░░▌▐░▌       ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░▌       ▐░▌▐░▌  ▐░▌  ▐░▌ \n"
	printf "\t ▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░█▀▀▀▀█░█▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌          ▐░▌       ▐░▌▐░▌   ▐░▌ ▐░▌ \n"
	printf "\t ▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░▌     ▐░▌  ▐░▌          ▐░▌          ▐░▌       ▐░▌▐░▌    ▐░▌▐░▌ \n"
	printf "\t ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌     ▐░▐░▌ \n"
	printf "\t ▐░▌       ▐░▌▐░░░░░░░░░░░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌      ▐░░▌ \n"
	printf "\t  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀       ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀  \n"	                                                         
	printf "\t\t  --------------------A Recon Automation bash script by DA\033[33m v1.1---------------------------------------------\n\n"	
	printf "\033[m\n"
}
printBanner
                                                                                                                   
domain=$1

printf "\t (  ____ \|\     /|(  ___ \ (  ____ \( (    /||\     /|(       ) \n"
printf "\t | (    \/| )   ( || (   ) )| (    \/|  \  ( || )   ( || () () | \n"
printf "\t | (_____ | |   | || (__/ / | (__    |   \ | || |   | || || || | \n"
printf "\t (_____  )| |   | ||  __ (  |  __)   | (\ \) || |   | || |(_)| | \n"
printf "\t       ) || |   | || (  \ \ | (      | | \   || |   | || |   | | \n"
printf "\t /\____) || (___) || )___) )| (____/\| )  \  || (___) || )   ( | \n"
printf "\t \_______)(_______)|/ \___/ (_______/|/    )_)(_______)|/     \| \n"
printf "\t\t ---------------------Subdomain scanner------------------ \033[33m \n\n"	

echo ".............Running subfinder,assetfinder,Sublist3r,knockpy..............."

sub_enum()
{
	mkdir $domain
subfinder -d $domain -o $domain/subfinder.txt
/usr/local/go/bin/assetfinder -subs-only $domain | tee $domain/assetfinder.txt
/usr/local/pentools/Sublist3r/sublist3r.py -d $domain -o $domain/sublister.txt
knockpy $domain
}
sub_enum

printf "\n--------Subdomain Enumeration Completed---------\n\n"

printf "\t  / __)(  _ \  /__\  ( \/\/ )(  )  ( ___)(  _ \ \n"
printf "\t ( (__  )   / /(__)\  )    (  )(__  )__)  )   / \n"
printf "\t  \___)(_)\_)(__)(__)(__/\__)(____)(____)(_)\_) \n"
printf "\t\t ----Crawling URLs using gau and waybackurls-----\033[33m\n\n"                               


url_find()
{
/usr/local/go/bin/waybackurls $domain > $domain/waybackurls.txt
/usr/local/go/bin/gau $domain > $domain/gau.txt
}
url_find

printf "\n------------Crawling Completed-------------\n\n"

printf "\t (  _ \  _ (_ ) ( )_                           \n"
printf "\t | (_(_)(_) | | | ,_)   __   _ __   __   _ __  \n"
printf "\t |  _)  | | | | | |   /'__ \( '__)/'__ \( '__) \n"
printf "\t | |    | | | | | |_ (  ___/| |  (  ___/| |    \n"
printf "\t (_)    (_)(___) \__) \____)(_)   \____)(_)   \n"
printf "\t\t-----URL filtering on gau, waybackurls started----\033[33m\n\n"
url_filter()
{
mkdir -p $domain/urlfilter
cat $domain/waybackurls.txt | grep "event" > $domain/urlfilter/wayback_filter_event.txt
cat $domain/waybackurls.txt | grep "create" > $domain/urlfilter/wayback_filter_create.txt
cat $domain/waybackurls.txt | grep "upload" > $domain/urlfilter/wayback_filter_upload.txt
cat $domain/waybackurls.txt | grep "admin" > $domain/urlfilter/wayback_filter_admin.txt
cat $domain/waybackurls.txt | grep "account" > $domain/urlfilter/wayback_filter_account.txt
cat $domain/waybackurls.txt | grep "log" > $domain/urlfilter/wayback_filter_log.txt
cat $domain/waybackurls.txt | grep "?" > $domain/urlfilter/wayback_filter_?.txt
cat $domain/waybackurls.txt | grep "sign" > $domain/urlfilter/wayback_filter_sign.txt
cat $domain/waybackurls.txt | grep ".pdf" > $domain/urlfilter/wayback_filter_pdf.txt
cat $domain/waybackurls.txt | grep "regist" > $domain/urlfilter/wayback_filter_regist.txt
cat $domain/gau.txt | grep "event" > $domain/urlfilter/gau_filter_event.txt
cat $domain/gau.txt | grep "create" > $domain/urlfilter/gau_filter_create.txt
cat $domain/gau.txt | grep "upload" > $domain/urlfilter/gau_filter_upload.txt
cat $domain/gau.txt | grep "admin" > $domain/urlfilter/gau_filter_admin.txt
cat $domain/gau.txt | grep "account" > $domain/urlfilter/gau_filter_account.txt
cat $domain/gau.txt | grep "log" > $domain/urlfilter/gau_filter_log.txt
cat $domain/gau.txt | grep "?" > $domain/urlfilter/gau_filter_?.txt
cat $domain/gau.txt | grep "sign" > $domain/urlfilter/gau_filter_sign.txt
cat $domain/gau.txt | grep ".pdf" > $domain/urlfilter/gau_filter_pdf.txt
cat $domain/gau.txt | grep "regist" > $domain/urlfilter/gau_filter_regist.txt
}
url_filter        
printf "\n--------------URL filtering completed----------------\n\n"              
                                             
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

printf "\n----------VulJS scan started------------\n\n"

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