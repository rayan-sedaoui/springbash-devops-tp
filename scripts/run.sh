#!/bin/bash
echo "Démarrage de l'application Spring Boot..."
# On force Bash à utiliser ton JDK 17
export JAVA_HOME="C:/Users/pc/.jdks/ms-17.0.18"
nohup ./mvnw spring-boot:run > logs/app.log 2>&1 &
echo "Application démarrée avec succès (PID : $!)"
