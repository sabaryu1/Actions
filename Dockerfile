# Використання офіційного іміджу Nginx з Docker Hub
FROM nginx:latest

# Копіювання власної конфігурації або контенту (якщо потрібно)
# COPY ./index.html /usr/share/nginx/html/index.html

# Відкриття порту, на якому буде працювати Nginx
EXPOSE 80

