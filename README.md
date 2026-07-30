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

### ⚠️ Compilación local

Actualmente, **esta versión NO está adaptada para uso local**.
La compatibilidad con compiladores locales (`TeX Live`, `MiKTeX`, etc.) no ha sido verificada y puede requerir ajustes en dependencias o estructura.

---

## 🌐 Opciones de configuración

Edita el comando `\documentclass[...]` en `UMUthesis.tex` para ajustar las opciones:

```latex
\documentclass[
  language=spanish,
  chapterstyle=modern,
  coverstyle=classic,
  docstage=final,
  media=paper,
  colorlink=red!45!black
]{UMUthesis}
```

* **language**: `spanish`, `english`
* **chapterstyle**: `classic`, `modern`, `fancy`
* **coverstyle**: `classic`, `bw`
* **docstage**: `working`, `final`
* **media**: `screen`, `paper`
* **colorlink**: Cualquier color compatible con `xcolor`

---

## 📁 Estructura del proyecto

```
UMUthesis.tex             → Archivo principal
UMUthesis.cls             → Clase personalizada de UMU
Metadata/                 → Metadatos (título, autor, tutor, etc.)
Chapters/                 → Capítulos principales de la tesis
Figures/                  → Imágenes y gráficos
Bibliography/             → Archivo .bib con referencias
Matter/                   → Portada, agradecimientos, glosario, etc.
Code/                     → Código fuente o scripts
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


