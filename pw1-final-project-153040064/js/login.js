var ulang = 3; 
function validate(){
var username = document.getElementById("username").value;
var password = document.getElementById("password").value;
if ( username == "admin" && password == "admin"){
alert ("Login successfully");
window.location = "admin.html";
return false;
}
else{
ulang --;
alert("coba lagi, kamu memiliki "+ulang+" kesempatan;");

if( ulang == 0){
document.getElementById("username").disabled = true;
document.getElementById("password").disabled = true;
document.getElementById("submit").disabled = true;
return false;
}
}
}
