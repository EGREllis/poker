<html>
    <head>
        <title>Sign up</title>
        <script>
            function validate() {
                var username = document.forms["signUp"]["username"].value;
                var password = document.forms["signUp"]["password"].value;
                var confirm = document.forms["signUp"]["confirm"].value;
                var errors = "";
                if (username.length <= 0) {
                    errors += "Your username must not be blank.<br/>";
                }
                if (password.length <= 0) {
                    errors += "Your password must not be blank.<br/>";
                }
                if (confirm.length <= 0) {
                    errors += "Your password confirmation must not be blank.<br/>";
                }
                if (password != confirm) {
                    errors += "Your password and password confirmation do not match.<br/>";
                }
                if (errors.length > 0) {
                    document.getElementById("errors").innerHTML = errors;
                    return false;
                } else {
                    document.getElementById("errors").innerHTML = "";
                    return true;
                }
            }
        </script>
    </head>
    <body>
        <form method="POST" action="./register.html" name="signUp" onsubmit="return validate()">
            <table>
                <tr><td>Username:</td><td><input type="text" name="username" id="username" /></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" id="password" /></td></tr>
                <tr><td>Confirm password:</td><td><input type="password" name="confirm" id="confirm" /></td></tr>
                <tr><td colspan="2"><input style="width:100%;height:100%;" type="submit" value="Sign up!" /></td></tr>
                <tr><td colspan="2"><div id="errors" /></td></tr>
            </table>
        </form>
    </body>
</html>