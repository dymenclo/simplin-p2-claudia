exercice SQL:

/*1)Afficher la liste des pays où SIMPLON est présent.*/



MariaDB [simplon]> select distinct pays.nom from pays inner join fabrique on pays.id = fabrique.id_pays;
+---------------+
| nom           |
+---------------+
| SENEGAL       |
| MALI          |
| Maroc         |
| Cote D/Ivoire |
+---------------+



 


/*2)Afficher la liste des fabriques de la ville de dakar.*/

MariaDB [simplon]> select nom from fabrique where ville = 'dakar';
+------------------+
| nom              |
+------------------+
| simplonauf       |
| sonatel académy  |
+------------------+



/*3)Afficher la liste des pays qui ont au moins deux fabriques*/

MariaDB [simplon]> select pays.nom from pays inner join fabrique on pays.id = fabrique.id_pays having count(pays.id = fabrique.id_pays) >= 2;
+---------+
| nom     |
+---------+
| SENEGAL |
+---------+



/*7 écrire le code SQL qui permet d'ajouter un nouveau champ ouvert de type boolén à la table cohorte*/

MariaDB [simplon]> alter table cohorte add ouvert boolean;
+------------------+------------+------+-----+---------+----------------+
| Field            | Type       | Null | Key | Default | Extra          |
+------------------+------------+------+-----+---------+----------------+
| id               | int(11)    | NO   | PRI | NULL    | auto_increment |
| date_debut       | date       | NO   |     | NULL    |                |
| date_fin         | date       | NO   |     | NULL    |                |
| nombre_apprenant | int(11)    | YES  |     | NULL    |                |
| ouvert           | tinyint(1) | YES  |     | NULL    |                |
+------------------+------------+------+-----+---------+----------------



/*8) modifier le type du champ sexe, mettre char(1) au lieu de boolean*/
MariaDB [simplon]> alter table apprenant change sexe sexe char(1);
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| nom            | varchar(45) | NO   |     | NULL    |                |
| prenom         | varchar(45) | NO   |     | NULL    |                |
| statut         | varchar(45) | NO   |     | NULL    |                |
| date_naissance | date        | NO   |     | NULL    |                |
| sexe           | char(1)     | YES  |     | NULL    |                |
| email          | varchar(45) | NO   |     | NULL    |                |
| tel            | int(11)     | NO   |     | NULL    |                |
| id_referentiel | int(11)     | NO   | MUL | NULL    |                |
| id_cohorte     | int(11)     | NO   | MUL | NULL    |                |
| id_fabrique    | int(11)     | NO   | MUL | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+



/*6) affiche la liste des apprenants qui ont au moins un contrat*/
MariaDB [simplon]> select nom,prenom from apprenant inner join contrat on apprenant.id = contrat.id_apprenant and contrat.type_contrat != '';
+-------+---------+
| nom   | prenom  |
+-------+---------+
| DYMEN | NATACHA |
| DYMEN | EMILIE  |
+-------+---------+






