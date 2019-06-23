window.onload = function() {
  //得到该教材的bId
  var id = GetArgsFromHref("bId");
  GetDataFromBid(id);
};
//得到该教材的bId
function GetArgsFromHref(sArgName) {
  var sHref = window.location.href;
  //CuPlayer.com提示：测试数据
  //实际情况是用window.location.href得到URL
  //alert(sHref);
  var args = sHref.split("?");
  var retval = "";
  if (args[0] == sHref) {
    /*参数为空*/ return retval; /*CuPlayer.com提示：无需做任何处理*/
  }
  var str = args[1];
  args = str.split("&");
  for (var i = 0; i < args.length; i++) {
    str = args[i];
    var arg = str.split("=");
    if (arg.length <= 1) continue;
    if (arg[0] == sArgName) retval = arg[1];
  }
  return retval;
}

//获取教材资料
function GetDataFromBid(bid) {
  var promise1 = new Promise(function(resolve, reject) {
    $.ajax({
      type: "get",
      url: "http://127.0.0.1:8080/library/bookServlet?opt=getBookById",
      data: {
        bid: bid
      },
      dataType: "jsonp",
      jsonp: "jsonpCallback",
      success: function(result) {
        resolve(result);
      }
    });
  });
  promise1.then(function(value) {
    console.log(value);
    $("#book_details_bName").html(value[0].bName);
    $("#book_details_author").html(value[0].author);
    $("#book_details_pubComp").html(value[0].pubComp);
    $("#book_details_bId").html(value[0].bId);
    $("#book_details_price").html(value[0].price);
    $("#book_details_pubDate").html(value[0].pubDate);
    $("#book_details_bCount").html(value[0].bCount);
    $("#book_details_type").html(value[0].type);
    $("#book_details_bookIntroduce").html(value[0].intro);
    $("#book_details_img").attr("src", value[0].img);
  });
}
