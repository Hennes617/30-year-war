# Verwende nginx als Basis-Image
FROM nginx:alpine

# Kopiere die statischen Dateien in das nginx html-Verzeichnis
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Kopiere das img-Verzeichnis (wenn vorhanden)
COPY img/ /usr/share/nginx/html/img/

# Exponiere Port 80
EXPOSE 80

# nginx startet automatisch durch das Base-Image
CMD ["nginx", "-g", "daemon off;"]