# Estágio 1: Build (Usa o Maven para baixar as dependências e compilar o projeto)
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
# Compila o projeto ignorando os testes para ser mais rápido
RUN mvn clean package -DskipTests

# Estágio 2: Execução (Cria a imagem final super leve só com o que precisa para rodar)
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Expõe a porta padrão do Spring Boot
EXPOSE 8080

# Comando para iniciar o seu backend
ENTRYPOINT ["java", "-jar", "app.jar"]