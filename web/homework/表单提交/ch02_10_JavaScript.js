function validate() {
    var name = document.forms[0].userName.value;
    var reg = /[a-zA-Z]\w*/;


    if(name.length<=0) alert("用户名不能为空!");
    else if(!reg.test(name)) alert("用户名格式不正确！");
    else document.forms[0].submit();
}