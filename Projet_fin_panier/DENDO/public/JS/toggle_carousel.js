/* Route, Urbain et VTT */

let slide1 = document.getElementById("slide1");
let slide2 = document.getElementById("slide2");
let slide3 = document.getElementById("slide3");
let slide4 = document.getElementById("slide4");

let tout = document.getElementById("tout");

/* VTT */

let vtt = document.getElementById("vtt");


/* Route */

let route = document.getElementById("route");


/* Urbain */

let ville = document.getElementById("ville");




slide1.addEventListener("click", () => {
    if (getComputedStyle(slide1).display === "none" || "flex") {

        vtt.style.display = "flex";


        route.style.display = "flex";


        ville.style.display = "flex";


    } else {


    }
})


slide2.addEventListener("click", () => {
    if (getComputedStyle(vtt).display === "none" || "flex") {

        vtt.style.display = "flex";


        route.style.display = "none";


        ville.style.display = "none";



    } else {


    }
})


slide3.addEventListener("click", () => {
    if (getComputedStyle(route).display === "none" || "flex") {


        route.style.display = "flex";


        vtt.style.display = "none";


        ville.style.display = "none";



    } else {




    }
})

slide4.addEventListener("click", () => {
    if (getComputedStyle(ville).display === "none" || "flex" ) {
        ville.style.display = "flex";


        vtt.style.display = "none";


        route.style.display = "none";


    } else {

//test


    }
})



