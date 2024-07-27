# Використовуємо офіційний образ Nginx
FROM nginx:latest

# Визначаємо аргумент для білда
ARG CURRENT_ENVIRONMENT

# Встановлюємо змінну оточення
ENV CURRENT_ENVIRONMENT=${CURRENT_ENVIRONMENT}

# Створюємо HTML сторінку з використанням змінної оточення
RUN echo "<!DOCTYPE html><html><head><title>Custom Nginx Page</title></head><body><h1>Hello, this is a custom Nginx page!</h1><p>Environment: ${CURRENT_ENVIRONMENT}</p></body></html>" > /usr/share/nginx/html/index.html

# Експонуємо порт 80
EXPOSE 80
