# TigerFit - Site Web avec Docker Compose

Ce projet utilise Docker Compose avec Nginx pour servir le site web TigerFit.

## Prérequis

- Docker
- Docker Compose

## Installation et démarrage

1. **Cloner ou télécharger le projet**
   ```bash
   # Assurez-vous que les fichiers suivants sont présents :
   # - page.html
   # - docker-compose.yml
   # - nginx.conf
   ```

2. **Démarrer le serveur**
   ```bash
   docker-compose up -d --build
   ```

3. **Accéder au site**
   Ouvrez votre navigateur et allez sur : `http://localhost`

## Commandes utiles

- **Démarrer les services** : `docker-compose up -d`
- **Arrêter les services** : `docker-compose down`
- **Voir les logs** : `docker-compose logs -f nginx`
- **Redémarrer** : `docker-compose restart`
- **Reconstruire** : `docker-compose up -d --build`

## Structure des fichiers

```
.
├── page.html          # Votre fichier HTML principal
├── docker-compose.yml # Configuration Docker Compose
├── Dockerfile         # Image Docker personnalisée
├── nginx.conf         # Configuration Nginx
└── README.md          # Ce fichier
```

## Configuration Nginx

Le fichier `nginx.conf` inclut :
- Compression Gzip pour de meilleures performances
- Headers de sécurité
- Cache pour les assets statiques
- Gestion des erreurs 404
- Optimisations de performance

## Ports

- **Port 80** : Site web principal

## Support

Pour toute question ou problème, vérifiez les logs avec :
```bash
docker-compose logs nginx
```
