# digitalGourde
TPT_Master2MBDS

AUTEURS :

Chloé Maccarinelli

Thomas Beatini

Arnaud Fernandez

Cédric Ortega
__________________________

LANCER LE PROJET EN LOCAL 
__________________________

Environnement :

	Docker
	MySQL (avec xampp par exemple)
		


Cloner le projet git et dézipper le dossier openchain-images-docker.zip

Importer le fichier openchainuser.sql dans une bdd phpMyAdmin (avoir Xampp de lancé)



1.	Lancer le serveur node 

    cd TPTBlockchain-master\NodeServer 
    npm install
    node index.js

Le serveur node se lance sur le port 8086 : 

    https://localhost:8086

2.	Lancer l’application

    cd TPTBlockchain-master
    npm install
    npm start
          
L’application se lance sur le port 4200 en local :  
  
    http://localhost:4200/portail (pour les particuliers commerçants)
    http://localhost:4200/brh/accueil (pour les institutions finançières et la BRH)

3.	Lancer l’image docker de l’instance maître de openchain

    cd openchain
    docker-compose up 

4.	Lancer l’image docker de l’instance esclave de openchain

    cd openchain2
    docker-compose up 

Dans \src\environments\environment.ts : 

    openchainUrl: 'http://192.168.99.100:8087/'
    
où 192.168.99.100 correspond à l’ip de notre machine docker par default

Pour que notre serveur communique correctement avec Openchain:

 Dans NodeServer\env.config.js on vérifie que 192.168.99.100 correspond bien à notre machine docker
    
    "openchainValidator" :  "http://192.168.99.100:8085/",
    "openchainObserver" :  "http://192.168.99.100:8087/",


Si tout fonctionne le serveur doit retourner :

    Serveur lancé sur le port : 8086
    Openchain initialized: 26b2806b808f7bdb


Si la connexion a un compte utilisateur renvoie une erreur SSL suivez la méthode suivante:
    
    aller sur le locahost:8086/bienvenue
    autoriser l'accès au site dangereux
    clicker sur Revenir
      
      
      

 
     


