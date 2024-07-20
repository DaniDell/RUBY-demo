# Utilizar una imagen base de Ruby
FROM ruby:latest

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el Gemfile y Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Instalar las dependencias
RUN bundle install

# Copiar el resto de la aplicación
COPY . .

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["ruby", "app.rb"]