
function searchByCategory() {
  const searchTerm = document.getElementById('categoryInput').value.toLowerCase();
  const contentBoxes = document.querySelectorAll('.box1 , .box2 , .box3 , .box4'); // Adjust the selector based on your actual class name

  contentBoxes.forEach((box) => {
      const contentText = box.querySelector('p').textContent.toLowerCase();
      if (contentText.includes(searchTerm)) {
          box.style.display = ''; // Show matching content box
      } else {
          box.style.display = 'none'; // Hide non-matching content box
      }
  });
}


  let searchBoxes=()=> {
    var input, filter, boxes, i, j, txtValue;

    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    boxes = document.querySelectorAll(' .mainbox .box1, .mainbox .box2, .mainbox .box3, .mainbox .box4 '); // Adjust the classes based on your structure

    // boxes = document.getElementsByTagName('h3');
  
    for (i = 0; i < boxes.length; i++) {
      var box = boxes[i];
      var Category = box.getAttribute("data-category")
      var paragraphs = box.getElementsByTagName("p" );
  
      for (j = 0; j < paragraphs.length; j++) {
        var paragraph = paragraphs[j];
        txtValue = paragraph.textContent || paragraph.innerText;
  
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          box.style.display = "";
          
          break; // Show the box if a match is found in any paragraph
        } else {
          box.style.display = "none";
        }
      }
    }
  }
  