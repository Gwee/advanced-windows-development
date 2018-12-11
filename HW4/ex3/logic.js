$(document).ready(function () {


    $(".btn").click(function () {

        return false;
        let btn = $('#'+event.target.id);

        let offset = btn.offset();


        let i = event.target.id[0] - 1;
        let j = event.target.id[1] - 1;


        if (i < 3 ) {
            //alert(btn_arr[i+1][j]);
            if (btn_arr[i + 1][j] == "") {
                animate(event.target.id, "down", 15);
                let temp = btn_arr[i ][j];
                btn_arr[i][j] = btn_arr[i + 1][j];
                btn_arr[i + 1][j] = temp;
            

            }
        }
        if (i > 1) {
            alert(btn_arr[i - 1][j]);
            if (btn_arr[i - 1][j] == "") {
                animate(event.target.id, "down", 15);
                let temp = btn_arr[i][j];
                btn_arr[i][j] = btn_arr[i - 1][j];
                btn_arr[i - 1][j] = temp;
             
            }
            

        }




       // animate(event.target.id, "left", 15);

        //alert(checkWin());

        return false;
    });



    var btn_arr = [
        [1 , 2  , 3  , 4 ],
        [5 , 6  , 7  , 8 ],
        [9 , 10 , 11 , 12],
        [13, 14 , 15 ,  "" ]
                  ];


   

    function checkWin() {
        let num = 1;
        for (var i = 0; i < 4; i++) {
            for (var j = 0; j < 4; j++) {
                if (num === 16) break;
                let n = btn_arr[i][j];
                if (num != n) return false;
                num++;
            }
        }
        return true;
    }

});