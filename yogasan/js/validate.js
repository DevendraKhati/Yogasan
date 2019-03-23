//ADD USER FORM VALIDATION
function validate_adduser() {
    var nam, mob, add, occu, tt, totalfee, feepaid;
    nam = document.getElementById("name").value;
    mob = document.getElementById("mobile").value;
    add = document.getElementById("address").value;
    occu = document.getElementById("occupation").value;
    tt = document.getElementById("time").value;
    totalfee = document.getElementById("fee").value;
    feepaid = document.getElementById("paid").value;
    var emailid = document.getElementById("email").value;

    //Validating Email of the user
    var atpos = emailid.indexOf("@");
    var dotpos = emailid.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= emailid.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}