
#!/bin/bash
echo -e "\033[91m";
echo -e "          *-----------------------------------*";
echo -e "          |  \033[34m>> Directory Decoder/Encoder <<  \033[91m|  ";
echo -e "          |  \033[33m   Bachelor's Final Project      \033[91m|  ";
echo -e "          |  \033[35m      Author : Kasra Nasiri      \033[91m|  ";
echo -e "          |  \033[32m        Semnan University        \033[91m|  ";
echo -e "          |  \033[36m           Summer 2024           \033[91m|  ";
echo -e "          *-----------------------------------*";
echo -e "\033[39m"  "\033[49m";

echo "-------------------------";


















default_path="$HOME/Desktop";
read -ep ">PATH(default=$default_path) :" path;
path=${path:-$default_path};
echo;


read -p ">$path Encrypt/Decrypt? [E/d] " cmd;
echo;
read  -sp ">Enter password : " pswd;
echo;
read  -sp ">Confirm password : " pswdc;
echo;


if [ "$pswd" != "$pswdc" ]
then
	echo "Not match!";
	exit;
fi
echo;

# =========================================================================== Enc
if [[ "$cmd" == "e"  ]] || [[ "$cmd" == "E" ]];
then
    i=1;
	find "$path" -name '*'| while read ln
	do
        #echo "--- $ln";
		if  test -f "$ln";
	    then
            echo -en "\033[32m$i)";
			echo -e "\033[34m$ln\033[31m >>\033[34m$ln.enc";
            echo "";
			openssl enc -e -aes-128-cbc -in "$ln" -out "$ln".enc -k $pswd -salt 2> /dev/null;
			rm -f "$ln";
            let i++;
		fi
	done
fi
# =========================================================================== Dec
if [[ "$cmd" == 'd' ]] || [[ "$cmd" == 'D' ]];
then
    i=1;
    find "$path" -name '*'| while read ln
    do
          if  test -f "$ln";
          then
              echo -en "\033[32m$i)";
              echo -e "\033[34m$ln\033[31m >>\033[34m"`dirname "$ln"`/`basename "$ln" .enc`" ";
              echo "";
              openssl enc -d -aes-128-cbc -in "$ln" -out "`dirname "$ln"`/`basename "$ln" .enc`" -k $pswd -salt 2> /dev/null;
              rm -f "$ln";
              let i++;
          fi
    done
fi


echo -e "\033[32mdone!\033[39m";


tree "$path"
