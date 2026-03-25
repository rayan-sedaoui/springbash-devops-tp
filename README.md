# SpringBash DevOps TP

Ce projet est une démonstration d'automatisation DevOps. Il combine une application Java/Spring Boot avec une suite de scripts Bash conçus pour automatiser tout le cycle de vie de l'application (CI/CD local) : compilation, déploiement, vérification de santé et gestion des processus.

# Technologies Utilisées
* **Java 25** & **Spring Boot 3** (API REST)
* **Maven** (via `mvnw` Wrapper)
* **Bash** (Scripts d'automatisation)
* **Git** (Versionnement)

# Fonctionnalités des Scripts
Le dossier `/scripts` contient les outils permettant de gérer l'application sans taper de longues commandes manuelles :

* `deploy.sh` : Script maître. Il tue les anciens processus, libère le port 8085, compile le code source Java, package le `.jar` et lance le serveur en arrière-plan (nohup).
* `stop.sh` : Détecte le PID de l'application Spring Boot en cours sur le port 8085 et l'arrête proprement.
* `healthcheck.sh` : Interroge le port 8085 et vérifie que l'application est bien vivante et retourne un code HTTP 200.
* `archive_logs.sh` : Compresse les fichiers de logs générés lors du déploiement dans une archive horodatée `.tar.gz` pour garder une trace propre.

# Créer l'application Spring Boot (avec le HelloController)

<img width="956" height="316" alt="Screenshot 2026-03-25 220606" src="https://github.com/user-attachments/assets/a81a2165-06bb-429d-af36-5ff7cbc848bd" />


# Automatiser le nettoyage (stop.sh pour tuer les processus et libérer le port 8085)

<img width="1457" height="223" alt="Screenshot 2026-03-25 221550" src="https://github.com/user-attachments/assets/00951c31-8633-4f5f-bbc4-81a7c9460cec" />


# Automatiser le déploiement (deploy.sh pour compiler avec Maven et lancer le serveur en arrière-plan)

<img width="1614" height="238" alt="Screenshot 2026-03-25 221328" src="https://github.com/user-attachments/assets/ceba8f6d-8c85-489b-93c2-3edfffd96c63" />

<img width="1797" height="511" alt="Screenshot 2026-03-25 221344" src="https://github.com/user-attachments/assets/8bfef172-ca66-48e3-bf1f-f35c8e735418" />


# Tester la disponibilité (healthcheck.sh qui t'a renvoyé le beau HTTP 200)

<img width="1030" height="165" alt="Screenshot 2026-03-25 221234" src="https://github.com/user-attachments/assets/8d863ebd-a8ae-4014-9df3-3ca63abadda9" />


# Archiver les logs proprement (archive_logs.sh)

<img width="1240" height="137" alt="Screenshot 2026-03-25 221133" src="https://github.com/user-attachments/assets/af41e2ea-9ec7-4cfe-be6a-c17bc6549ae6" />


# Créer le fichier de rendu final (rendu_tp_springbash.tar.gz)

<img width="1727" height="818" alt="Screenshot 2026-03-25 220832" src="https://github.com/user-attachments/assets/cb9830f7-6814-4b77-9a24-cbad5402d2de" />
<img width="1375" height="855" alt="Screenshot 2026-03-25 220905" src="https://github.com/user-attachments/assets/4080e34d-b194-4859-8a46-2ef185a74021" />

# Architecture du tp 

<img width="600" height="853" alt="Screenshot 2026-03-25 221750" src="https://github.com/user-attachments/assets/7a69b07f-6c74-444c-814a-3ec3408d8566" />
<img width="582" height="545" alt="Screenshot 2026-03-25 221758" src="https://github.com/user-attachments/assets/ee35c82b-1874-4863-8c75-5ca725c1f53c" />

