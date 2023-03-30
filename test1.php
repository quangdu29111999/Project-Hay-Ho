<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #element-to-toggle {
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
        }

        #element-to-toggle.visible {
            opacity: 1;
        }
    </style>
</head>

<body>

    <button id="toggle-button">Toggle Element</button>

    <div id="element-to-toggle">This is the element to toggle</div>

    <script>
        const toggleButton = document.getElementById("toggle-button");
        const elementToToggle = document.getElementById("element-to-toggle");

        toggleButton.addEventListener("click", function() {
            elementToToggle.classList.toggle("visible");
        });
    </script>
</body>

</html>