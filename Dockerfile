# Usar la imagen base de OpenJDK 11
FROM openjdk:11

# Definir el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el código fuente al contenedor
COPY src/ /app/src/
COPY src/main/java/SistemaHospital.java /app/

# Compilar el código
RUN javac -cp /app/src SistemaHospital.java

# Ejecutar el programa y mantener el contenedor activo
CMD ["sh", "-c", "java -cp /app/src SistemaHospital; tail -f /dev/null"]

