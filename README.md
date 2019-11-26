# digitalGourde
TPT_Master2MBDS

AUTEURS :

Chloé Maccarinelli

Thomas Beatini

Arnaud Fernandez

Cédric Ortega
____________________________________________________________________________________________

Lancer le projet en local 
____________________________________________________________________________________________

1.	Lancer le serveur node 

          cd TPTBlockchain-master\NodeServer 
          npm install
          node index.js

Le serveur node se lance sur le port 8086 : https://localhost:8086

2.	Lancer l’application

          cd TPTBlockchain-master
          npm install
          npm start
          
L’application se lance sur le port 4200 en local :  http://localhost:4200/portail

3.	Lancer l’image docker de l’instance maître de openchain

          cd openchain
          docker-compose up 

4.	Lancer l’image docker de l’instance esclave de openchain

          cd openchain2
          docker-compose up 

L’url openchain : http://192.168.99.100:8087/ où 192.168.99.100 correspond à l’ip de notre machine docker par default.
