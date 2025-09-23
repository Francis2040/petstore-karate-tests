# PetStore API Tests

Este proyecto contiene pruebas automatizadas de la API de PetStore usando **Karate**.

---------------------------------------------------------------
1. Prerrequisitos
---------------------------------------------------------------

Para ejecutar los tests correctamente, se requiere tener instalado y configurado en la máquina local:

- Sistema operativo: Windows 10
- IDE: IntelliJ IDEA 2023.1
- Maven: 3.8.6 (debe estar en la variable de entorno)
- JDK: 1.8 (debe estar en la variable de entorno)

---------------------------------------------------------------
2. Comandos de instalación
---------------------------------------------------------------

Para instalar las dependencias necesarias en tu proyecto:

# Descarga todas las dependencias del POM sin ejecutar tests
mvn install -DskipTests

# Si agregas paquetes de Node.js u otras herramientas, se pueden incluir comandos como:
# npm install
# npm install cypress --save-dev

---------------------------------------------------------------
3. Instrucciones para ejecutar los tests
---------------------------------------------------------------

Para ejecutar las pruebas de Karate:

# Ejecutar todos los tests de Karate
mvn test

# Ejecutar un feature específico
mvn test -Dkarate.options="classpath:features/petstore.feature"

### Generación de reportes

Después de ejecutar los tests, Karate genera reportes HTML en la ruta:

target/surefire-reports/karate-summary.html

Abre este archivo en un navegador para ver el resumen de los resultados.

---------------------------------------------------------------
4. Estructura de los tests
---------------------------------------------------------------

Ejemplo de escenarios de prueba en PetStore API:

Scenario: Añadir una mascota a la tienda

Scenario: Consultar la mascota ingresada previamente

Scenario: Actualizar nombre y estatus a "sold"

Scenario: Consultar la mascota modificada por estatus

---------------------------------------------------------------
5. Información adicional
---------------------------------------------------------------

- Para cualquier duda o problema durante la ejecución de los tests, revisar la documentación oficial de Karate: https://github.com/karatelabs/karate
