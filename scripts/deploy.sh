#!/bin/bash
# Le VRAI chemin vers ton Java !
export JAVA_HOME="/c/Program Files/Java/jdk-25"
export PATH="$JAVA_HOME/bin:$PATH"

mkdir -p logs
echo "🧹 Nettoyage des anciens processus..."
./scripts/stop.sh

echo "📦 Compilation du projet avec le Wrapper (mvnw)..."
# On s'assure que le wrapper est exécutable
chmod +x mvnw
./mvnw clean package -DskipTests

if [ $? -ne 0 ]; then
  echo "❌ Erreur lors de la compilation !"
  exit 1
fi

echo "🚀 Déploiement du JAR..."
JAR_FILE=$(ls target/*.jar | head -n 1)

nohup java -jar "$JAR_FILE" > logs/deploy.log 2>&1 &
echo "✅ Nouvelle version lancée (PID : $!)"
echo "Tape : tail -f logs/deploy.log pour voir le démarrage."
