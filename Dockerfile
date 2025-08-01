FROM nginx:alpine

# Copier le fichier HTML
COPY page.html /usr/share/nginx/html/index.html

# Copier la configuration Nginx personnalisée
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exposer le port 80
EXPOSE 80

# Démarrage de Nginx
CMD ["nginx", "-g", "daemon off;"]
