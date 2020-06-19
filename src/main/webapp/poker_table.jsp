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
            <!-- Table -->
            <circle cx="500" cy="500" r="490" stroke="black" stroke-width="1" fill="rgb(230,125,50)" />
            <circle cx="500" cy="500" r="450" stroke="black" stroke-width="1" fill="rgb(7,99,36)" />

            <!-- Player text -->
            <text x="50" y="100" class="text">${sessionScope.user_name}</text>
            <text x="850" y="100" class="text">Player 1</text>
            <text x="50" y="900" class="text">Player 2</text>
            <text x="850" y="900" class="text">Player 3</text>

            <!-- Middle -->
            <rect x="450" y="425" rx="15" width="100" height="150" class="card" />
            <text x="455" y="455" class="card">A</text>
            <text x="520" y="570" class="card">A</text>
            <rect x="350" y="425" rx="15" width="100" height="150" class="card" />
            <text x="355" y="455" class="card">K</text>
            <text x="420" y="570" class="card">K</text>
            <rect x="250" y="425" rx="15" width="100" height="150" class="card" />
            <text x="255" y="455" class="card">Q</text>
            <text x="320" y="570" class="card">Q</text>
            <rect x="550" y="425" rx="15" width="100" height="150" class="card" />
            <text x="555" y="455" class="card">J</text>
            <text x="620" y="570" class="card">J</text>
            <rect x="650" y="425" rx="15" width="100" height="150" class="card" />
            <text x="655" y="455" class="card">A</text>
            <text x="720" y="570" class="card">A</text>

            <!-- Top Hands -->
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

            <!-- Bottom Hands -->
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

            <!-- Diamond -->
            <path d="M 375 500 L 400 475 L 425 500 L 400 525 Z" fill="red" stroke="black" stroke-width="1" />

            <!-- Heart -->
            <path d="M 475 500 L 500 525 L 525 500 A 10 15 0 0 0 500 500 A 10 15 0 0 0 475 500 Z" fill="red" stroke="black" stroke-width="1" />

            <!-- Club -->
            <path d="M 285 525 L 300 500 L 315 525 Z" fill="black" stroke="black" stroke-width="1" />
            <circle cx="285" cy="500" r="10" fill="black" />
            <path d="M 285 510 L 300 500 L 285 490 Z" fill="black" stroke="black" stroke-width="1" />
            <circle cx="315" cy="500" r="10" fill="black" />
            <path d="M 315 510 L 300 500 L 315 490 Z" fill="black" stroke="black" stroke-width="1" />
            <circle cx="300" cy="485" r="10" fill="black" />
            <path d="M 290 485 L 300 500 L 310 485 Z" fill="black" stroke="black" stroke-width="1" />

            <!-- Spade -->
            <circle cx="710" cy="500" r="10" fill="black" />
            <circle cx="690" cy="500" r="10" fill="black" />
            <path d="M 680 500 L 700 475 L 720 500 Z" fill="black" />
            <path d="M 680 525 L 700 500 L 720 525 Z" fill="black" />
        </svg>
    </body>
</html>