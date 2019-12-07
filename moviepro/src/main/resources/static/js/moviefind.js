function Moviefind(inputdata) {
    var moviedata
    console.log(inputdata);
    $.ajax({
        type : "POST",
        async:false,  //ajax는 리턴값을 가져오려면 동기방식으로 해야함
        url : "/movieinfofind",
        contentType : "application/json;charset=utf-8",
        data : JSON.stringify(inputdata),
        dataType : "json",
        success: function (data) {
            moviedata = data;
        },
        error: function () {
            alert("error");
        }
    });
    return moviedata;
}

function button1_click() {
    inputdata = document.querySelector('#movieid').value;
    // alert(inputdata+" 검색!!");
    var movieValNode = document.getElementById("movie-val");
    var result = Moviefind(inputdata);
    movieValNode.innerHTML  = "";


    for(key in result) {
        var keyvalue = result[key];

        movieValNode.innerHTML += "<hr width=\"100%\" noshade/>";
        movieValNode.innerHTML += "<b><font size='5'>["+key+"]"+keyvalue["title"]+"</font></b>&nbsp;&nbsp;&nbsp;"+"<small class=\"text-muted\">"+keyvalue["release"]+"</small>";
        movieValNode.innerHTML += "<br>";
        movieValNode.innerHTML += "장르:&nbsp;"+keyvalue["group"];
        movieValNode.innerHTML += "<div style=\"float: right\">" +
            "<a href=\"/movieinfo?movie_id="+key+"\" class=\"btn btn-info\">영화보기</a>" +
            "</div>";
    }


}