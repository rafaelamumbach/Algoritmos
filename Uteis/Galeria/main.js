// Add event listener to the gallery container
document.querySelector('.gallery').addEventListener('click', (event) => {
    // Check if the clicked element is an image
    if (event.target.tagName === 'IMG') {
      // Create a new modal element
      const modal = document.createElement('div');
      modal.classList.add('modal');
      // Create a new image element
      const modalImg = document.createElement('img');
      modalImg.src = event.target.src;
      // Add the image element to the modal element
      modal.appendChild(modalImg);
      // Add the modal element to the page
      document.body.appendChild(modal);
      // Add event listener to the modal element
      modal.addEventListener('click', () => {
        // Remove the modal element from the page
        document.body.removeChild(modal);
      });
    }
  });