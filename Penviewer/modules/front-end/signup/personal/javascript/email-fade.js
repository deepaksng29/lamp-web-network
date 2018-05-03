// Fade animation of password confirmation.

var run = 0;

function runemailconfirm2() {
    function verification() {
        if (run >= 1) {
            // do nothing...
        } else {
            runemailConfirm();
        }
    };
    verification();
}
function runemailConfirm(){
    function emailConfirm() {
        document.getElementById('form-email-wrapper').innerHTML = '<input id="email-confirm1" style="opacity: 0;" type="text" name="password2" placeholder="Confirm your email address"> <br>';
        window.setTimeout(emailConfirm2,50);
    };
    function emailConfirm2() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.1';
        window.setTimeout(emailConfirm3,50);
    };
    function emailConfirm3() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.2';
        window.setTimeout(emailConfirm4,50);
    };
    function emailConfirm4() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.3';
        window.setTimeout(emailConfirm5,50);
    };
    function emailConfirm5() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.4';
        window.setTimeout(emailConfirm6,50);
    };
    function emailConfirm6() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.5';
        window.setTimeout(emailConfirm7,50);
    };
    function emailConfirm7() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.6';
        window.setTimeout(emailConfirm8,50);
    };
    function emailConfirm8() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.7';
        window.setTimeout(emailConfirm9,50);
    };
    function emailConfirm9() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.8';
        window.setTimeout(emailConfirm10,50);
    };
    function emailConfirm10() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '0.9';
        window.setTimeout(emailConfirm11,50);
    };
    function emailConfirm11() {
        var email = document.getElementById('email-confirm1');
        email.style.opacity = '1.0';
    };
    emailConfirm();
    run += 1;
    return run;