# Introduction 
Desafio tecnico  - Projeto Mobile  utilizando  APKs no link abaixo:
https://drive.google.com/drive/folders/12URcclJ5RmyLE_k5KSsbdbD96r_EyA07
Contendo pelos menos 3 cenarios de teste.

O projeto foi construido com o framework appium com a linguagem de programação Ruby

# Getting Started
Processo para instal  do ambiente de test.
1- Instale o Homebrew
  Homebrew é um gerenciador de pacotes para o MAC OS que possibilita a
instalação de programas bibliotecas e funções tudo via terminal.
  https://brew.sh/index_pt-br
2 - Instale o Rbenv com o comando no terminal:
  brew install rbenv ruby-build
Para verificar a versao do rbenv: 
  rbenv -v 
Por fim vamos adicionar o rbenv ao Bash_profile: 
  echo'eval "$(rbenv init -)"' >> ~/.bash_profile
  
3 - Instalando Ruby
  rbenv install 2.5.1
  rbenv global 2.5.1

4- Android Studio
  https://developer.android.com/studio
  
5 - Visual Studio Code 
  https://code.visualstudio.com/
  
6 - Appium
  http://appium.io/
  
7 - Java JDK 
  https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html

# Contribute
Para iniciar a execução, é necessário clonar o projeto do GitHub num diretório de sua preferência:

cd "diretorio de sua preferencia"
git clone https://github.com/condessalovelace/mavenquickstart

Abra o projeto no Visual Studio Code 

Inicialize o server appium 

Execute no terminal o comando: 

   cucumber --format html --out reports.html
