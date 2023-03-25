// Toggle Nav
let menu = document.querySelector("#menu-bar");
menu.onclick = function(){
    let navBar= document.querySelector(".main-nav");
    navBar.classList.toggle("active");
};
// Toggle Nav End

// Carousel
$('.carousel').carousel({
    cycle: true,
    interval: 3000
  });
// Carousel End