# zuber-chicago-taxi-analysis
Análisis integral del servicio de taxis en Chicago combinando SQL, Python y estadística inferencial. Estudio de concentración empresarial, patrones geográficos de demanda e impacto de condiciones climáticas en duración de viajes. Incluye consultas SQL especializadas, análisis exploratorio con visualizaciones y pruebas de hipótesis estadísticas.
# Análisis de Viajes en Taxi de Chicago

## Descripción del Proyecto

Este proyecto realiza un **análisis integral del servicio de taxis en Chicago**, combinando técnicas de consulta SQL, análisis exploratorio de datos y pruebas de hipótesis estadísticas. El estudio examina tres dimensiones principales: distribución empresarial, patrones geográficos de demanda y el impacto de las condiciones climáticas en la duración de los viajes.

## Metodología

### Fase 1: Extracción y Preparación de Datos (SQL)
- Consultas SQL especializadas para extraer información de bases de datos relacionales
- Generación de tres datasets principales:
  - `company_trips`: 64 empresas con volúmenes de viajes
  - `location_trips`: 94 ubicaciones con promedios de finalizaciones  
  - `avg_time_trips`: 1,068 registros de duración con condiciones climáticas

### Fase 2: Análisis Exploratorio de Datos (Python)
- Importación y validación de estructura de datos
- Análisis descriptivo de patrones empresariales y geográficos
- Visualizaciones informativas con matplotlib y seaborn
- Aplicación de filtros metodológicos para enfocar el análisis

### Fase 3: Inferencia Estadística
- Formulación de hipótesis sobre el impacto climático en duración de viajes
- Prueba t de Student para muestras independientes
- Interpretación estadística con nivel de significancia α = 0.05

## Hallazgos Principales

### 1. Concentración Empresarial
- **97.2%** del volumen total concentrado en 25 empresas principales
- **Flash Cab** lidera con 19,558 viajes
- Estructura de mercado oligopólica con barreras de entrada significativas

### 2. Patrones Geográficos
- **Loop** es el destino dominante con 10,727 viajes promedio
- Centralización urbana en núcleo económico-turístico
- Diferencia de **8.5 veces** entre primer y décimo destino más frecuente

### 3. Impacto Climático
- **21.4%** incremento en duración durante mal clima
- **7.1 minutos** adicionales promedio en condiciones adversas
- **p-value = 6.52 × 10⁻¹²** (altamente significativo estadísticamente)

## Tecnologías Utilizadas

- **SQL**: Consultas y extracción de datos
- **Python**: Análisis exploratorio y visualización
  - pandas, numpy
  - matplotlib, seaborn
  - scipy.stats
- **Jupyter Notebook**: Desarrollo y documentación

## Estructura del Proyecto

```
zuber-chicago-taxi-analysis/
│
├── data/
│   ├── company_trips.csv
│   ├── location_trips.csv
│   └── avg_time_trips.csv
│
├── notebooks/
│   └── chicago_taxi_analysis.ipynb
│
├── sql_queries/
│   └── data_extraction.sql
│
└── README.md
