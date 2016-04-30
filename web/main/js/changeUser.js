/**
 * Created by za on 4/26/16.
 */

var s;
$(document).ready(function () {
    $("#newPassword").on("click", function () {
        $.get("../repeat?flag=change", {password: $("#password").val()}, function (data) {//传的是前面的
            s = data.trim();
            if (data.trim() == "ok") {
                $("#p1").text("ok");
            } else {
                $("#p1").text("password is wrong");
            }
        });
    })
    $("#confirmNewPassword").on("keyup",function () {
        var newPassword = $("#newPassword").val();
        var confirmNewPassword = $("#confirmNewPassword").val();
        if (newPassword == confirmNewPassword&&s=="ok") {
            $("#changeSubmit").attr("disabled", false);
        }
    })
});
