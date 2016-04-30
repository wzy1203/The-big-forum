/**
 /**
 * Created by killeryuan on 2016/4/17.
 */
//register验证的JS
var message;
$(document).ready(function(){
    $("#password").on("click",function() {
        $("#p1").text("bbb");
        $.get("../repeat?flag=new", {username:$("#username").val()}, function (data) {
            message = data.trim();
            $("#p1").text(message)
        });
    });
    $("#email").on("click",function(){
        var pass = $("#password").val();
        var conPass = $("#confirm").val();
        if(pass==conPass) {
            $("#p2").text("ok");
            if (message=="ok") {
                $("#submitRegister").attr("disabled",false);
            }
        }
        else{
            $("#p2").text("not same");
        }
    });
});




