// Función para iniciar la presentación  
function startPresentation() {  
    // Esconder la sección de inicio y mostrar la animación  
    document.querySelector('.start').style.display = 'none';  
    document.querySelector('.animation').style.display = 'block';  
    
    // Reproducir el audio  
    const audio = document.getElementById('starWarsAudio');  
    audio.currentTime = 0; // Reinicia el audio  
    audio.play().catch(error => {  
        console.log('Error al intentar reproducir audio:', error);  
    });  
    
    // Mostrar la sección intro  
    const introSection = document.querySelector('.intro');  
    introSection.style.display = 'block';  
    introSection.style.opacity = '1';  // Asegurarse de que se muestre completamente  
    
    // Mostrar la sección intro durante 3 segundos (o el tiempo que desees)  
    setTimeout(() => {  
        introSection.style.opacity = '0';  // Iniciar desvanecimiento  

        // Ocultar la sección intro después del desvanecimiento  
        setTimeout(() => {  
            introSection.style.display = 'none'; // Ocultar después del desvanecimiento  

            // Mostrar la sección de star-wars  
            const starWarsSection = document.querySelector('.star-wars');  
            starWarsSection.style.display = 'block';  

            // Ocultar la sección star-wars después de 50 segundos y volver a la pantalla de inicio  
            setTimeout(() => {  
                audio.pause();  
                audio.currentTime = 0; // Reinicia el audio  
                starWarsSection.style.display = 'none';  
                document.querySelector('.animation').style.display = 'none';  
                document.querySelector('.start').style.display = 'block'; // Regresa a la pantalla principal  
            }, 50000); // Mostrar star-wars durante 50 segundos  
        }, 500); // Tiempo que toma el fade-out antes de ocultar  
    }, 3000); // Muestra la sección intro durante 3 segundos (ajusta según sea necesario)  
}  

// Este bloque se asegura de que el script se ejecute después de que el DOM esté completamente cargado  
document.addEventListener('DOMContentLoaded', () => {  
    // Seleccionamos el botón y le agregamos el evento de clic  
    const presentacionBtns = document.querySelectorAll('.presentacion-btn');  
    presentacionBtns.forEach(btn => {  
        btn.addEventListener('click', startPresentation);  
    });  
});