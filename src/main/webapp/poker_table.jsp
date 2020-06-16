<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
    <head></head>
    <body>
        <svg viewBox="0 0 100 100" style="width:100%;height:100%;">
            <circle cx="50" cy="50" r="30" stroke="black" stroke-width="1" fill="brown" />
            <text x="20" y="20">${sessionScope.user_name}</text>
        </svg>
    </body>
</html>