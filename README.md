# 🐾 PetStore API Tests 🚀

Proyecto de **automatización de pruebas API** utilizando **[Karate](https://github.com/karatelabs/karate)**, sobre la API pública **[PetStore](https://petstore.swagger.io/)**.  

El objetivo es validar los principales flujos del servicio REST: crear, consultar, actualizar y eliminar mascotas.  
Se ejecutan pruebas **end-to-end (E2E)** que confirman el correcto funcionamiento de los endpoints y sus respuestas.

---

## 🧩 Estructura del proyecto

📁 petstore-karate-api-tests

├── 📂 src/test/java/features/ # Archivos .feature con los escenarios de prueba

├── 📂 target/surefire-reports/ # Reportes HTML generados por Karate

├── 🧾 pom.xml # Dependencias y configuración de Maven

├── ⚙️ mvnw / mvnw.cmd # Scripts para ejecutar Maven

└── 🗒️ README.md # Documentación del proyecto


---

## ⚙️ Prerrequisitos

Asegúrate de tener instalados los siguientes componentes:

- 🪟 **Sistema operativo:** Windows 10  
- 🧠 **IDE:** IntelliJ IDEA 2023.1 o superior  
- 🧰 **Maven:** 3.8.6 (debe estar en la variable de entorno)  
- ☕ **JDK:** 1.8 o superior (debe estar en la variable de entorno)

> 💡 Para verificar las versiones instaladas, puedes usar:
> ```bash
> java -version
> mvn -version
> ```

---

## 📦 Instalación de dependencias

Antes de ejecutar los tests, descarga las dependencias definidas en el `pom.xml`:

```bash
mvn install -DskipTests

---

### 📊 Reportes de resultados
target/surefire-reports/karate-summary.html

---

#### 🧩 Escenarios de prueba cubiertos

| Escenario                                   | Descripción                                      |
| ------------------------------------------- | ------------------------------------------------ |
| 🐶 **Añadir mascota a la tienda**           | Envía una solicitud POST con datos de la mascota |
| 🔍 **Consultar la mascota creada**          | Valida que la información guardada sea correcta  |
| ✏️ **Actualizar nombre y estatus a “sold”** | Envía un PUT para modificar la mascota           |
| 📋 **Consultar por estatus**                | Filtra mascotas con `status=sold`                |
| ❌ **Eliminar mascota**                      | Verifica la eliminación de una mascota existente |

---

#### 🧠 Conocimientos aplicados

Durante el desarrollo del proyecto se aplicaron:

Validaciones de endpoints REST con Karate

Manejo de métodos HTTP (GET, POST, PUT, DELETE)

Comparación de respuestas JSON esperadas vs. reales

Generación de reportes automáticos con Surefire

Organización modular de escenarios en archivos .feature

---

👩‍💻 Autor

Francis Anahole
QA Automation Engineer

📧 anaholef@gmail.com




