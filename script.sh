#!/bin/bash

# Variavel para voltar a pasta correta depois de cada sub-menu
init=$(pwd)

clear


#funçao para pausar a bash para ser possivel ver os resultados das pesquisas
Pausa(){
	read -p "Pressione Enter para continuar..."
}


#Opçao A do menu Principal, Cria um diretorio com o nome que o utlilizador quiser em numa localizaçao a sua escolha
OpcaoA(){	
	while [[ $menu1 != c && $menu1 != C ]]		#Cilco para interaço do menu da opçao A
	do
		clear
		echo "---------------------------------------------------------------"
		echo "|--------------------O que deseja realizar--------------------|"
		echo "|a) ---------- Prosseguir para o proximo diretorio -----------|"
		echo "|b) -------------- Voltar ao diretorio anterior --------------|"
		echo "|c) ---------- Criar Diretorio nesta Localizaçao -------------|"
		echo "---------------------------------------------------------------"
		echo ""
		echo "---------------------------------------------------------------"
		echo "---------------------Listagem das Pastas-----------------------"
		ls -d */	#listar apenas os diretorios
		echo "------------------------Listagem Geral-------------------------"
		ls		#listar todos os ficheiros e pastas
		echo "---------------------------------------------------------------"
		echo ""
		echo "Escolha o que pertende fazer:"
		read menu1
			
		if [ $menu1 == a ] || [ $menu1 == A ]		#opçao A do menu, mostra as pastas e o ficheiros ao utilizador e pergunta ao utilizador para que pasta pretende avançar
		then
			clear
			echo ""
			echo ""
			echo "---------------------------------------------------------------"
			echo "---------------------Listagem das Pastas-----------------------"
			ls -d */	#listar apenas os diretorios
			echo "------------------------Listagem Geral-------------------------"
			ls		#listar todos os ficheiros e pastas
			echo "---------------------------------------------------------------"
			echo ""
			echo ""
			echo "Introduza o nome do diretorio para o qual deseja mudar (Incluir os _)"				
			read dirm
			cd $dirm
					
		elif [ $menu1 == b ] || [ $menu1 == B ]		#Opçao B do menu, volta para a pasta anterior
		then
			cd ..
		fi
		done
		
		echo ""
		echo "Introduza o nome do diretorio que deseja criar (substitua o espaços por _)"
		read dir
		mkdir $dir		#Cria a pasta com o nome que o utiizador escolher
		Pausa
		cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
}


#Opçao B do menu Principal, Cria um Ficheiro com o nome que o utlilizador quiser em numa localizaçao a sua escolha
OpcaoB(){
	
	while [[ $menu5 != c && $menu5 != C ]]
	do
		clear
		echo "---------------------------------------------------------------"
		echo "|--------------------O que deseja realizar--------------------|"
		echo "|a) ---------- Prosseguir para o proximo diretorio -----------|"
		echo "|b) -------------- Voltar ao diretorio anterior --------------|"
		echo "|c) ---------- Criar o Ficheiro nesta Localizaçao ------------|"
		echo "---------------------------------------------------------------"
		echo ""
		echo "---------------------------------------------------------------"
		echo "---------------------Listagem das Pastas-----------------------"
		ls -d */	#listar apenas os diretorios
		echo "------------------------Listagem Geral-------------------------"
		ls		#listar todos os ficheiros e pastas
		echo "---------------------------------------------------------------"
		echo ""
		echo "Escolha o que pertende fazer:"
		read menu5
			
		if [ $menu5 == a ] || [ $menu5 == A ]		#opçao A do menu, mostra as pastas e o ficheiros ao utilizador e pergunta ao utilizador para que pasta pretende avançar
		then
			clear
			echo ""
			echo ""
			echo "---------------------------------------------------------------"
			echo "---------------------Listagem das Pastas-----------------------"
			ls -d */	#listar apenas os diretorios
			echo "------------------------Listagem Geral-------------------------"
			ls		#listar todos os ficheiros e pastas
			echo "---------------------------------------------------------------"
			echo ""
			echo ""
			echo "Introduza o nome do diretorio para o qual deseja mudar (Incluir os _)"				
			read dirm
			cd $dirm
					
		elif [ $menu5 == b ] || [ $menu5 == B ]		#Opçao B do menu, volta para a pasta anterior
		then
			cd ..
		fi
	done
	
	echo ""
	echo "Introduza um nome para o ficheiro que deseja criar"
	read b1
	touch $b1		#cria o ficheiro com o nome introduzido pelo utilizador
	echo "Deseja escrever no ficheiro? (y.n)"
	read b2
	
	if [ "$b2" == "y" ]	#opçao se o utilizador quiser escrever no ficheiro
	then
			
	echo "Para parar de escrever utilize Ctrl+D"
	cat > $b1		#Envio tudo o que utilizador escrever para o ficheiro (Ctrl + D é uma opçao nativa do CAT)
	echo ""
	echo ""
	echo "ficheiro final:"
	echo ""
	echo ""
	cat $b1
	echo ""
	fi
	Pausa
	cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
}


#Opçao C do menu Principal, Conta o numero de caracteres de um Ficheiro a escolha do Utilizador
OpcaoC(){
	while [[ $menu2 != c && $menu2 != C ]]
		do
			clear 
			echo "---------------------------------------------------------------"
			echo "|--------------------O que deseja realizar--------------------|"
			echo "|a) ---------- Prosseguir para o proximo diretorio -----------|"
			echo "|b) -------------- Voltar ao diretorio anterior --------------|"
			echo "|c) ------------------ Escolher o Arquivo --------------------|"
			echo "---------------------------------------------------------------"
			echo ""
			echo "---------------------------------------------------------------"
			echo "---------------------Listagem das Pastas-----------------------"
			ls -d */	#listar apenas os diretorios
			echo "------------------------Listagem Geral-------------------------"
			ls		#listar todos os ficheiros e pastas
			echo "---------------------------------------------------------------"
			echo ""
			echo "Escolha o que pertende fazer:"
			read menu2
			
			if [ $menu2 == a ] || [ $menu2 == A ]		#opçao A do menu, mostra as pastas e o ficheiros ao utilizador e pergunta ao utilizador para que pasta pretende avançar
				then
					clear
					echo ""
					echo ""
					echo "---------------------------------------------------------------"
					echo "---------------------Listagem das Pastas-----------------------"
					ls -d */	#listar apenas os diretorios
					echo "------------------------Listagem Geral-------------------------"
					ls		#listar todos os ficheiros e pastas
					echo "---------------------------------------------------------------"
					echo ""
					echo ""
					echo "Introduza o nome do diretorio para o qual deseja mudar (Incluir os _)"				
					read dirm
					cd $dirm		
			elif [ $menu2 == b ] || [ $menu2 == B ]		#Opçao B do menu, volta para a pasta anterior
				then
				cd ..
			fi
		done
		ls
		echo "indique o nome do ficheiro que pertende contar os caracteres"
		read fich
		carac=$(wc -m < $fich)		# Armazena na variaver carac o numero de caraceres do ficheiro escolhido
		echo "o ficheiro $fich tem $carac caracteres"
		Pausa
		cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
}

#Opçao D do menu Principal, Conta o numero de Linhas de um Ficheiro a escolha do Utilizador
OpcaoD(){
	while [[ $menu3 != c && $menu3 != C ]]
		do
			clear
			echo "---------------------------------------------------------------"
			echo "|--------------------O que deseja realizar--------------------|"
			echo "|a) ---------- Prosseguir para o proximo diretorio -----------|"
			echo "|b) -------------- Voltar ao diretorio anterior --------------|"
			echo "|c) ------------------ Escolher o Arquivo --------------------|"
			echo "---------------------------------------------------------------"
			echo ""
			echo "---------------------------------------------------------------"
			echo "---------------------Listagem das Pastas-----------------------"
			ls -d */	#listar apenas os diretorios
			echo "------------------------Listagem Geral-------------------------"
			ls		#listar todos os ficheiros e pastas
			echo "---------------------------------------------------------------"
			echo ""
			echo "Escolha o que pertende fazer:"
			read menu3
			
			if [ $menu3 == a ] || [ $menu3 == A ]		#opçao A do menu, mostra as pastas e o ficheiros ao utilizador e pergunta ao utilizador para que pasta pretende avançar
				then
				clear
				echo ""
				echo ""
				echo "---------------------------------------------------------------"
				echo "---------------------Listagem das Pastas-----------------------"
				ls -d */	#listar apenas os diretorios
				echo "------------------------Listagem Geral-------------------------"
				ls		#listar todos os ficheiros e pastas
				echo "---------------------------------------------------------------"
				echo ""
				echo ""
				echo "Introduza o nome do diretorio para o qual deseja mudar (Incluir os _)"				
				read dirm
				cd $dirm	
			elif [ $menu3 == b ] || [ $menu3 == B ]		#Opçao B do menu, volta para a pasta anterior
				then
				cd ..
			fi
		done
		echo ""
		echo "indique o nome do ficheiro que pertende contar as Linhas"
		read fich
		carac=$(wc -l < $fich)		# Armazena na variaver carac o numero de linhas do ficheiro escolhido
		echo "o ficheiro $fich tem $carac Linhas"
		Pausa
		cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
}


#Opçao B do menu Principal, Remove um Ficheiro a escolha do Utilizador
OpcaoE(){
	
	while [[ $menu4 != c && $menu4 != C ]]
	do
		clear
		echo "---------------------------------------------------------------"
		echo "|--------------------O que deseja realizar--------------------|"
		echo "|a) ---------- Prosseguir para o proximo diretorio -----------|"
		echo "|b) -------------- Voltar ao diretorio anterior --------------|"
		echo "|c) ---------- Remover Ficheiro nesta Localizaçao ------------|"
		echo "---------------------------------------------------------------"
		echo ""
		echo "---------------------------------------------------------------"
		echo "---------------------Listagem das Pastas-----------------------"
		ls -d */	#listar apenas os diretorios
		echo "------------------------Listagem Geral-------------------------"
		ls		#listar todos os ficheiros e pastas
		echo "---------------------------------------------------------------"
		echo ""
		echo "Escolha o que pertende fazer:"
		read menu4
			
		if [ $menu4 == a ] || [ $menu4 == A ]		#opçao A do menu, mostra as pastas e o ficheiros ao utilizador e pergunta ao utilizador para que pasta pretende avançar
		then
			clear
			echo ""
			echo ""
			echo "---------------------------------------------------------------"
			echo "---------------------Listagem das Pastas-----------------------"
			ls -d */	#listar apenas os diretorios
			echo "------------------------Listagem Geral-------------------------"
			ls		#listar todos os ficheiros e pastas
			echo "---------------------------------------------------------------"
			echo ""
			echo ""
			echo "Introduza o nome do diretorio para o qual deseja mudar (Incluir os _)"				
			read dirm
			cd $dirm
					
		elif [ $menu4 == b ] || [ $menu4 == B ]		#Opçao B do menu, volta para a pasta anterior
		then
			cd ..
		fi
		done
	
	echo ""
	echo "Introduza um nome para o ficheiro que deseja remover"
	read b1
	rm $b1		#remove o ficheiro escolhido pelo Utilizador
	Pausa
	cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
	
}


#Opçao F do menu Principal, conta o numero de peças necessarias para a contruçao de um set a escolha do utilizador (o Utilizador coloca a bash no diretorio correto para aceder a todos os ficheiros do diretorio)
OpcaoF(){
	
	while [[ $menu5 != c && $menu5 != C ]]
	do
		clear
		echo "---------------------------------------------------------------"
		echo "|--------------------O que deseja realizar--------------------|"
		echo "|a) ---------- Prosseguir para o proximo diretorio -----------|"
		echo "|b) -------------- Voltar ao diretorio anterior --------------|"
		echo "|c) ---------------- Contar peças deste set  -----------------|"
		echo "---------------------------------------------------------------"
		echo ""
		echo "---------------------------------------------------------------"
		echo "---------------------Listagem das Pastas-----------------------"
		ls -d */	#listar apenas os diretorios
		echo "------------------------Listagem Geral-------------------------"
		ls		#listar todos os ficheiros e pastas
		echo "---------------------------------------------------------------"
		echo ""
		echo "Escolha o que pertende fazer:"
		read menu5
			
		if [ $menu5 == a ] || [ $menu5 == A ]			#opçao A do menu, mostra as pastas e o ficheiros ao utilizador e pergunta ao utilizador para que pasta pretende avançar
		then
			clear
			echo ""
			echo ""
			echo "---------------------------------------------------------------"
			echo "---------------------Listagem das Pastas-----------------------"
			ls -d */	#listar apenas os diretorios
			echo "------------------------Listagem Geral-------------------------"
			ls		#listar todos os ficheiros e pastas
			echo "---------------------------------------------------------------"
			echo ""
			echo ""
			echo "Introduza o nome do diretorio para o qual deseja mudar (Incluir os _)"				
			read dirm
			cd $dirm
					
		elif [ $menu5 == b ] || [ $menu5 == B ]			#Opçao B do menu, volta para a pasta anterior
		then
			cd ..
		fi
		done
	
		soma=0		#inicializa a variavel soma a 0

		for ficheiro in *	#ciclo for para aceder a todos os ficheiros do respetivo diretorio
		do
			valor=$(cut -f 2 "$ficheiro" | awk '{ soma += $1} END { print soma }')		#armazena o valor do numero de peças de uma classe (o processo é repetido muitas vezes)
			soma=$((soma + valor))		#funciona como um contador que vai acrescentado sempre o numero de peças de cada classe 
		done

		echo "Este Set tem $soma Peças"
		Pausa
		cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
}


#Opçao G, Remove um diretorio a escolha do utilizador
OpcaoG(){	
	while [[ $menu6 != c && $menu6 != C ]]		#Cilco para interaço do menu da opçao A
	do
		clear
		echo "---------------------------------------------------------------"
		echo "|--------------------O que deseja realizar--------------------|"
		echo "|a) ---------- Prosseguir para o proximo diretorio -----------|"
		echo "|b) -------------- Voltar ao diretorio anterior --------------|"
		echo "|c) --------- Remover Diretorio nesta Localizaçao ------------|"
		echo "---------------------------------------------------------------"
		echo ""
		echo "---------------------------------------------------------------"
		echo "---------------------Listagem das Pastas-----------------------"
		ls -d */	#listar apenas os diretorios
		echo "------------------------Listagem Geral-------------------------"
		ls		#listar todos os ficheiros e pastas
		echo "---------------------------------------------------------------"
		echo ""
		echo "Escolha o que pertende fazer:"
		read menu6
			
		if [ $menu6 == a ] || [ $menu6 == A ]		#opçao A do menu, mostra as pastas e o ficheiros ao utilizador e pergunta ao utilizador para que pasta pretende avançar
		then
			clear
			echo ""
			echo ""
			echo "---------------------------------------------------------------"
			echo "---------------------Listagem das Pastas-----------------------"
			ls -d */	#listar apenas os diretorios
			echo "------------------------Listagem Geral-------------------------"
			ls		#listar todos os ficheiros e pastas
			echo "---------------------------------------------------------------"
			echo ""
			echo ""
			echo "Introduza o nome do diretorio para o qual deseja mudar (Incluir os _)"				
			read dirm
			cd $dirm
					
		elif [ $menu6 == b ] || [ $menu6 == B ]		#Opçao B do menu, volta para a pasta anterior
		then
			cd ..
		fi
		done
		
		echo ""
		echo "Introduza o nome do diretorio que deseja criar (substitua o espaços por _)"
		read dir
		rmdir $dir		#Remove a pasta com o nome que o utiizador escolher
		Pausa
		cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
}

#Opçao H, Mostra o conteudo de um ficheiro a escolha do utilizador
OpcaoH(){	
	while [[ $menu7 != c && $menu7 != C ]]		#Cilco para interaço do menu da opçao A
	do
		clear
		echo "---------------------------------------------------------------"
		echo "|--------------------O que deseja realizar--------------------|"
		echo "|a) ---------- Prosseguir para o proximo diretorio -----------|"
		echo "|b) -------------- Voltar ao diretorio anterior --------------|"
		echo "|c) --------- Escolher ficheiro desta localizaçao ------------|"
		echo "---------------------------------------------------------------"
		echo ""
		echo "---------------------------------------------------------------"
		echo "---------------------Listagem das Pastas-----------------------"
		ls -d */	#listar apenas os diretorios
		echo "------------------------Listagem Geral-------------------------"
		ls		#listar todos os ficheiros e pastas
		echo "---------------------------------------------------------------"
		echo ""
		echo "Escolha o que pertende fazer:"
		read menu7
			
		if [ $menu7 == a ] || [ $menu7 == A ]		#opçao A do menu, mostra as pastas e o ficheiros ao utilizador e pergunta ao utilizador para que pasta pretende avançar
		then
			clear
			echo ""
			echo ""
			echo "---------------------------------------------------------------"
			echo "---------------------Listagem das Pastas-----------------------"
			ls -d */	#listar apenas os diretorios
			echo "------------------------Listagem Geral-------------------------"
			ls		#listar todos os ficheiros e pastas
			echo "---------------------------------------------------------------"
			echo ""
			echo ""
			echo "Introduza o nome do diretorio para o qual deseja mudar (Incluir os _)"				
			read dirm
			cd $dirm
					
		elif [ $menu7 == b ] || [ $menu7 == B ]		#Opçao B do menu, volta para a pasta anterior
		then
			cd ..
		fi
		done
		
		echo ""
		echo "Introduza o nome do ficheiro que deseja visualizar (substitua o espaços por _)"
		read file
		echo ""
		echo "-----------------------------------------------------"
		cat $file		#Imprime no terminal o conteudo do ficheiro escolhido pelo utilizador
		echo "-----------------------------------------------------"
		Pausa
		cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
}

#Opçao I, zip e unzip as pastas relativas a estrotura lego
OpcaoI(){	
		clear
		echo "---------------------------------------------------------------"
		echo "|--------------------O que deseja realizar--------------------|"
		echo "|a) ---------------------- Unzip files -----------------------|"
		echo "|b) ----------------------- Zip files ------------------------|"
		echo "---------------------------------------------------------------"
		read menu8
			
		if [ $menu8 == a ] || [ $menu8 == A ]
		then
			clear				
			unzip Primeira.zip		#descomprimir pasta 
			echo "A descomprimir pasta......"
					
		elif [ $menu8 == b ] || [ $menu8 == B ]
		then
			clear
			zip -r Primeira 9V Game Hobby_Sets	#comprimir pasta
			echo "A comprimir pasta para Primeira.zip"
		fi
		
		Pausa
		cd "$init"	#voltar ao diretorio principal ao voltar ao menu principal
}


while [[ $menu != x && $menu != X ]]	#menu Principal
do
	clear
	echo "-----------------------O que deseja realizar--------------------"
	echo "|a) --------------------- Criar Diretorio ---------------------|"
	echo "|b) -------------------- Remover Diretorio --------------------|"
	echo "|c) --------------------- Criar Ficheiro ----------------------|"
	echo "|d) -------------------- Remover Ficheiro ---------------------|"
	echo "|e) ------- Contar numero de caracteres num ficheiro txt ------|"
	echo "|f) --------- Contar numero de linhas num ficheiro txt --------|"
	echo "|g) ------------------ Contar peças de Sets -------------------|"
	echo "|h) -------------- Mostrar conteudo do ficheiro ---------------|"
	echo "|i) ----------------------- Zip unzip  ------------------------|"
	echo "|x) -------------------------- sair ---------------------------|"
	echo "----------------------------------------------------------------"
	echo ""
	echo "---------------------------------------------------------------"
	echo "---------------------Listagem das Pastas-----------------------"
	ls -d */	#listar apenas os diretorios
	echo "------------------------Listagem Geral-------------------------"
	ls		#listar todos os ficheiros e pastas
	echo "---------------------------------------------------------------"
	echo ""
	echo "Escolha o que pertende fazer:"
	read menu	
	
	if [ $menu == a ] || [ $menu == A ]	#opçao A do menu
		then
		menu1=0
		OpcaoA
		
	elif [ $menu == b ] || [ $menu == B ]	#opçao B do menu
		then
		menu5=0
		OpcaoG
	 
	elif [ $menu == c ] || [ $menu == C ]	#opçao C do menu
		then
		menu2=0
		OpcaoB
	elif [ $menu == d ] || [ $menu == D ]	#opçao D do menu
		then
		menu3=0
		OpcaoE
	elif [ $menu == e ] || [ $menu == E ]	#opçao E do menu
		then
		menu4=0
		OpcaoC
	elif [ $menu == f ] || [ $menu == F ]	#opçao F do menu
		then
		menu5=0
		OpcaoD
	elif [ $menu == g ] || [ $menu == G ]	#opçao G do menu
		then
		menu6=0
		OpcaoF
	elif [ $menu == h ] || [ $menu == H ]	#opçao H do menu
		then
		menu7=0
		OpcaoH
	elif [ $menu == i ] || [ $menu == I ]	#opçao H do menu
		then
		menu8=0
		OpcaoI
	elif [ $menu == x ] || [ $menu == X ]	#opçao X do menu
		then
		clear
		echo "Obrigado pela sua Prefencia"
		echo "--------------------------------"
		echo "Autor: Fábio Lopes 25999"
		echo "--------------------------------"
		Pausa
		break
	else
		echo "Por favor Introduza um valor valido"	#mensagem de erro se o Utilizador escolher uma opçao invalida
		Pausa
	fi
done
