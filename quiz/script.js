const quizContainer = document.getElementById('question-container');
const submitButton = document.getElementById('submit-btn');
let userAnswers = [];

// Define your quiz questions and answers
const quizQuestions = [
  {
    question: "What is the capital of France?",
    answers: [
      { text: "Paris", correct: true },
      { text: "London", correct: false },
      { text: "Berlin", correct: false },
      { text: "Rome", correct: false }
    ]
  },
  {
    question: "Which planet is known as the Red Planet?",
    answers: [
      { text: "Venus", correct: false },
      { text: "Mars", correct: true },
      { text: "Jupiter", correct: false },
      { text: "Mercury", correct: false }
    ]
  },
  // Add more questions here
  {
    question: "What is the largest ocean in the world?",
    answers: [
      { text: "Atlantic Ocean", correct: false },
      { text: "Indian Ocean", correct: false },
      { text: "Arctic Ocean", correct: false },
      { text: "Pacific Ocean", correct: true }
    ]
  },
  {
    question: "Which country is home to the Great Barrier Reef?",
    answers: [
      { text: "Australia", correct: true },
      { text: "Brazil", correct: false },
      { text: "Mexico", correct: false },
      { text: "China", correct: false }
    ]
  },
  {
    question: "What is the largest land animal?",
    answers: [
      { text: "Giraffe", correct: false },
      { text: "Elephant", correct: true },
      { text: "Hippopotamus", correct: false },
      { text: "Rhinoceros", correct: false }
    ]
  },
  {
    question: "Which country is famous for its tulips?",
    answers: [
      { text: "Netherlands", correct: true },
      { text: "France", correct: false },
      { text: "Spain", correct: false },
      { text: "Italy", correct: false }
    ]
  },
  
    {
      question: "Which scientist is known for the theory of relativity?",
      answers: [
        { text: "Isaac Newton", correct: false },
        { text: "Albert Einstein", correct: true },
        { text: "Galileo Galilei", correct: false },
        { text: "Marie Curie", correct: false }
      ]
    },
    {
      question: "What is the chemical symbol for gold?",
      answers: [
        { text: "Go", correct: false },
        { text: "Au", correct: true },
        { text: "Gd", correct: false },
        { text: "Ag", correct: false }
      ]
    },
    {
      question: "Which novel was written by Jane Austen?",
      answers: [
        { text: "To Kill a Mockingbird", correct: false },
        { text: "Pride and Prejudice", correct: true },
        { text: "1984", correct: false },
        { text: "The Great Gatsby", correct: false }
      ]
    },
    {
      question: "Who painted the Mona Lisa?",
      answers: [
        { text: "Leonardo da Vinci", correct: true },
        { text: "Pablo Picasso", correct: false },
        { text: "Vincent van Gogh", correct: false },
        { text: "Michelangelo", correct: false }
      ]
    },
    {
      question: "What is the national animal of Canada?",
      answers: [
        { text: "Bald eagle", correct: false },
        { text: "Moose", correct: true },
        { text: "Kangaroo", correct: false },
        { text: "Panda", correct: false }
      ]
    }
  ];
  
  // Display quiz questions and answers
  function displayQuiz() {
    quizQuestions.forEach((question, index) => {
      const questionElement = document.createElement('div');
      questionElement.innerHTML = `<h2>${index + 1}. ${question.question}</h2>`;
  
      question.answers.forEach(answer => {
        const answerElement = document.createElement('button');
        answerElement.innerHTML = answer.text;
        answerElement.addEventListener('click', () => selectAnswer(answer.correct));
        questionElement.appendChild(answerElement);
      });
  
      quizContainer.appendChild(questionElement);
    });
  }
  
  // Handle selected answers
  function selectAnswer(isCorrect) {
    userAnswers.push(isCorrect);
  }
  
  // Submit the quiz
  submitButton.addEventListener('click', () => {
    calculateScore();
  });
  
  // Calculate and display the quiz score
  function calculateScore() {
    let score = 0;
    userAnswers.forEach(answer => {
      if (answer) {
        score++;
      }
    });
    const totalScore = score * 10;
    alert(`Your score is ${totalScore}%`);
  }
  
  // Start the quiz
  displayQuiz();
  
