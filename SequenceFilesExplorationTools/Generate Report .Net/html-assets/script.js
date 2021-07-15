document.re



document.addEventListener("DOMContentLoaded", () => { 
  document.querySelectorAll(".ts-item__copy-icon").entries.addEventListener('click', evt=>{

    navigator.clipboard.writeText()
    

  })
});