# 📊 Análisis de Viajes en Taxi de Chicago - ZUBER

## 🎯 Descripción del Proyecto
Análisis de datos de viajes en taxi de Chicago utilizando SQL para extraer insights sobre patrones de uso, empresas de taxi y el impacto de las condiciones climáticas en los viajes.

**Sprint 8 - TripleTen**

---

## 📁 Estructura de Archivos

### `data_extraction.sql`
Consultas principales para extracción de datos utilizados en el análisis de Python.

**Consultas incluidas:**
- **Análisis de Empresas de Taxi**: Número de viajes por empresa (15-16 Nov 2017)
- **Viajes Loop-O'Hare**: Análisis de viajes del centro al aeropuerto los sábados con condiciones climáticas

### `exploratory_queries.sql`
Consultas exploratorias desarrolladas durante el proceso de aprendizaje y análisis inicial.

**Consultas incluidas:**
- Empresas con "Yellow" o "Blue" en el nombre
- Comparación entre Flash Cab y Taxi Affiliation Services
- Identificación de barrios estratégicos (O'Hare y Loop)

---

## 🗄️ Estructura de la Base de Datos

**Tablas principales:**
- `trips`: Información de viajes (timestamps, ubicaciones, duración)
- `cabs`: Datos de taxis y empresas
- `weather_records`: Registros meteorológicos por hora
- `neighborhoods`: Información de barrios de Chicago

---

## 🔍 Insights Principales

- **Empresas dominantes**: Flash Cab y Taxi Affiliation Services
- **Ruta estratégica**: Loop (centro) → O'Hare (aeropuerto)
- **Impacto climático**: Análisis de duración de viajes según condiciones meteorológicas
- **Patrones temporales**: Enfoque en viajes de sábado

---

## 🛠️ Tecnologías Utilizadas
- **SQL**: PostgreSQL
- **Análisis**: Joins, agregaciones, funciones de fecha
- **Clasificación**: Lógica condicional para condiciones climáticas