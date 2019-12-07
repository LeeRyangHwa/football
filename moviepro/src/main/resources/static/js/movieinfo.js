
function Moviecheck(id) {
    var moviedata
    console.log(id);
    $.ajax({
        type : "POST",
        async:false,  //ajax는 리턴값을 가져오려면 동기방식으로 해야함
        url : "/movielikeckeck",
        contentType : "application/json;charset=utf-8",
        data : JSON.stringify(id),
        dataType : "text",
        success: function (data) {
            moviedata = data;
        },
        error: function () {
            alert("error");
        }
    });
    return moviedata;
}

function movie_click(movieid, userid) {
    var id = movieid;
    var check = Moviecheck(id+","+userid);

    var movieValNode = document.getElementById("check-val");

    movieValNode.innerHTML  = "";
    if (Number(check)==1){
        movieValNode.innerHTML  += "<b style=\"color:red\">취소</b></span>";
    }else{
        movieValNode.innerHTML  += "<b style=\"color:blue\">좋아요</b></span>";
    }

}
