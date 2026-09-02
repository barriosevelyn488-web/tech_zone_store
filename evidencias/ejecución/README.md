## # Inicializar el repositorio (si aún no está inicializado)
git init

# Agregar todos los archivos y hacer el primer commit en la rama main
git add .
git commit -m "Inicialización de la estructura del repositorio"

# Crear la rama dev y cambiar a ella
git branch dev
git checkout dev

# Mergear la rama main con la rama dev
git merge main

# Crear ramas específicas desde la rama dev según lo que pide el examen
git branch feature1
git branch feature2
git branch feature3

# Verificar las ramas creadas
git branch