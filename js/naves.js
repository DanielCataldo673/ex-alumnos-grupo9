const draggables = document.querySelectorAll('.draggable');  
const dropZone = document.getElementById('dropZone');  
const info = document.getElementById('info');  
const clearButton = document.getElementById('clearButton');  
const gallery = document.querySelector('.gallery'); // Asegúrate de que este sea el contenedor de tus imágenes  

// Añadir eventos de drag a cada draggable   
draggables.forEach(draggable => {  
    draggable.addEventListener('dragstart', () => {  
        draggable.classList.add('is-dragging');  
        // Almacenar la información relacionada con el draggable  
        info.dataset.currentInfo = draggable.dataset.info;  // Suponiendo que cada draggable tiene un atributo 'data-info'.  
    });  

    draggable.addEventListener('dragend', () => {  
        draggable.classList.remove('is-dragging');  
    });  
});  

// Añadir eventos de drop zone  
dropZone.addEventListener('dragover', (event) => {  
    event.preventDefault(); // Necesario para permitir el drop  
    dropZone.classList.add('highlight');  
});  

dropZone.addEventListener('dragleave', () => {  
    dropZone.classList.remove('highlight');  
});  

dropZone.addEventListener('drop', (event) => {  
    event.preventDefault();  
    dropZone.classList.remove('highlight');  

    // Verificar si la zona de drop ya tiene un elemento  
    if (dropZone.childElementCount === 0) {  
        // Mover el draggable a la zona de drop  
        const draggedElement = document.querySelector('.is-dragging');  
        if (draggedElement) {  
            dropZone.appendChild(draggedElement); // Añadir el elemento arrastrado a la zona de drop  

            // Mostrar la información de este draggable en el elemento de info  
            showInfo(info.dataset.currentInfo);   

            draggedElement.classList.remove('is-dragging'); // Limpiar la clase de arrastre  
        }  
    } else {  
        // Opcional: Mostrar un mensaje si ya hay un elemento  
        alert("Ya hay una imagen en la zona de drop. Solo se permite una imagen a la vez.");  
    }  
});  

// Modificar la función showInfo para que reciba un argumento  
function showInfo(infoText) {  
    // Ocultar todos los bloques de información  
    const allInfoBlocks = document.querySelectorAll('.draggablecuerpoinfo > div');  
    allInfoBlocks.forEach(block => {  
        block.style.display = 'none';  // Ocultar todos los bloques  
    });  

    // Mostrar el bloque de información correspondiente  
    const selectedInfoBlock = document.getElementById(infoText);  
    if (selectedInfoBlock) {  
        selectedInfoBlock.style.display = 'block';  // Mostrar el bloque correspondiente  
    }  

    info.classList.remove('info-hidden');  
    info.classList.add('info-visible');  
}  

// Función para borrar la selección  
function clearSelection() {  
    const allInfoBlocks = document.querySelectorAll('.draggablecuerpoinfo > div');  
    allInfoBlocks.forEach(block => {  
        block.style.display = 'none';  // Ocultar todos los bloques  
    });  
    
    info.classList.remove('info-visible'); // Ocultar la información  
    info.classList.add('info-hidden');  
    dropZone.classList.remove('highlight'); // También borrar el estilo resaltado si está aplicado  

    // Mover los elementos de vuelta a la galería  
    while (dropZone.firstChild) {  
        const draggedElement = dropZone.firstChild; // Obtener el primer hijo  
        gallery.appendChild(draggedElement); // Moverlo de vuelta a la galería  
        
        // Limpiar la información al quitar la imagen  
        clearInfo();  
    }  
}  

// Función para limpiar la información  
function clearInfo() {  
    const allInfoBlocks = document.querySelectorAll('.draggablecuerpoinfo > div');  
    allInfoBlocks.forEach(block => {  
        block.style.display = 'none'; // Ocultar todos los bloques  
    });  
    
    info.classList.remove('info-visible'); // Ocultar la información  
    info.classList.add('info-hidden'); // Añadir clase de ocultar  
}  

// Añadir evento al botón para limpiar la selección  
clearButton.addEventListener('click', clearSelection);