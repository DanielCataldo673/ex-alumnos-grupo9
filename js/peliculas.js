let items = document.querySelectorAll('.slider .list .item');
let next = document.getElementById('next');
let prev = document.getElementById('prev');
let thumbnails = document.querySelectorAll('.thumbnail .item');

// config param
let countItem = items.length;
let itemActive = 0;
// event next click
next.onclick = function () {
    itemActive = itemActive + 1;
    if (itemActive >= countItem) {
        itemActive = 0;
    }
    showSlider();
}
//event prev click
prev.onclick = function () {
    itemActive = itemActive - 1;
    if (itemActive < 0) {
        itemActive = countItem - 1;
    }
    showSlider();
}
// auto run slider
let refreshInterval = setInterval(() => {
    next.click();
}, 5000)
function showSlider() {
    // remove item active old
    let itemActiveOld = document.querySelector('.slider .list .item.active');
    let thumbnailActiveOld = document.querySelector('.thumbnail .item.active');
    itemActiveOld.classList.remove('active');
    thumbnailActiveOld.classList.remove('active');

    // active new item
    items[itemActive].classList.add('active');
    thumbnails[itemActive].classList.add('active');

    // clear auto time run slider
    clearInterval(refreshInterval);
    refreshInterval = setInterval(() => {
        next.click();
    }, 5000)
}

// click thumbnail
thumbnails.forEach((thumbnail, index) => {
    thumbnail.addEventListener('click', () => {
        itemActive = index;
        showSlider();
    })
})


/* FULL SCREEN */

document.querySelectorAll('.fullscreen-btn').forEach(button => {
    button.addEventListener('click', () => {
        const img = button.parentElement.parentElement.querySelector('img');
        const fullscreenDiv = document.createElement('div');
        fullscreenDiv.classList.add('fullscreen');

        // Crear la cruz de cierre  
        const closeButton = document.createElement('span');
        closeButton.textContent = '✖'; // Puedes usar un icono o un carácter diferente  
        closeButton.classList.add('close-button'); // Añade una clase para darle estilo  
        closeButton.style.position = 'absolute';
        closeButton.style.top = '10px';
        closeButton.style.right = '10px';
        closeButton.style.color = 'white';
        closeButton.style.fontSize = '24px';
        closeButton.style.cursor = 'pointer';

        fullscreenDiv.innerHTML = `<img src="${img.src}" alt="${img.alt}">`;
        fullscreenDiv.appendChild(closeButton);

        // Cerrar pantalla completa al hacer clic en la cruz  
        closeButton.addEventListener('click', (event) => {
            event.stopPropagation(); // Evitar que el clic se propague al div  
            fullscreenDiv.remove();
        });

        document.body.appendChild(fullscreenDiv);
    });
});



/* QUIZ */

document.addEventListener('DOMContentLoaded', () => {  
    const quizData = [  
        { question: "¿Quién es el maestro de Anakin Skywalker?", a: "Yoda",  b: "Obi-Wan Kenobi",  c: "Mace Windu",  d: "Darth Vader", correct: "b" },  
        { question: "¿Qué es un Sith?", a: "Un guerrero de la luz", b: "Un Jedi caído", c: "Un Lord oscuro", d: "Un aprendiz Jedi", correct: "c" },  
        { question: "¿Quién es el padre de Luke Skywalker?", a: "Obi-Wan Kenobi", b: "Darth Vader", c: "Han Solo", d: "Yoda", correct: "b" },  
        { question: "¿Qué planeta es hogar de Yoda?", a: "Tatooine", b: "Hoth", c: "Dagobah", d: "Kashyyyk", correct: "c" },  
        { question: "¿Cuál es el cazador de recompensas que captura a Han Solo?", a: "Boba Fett", b: "Jango Fett", c: "Greedo", d: "Cad Bane", correct: "a" },  
        { question: "¿De qué raza es Chewbacca?", a: "Wookiee", b: "Ewok", c: "Twi'lek", d: "Jawa", correct: "a" },  
        { question: "¿Cómo se llama el droid de protocolo de los Skywalker?", a: "R2-D2", b: "C-3PO", c: "BB-8", d: "D-O", correct: "b" },  
        { question: "¿Qué arma utilizan los Jedi?", a: "Espadas de energía", b: "Sables de luz", c: "Espadas de plasma", d: "Láseres", correct: "b" },  
        { question: "¿Cuál es la capital de la República?", a: "Coruscant", b: "Tatooine", c: "Alderaan", d: "Naboo", correct: "a" },  
        { question: "¿Quién es la madre de Luke Skywalker?", a: "Padmé Amidala", b: "Leia Organa", c: "Ahsoka Tano", d: "Jyn Erso", correct: "a" },  
        { question: "¿Qué especie es Yoda?", a: "Yoda", b: "Tusken", c: "Jawa", d: "Desconocida", correct: "d" },  
        { question: "¿Quién es el líder de la Primera Orden?", a: "Kylo Ren", b: "Supreme Leader Snoke", c: "General Hux", d: "Darth Sidious", correct: "b" },  
        { question: "¿Cómo se llama el halcón milenario?", a: "X-Wing", b: "TIE Fighter", c: "Millennium Falcon", d: "A-Wing", correct: "c" },  
        { question: "¿Qué es un Ewok?", a: "Un caza", b: "Un tipo de droid", c: "Una especie de criatura", d: "Un Jedi", correct: "c" },  
        { question: "¿Qué evento destruyó Alderaan?", a: "La batalla de Naboo", b: "La Orden 66", c: "La Estrella de la Muerte", d: "La Guerra Civil", correct: "c" },  
        { question: "¿Quién es la hermana de Luke Skywalker?", a: "Rey", b: "Padmé", c: "Leia", d: "Ahsoka", correct: "c" },  
        { question: "¿Cuál es la primera película de Star Wars?", a: "Episodio IV: Una Nueva Esperanza", b: "Episodio I: La Amenaza Fantasma", c: "Episodio V: El Imperio Contraataca", d: "Episodio III: La Venganza de los Sith", correct: "a" },  
        { question: "¿Quién es conocido como el Emperador?", a: "Darth Vader", b: "Darth Sidious", c: "Mace Windu", d: "Kylo Ren", correct: "b" },  
        { question: "¿Qué nave vuela a la velocidad de la luz?", a: "X-Wing", b: "TIE Fighter", c: "Halcón Milenario", d: "Star Destroyer", correct: "c" },  
        { question: "¿Qué personaje es conocido como el 'Elegido'?", a: "Anakin Skywalker", b: "Luke Skywalker", c: "Obi-Wan Kenobi", d: "Yoda", correct: "a" },  
    ];  

    const quizContainer = document.getElementById('quiz');  
    const submitButton = document.getElementById('submit');  
    const resultContainer = document.getElementById('result');  
    const restartButton = document.getElementById('restart');  

    let currentQuestionIndex = 0;  
    let score = 0;  

    function loadQuiz() {  
        const currentQuizData = quizData[currentQuestionIndex];  
        
        quizContainer.innerHTML = `  
            <div class="question">${currentQuizData.question}</div>  
            <div class="label">  
                <label>  
                    <input type="radio" name="answer" value="a"> ${currentQuizData.a}  
                </label><br><br>
                <label>  
                    <input type="radio" name="answer" value="b"> ${currentQuizData.b}  
                </label><br><br>  
                <label>  
                    <input type="radio" name="answer" value="c"> ${currentQuizData.c}  
                </label><br><br>  
                <label>  
                    <input type="radio" name="answer" value="d"> ${currentQuizData.d}  
                </label>  
            </div>  
        `;  
    }  

    function getSelected() {  
        const answers = document.querySelectorAll('input[name="answer"]');  
        for (const answer of answers) {  
            if (answer.checked) {  
                return answer.value;  
            }  
        }  
        return undefined;  
    }  

    function showResult() {  
        quizContainer.classList.add('hidden');  
        resultContainer.classList.remove('hidden');  
        resultContainer.innerHTML = `  
            <h2>Has completado el quiz</h2>  
            <p>Tu puntuación: ${score} de ${quizData.length}</p>  
        `;  
        restartButton.classList.remove('hidden');  
    }  

    function resetQuiz() {  
        currentQuestionIndex = 0;  
        score = 0;  
        quizContainer.classList.remove('hidden');  
        resultContainer.classList.add('hidden');  
        restartButton.classList.add('hidden');  
        loadQuiz();  
    }  

    submitButton.addEventListener('click', () => {  
        const answer = getSelected();  
        
        if (answer) {  
            if (answer === quizData[currentQuestionIndex].correct) {  
                score++;  
            }  
            
            currentQuestionIndex++;  

            if (currentQuestionIndex < quizData.length) {  
                loadQuiz();  
            } else {  
                showResult();  
            }  
        } else {  
            alert("Por favor, selecciona una respuesta.");  
        }  
    });  

    restartButton.addEventListener('click', resetQuiz);  

    loadQuiz();  
});