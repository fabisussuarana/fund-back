const searchFiles = (event) => {
    alert('SearchFile!');
  };

const onVisible = () => {
   //@getElement.
   let isVisible = document.getElementById("box_visible").style.display;
  
   isVisible == "block"
     ? (document.getElementById("box_visible").style.display = "none")
     : (document.getElementById("box_visible").style.display = "block");
 };