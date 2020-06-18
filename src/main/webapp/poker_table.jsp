<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <style>
            .text   {   font:   normal 20px sans-serif; }
            .card   {   font:   bold 30px sans-serif; color: red; }
            rect    {   fill:rgb(210,105,30);stroke-width:3;stroke:rgb(0,0,0);     }
        </style>
    </head>
    <body>
        <svg viewBox="0 0 1000 1000" style="width:100%;height:100%;">
            <circle cx="500" cy="500" r="490" stroke="black" stroke-width="1" fill="rgb(230,125,50)" />
            <circle cx="500" cy="500" r="450" stroke="black" stroke-width="1" fill="rgb(210,105,30)" />
            <circle cx="500" cy="500" r="400" stroke="black" stroke-width="1" fill="brown" />
            <text x="50" y="100" class="text">${sessionScope.user_name}</text>
            <text x="850" y="100" class="text">Player 1</text>
            <text x="50" y="900" class="text">Player 2</text>
            <text x="850" y="900" class="text">Player 3</text>

            <rect x="450" y="425" rx="15" width="100" height="150" class="card" />
            <rect x="350" y="425" rx="15" width="100" height="150" class="card" />
            <rect x="250" y="425" rx="15" width="100" height="150" class="card" />
            <rect x="550" y="425" rx="15" width="100" height="150" class="card" />
            <rect x="650" y="425" rx="15" width="100" height="150" class="card" />

            <rect x="0" y="110" rx="15" width="100" height="150" class="card" />
            <text x="5" y="140" class="card">10</text>
            <text x="55" y="255" class="card">10</text>
            <rect x="100" y="110" rx="10" width="100" height="150" class="card" />
            <text x="105" y="140" class="card">9</text>
            <text x="175" y="255" class="card">9</text>
            <rect x="800" y="110" rx="15" width="100" height="150" class="card" />
            <text x="805" y="140" class="card">8</text>
            <text x="875" y="255" class="card">8</text>
            <rect x="900" y="110" rx="15" width="100" height="150" class="card" />
            <text x="905" y="140" class="card">7</text>
            <text x="975" y="255" class="card">7</text>

            <rect x="0" y="730" rx="15" width="100" height="150" class="card" />
            <text x="5" y="760" class="card">6</text>
            <text x="75" y="875" class="card">6</text>
            <rect x="100" y="730" rx="15" width="100" height="150" class="card" />
            <text x="105" y="760" class="card">5</text>
            <text x="175" y="875" class="card">5</text>
            <rect x="800" y="730" rx="15" width="100" height="150" class="card" />
            <text x="805" y="760" class="card">4</text>
            <text x="875" y="875" class="card">4</text>
            <rect x="900" y="730" rx="15" width="100" height="150" class="card" />
            <text x="905" y="760" class="card">3</text>
            <text x="975" y="875" class="card">3</text>
        </svg>
    </body>
</html>