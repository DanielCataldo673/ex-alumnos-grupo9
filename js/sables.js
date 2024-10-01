document.querySelectorAll('.toggleButton').forEach(button => {  
    button.addEventListener('click', function() {  
        const bladeId = this.dataset.target;  
        const blade = document.getElementById(bladeId);  
        
        // Alternar la opacidad del sable de luz  
        if (blade.style.opacity === '1') {  
            blade.style.opacity = '0'; // Apagar  
            blade.style.animation = 'none'; // Detener animación  
        } else {  
            blade.style.opacity = '1'; // Encender  
            blade.style.animation = 'glow 1s infinite alternate'; // Reiniciar animación  
        }  
    });  
});