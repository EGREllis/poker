<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Poker welcome page</title>
    </head>
    <body>
        <p>Welcome <c:out value="out" />!</p>
        <p>Welcome <c:out value="${requestScope.user_name}" />!</p>
        <p>Welcome <c:out value="${sessionScope.user_name}" />!</p>
        <p>Welcome <c:out value="${user_name}" />!</p>
    </body>
</html>