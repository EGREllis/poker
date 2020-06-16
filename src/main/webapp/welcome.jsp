<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Poker welcome page</title>
    </head>
    <body>
        <p>Welcome <c:out value="${requestScope.user_name}" />!</p>
        <table>
            <tr><td><a href="./poker_table.html">Poker table</a></td></tr>
        </table>
    </body>
</html>