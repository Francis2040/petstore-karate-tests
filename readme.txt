EJECUCIÓN DE PRUEBAS PETSTORE API

Para ejecutar las pruebas:

1. Compilar el proyecto:
   ./gradlew clean build

2. Ejecutar todos los tests:
   ./gradlew test

3. Ver reportes:
   Los reportes se generan en: build/karate-reports/karate-summary.html

Escenarios implementados:

1. Añadir una mascota a la tienda (POST /pet)
2. Consultar mascota por ID (GET /pet/{id})
3. Actualizar mascota a status "sold" (PUT /pet)
4. Consultar mascotas por status "sold" (GET /pet/findByStatus)

Tecnologías:
- Karate Framework 1.4.0
- Java JDK 8+
- Gradle 7.0+

La estructura sigue el mismo patrón que el ejemplo de reqres.in, con escenarios independientes y assertions claras.