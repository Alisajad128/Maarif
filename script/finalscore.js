$(document).ready(function(){
    let xmlhttp;
    if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest(); 
    }else{
        xmlhttp = new ActiveXobject("Microsoft.XMLHTTP");
    }

    $("#sendscores").click(function(){
        let year = $("#finalyear").val();
            xmlhttp.open("GET","./includes/sending.php?year="+year,true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function(){                
                if(xmlhttp.status==200 && xmlhttp.readyState==4){
                    if(xmlhttp.responseText=="send"){
                        alert("gone");
                    }else{
                        alert(xmlhttp.responseText);
                    }
                }
            }
    });
});
