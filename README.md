# Mini Basecamp 🏕️

Aplicación web de gestión de proyectos y tareas hecha con Ruby on Rails, Devise, Hotwire y Tailwind CSS.

# 🏕️ Mini Basecamp Ruby

> Planifica con elegancia andina ✨  
> Plan your projects with Andean elegance ✨

---

## 📌 Descripción | Description

**Mini Basecamp Ruby** es una aplicación de gestión de proyectos y tareas desarrollada con **Ruby on Rails**, diseñada con una estética inspirada en los Andes. Está pensada como una alternativa ligera a herramientas como Basecamp o Trello, ideal para mostrar habilidades en Rails, autenticación, relaciones entre modelos y uso moderno de Hotwire + TailwindCSS.

**Mini Basecamp Ruby** is a project and task management app built with **Ruby on Rails**, featuring a classic Andean-inspired design. It's a lightweight alternative to tools like Basecamp or Trello, and showcases skills in Rails, authentication, model relationships, and modern Hotwire + TailwindCSS integration.

---

## 🚀 Funcionalidades | Features

- ✅ Autenticación de usuarios (Devise)
- 📁 Gestión de proyectos (CRUD completo)
- 🧩 Cada proyecto contiene múltiples tareas
- 🔄 Las tareas tienen estados: `Pendiente`, `En progreso`, `Finalizada`
- 💬 Comentarios en tiempo real por tarea (Turbo Streams)
- 🎨 Diseño responsivo con Tailwind CSS y tema andino
- 📱 Compatible con móviles

---

## 🛠️ Tecnologías | Tech Stack

- **Ruby on Rails 8**
- **SQLite (modo local)**
- **Devise** para autenticación
- **Hotwire (Turbo + Stimulus)** para interactividad sin JS complejo
- **TailwindCSS 4** para estilos modernos y personalización andina

---

## 📸 Capturas de pantalla | Screenshots

> Puedes agregar aquí imágenes si las subes a GitHub o usas enlaces externos

---

## ⚙️ Instalación | Installation

```bash
# Clona el proyecto
git clone https://github.com/FilosofoCaucano/MiniBaseCamp.git
cd MiniBaseCamp

# Instala dependencias
bundle install

# Configura la base de datos
rails db:create
rails db:migrate

# Inicia el servidor
bin/dev
```
