document.addEventListener("DOMContentLoaded", ()=>{
  const recursionLevel = document.querySelector(".slidecontainer span span");
  document.querySelector("#myRange").addEventListener("change", (evt)=>{
    
    
    recursionLevel.innerText = parseInt(evt.target.value) + 1;


    document.querySelectorAll(`.ts-item-view-sequence-call-target`).forEach(element => {
      element.checked = false;
    });


    let levelSelector = " .ts-item-container > .ts-item "
    let selector = ""
    for(let i = -1; i < evt.target.value ; i++){

      selector = `${selector} > ${levelSelector}`;

      console.log(document.querySelectorAll(`.app-root ${selector} > .ts-item-view-sequence-call-target`));

      document.querySelectorAll(`.app-root ${selector} > .ts-item-view-sequence-call-target`).forEach(element => {
        element.checked = true;
      });
    }

  })
})

// https://stackoverflow.com/questions/400212/how-do-i-copy-to-the-clipboard-in-javascript
// https://jsfiddle.net/fx6a6n6x/
function copyToClipboard(text) {
  if (window.clipboardData && window.clipboardData.setData) {
      // IE specific code path to prevent textarea being shown while dialog is visible.
      return clipboardData.setData("Text", text); 

  } else if (document.queryCommandSupported && document.queryCommandSupported("copy")) {
      var textarea = document.createElement("textarea");
      textarea.textContent = text;
      textarea.style.position = "fixed";  // Prevent scrolling to bottom of page in MS Edge.
      document.body.appendChild(textarea);
      textarea.select();
      try {
          return document.execCommand("copy");  // Security exception may be thrown by some browsers.
      } catch (ex) {
          console.warn("Copy to clipboard failed.", ex);
          return false;
      } finally {
          document.body.removeChild(textarea);
      }
  }
}