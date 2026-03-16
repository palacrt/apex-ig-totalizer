# apex-ig-totalizer

## APEX Interactive Grid Numeric Totalizer

Este plugin de tipo **Acción Dinámica** para Oracle APEX permite calcular automáticamente valores agregados (Suma, Promedio o Recuento) de una columna específica dentro de una **Cuadrícula Interactiva** y reflejar el resultado en un **Elemento de Página** en tiempo real.

## Características Principales
* **Cálculo en Tiempo Real:** Se activa automáticamente al modificar valores, agregar nuevas filas o eliminar registros en el Interactive Grid.
* **Operaciones Soportadas:** Permite realizar cálculos de **SUM** (Suma), **COUNT** (Contar) y **AVG** (Promedio).
* **Soporte de Máscara de Formato:** Incluye un atributo para definir una máscara de formato tanto para la lectura del campo como para la visualización del resultado.
* **Eficiencia:** Utiliza la API de `apex.model` para suscribirse a los cambios del modelo de datos sin necesidad de recargar la página.

## Ejemplo de Uso

Imagina que tienes una pantalla de **Gestión de Ventas** con un Interactive Grid que muestra los productos vendidos. Quieres mostrar el monto total de la venta en un campo destacado arriba del reporte.

### 1. Preparación de la Página
* **Interactive Grid:** Asígnale un ID Estático (Static ID), por ejemplo: `IG_VENTAS`.
* **Columna del IG:** Asegúrate de conocer el nombre del campo (Case Sensitive), por ejemplo: `PRECIO_TOTAL`.
* **Page Item:** Crea un elemento de tipo *Number Field* o *Display Only* llamado `P10_TOTAL_GENERAL`.

### 2. Configuración de la Acción Dinámica
Crea una nueva Acción Dinámica con los siguientes parámetros:
* **Event:** Page Load (o el evento que inicialice el IG).
* **Action:** Interactive Grid Numeric Totalizer.
* **Settings:**
    | Atributo | Valor de Ejemplo |
    | :--- | :--- |
    | **Region Static ID** | `IG_VENTAS` |
    | **Field Name** | `PRECIO_TOTAL` |
    | **Page Item to Return Total** | `P10_TOTAL_GENERAL` |
    | **Operation** | `SUM` |
    | **Format Mask** | `FML999G999G990D00` |

---

## Instalación
1. Descarga el archivo: `dynamic_action_plugin_dev_apex-latam_ig-totalizer-2.sql`.
2. En tu aplicación de Oracle APEX, navega a **Shared Components** > **Plugins**.
3. Haz clic en **Import** y selecciona el archivo descargado.
4. Sigue los pasos del asistente para completar la instalación.
5. Opcionalmente se puede instalar la Aplicación app_demo.sql, como prerequisito se requieren las tablas de ejemplo de oracle EMP y DEPT.


## Licencia
Distribuido bajo **GNU General Public License v2.0**.

---

### Contribuciones
Si tienes sugerencias para mejorar este plugin o encuentras algún comportamiento inesperado, te invito a abrir un *Issue* o enviar un *Pull Request*.

**Desarrollado por:** Juan David Palacios ([JUANDPALACIOS@GMAIL.COM](mailto:JUANDPALACIOS@GMAIL.COM)).
