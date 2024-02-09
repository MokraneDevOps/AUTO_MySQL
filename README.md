1	Enoncé

Pour cet exercice, nous allons élaborer un cas pratique qui englobe :
•	La configuration d'un cluster Galera pour MariaDB sur deux nœuds à l'aide d'Ansible
•	La création automatisée de bases de données et de tables
•	La mise en place d'une stratégie de sauvegarde automatisée avec mysqldump et cron. 

2	Objectifs

Les Objectifs sont les suivantes :
1.	Configurer un cluster Galera pour MariaDB sur deux nœuds en utilisant Ansible pour l'installation et la configuration.
2.	Créer des bases de données et des tables de manière automatisée sur les deux nœuds du cluster.
3.	Automatiser les sauvegardes avec mysqldump et cron sur un serveur distant, en s'exécutant toutes les 5 minutes.
   
3	Configuration Requise

Serveur Ansible : 192.168.240.10
Premier nœud du cluster : 192.168.240.11
Deuxième nœud du cluster : 192.168.240.12
Serveur de sauvegarde : 192.168.240.13

Suivre les étapes suivantes :
1.	Configuration du Cluster Galera avec Ansible
a.	Définir un playbook Ansible pour installer MariaDB et configurer le cluster Galera sur les deux nœuds (192.168.240.11 et 192.168.240.12).
2.	Création Automatisée de Bases de Données et de Tables
a.	Définir un playbook Ansible qui exécute les commandes SQL pour créer les éléments suivants sur chaque nœud du cluster
b.	Etablir une clé de relation entre les tables Utilisateurs et Connexions dans votre base de données galera_cluster_db

Pour établir une clé de relation entre les tables Utilisateurs et Connexions dans votre base de données galera_cluster_db, vous utilisez la colonne Utilisateur_id dans la table Connexions comme clé étrangère qui pointe vers la colonne Id de la table Utilisateurs. Cette relation permet de lier chaque enregistrement de connexion à un utilisateur spécifique dans la base de données.
Une clé étrangère est un concept clé dans le domaine des bases de données relationnelles, utilisé pour maintenir l'intégrité des données et établir une relation logique entre deux tables.

3.	Automatisation des Sauvegardes avec MysqlDumb et Cron
a.	Définir un playbook Ansible pour concevoir un script shell. Ce script emploiera mysqldump pour effectuer des sauvegardes de galera_cluster_db sur chaque nœud, en stockant ces sauvegardes dans des fichiers distincts au sein d'un dossier /etc/SAVE situé sur le serveur de sauvegarde à l'adresse 192.168.240.13.
b.	Configurer une tâche cron sur le serveur de sauvegarde pour exécuter ce script toutes les 5 minutes.


4	Consignes Additionnelles

Pour garantir l'efficacité de la stratégie de sauvegarde, il est recommandé de tester la restauration d'une base de données à partir des fichiers de sauvegarde et de documenter chaque étape du TP, permettant ainsi une reproduction ou une vérification aisée par d'autres.


5	Livrables

À la fin du TP, vous devez soumettre les éléments suivants :
•	Playbook Ansible pour l'installation et la configuration de MariaDB et du cluster Galera.
•	Playbook Ansible pour la création de bases de données et de tables.
•	Playbook Ansible qui exécute les commandes SQL pour créer la base de données, les tables, le contenue des tables et la clé étrangère qui permet de faire la relation des deux tables
•	Script de sauvegarde et configuration cron pour les sauvegardes automatiques.
•	Documentation détaillée des étapes, commandes SQL utilisées pour la création des tables, et instructions pour la vérification de l'exercice.
 






