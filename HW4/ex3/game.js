$(document).ready(() => {
  const table = [
    ["", "", "", ""],
    ["", "", "", ""],
    ["", "", "", ""],
    ["", "", "", ""]
    ];

    var IsDrag = false;

    var dragID = "";

    var MoveDown = 0;
    var MoveUp = 0;
    var MoveLeft = 0;
    var MoveRight = 0;



  fillRandom = () => {
      let random = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
      let pointer = 0;
      for (i = 0; i < 15; i++) {
      let random1 = Math.floor(Math.random() * 15);
      swap(random, pointer, random1);
      pointer++;
    }
    random = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,  13, 14, 15];
    //console.dir(random);
    return random;
  };

  swap = (arr, from, to) => {
    let temp = arr[from];
    arr[from] = arr[to];
    arr[to] = temp;
  };

  swapDowble = (arr, from_i, from_j, to_i, to_j) => {
    let temp = arr[from_i][from_j];
    arr[from_i][from_j] = arr[to_i][to_j];
    arr[to_i][to_j] = temp;
  };

  getRandomColor = () => {
    var letters = "0123456789ABCDEF";
    var color = "#";
    for (var i = 0; i < 6; i++) {
      color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
  };

    createGame = () => {

    let randomNum = fillRandom();
        let counter = 0;
        let top = 0;
        for (i = 0; i <= 3; i++) {

            let left = 200;
            top += 50;
        for (j = 0; j <= 3; j++) {

            let id = "" + (i) + "" + (j);
            if (id == '33') {
                table[i][j] = 0;

                break;
            }
            let btn = $('#' + id);
            btn.css({
                "left": left + 'px',
                "top":top+'px'
            });
              btn.prop('type', 'button');
              btn.val(randomNum[counter]);
            table[i][j] = id;
              counter++; 
              let randomColor = getRandomColor();
            let element = $("#" + id).css("background", randomColor);
            left += 50;
        }

        }
        console.dir(table);


  };
    createGame();
    
  moveNum = (arr, from_i, from_j, to_i, to_j, value) => {
    if (value !== 0) return false;

    swapDowble(arr, from_i, from_j, to_i, to_j);
      
      console.dir(arr);
      return true;

  };

    $(document).mousedown(event => {
        //alert("down");

        IsDrag = true;

    });

    $(document).mouseup(event => {
        //alert("up");
        IsDrag = false;

    });

    $(".btn").mousedown(event => {
        
        if (MoveDown === 0 && MoveUp === 0 && MoveLeft === 0 && MoveRight === 0) {
            dragID = event.target.id;
            console.log(dragID);
            return;
        }
    });

    $(".btn").mousemove(event => {


        if (IsDrag === false) return;

        let id = event.target.id;
        let index = findbtnPosition(table,event.target.id) ;
        let speed = 10;

        let i = +index[0];
        let j = +index[1];
        
        let changed = false; 

        if (dragID !== "" && dragID !== id) return;

        if (i <= 2) {
            //down

            let naibor = table[i + 1][ j];
            
            if (naibor === 0 && MoveDown < 50) {
                animate(id, 'down');
                return;
            }

            if (naibor === 0 && MoveDown >= 50) {
                MoveDown = 0;
                MoveUp = 0;
                MoveLeft = 0;
                MoveRight = 0;
                IsDrag = false;
                dragID = "";

                changed = moveNum(table, i, j, i + 1, j, naibor);
            }
      }
  

    
        if (i >= 1 && !changed) {
            //up
            let naibor = table[i - 1][ j];
            
            if (naibor === 0 && MoveUp < 50) { animate(id, 'up'); return;}
            if (naibor === 0 && MoveUp >= 50) {
                MoveDown = 0;
                MoveUp = 0;
                MoveLeft = 0;
                MoveRight = 0;
                IsDrag = false;
                dragID = "";
                changed = moveNum(table, i, j, i - 1, j, naibor);
            }
      }
        console.clear();
        console.dir(table);
        
        if (j <= 2 && !changed) {
            let naibor = table[i ][ j+1];
            if (naibor === 0 && MoveRight < 50) { animate(id, 'right'); return; }
            if (naibor === 0 && MoveRight >= 50) {
                MoveDown = 0;
                MoveUp = 0;
                MoveLeft = 0;
                MoveRight = 0;
                IsDrag = false;
                dragID = "";
                changed = moveNum(table, i, j, i, j+1, naibor);
            }
      }
        if (j >= 1 && !changed) {

            let naibor = table[i][ j - 1];

            if (naibor === 0 && MoveLeft < 50) { animate(id, 'left'); return; }
            if (naibor === 0 && MoveLeft >= 50) {
                MoveDown = 0;
                MoveUp = 0;
                MoveLeft = 0;
                MoveRight = 0;
                IsDrag = false;
                dragID = "";
                changed = moveNum(table, i, j, i, j - 1, naibor);
            }
        
      }
      console.clear();
      console.dir(table);
        
      if (CheckWin()) alert("you won");
        CheckWin();        
      return false;
});


    CheckWin = () => {

    let counter = 1;
    for (i = 0; i < 4; i++) {
      for (j = 0; j < 4; j++) {
          if (counter === 16) break;
          let btn = $("#" + table[i][j]).val();
          
          if (btn != counter) return false;
        counter++;
      }
      }
      return true;
    };


    animate1 = (id, direction, speed) => {
        let pixels = 0;
        let btn = $('#' + id);
        let top = btn.offset().top;
        let left = btn.offset().left;
        
        let interval = setInterval(
            function () {
                pixels += 10;

                if (direction === "left") {

                    btn.css({
                        "left": left- pixels + "px"
                    });

                }

                if (direction === "right") {
                  
                    btn.css({
                        "left": left+pixels + "px"
                    });
                    
                }
                if (direction === "down") {
                    
                    
                    btn.css({
                        "top":  top+pixels + "px"
                    });
                    
                }
                if (direction === "up") {
                    btn.css({
                        "top":top-pixels + "px"
                    });

                }
                if (pixels == 100 ) {
                    clearInterval(interval);
                }

            }, speed);

    }


    animate = (id, direction) => {
        let pixels = 0;
        let btn = $('#' + id);
        let top = btn.offset().top;
        let left = btn.offset().left;

        const pixelCount = 5;


        pixels += pixelCount;

                if (direction === "left") {

                    MoveRight -= pixelCount;
                    MoveLeft += pixelCount;
                    btn.css({
                        "left": left - pixels + "px"
                    });

                }

                if (direction === "right") {

                    MoveRight += pixelCount;
                    MoveLeft -= pixelCount;

                    btn.css({
                        "left": left + pixels + "px"
                    });

                }
                if (direction === "down") {


                    MoveDown += pixelCount;
                    MoveUp -= pixelCount;
                    btn.css({
                        "top": top + pixels + "px"
                    });

                }
                if (direction === "up") {
                    MoveDown -= pixelCount;

                    MoveUp += pixelCount;

                    btn.css({
                        "top": top - pixels + "px"
                    });
        }
    }



    findbtnPosition = (arr , id) => {
        for (i = 0; i <= 3; i++) {
            for (j = 0; j <= 3; j++) {
                if (arr[i][j] == id) {
                    return "" + i + "" + j;
                }
            }
        }
    }
});
