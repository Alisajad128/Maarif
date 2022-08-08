$(document).ready(function(){
    let xmlhttp;
    if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest(); 
    }else{
        xmlhttp = new ActiveXobject("Microsoft.XMLHTTP");
    }
    $("#subul").hide();
    $("#showsubul").click(function(){
        $("#subul").toggle();
    });
// manager part for creating table for teachers to insert scores;
    $("#createTable").click(function(){
        let year = $("#year").val();
        let grade = $("#newclass").val();
        xmlhttp.open("GET","./includes/idCheck.php?year="+year+"&class="+grade,true);
        xmlhttp.send();
        xmlhttp.onreadystatechange = function(){
            if(xmlhttp.status==200 && xmlhttp.readyState==4){
                if(xmlhttp.responseText=="ایجاد شد"){
                    $("#massage").html("<span style='color:blue'>"+xmlhttp.responseText+"</span>");
                }else{
                    $("#massage").html("<span style='color:red'>"+xmlhttp.responseText+"</span>");
                }
            }
        }
    });
    let postCount = 5;
    $("#more").click(function(){
        postCount = postCount +5;
        $("#content").load("index.inc.php",{
            postNewcount:postCount
        });
    });
    $("#new-pass").hide();
    $("#re-pass").hide();
    $("#answer").hide();
    $("#oldpassword").keypress(function(event){
        if(event.key=="Enter"){
            let value = $("#oldpassword").val();
            if(value.length=0 || value.length<8){
                $("#oldpassword").css({"backgroundColor":"pink"});
                $("#answer").show();
                $("#answer").html("<p style='color:red;text-align:right;'>رمز عبور حد اقل ۸ کرکتر باید باشد</p>");
            }else{
                $("#oldpassword").css({"backgroundColor":"white"});
                xmlhttp.open("GET","./includes/changepassword.php?password="+value,true);
                xmlhttp.send();
                xmlhttp.onreadystatechange = function(){                
                    if(xmlhttp.status==200 && xmlhttp.readyState==4){
                        if(xmlhttp.responseText=="passed"){
                            $("#re-pass").show();
                            $("#new-pass").show();
                            $("#answer").hide();
                        }
                        else if(xmlhttp.responseText == "notpassed"){
                            $("#new-pass").hide();
                            $("#re-pass").hide();
                            $("#answer").show();
                            $("#oldpassword").css({"backgroundColor":"pink"});
                            $("#answer").html("<p style='color:red;text-align:right;'>رمز عبور تان درست نیست</p>");
                        }
                        else{
                            $("#new-pass").hide();
                            $("#re-pass").hide();
                            $("#answer").show();
                            let answer = xmlhttp.responseText;
                            $("#answer").html("<p style='color:red;text-align:right;'>"+answer+"</p>");
                        }
                    }
                }
            }
        }
    })
    $("#resultshow").hide();
    $("#changepassword").click(function(){
        let password = $("#newpassword").val();
        let repassword = $("#re-password").val();
        if(password.length == 0 || password.length<8){
            $("#newpassword").css({"backgroundColor":"pink"});
            $("#resultshow").show();
            $("#resultshow").html("<p style='color:red;text-align:center'>تعداد کرکتر ها باید حداقل ۸ کرکتر باشد</p>");
        }else{
            $("#newpassword").css({"backgroundColor":"white"});
            if(repassword.length==0 || repassword.length<8){
                $("#re-password").css({"backgroundColor":"pink"});
                $("#resultshow").show();
                $("#resultshow").html("<p style='color:red;text-align:center'>تعداد کرکتر ها باید حداقل ۸ کرکتر باشد</p>");
            }else{
                if(password!=repassword){
                    $("#newpassword").css({"backgroundColor":"pink"});   
                    $("#re-password").css({"backgroundColor":"pink"});
                    $("#resultshow").show();
                    $("#resultshow").html("<p style='color:red;text-align:center'>رمزعبور با همدیگر یکسان نیست</p>");
                }else{
                    $("#resultshow").hide();
                    $("#newpassword").css({"backgroundColor":"white"});   
                    $("#re-password").css({"backgroundColor":"white"});
                    xmlhttp.open("GET","includes/changepassword.php?newpassword="+password,true);
                    xmlhttp.send();
                    xmlhttp.onreadystatechange = function(){                
                        if(xmlhttp.status==200 && xmlhttp.readyState==4){
                            if(xmlhttp.responseText=="passed"){
                                $("#resultshow").show();
                                $("#resultshow").html("<p style='text-align:center' class='text-success'>رمز عبور تان موفقانه تغییر یافت</p>");
                                $("#newpassword").val("");
                                $("#re-password").val("");
                                $("#oldpassword").val("");
                            }
                            else if(xmlhttp.responseText=="notpassed"){
                                $("#resultshow").show();
                                $("#resultshow").html("<p style='color:red;text-align:center'>رمزعبور تان تغییر نکرد</p>");
                            }
                            else if(xmlhttp.responseText=="weakpass"){
                                $("#resultshow").show();
                                $("#resultshow").html("<p style='color:red;text-align:center'>رمز عبور باید پیچیده باشد(باید شامل اعداد٬سمبول٬حروف خورد و بزرک)</p>");
                            }
                        }
                    }

                }
            }
        }
    });
    // show school input box for manager and teacher
    $("#schoolname").hide();
    $("#privilege").change(function(){
        if($("#privilege").val()=="manager" ||$("#privilege").val()=="teacher"){
            $("#schoolname").show();
        }else{
            $("#schoolname").hide();
        }
    })
});
