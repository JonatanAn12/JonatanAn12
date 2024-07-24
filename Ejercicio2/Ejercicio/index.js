const aprendices = [];

const table = document.getElementById("tabla")
const tbody = document.createElement("tbody");

aprendices.forEach((aprendiz, index) => {
    const row = document.createElement('tr');
    
    const celdaNombre = document.createElement('td');
    celdaNombre.textContent = aprendiz;
    row.appendChild(celdaNombre);

    const actioncell = document.createElement('td');
    const botonEliminar = document.createElement('button');
    botonEliminar.innerHTML = '<i class="bi bi-trash"></i>';
    botonEliminar.className = 'btn btn-danger btn-sm';
    botonEliminar.addEventListener('click', function() {
        tbody.removeChild(row);
    });
    actioncell.appendChild(botonEliminar);
    row.appendChild(actioncell);
    tbody.appendChild(row);
});
table.appendChild(tbody);

//* crear datos 

const ingresarDatos = document.getElementById("ingresarDatos")
const crearDatos = document.getElementById("generarDatos");


function generaBtn() {
    debugger
     crearDatos.addEventListener("click", function() {
        const valor = ingresarDatos.value.trim();
        if (valor) {
            const row = document.createElement('tr');

            const nombresCelda = document.createElement('td');
            nombresCelda.textContent = valor;
            row.appendChild(nombresCelda);

            const botonCelda = document.createElement('td');
            const botonBorrar = document.createElement('button');
            botonBorrar.innerHTML = '<i class="bi bi-trash"></i>';
            botonBorrar.className = 'btn btn-danger btn-sm';
            botonBorrar.addEventListener('click', function() {
                tbody.removeChild(row);
            });
            botonCelda.appendChild(botonBorrar);
            row.appendChild(botonCelda);

            tbody.appendChild(row);
            ingresarDatos.value = '';
        } 
    })
};

document.addEventListener('keydown', (event) => {
    const key = event.key;
     if (key === "Enter") {
        generaBtn();
    }
});







