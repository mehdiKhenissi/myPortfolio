# Étape 1 : image de build
FROM node:20-alpine AS build

# Définir le répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du projet
COPY . .

# Build du projet Vue
RUN npm run build

# Étape 2 : serveur léger pour servir les fichiers
FROM nginx:alpine

# Copier le build du projet vers le répertoire de Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Copier configuration Nginx personnalisée si besoin
# COPY nginx.conf /etc/nginx/nginx.conf

# Exposer le port 80
EXPOSE 80

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
