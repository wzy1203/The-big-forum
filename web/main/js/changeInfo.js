/**
 * Created by za on 4/28/16.
 */
var s;
$(document).ready(function () {
    $("#changeInformation").on("click",function () {
        $("#sex").attr("disabled", false);
        $("#brith").attr("disabled", false);
        $("#address").attr("disabled", false);
        $("#email").attr("disabled", false);
    })
    $("#saveInformation").on("click",function () {
        $.get("../repeat?flag=changeInfo", {username: $("#username").val(),sex:$("#sex").val()
            ,brith:$("#brith").val(),address:$("#address").val(),email:$("#email").val()}, function (data) {
            $("#sex").attr("disabled", true);
            $("#brith").attr("disabled", true);
            $("#address").attr("disabled", true);
            $("#email").attr("disabled", true);
        });
    });
});
