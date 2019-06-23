window.onload = function() {
  //初始化
  init();
  //登录状态

  //登录
  $("#form-log").submit(function(e) {
    var username = $("#login-name").val();
    var userpwd = $("#login-pwd").val();
    if (username == "" || userpwd == "") {
      alert("输入有误！！！");
    } else {
      e.preventDefault();
      console.log(username + userpwd);
      var promise = new Promise(function(resolve, reject) {
        $.ajax({
          type: "get",
          async: true,
          url: "http://127.0.0.1:8080/library/userServlet?opt=login",
          data: {
            name: username,
            pwd: userpwd
          },
          dataType: "jsonp",
          jsonp: "jsonpCallback",
          success: function(result) {
            // resolve(JSON.parse(result));
            resolve(result);
          },
          error: function() {
            alert("请求失败！");
          }
        });
      });
      promise.then(function(value) {
        if (value.loginstate == 1) {
          sessionStorage.setItem("userName", username);
          sessionStorage.setItem("isLogin", "true");
          islogin();
          console.log(sessionStorage.getItem("userName"));
          closeWindow();
        } else {
          alert("登录失败");
        }
      });
    }
  });

  //注册提交检测
  $("#form-reg").submit(function(e) {
    var username = $("#regist-uid").val();
    var password = $("#regist-pwd").val();
    var repassword = $("#regist-rePwd");
    e.preventDefault();
    // var logName = document.getElementsByName("uid")[0];
    var logName = document.getElementById("regist-uid");
    if (logName.validity.valueMissing == true) {
      //未输入验证
      logName.setCustomValidity("用户名不能为空");
    } else if (logName.validity.patternMismatch == true) {
      //正则验证不通过
      logName.setCustomValidity("用户名以字母开头，且4-10位");
    } else {
      logName.setCustomValidity("");
    }

    // var pwd = document.getElementsByName("pwd")[0];
    var pwd = document.getElementById("regist-pwd");
    if (pwd.validity.valueMissing == true) {
      pwd.setCustomValidity("密码不能为空");
    } else if (pwd.validity.patternMismatch == true) {
      pwd.setCustomValidity("密码为4~10位");
    } else {
      pwd.setCustomValidity("");
    }

    // var repwd = document.getElementsByName("rePwd")[0];
    var repwd = document.getElementById("regist-rePwd");
    if (repwd.validity.valueMissing == true) {
      repwd.setCustomValidity("重复密码不能为空");
    } else if (pwd.value != repwd.value) {
      repwd.setCustomValidity("两次密码要一致");
    } else {
      repwd.setCustomValidity("");
      var promise = new Promise(function(resolve, reject) {
        $.ajax({
          type: "get",
          async: true,
          url: "http://127.0.0.1:8080/library/userServlet?opt=regist",
          data: {
            name: username,
            pwd: password
          },
          dataType: "jsonp",
          jsonp: "jsonpCallback",
          success: function(result) {
            // resolve(JSON.parse(result));
            resolve(result);
          },
          error: function() {
            alert("请求失败！！！");
          }
        });
      });
      promise.then(function(value) {
        var regState = value.registstate;
        if (regState == 1) {
          alert("注册成功！！");
          closeWindow();
        } else if (regState == 0) {
          alert("输入有误！！");
        } else if (regState == 2) {
          alert("用户名已存在！！！");
        }
      });
    }
  });

  // 提交用户信息

  $("#userMessage").submit(function(e) {
    // alert("a");
    var tName = $("#tName").val();
    var loginName = sessionStorage.getItem("userName");
    var sex = $("input[name='sex']:checked").val();
    var phoneNumber = $("#usertel").val();
    var backImg = $("#backImg").attr("src");
    var intro = $("#userIntro").val();
    console.log(tName + loginName + sex + phoneNumber + backImg + intro);

    var promise = new Promise(function(resolve, reject) {
      $.ajax({
        type: "get",
        url: "http://127.0.0.1:8080/library/userServlet?opt=userMessageSubmit",
        data: {
          tName: tName,
          loginName: loginName,
          sex: sex,
          phoneNumber: phoneNumber,
          backImg: backImg,
          intro: intro
        },
        dataType: "jsonp",
        jsonp: "jsonpCallback",
        success: function(result) {
          resolve(result);
        }
      });
    });
    promise.then(function(value) {
      var submitState = value.submitState;
      console.log(submitState);
      if (submitState == 1) {
        console.log("提交成功！！");
        $("#tName").val();
        $("input[name='sex']:checked").val(sex);
        $("#usertel").val(phoneNumber);
        $("#backImg").attr("src", backImg);
        $("#userIntro").val(intro);
      } else if (submitState == 0) {
        console.log("提交有误！！");
      } else if (submitState == 2) {
        console.log("提交失败！！！");
      }
    });
    return false;
  });
};
// 初始化
function init() {
  //获取学院列表dom节点
  var acas = $(".academic");
  //显示教材类型
  var booktype = "ALL";

  //判断是否登录
  islogin();
  //绑定导航栏学院点击事件
  $(".academic")
    .children()
    .click(function() {
      switch ($(this).text()) {
        case "电子信息工程学院":
          booktype = "IT";
          break;
        case "社会发展学院":
          booktype = "SHFZ";
          break;
        case "建筑工程学院":
          booktype = "JZGC";
          break;
        case "外国语学院":
          booktype = "WGY";
          break;
        case "生命科学学院":
          booktype = "SMKX";
          break;
        case "文学院":
          booktype = "WXY";
          break;
        case "体育学院":
          booktype = "TY";
          break;
        default:
          booktype = "ALL";
          break;
      }
      //获取教材列表
      getBookData(booktype);
    });
  //获取所有教材数据
  getBookData(booktype);
  //添加购物车点击事件
  bookToCart();
}

// 打印表格
function getExcel() {
  var oTable = document.getElementById("table_wrapper").innerHTML;
  var excelHtml = `
      <html>
      <head>
        <meta charset='utf-8' />
        <style>
          #my-order {
            border-collapse: collapse;
          }
          #my-order .title th{
            height: 50px;
            font-size: 24px;
            font-family: '微软雅黑';
            font-weight: 700;
          }
          #my-order tr th {
            border: 1px #000 solid;
            height: 40px;
            background: #efefef;
          }
          #my-order tr td {
            padding: 0 40px;
            border: 1px #000 solid;
            height: 40px;
            text-align: center;
          }
          #my-order .footer td {
            font-size: 20px;
            font-weight: 700;
          }
        </style>
      </head>
      <body>
        ${oTable}
      </body>
    </html>
    `;

  // 创建 Blob 对象
  var excelBlob = new Blob([excelHtml], { type: "application/vnd.ms-excel" });
  var oA = document.getElementById("down-file");

  // 会产生一个类似blob:d3958f5c-0777-0845-9dcf-2cb28783acaf 这样的 URL 字符串
  // 这里 URL.createObjectURL(excelBlob) 会创建一个URL 的 Blob 对象
  oA.href = URL.createObjectURL(excelBlob);
  var name = $("#excel-name").val();
  console.log(name);
  oA.download = name + ".xls";

  // oA.click = function() {
  //     this.click();
  // };
}

/***点击事件********************************************************/

//首页点击事件
function firstPage() {
  $(".content-body").css("display", "none");
  $(".content-index").css("display", "block");
}
//我的上报点击事件
function showMySubmit() {
  if (sessionStorage.getItem("isLogin") == "true") {
    $(".content-body").css("display", "none");
    $(".my-submit").css("display", "block");
    var loginName = sessionStorage.getItem("userName");
    getMyOrder(loginName);
  } else {
    alert("您还没有登录");
  }
}

//个人信息点击事件
function showMyMessage() {
  if (sessionStorage.getItem("isLogin") == "true") {
    $(".content-body").css("display", "none");
    $(".my-message").css("display", "block");
    // $("#loginName").val(sessionStorage.getItem("userName"));
    var username = sessionStorage.getItem("userName");
    var promise = new Promise(function(resolve, reject) {
      $.ajax({
        type: "get",
        async: true,
        url: "http://127.0.0.1:8080/library/userServlet?opt=getUserMessage",
        data: {
          loginName:username 
        },
        dataType: "jsonp",
        jsonp: "jsonpCallback",
        success: function(result) {
          resolve(result);
        },
        error: function() {
          alert("请求失败！！！");
        }
      });
    });
    promise.then(function(value) {
      console.log(value[0].tName);
      var templateUser = _.template($("#user_message").html());
      var htmlUser = templateUser({ model: value[0] });
      $("#userMessage").html(htmlUser);
    });
  } else {
    alert("您还没有登录");
  }
}

//登录-注册点击事件
function loginRegist() {
  if (!(sessionStorage.getItem("isLogin") == "true")) {
    showWindow();
  }
}

//登录状态
function islogin() {
  var unloginStr = "<a href='#' onclick='loginRegist()'>登录/注册</a>";
  if (sessionStorage.getItem("isLogin") == "true") {
    $("#header-username").html(sessionStorage.getItem("userName"));
    getMyOrder(sessionStorage.getItem("userName"));
    bookToCart();
  } else {
    $("#header-username").html(unloginStr);
  }
}
//退出
function loginOut() {
  var promise = new Promise(function(resolve, reject) {
    $.ajax({
      type: "get",
      async: true,
      url: "http://127.0.0.1:8080/library/userServlet?opt=signout",
      data: {},
      dataType: "jsonp",
      jsonp: "jsonpCallback",
      success: function(result) {
        if (result.signoutState == 1) {
          sessionStorage.setItem("isLogin", "false");
          islogin();
        }
        // window.location.href = 'http://localhost:8080/library/book.html';
      },
      error: function() {
        alert("请求失败！！！");
      }
    });
  });
}

//增加数量
function addCount() {
  var count = Number($("#add-book-count").val());
  $("#add-book-count").val(count + 1);
}

//减少数量
function subCount() {
  var count = Number($("#add-book-count").val());
  if (count > 1) {
    $("#add-book-count").val(count - 1);
  }
}

//加入购物车
function addCart() {
  if (sessionStorage.getItem("isLogin") == "true") {
    $("#book_details_img").css("animation", "addBook 0.8s");
    $("#book_details_img").css("z-index", 999);

    var bid = $("#book_details_bId").text();
    var bName = $("#book_details_bName").text();
    var bCount = $("#add-book-count").val();
    var userName = sessionStorage.getItem("userName");
    console.log("bId" + bid);
    console.log("bName" + bName);
    console.log("bidheuserName:" + userName);
    console.log("bCount:" + bCount);
    var promise = new Promise(function(resolve, reject) {
      $.ajax({
        type: "get",
        async: true,
        url: "http://127.0.0.1:8080/library/tbServlet?opt=add",
        data: {
          bid: bid,
          bName: bName,
          loginName: userName,
          bCount: bCount
        },
        dataType: "jsonp",
        jsonp: "jsonpCallback",
        success: function(result) {
          if (result.State == 1) {
            console.log("添加成功");
          } else if (result.State == 0) {
            alert("添加失败！！！");
          } else {
            alert("出错了！！！");
          }
        },
        error: function() {
          alert("请求失败！！！");
        }
      });
    });
  } else {
    alert("您还没有登录");
  }
}

// 弹窗
function showWindow() {
  $("#showdiv").show(); //显示弹窗
  $("#cover").css("display", "block"); //显示遮罩层
  $("#cover").css("height", document.body.clientHeight + "px"); //设置遮罩层的高度为当前页面高度
}
// 关闭弹窗
function closeWindow() {
  $("#showdiv").hide(); //隐藏弹窗
  $("#cover").css("display", "none"); //显示遮罩层
}

// 登录与注册切换
function formTabLogin() {
  $(".body-top-login")
    .children()
    .css("border-bottom-color", "#31A4F6");
  $(".body-top-regist")
    .children()
    .css("border-bottom-color", "#DDDDDD");
  $(".body-top-login")
    .children()
    .css("color", "#333333");
  $(".body-top-regist")
    .children()
    .css("color", "#A2A2A2");
  $(".form-login").css("display", "block");
  $(".form-regist").css("display", "none");
}
function formTabRegist() {
  $(".body-top-login")
    .children()
    .css("border-bottom-color", "#DDDDDD");
  $(".body-top-regist")
    .children()
    .css("border-bottom-color", "#31A4F6");
  $(".body-top-login")
    .children()
    .css("color", "#A2A2A2");
  $(".body-top-regist")
    .children()
    .css("color", "#333333");
  $(".form-login").css("display", "none");
  $(".form-regist").css("display", "block");
}

/*数据请求函数*********************************************************************/
//获取教材列表信息
function getBookData(booktype) {
  //发送ajax请求
  var promise = new Promise(function(resolve, reject) {
    $.ajax({
      type: "get",
      async: true,
      url: "http://127.0.0.1:8080/library/bookServlet?opt=bookList",
      data: {
        booktype: booktype
      },
      dataType: "jsonp",
      jsonp: "jsonpCallback",
      success: function(result) {
        resolve(result);
      },
      error: function() {
        alert("请求失败！！！");
      }
    });
  });
  //处理返回的信息
  promise
    .then(function(value) {
      // 通过underscore.js模板引擎将数据渲染到前台
      var templateBooks = _.template($("#book_list").html());
      var htmlbooks = templateBooks({ model: value });
      $("#bookDate").html(htmlbooks);

      //绑定查看详情点击事件
    })
    .then(function(value) {
      //获取当前列表第一个教材的id
      var bid = $("#bookDate")
        .find("tr")
        .eq(1)
        .children("td")
        .eq(0)
        .text();
      console.log(bid);
      getDataFromBid(bid);
      $("#bookDate")
        .find("tr")
        .eq(1)
        .find("button")
        .css("background", "#6fa8dc");
      //查看详情按钮的点击事件
      $(".btn-book-details").click(function() {
        //获取当前点击按钮所对应的教材id
        bid = $(this)
          .parent()
          .parent()
          .children(":first-child")
          .text();
        //改变按钮颜色

        $(".btn-book-details").css("background", "#F4F4F4");
        $(this).css("background", "#6fa8dc");
        //获取该id教材的信息
        getDataFromBid(bid);
      });
      $(".btn-book-details")
        .eq(0)
        .click();
    });
}

//获取选取教材详情
function getDataFromBid(bid) {
  var promise = new Promise(function(resolve, reject) {
    $.ajax({
      type: "get",
      async: true,
      url: "http://127.0.0.1:8080/library/bookServlet?opt=getBookById",
      data: {
        bid: bid
      },
      dataType: "jsonp",
      jsonp: "jsonpCallback",
      success: function(result) {
        resolve(result);
      },
      error: function() {
        alert("请求失败！！！");
      }
    });
  });
  promise.then(function(value) {
    $("#book_details_bName").html(value[0].bName);
    $("#book_details_author").html(value[0].author);
    $("#book_details_pubComp").html(value[0].pubComp);
    $("#book_details_bId").html(value[0].bId);
    $("#book_details_price").html(value[0].price);
    // $("#book_details_pubDate").html(value[0].pubDate);
    $("#book_details_bCount").html(value[0].bCount);
    $("#book_details_type").html(value[0].type);
    $("#book_details_img").attr("src", value[0].img);
    // $("#book_details_img").attr('src', "https://img3.doubanio.com/view/subject/l/public/s5724055.jpg");
    $("#book_details_img").attr("alt", value[0].bName);
    $("#book_details_bookIntroduce").html(value[0].intro);
  });
}

//添加教材到用户的订单
function addBooktoCart(bookId, userName) {
  var bookUrl = "http://127.0.0.1:8080/library/userServlet?opt=addBook";
  var promise = new Promise(function(resolve, reject) {
    $.ajax({
      type: "get",
      async: true,
      url: bookUrl,
      data: {
        bookId: bookId,
        userName: userName
      },
      dataType: "jsonp",
      jsonp: "jsonpCallback",
      success: function(result) {
        if (result.State == 1) {
          console.log("添加成功");
        } else if (result.State == 0) {
          alert("添加失败！！！");
        } else {
          alert("出错了！！！");
        }
      },
      error: function() {
        alert("请求失败！！！");
      }
    });
  });
  promise.then(function(value) {
    console.log(value);
  });
}

//获取我的订单
function getMyOrder(loginName) {
  var promise = new Promise(function(resolve, reject) {
    $.ajax({
      type: "get",
      async: false,
      url: "http://127.0.0.1:8080/library/tbServlet?opt=getTbByTid",
      data: {
        loginName: loginName
      },
      dataType: "jsonp",
      jsonp: "jsonpCallback",
      success: function(result) {
        resolve(result);
      },
      error: function() {
        alert("请求失败！！！");
      }
    });
  });
  promise
    .then(function(value) {
      // 通过underscore.js模板引擎将数据渲染到前台
      var templateMyBooks = _.template($("#my_bookList").html());
      var htmlbooks = templateMyBooks({ model: value });
      $("#my-order").html(htmlbooks);
      return value;
    })
    .then(function(value) {
      // onclick='deleteTBook('"+value[i].bid+"','"+value[i].loginName+"')'
      $(".add-Book").click(function() {
        var bid = $(this)
          .parent()
          .parent()
          .children("td")
          .eq(0)
          .text();
        loginName = sessionStorage.getItem("userName");
        deleteTBook(bid, loginName);
      });
    });
}

//删除已选订单

function deleteTBook(bid, loginName) {
  var promise = new Promise(function(resolve, reject) {
    $.ajax({
      type: "get",
      async: false,
      url: "http://127.0.0.1:8080/library/tbServlet?opt=delete",
      data: {
        bid: bid,
        loginName: loginName
      },
      dataType: "jsonp",
      jsonp: "jsonpCallback",
      success: function(result) {
        if (result.State == 1) {
          console.log("删除成功");
        } else if (result.State == 0) {
          alert("删除失败！！！");
        } else {
          alert("出错了！！！");
        }
      }
      // },
      // error: function() {
      //   alert("请求失败！！！");
      // }
    });
  });
}

//用户信息提交
function userMessageSubmit() {
  var tName = $("#tName").val();
  var loginName = sessionStorage.getItem("userName");
  var sex = $("input[name='sex']:checked").val();
  var phoneNumber = $("#usertel").val();
  var backImg = $("#backImg").attr("src");
  var intro = $("#userIntro").val();
  console.log(tName + loginName + sex + phoneNumber + backImg + intro);

  var promise = new Promise(function(resolve, reject) {
    $.ajax({
      type: "get",
      url: "http://127.0.0.1:8080/library/userServlet?opt=userMessageSubmit",
      data: {
        tName: tName,
        loginName: loginName,
        sex: sex,
        phoneNumber: phoneNumber,
        backImg: backImg,
        intro: intro
      },
      dataType: "jsonp",
      jsonp: "jsonpCallback",
      success: function(result) {
        alert(result);
      }
    });
  });
}

//添加教材点击动画
function bookToCart() {
  if (sessionStorage.getItem("isLogin") == "true") {
    // 添加点击事件
    $("#add-book").bind("click", function(event) {
      $("#book_details_img").css("animation", "addBook 0.8s");
    });
    //添加动画执行完成后去除动画
    $("#book_details_img")[0].addEventListener("animationend", function(e) {
      $(this).css("animation", "");
    });
  } else {
    $("#book_details_img").css("animation", "");
    alert("您还没有登录");
  }
}
