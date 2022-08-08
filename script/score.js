$(document).ready(function(){
    let xmlhttp;
    if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest(); 
    }else{
        xmlhttp = new ActiveXobject("Microsoft.XMLHTTP");
    }

    $("#4").hide();
    $("#7").hide();
    $("#12").hide();
    // id seacher, is there any one with this id or not 
    $("#id").keypress(function(event){
        if(event.key == "Enter"){
            let idval = $("#id").val();
            let classval = $("#classval").val();
            let tablename = $("#newclass").val();
            if(1<=classval && classval<=4){
                $("#4").show();
                $("#7").hide();
                $("#12").hide();
            }
            else if(5<=classval && classval<=7){
                $("#7").show();
                $("#4").hide();
                $("#12").hide();
            }
            else if(8<=classval && classval<=12){
                $("#12").show();
                $("#4").hide();
                $("#7").hide();
            }else{
                $("#4").hide();
                $("#7").hide();
                $("#12").hide();
            }
            xmlhttp.open("GET","./includes/idAndscore.php?id="+idval+"&table="+tablename+"&class="+classval,true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function(){                
                if(xmlhttp.status==200 && xmlhttp.readyState==4){
                    if(xmlhttp.responseText=="تایید شد!"){
                        $(".scoreForm").show();
                        $("#result").html("<span style='color:blue;'>"+xmlhttp.responseText+"</span>");
                    }
                    else{
                        $(".scoreForm").hide();
                        $("#result").html("<span style='color:red;'>"+xmlhttp.responseText+"</span>");
                    }
                }
            }
        }
    });
    function valiednumbers(num){
        let result = false;
        let number = num.val()
        let check = /^[1-9][0-9]?$|100$/;
        if(length.number==0){
            result=false;
            $(num).css({"background-color":"pink"});
        }
        else if(number<40){
            result=false;
            $(num).css({"background-color":"pink"});
        }
        else{
            if(check.test(number)){
                result = true;
                $(num).css({"background-color":"white"});
            }else{
                result=false;
                $(num).css({"background-color":"pink"});
            }
        }
        return result;
    }
    $("#getnumbers1").click(function(){
        var dari1 = $("#dari1");
        var math1 = $("#math1");
        var skills1 = $("#skills1");
        var quran1 = $("#Quran1");
        var islamic1 = $("#islamic1");
        var sport1 = $("#sport1");
        let table = $("#newclass").val();
        let id = $("#id").val();
        if(valiednumbers(dari1) && valiednumbers(math1) && valiednumbers(skills1) &&
         valiednumbers(quran1)&&valiednumbers(islamic1)&&valiednumbers(sport1)){
            xmlhttp.open("GET","./includes/idAndscore.php?idscore="+id+"&table="+table+"&dari="+dari1.val()
            +"&math="+math1.val()+"&skill="+skills1.val()+"&quran1="+quran1.val()
            +"&islam="+islamic1.val()+"&sport="+sport1.val(),true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function(){
                if(xmlhttp.status==200 && xmlhttp.readyState==4){
                    let answer = xmlhttp.responseText;
                    if(xmlhttp.responseText=="ثبت شد"){
                        $("#message").html("<p style=';text-align:center'>"+answer+"</p>");
                        dari1.val("");math1.val("");skills1.val("");quran1.val("");islamic1.val("");sport1.val("");
                    }else{
                        $("#message").html("<p style='color:red;text-align:center'>"+answer+"</p>");
                    }
                }
            }
        }else{
            alert("فیلد های که سرخ رنگ شد است داری معلومات درست نمی باشد!");
        }
    });
    $("#getnumnbers2").click(function(){
        let table = $("#newclass").val();
        let id = $("#id").val();
        let quran2 = $("#quran2");let islamic2 = $("#islamic2");
        let dari2 = $("#dari2");let pashto2 = $("#pashto2");let arabic2 = $("#arabic2");let english2 = $("#english2");
        let chem2 = $("#chem2");let py2 = $("#py2");let bio2 = $("#bio2");let math2 = $("#math2");
        let history2 = $("#history2");let geo2 = $("#geo2");let civil2 = $("#civil2");let skill2 = $("#skill2");
        let selective2 = $("#selective2");let art2 = $("#art2");let sport2 = $("#sport2");let reform2 = $("#reform2");
        let subjects = [quran2,islamic2,dari2,pashto2,arabic2,english2,chem2,py2,bio2,math2,history2,geo2,civil2,skill2,
            selective2,art2,sport2,reform2];
        function resultofall(){
            let final = false;
            subjects.forEach(element => {
                if(valiednumbers(element)){
                    final = true;
                }else{
                    final = false;
                }
            });
            return final;
        }
        if(resultofall()){
            xmlhttp.open("GET","./includes/idAndscore.php?id2="+id+"&table="+table+"&quran="+quran2.val()
            +"&islamic="+islamic2.val()+"&dari="+dari2.val()+"&pashto="+pashto2.val()
            +"&arabic="+arabic2.val()+"&english="+english2.val()+"&chem="+chem2.val()+"&py="+py2.val()+"&bio="+bio2.val()
            +"&math="+math2.val()+"&history="+history2.val()+"&geo="+geo2.val()+"&civil="+civil2.val()
            +"&skill="+skill2.val()+"&selective="+selective2.val()+"&art="+art2.val()+"&sport="+sport2.val()+"&reform="+reform2.val(),true);
            xmlhttp.send();   
            xmlhttp.onreadystatechange = function(){
                if(xmlhttp.status==200 && xmlhttp.readyState==4){
                    let answer = xmlhttp.responseText;
                    if(xmlhttp.responseText=="ثبت شد"){
                        $("#message").html("<p style='color:lightgreen;text-align:center'>"+answer+"</p>");
                        quran2.val("");islamic2.val("");dari2.val("");pashto2.val("");arabic2.val("");english2.val("");chem2.val("");
                        py2.val("");bio2.val("");math2.val("");history2.val("");geo2.val("");civil2.val("");skill2.val("");selective2.val("");
                        art2.val("");sport2.val("");reform2.val("");
                        $("#message").html("<p style='color:red;text-align:center'>"+answer+"</p>");
                    }else{
                        $("#message").html("<p style='color:red;text-align:center'>"+answer+"</p>");
                    }
                }
            }
        }else{
            alert("فیلد های که سرخ رنگ شد است داری معلومات درست نمی باشد!");
        }
    });

    $("#getnumbers3").click(function(){
        let table = $("#newclass").val();
        let id = $("#id").val();
        let classval = $("#classval").val();
        let inter3 = $("#inter3");let islamic3 = $("#islamic3");
        let dari3 = $("#dari3");let pashto3 = $("#pashto3");let geol3 = $("#geol3");let english3 = $("#english3");
        let chem3 = $("#chem3");let py3 = $("#py3");let bio3 = $("#bio3");let math3 = $("#math3");
        let history3 = $("#history3");let geo3 = $("#geo3");let civil3 = $("#civil3");let computer3 = $("#computer3");
        let selective3 = $("#selective3");let sport3 = $("#sport3");let reform3 = $("#reform3");
        
        let subjects = [inter3,islamic3,dari3,pashto3,geol3,english3,chem3,py3,bio3,math3,history3,geo3,
            civil3,computer3,selective3,sport3,reform3];
        function resultofall(){
            let final = false;
            subjects.forEach(element => {
                if(valiednumbers(element,classval)){
                    final = true;
                }
                else{
                    final = false;
                }
            });
            return final;
        }
        if(resultofall()){
            xmlhttp.open("GET","./includes/idAndscore.php?id3="+id+"&table="+table+"&inter="+inter3.val()
            +"&islamic="+islamic3.val()+"&dari="+dari3.val()+"&pashto="+pashto3.val()
            +"&geol="+geol3.val()+"&english="+english3.val()+"&chem="+chem3.val()+"&py="+py3.val()+"&bio="+bio3.val()
            +"&math="+math3.val()+"&history="+history3.val()+"&geo="+geo3.val()+"&civil="+civil3.val()
            +"&computer="+computer3.val()+"&selective="+selective3.val()+"&sport="+sport3.val()+"&reform="+reform3.val(),true);
            xmlhttp.send();   
            xmlhttp.onreadystatechange = function(){
                if(xmlhttp.status==200 && xmlhttp.readyState==4){
                    let answer = xmlhttp.responseText;
                    if(xmlhttp.responseText=="ثبت شد"){
                        $("#message").html("<p style='color:lightgreen;text-align:center'>"+answer+"</p>");
                        inter3.val("");islamic3.val("");dari3.val("");pashto3.val("");geol3.val("");english3.val("");
                        chem3.val("");py3.val("");bio3.val("");math3.val("");history3.val("");geo3.val("");
                        civil3.val("");computer3.val("");selective3.val("");sport3.val("");reform3.val("");
                        $("#message").html("<p style='color:red;text-align:center'>"+answer+"</p>");
                    }else{
                        $("#message").html("<p style='color:red;text-align:center'>"+answer+"</p>");
                    }
                }
            }
        }else{
            alert("فیلد های که سرخ رنگ شد است داری معلومات درست نمی باشد!");
        }
    });

})