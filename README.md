# UMU Thesis Template (LaTeX)

Plantilla no oficial para la redacción de tesis doctorales, TFM y otros documentos académicos en la **Universidad de Murcia (UMU)**. 

<p align="center">
    <a href="https://www.latex-project.org"><img src="https://img.shields.io/badge/Made%20with-LaTeX-red.svg?style=flat-square"></a>
    <a href="https://www.latex-project.org/lppl/lppl-1-3c"><img src="https://img.shields.io/badge/License-LPPL%20v1.3c-yellow.svg?style=flat-square"></a>
    <a href="https://github.com/enriiquee/umu-thesis/releases"><img src="https://img.shields.io/github/v/tag/enriiquee/umu-thesis?style=flat-square&label=Release&color=8892BF"></a>
    <a href="https://github.com/enriiquee/umu-thesis/graphs/commit-activity"><img src="https://img.shields.io/badge/Maintained-Yes-brightgreen.svg?style=flat-square"></a>
    <a href=""><img src="https://img.shields.io/badge/Build-Passing-brightgreen.svg?style=flat-square"></a>
</p>
<br/>

---

## 🎯 Características

* Estructura modular, profesional y clara.
* Totalmente compatible con [Overleaf](https://www.overleaf.com) (sin configuración adicional).
* Personalización sencilla:

  * Idioma (`english` / `spanish`)
  * Estilo de capítulos y portada (`classic`, `modern`, `fancy`)
  * Modo de trabajo (`working`, `final`)
  * Medios (`screen`, `paper`)
  * Colores de enlaces (`colorlink=...`)
* Incluye ejemplos de:

  * Bibliografía con BibTeX
  * Figuras y tablas
  * Acrónimos y glosario
  * Código fuente (con syntax highlighting)
  * Apéndices y anexos

---

### 🚀 Uso en Overleaf (recomendado)

La plantilla está disponible directamente en Overleaf:
🔗 **[https://www.overleaf.com/latex/templates/tesis-universidad-de-murcia/fdtnqcmbxndr](https://www.overleaf.com/latex/templates/tesis-universidad-de-murcia/fdtnqcmbxndr)**

Pasos para empezar:

1. Haz clic en el enlace de la plantilla.
2. Pulsa en “Use as Template”.
3. Se creará un nuevo proyecto en tu cuenta.
4. Edita el archivo `UMUthesis.tex`.
5. Personaliza tu información en `Metadata/Metadata.tex`.
6. Comienza a escribir tu contenido en los archivos dentro de `Chapters/`.

---

### 💻 Compilación local (Windows, macOS y Linux)

La plantilla compila en local en los tres sistemas operativos, con **TeX Live** o **MiKTeX**.

**Requisitos**

* Una distribución LaTeX completa: [TeX Live](https://www.tug.org/texlive/) (Windows/Linux), [MacTeX](https://www.tug.org/mactex/) (macOS) o [MiKTeX](https://miktex.org/).
* `latexmk` y `biber`, incluidos en cualquier instalación completa.
* **XeLaTeX obligatoriamente.** La plantilla usa `fontspec`; con `pdflatex` no compila.
* **La opción `-shell-escape` obligatoriamente**, porque el paquete `minted` necesita lanzar un proceso externo para resaltar el código.

**Compilar**

```bash
latexmk        # Compila todo: bibliografía, glosario, acrónimos y las pasadas necesarias
latexmk -c     # Limpia los ficheros intermedios y conserva el PDF
latexmk -C     # Limpia también el PDF
```

El fichero `.latexmkrc` incluido en el repositorio ya configura XeLaTeX, `-shell-escape`, `biber` y las dependencias del glosario, así que no hace falta pasar ninguna opción.

Si prefieres ejecutarlo paso a paso, este es el orden correcto:

```bash
xelatex -shell-escape UMUthesis
biber UMUthesis
makeglossaries UMUthesis
xelatex -shell-escape UMUthesis
xelatex -shell-escape UMUthesis
```

**No necesitas instalar ninguna fuente.** Se cargan por nombre de fichero desde el propio árbol de TeX Live/MiKTeX, que es idéntico en los tres sistemas. Cargarlas por nombre de familia, como hacía la versión anterior, solo funciona en Linux y en Overleaf: en Windows y macOS el documento caía silenciosamente a Latin Modern.

> **Nota sobre `minted`.** Con TeX Live 2025 o superior no necesitas instalar nada más, porque `latexminted` ya viene incluido. Con versiones anteriores necesitarás Python y Pygments (`pip install Pygments`).

---

## 🌐 Opciones de configuración

Edita el comando `\documentclass[...]` en `UMUthesis.tex` para ajustar las opciones:

```latex
\documentclass[
  language=spanish,
  chapterstyle=modern,
  docstage=final,
  media=paper,
  linkcolor=red!45!black
]{UMUthesis}
```

| Opción | Valores | Por defecto | Efecto |
|---|---|---|---|
| **language** | `english`, `spanish` | `english` | Idioma de los títulos automáticos, la portada y los pies de figura. |
| **chapterstyle** | `classic`, `fancy`, `modern` | `fancy` | Aspecto del título y la numeración de los capítulos. |
| **docstage** | `working`, `final` | `working` | `working` imprime la versión y la fecha en el pie de cada página. Requiere definir `\DocumentVersion{...}`. |
| **media** | `paper`, `screen` | `paper` | `paper` intercala páginas en blanco para impresión a doble cara; `screen` no. |
| **linkcolor** | cualquier color de `xcolor` | `black` | Color de enlaces, citas y URLs. |

> **Sobre `linkcolor`.** Se recomienda `red!45!black` para leer en pantalla. Si vas a **imprimir** la tesis, déjalo en `black`: muchas copisterías cobran la página a color solo por un enlace coloreado.

---

## 📁 Estructura del proyecto

```
UMUthesis.tex             → Archivo principal: opciones e inclusión de capítulos
UMUthesis.cls             → Clase personalizada de la UMU (no la toques)
.latexmkrc                → Configuración de compilación local
Metadata/                 → Metadatos (título, autor, dirección de tesis, etc.)
Chapters/                 → Capítulos principales, apéndices y anexos
Configurations/           → Fuentes, colores, márgenes, cabeceras... (no la toques)
Matter/                   → Portada, dedicatoria, agradecimientos, glosario, etc.
Figures/                  → Imágenes y gráficos
Bibliography/             → Archivo .bib con las referencias
Documents/                → PDFs que se insertan tal cual (declaración de autoría)
Code/                     → Código fuente o scripts que se incluyen en el texto
```

---

## 📄 Licencia

Este proyecto se distribuye bajo la **[LaTeX Project Public License v1.3c](https://www.latex-project.org/lppl/lppl-1-3c.txt)**, la licencia estándar de las plantillas y paquetes de LaTeX (y la misma que usa la plantilla original de la que deriva). Puedes usarlo, modificarlo y redistribuirlo libremente, siempre que mantengas la atribución al autor original y al adaptador. Consulta el fichero [`LICENSE`](LICENSE) para los detalles.

---

## 🙏 Créditos

* Plantilla original: [`ipleiria-thesis`](https://github.com/joseareia/ipleiria-thesis) por José Areia
* Adaptación para la Universidad de Murcia: **Enrique Pérez**
  Contacto: [enrique.perez2@um.es](mailto:enrique.perez2@um.es)

---

## ⭐ ¿Te ha sido útil?

Si esta plantilla te ha ayudado, considera darle una ⭐ en GitHub. También puedes contribuir con mejoras, sugerencias o correcciones mediante un Pull Request o Issue.

---


