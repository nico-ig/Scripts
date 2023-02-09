#!/bin/bash

# Trabalho Shell 1
# Nico Ramos
# GRR20210574

vazio_nao_dir () {
	for FILE in "$1"/*; do # Lê os arquivos em VAR6
    	if [ ! -d "$FILE" -a -s "$FILE" ]; then # Não é diretório e não é vazio
       		cat "$FILE"
			return 0
    	fi
	done
	return 1
}


# set -x

cd /home/html/inf/cursos/ci1001/tshell1

# Tópico 2
VAR1=$(cat PISTA1 | cut -d\| -f2 | head -n3 | tail -n1 ) # pista2.txt

# Tópico 3
VAR2=$(base64 -d $VAR1) # .outra pista

# Tópico 4
VAR3=$(cat "$VAR2") # --

# Tópico 5
VAR4=$(cat "$(find -size $(cat ./"$VAR3" | wc -l)c 2>/dev/null)") # mais_uma_pista

# Tópico 6
if ! grep -q rot13 ~/.bashrc; then # Verifica se o alias já existe
	echo "# Prog1 tshell1 - rotaciona 13 letras 
alias rot13=\"tr 'a-z' 'n-za-m'\"" >> ~/.bashrc
	source ~/.bashrc
fi 
VAR5=.$(echo "$VAR4" | rot13) # .znvf_hzn_cvfgn

# Tópico 7
VAR6=$(vazio_nao_dir $(find ./"$VAR5" -perm -o=w 2>/dev/null) # ./.znvf_hzn_cvfgn/d23
      ) # is.9ioseo^,78.ss9927<

# Tópico 8
VAR7=$(echo "$VAR6" | tr 'isoe^\-><' '1503NSEW') # 15.910530N,78.559927W

# Tópico 9
echo "Coordenadas do tesouro: "$VAR7

cd ~/bin
