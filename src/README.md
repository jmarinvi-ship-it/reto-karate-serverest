    # Reto de Automatización QA - BackEnd (ServeRest)

Suite de pruebas automatizadas desarrollada para la API de Usuarios de ServeRest utilizando **Karate DSL** y **JUnit 5**.

## 🚀 Tecnologías y Herramientas
* **Java** (JDK 17 o superior)
* **Maven** (Gestión de dependencias y ciclo de vida)
* **Karate DSL** (Framework de pruebas de API orientadas a BDD)
* **JUnit 5** (Motor de ejecución de pruebas)

## 📁 Estructura del Proyecto
```text
reto-karate-serverest/
├── src/
│   └── test/
│       └── java/
│           ├── helpers/
│           │   └── DataGenerator.java
│           ├── usuarios/
│           │   ├── usuarios-crud.feature
│           │   └── usuarios-negativos.feature
│           ├── runners/
│           │   └── UsuariosRunnerTest.java
│           └── karate-config.js
├── pom.xml
└── README.md