const rootElement = document.documentElement
const menuButton = document.querySelector('#menu-button')

menuButton.addEventListener('click', openNavigation)
let isOpen = false 

function openNavigation() {
    if (!isOpen)
        rootElement.classList.add('navigation-open')
    else
        rootElement.classList.remove('navigation-open')

    toggleOpen()
}

function toggleOpen() {
    return isOpen = !isOpen
}

document.addEventListener('DOMContentLoaded', function() {
    const links = document.querySelectorAll('.needs-container a');
    links.forEach(function(link) {
      if (link.href === window.location.href) {
        link.classList.add('active');
      }
      link.addEventListener('click', function(event) {
        links.forEach(function(link) {
          link.classList.remove('active');
        });
        link.classList.add('active');
      });
    });
  });