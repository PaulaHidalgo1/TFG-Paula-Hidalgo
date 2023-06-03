const arrow1 = document.querySelector('.arrow1');
const arrow2 = document.querySelector('.arrow2');
const form1 = document.querySelector('.hidden-form1');
const form2 = document.querySelector('.hidden-form2');

arrow1.addEventListener('click', () => {
  form1.classList.toggle('visible-form');
});

arrow2.addEventListener('click', () => {
  form2.classList.toggle('visible-form');
});

function redirectToPage(page) {
        if (page !== '#') {
            window.location.href = page;
        }
    }