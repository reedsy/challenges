const hamburgerMenu = document.querySelector('.hamburger-menu');
const closeMenu = document.querySelector('.close-menu');
const menu = document.querySelector('.menu');
const topMenu = document.querySelector('.top-menu');

document.querySelector('.hamburger-menu').addEventListener('click', () => {

    if (menu.classList.contains('show')) {
        menu.classList.remove('show');
    }

    if (!menu.classList.contains('show')) {
        menu.classList.add('show');
    }

    topMenu.style.display = 'block';

});

document.querySelector('.close-menu').addEventListener('click', () => {
    menu.classList.remove('show');
    topMenu.style.display = 'none';
});

const menuItems = document.querySelectorAll('.menu li');

menuItems.forEach(item => {
    item.addEventListener('click', () => {
        menuItems.forEach(item => {
            item.classList.remove('active');
        });
        item.classList.add('active');
    });
});