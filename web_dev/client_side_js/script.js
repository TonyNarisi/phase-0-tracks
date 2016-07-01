// console.log("Hello world.")

// var navBar = document.getElementById("nav-bar");

// var navList = document.getElementById("drop-list");

function showNavList() {
  var navList = document.getElementById("drop-list");
  navList.style.visibility = "visible";
}

function showNavListOnClick() {
  var navList = document.getElementById("drop-list");
  navList.style.visibility = "visible";
  click_counter += 1;
  if (click_counter % 2 === 0) {
    click = false;
  } else {
    click = true;
  }
}

function hideNavList() {
  var navList = document.getElementById("drop-list");
  if (click === false) {
    navList.style.visibility = "hidden";
    console.log("Hello world");
  }
}

// showNavList();

var navBar = document.getElementById("nav-bar");
var click_counter = 0;
var click = false;
navBar.addEventListener("mouseover", showNavList);
navBar.addEventListener("mouseleave", hideNavList);
navBar.addEventListener("click", showNavListOnClick);