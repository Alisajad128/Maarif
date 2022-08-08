$(document).ready(function(){
    let xmlhttp;
    if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest(); 
    }else{
        xmlhttp = new ActiveXobject("Microsoft.XMLHTTP");
    }

    $("#schoollist").change(function(){
        let school = $("#schoollist").val();
        xmlhttp.open("GET","./includes/newstudent.php?school="+school,true);
        xmlhttp.send();
        xmlhttp.onreadystatechange = function(){
            if(xmlhttp.status==200 && xmlhttp.readyState==4){
                if(xmlhttp.responseText=="شهرت_شاگردان1401"){
                    $("#tables").html("<input name='table' value="+xmlhttp.responseText+" readonly/>");
                }else{
                    $("#tables").html("<span style='color:red'>ثبت نام جدید الشمول تا حال آغاز نشد است</span>");
                }
            }
        }
    });

    
    // conversion request 
    $("#submitbtn").hide();

    $("#idnumber").keypress(function(event){
        if(event.key=="Enter"){
            let school = $("#oldschool").val();
            let startschool = $("#startschool").val();
            let id= $("#idnumber").val()
            if(school!="" && startschool!=""){
                xmlhttp.open("GET","./includes/conversionrequest.php?oldschool="+school+"&year="+startschool+"&id="+id,true);
                xmlhttp.send();
                xmlhttp.onreadystatechange = function(){
                    if(xmlhttp.status==200 && xmlhttp.readyState==4){
                        if(xmlhttp.responseText=="found"){
                            $("#tables").html("<span>آی دی معتبر است</span>");
                            $("#submitbtn").show();
                        }else{
                            $("#tables").html("<span style='color:red'>آي دی مورد نظر در سیستم نیست</span>");
                        }
                    }
                }
            }
        }
    });
    /// this function will starting working when the submittion botton clicked;
    $("#submitbtn").click(function(){
        let oldschool = $("#oldschool").val();
        let startschool = $("#startschool").val();
        let id= $("#idnumber").val();
        let newschool = $("#newschool").val();
        let grade = $("#grade").val();
        let patten = /'[1-9]{1,2}'/;

        if(oldschool=="" || startschool==""||id==""||newschool=="" || grade==""){
            alert("تمامی بخش را با دقت خانه پر کنید!");
        }
        else if(patten.test(grade)){
            alert("صنف تان را با دقت درج نمایید!");
        }
        else{
            xmlhttp.open("GET","./includes/conversionrequest2.php?newschool="+newschool+"&year="+startschool+"&id="+id+"&old="+oldschool+"&grade="+grade,true);
                xmlhttp.send();
                xmlhttp.onreadystatechange = function(){
                    if(xmlhttp.status==200 && xmlhttp.readyState==4){
                        if(xmlhttp.responseText=="submited"){
                           alert("درخواست تان موفقانه ثبت در سیستم شد.برای دریافت جواب بعدا در سایت مراجع نماید");
                           $("#oldschool").val("");$("#startschool").val("");$("#idnumber").val("");$("#newschool").val("");
                           $("#grade").val("");
                        }else{
                           alert(xmlhttp.responseText);
                        }
                    }
                }
        }
    });
});