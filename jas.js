const Tabla = document.getElementById("tabla");
Tabla.addEventListener("click", verificarClick);

// Array de nombres corregido
const nombres = ["Nikoll", "Jonatan", "Diego", "Diana", "Fabri", "Cristian", "Dana", "Dylan", 
    "Derian", "Nicole", "Laura", "Beltran", "Edison", "Miguel", "Cristhoper", "Mauricio"];

// Función para eliminar fila al hacer clic en el botón de eliminar
function verificarClick(e) {
    if (e.target.closest(".eliminarRow")) {
        const tIndex = e.target.closest("tr").rowIndex;
        Tabla.deleteRow(tIndex);
    }
}

// Función para generar una tabla con datos estáticos
function genera_tabla() {
    // Limpiar la tabla antes de agregar nuevos datos (opcional)
    while (Tabla.rows.length > 1) {
        Tabla.deleteRow(1); // Elimina todas las filas excepto la primera (cabecera)
    }

    // Crear filas con datos estáticos de nombres
    for (let i = 0; i < nombres.length; i++) {
        let fila = Tabla.insertRow(-1); // Insertar fila al final de la tabla
        let celda1 = fila.insertCell(0); // Insertar celda para el nombre
        celda1.textContent = nombres[i]; // Asignar el nombre a la celda

        let celda2 = fila.insertCell(1); // Insertar celda para el botón de eliminar
        let botonEliminar = document.createElement("button");
        botonEliminar.innerHTML = '<i class="fa-solid fa-trash-can"></i>';
        botonEliminar.addEventListener("click", function() {
            Tabla.deleteRow(fila.rowIndex); // Eliminar la fila al hacer clic en el botón
        });
        celda2.appendChild(botonEliminar);
        celda2.classList.add("eliminarRow"); // Añadir clase para identificar la celda de eliminar
    }
}