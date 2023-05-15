const contactForm = document.getElementById('contactForm');

contactForm.addEventListener('submit', function(event) {
  event.preventDefault(); // Prevent form submission

  // Get form values
  const name = document.getElementById('name').value;
  const email = document.getElementById('email').value;
  const message = document.getElementById('message').value;

  // Perform validation and submit data to the server
  if (name && email && message) {
    // Code to submit form data to the server
    console.log('Form submitted successfully!');
  } else {
    console.log('Please fill in all fields.');
  }
});
