// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", function() {
    const tab1Btn = document.querySelector('.tab1-toggle')
    if (tab1Btn !== null) {
        tab1Btn.addEventListener('click', () => tab1Toggle());
    }

    const tab2Btn = document.querySelector('.tab2-toggle')
    if (tab2Btn !== null) {
        tab2Btn.addEventListener('click', () => tab2Toggle())
    }

    const tab3Btn = document.querySelector('.tab3-toggle')
    if (tab3Btn !=  null) {
        tab3Btn.addEventListener('click', () => tab3Toggle())
    }
});

function tab1Toggle() {
    document.querySelector('.tab1-toggle').style.background = "linear-gradient(rgb(44, 39, 39), rgb(70, 63, 63))";
    document.querySelector('.tab1-toggle').style.color = "white";

    document.querySelector('.tab2-toggle').style.background = "white";
    document.querySelector('.tab2-toggle').style.color = "black";

    document.querySelector('.tab3-toggle').style.background = "white";
    document.querySelector('.tab3-toggle').style.color = "black";

    const tab1Section = document.querySelector('.tab1')
    tab1Section.style.display = "grid";

    const tab2Section = document.querySelector('.tab2')
    tab2Section.style.display = "none";

    const tab3Section = document.querySelector('.tab3')
    tab3Section.style.display = "none";


}

function tab2Toggle() {
    document.querySelector('.tab2-toggle').style.background = "linear-gradient(rgb(44, 39, 39), rgb(70, 63, 63))";
    document.querySelector('.tab2-toggle').style.color = "white";

    document.querySelector('.tab1-toggle').style.background = "white";
    document.querySelector('.tab1-toggle').style.color = "black";

    
    document.querySelector('.tab3-toggle').style.background = "white";
    document.querySelector('.tab3-toggle').style.color = "black";

    const tab2Section = document.querySelector('.tab2')
    tab2Section.style.display = "grid";

    const tab1Section = document.querySelector('.tab1')
    tab1Section.style.display = "none";

    const tab3Section = document.querySelector('.tab3')
    tab3Section.style.display = "none";



}

function tab3Toggle() {
    document.querySelector('.tab3-toggle').style.background = "linear-gradient(rgb(44, 39, 39), rgb(70, 63, 63))";
    document.querySelector('.tab3-toggle').style.color = "white";

    document.querySelector('.tab2-toggle').style.background = "white";
    document.querySelector('.tab2-toggle').style.color = "black";

    document.querySelector('.tab1-toggle').style.background = "white";
    document.querySelector('.tab1-toggle').style.color = "black";

    const tab3Section = document.querySelector('.tab3')
    tab3Section.style.display = "grid";

    const tab1Section = document.querySelector('.tab1')
    tab1Section.style.display = "none";



    const tab2Section = document.querySelector('.tab2')
    tab2Section.style.display = "none";

}