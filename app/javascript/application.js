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