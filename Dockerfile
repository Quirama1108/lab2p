#  Etapa de construcción
FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /app

# Copiar el contenido del proyecto
COPY . .

# Compilar el proyecto sin ejecutar tests
RUN mvn clean package -DskipTests

#  Etapa de ejecución
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copiar el JAR generado desde la etapa de build
COPY --from=build /app/target/lab2p.jar lab2p.jar

# Exponer el puerto del backend
EXPOSE 8080

# Ejecutar la aplicación
ENTRYPOINT ["java","-jar","lab2p.jar"]

