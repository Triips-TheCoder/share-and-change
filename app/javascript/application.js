const rootElement = document.documentElement
const menuButton = document.querySelector('#menu-button')

rootElement.addEventListener('click', openNavigation)

function openNavigation() {
    rootElement.classList.toggle('navigation-open')
}