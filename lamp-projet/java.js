window.onload = init;

function init() {
    document.getElementById("allumer").style.display = "none";
    document.getElementById("eteindre").style.display = "none";
}

function on() {
    document.getElementById("allumer").style.display = "block";
    document.getElementById("eteindre").style.display = "none";
}

function off() {
    document.getElementById("eteindre").style.display = "block";
    document.getElementById("allumer").style.display = "none";
}