const Tabla = document.getElementById("tabla");
//* Array de nombres 
const nombres = ["Nikoll", "Jonatan", "Diego", "Diana", "Fabri", "Cristian", "Dana", "Dylan", 
    "Derian", "Nicole", "Laura", "Beltran", "Edison", "Miguel", "Cristhoper", "Mauricio",];


function genera_tabla(){
  while(Tabla.rows.length > 1 ) { //*  hace que la tabla se genere 1 vez nomas
    Tabla.deleteRow(1);
  }


  for (let i = 0; i < nombres.length; i++) {
    let fila = Tabla.insertRow(-1); //*  la tabla se genera hacia abajo
    let celda1 = fila.insertCell(0); //* se genera la primera celda hacia la izquierda
    celda1.textContent = nombres[i];
    //* Agregar datos al html
    let celda2 = fila.insertCell(1);
    let botonEliminar = document.createElement("button");
    botonEliminar.innerHTML = '<i class="fa-solid fa-trash-can"></i>';
    botonEliminar.addEventListener("click", function() {
      //* Función para eliminar fila al hacer clic en el botón de eliminar
      Tabla.deleteRow(fila.rowIndex);
    });
    celda2.appendChild(botonEliminar);

  }
}