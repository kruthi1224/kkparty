<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Chess Game</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .welcome-container {
            text-align: center;
            background-color: #fff;
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .welcome-container h1 {
            margin-bottom: 20px;
        }
        .welcome-container button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
        }
        .welcome-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1>Welcome to the Chess Game</h1>
        <button onclick="location.href='chessboard.html'">Start Game</button>
    </div>
</body>
</html>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chess Board</title>
   <style>
   body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f0f0f0;
}

.chessboard {
    display: grid;
    grid-template-columns: repeat(8, 80px);
    grid-template-rows: repeat(8, 80px);
    border: 10px solid black;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

.chessboard div {
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 48px;
    font-family: Arial, sans-serif;
}

.white {
    background-color: #f0d9b5;
}

.black {
    background-color: #b58863;
    color: white;
}
</style>
</head>
<body>
<div class="chessboard">
    <script>
        const pieces = {
            0: "♜♞♝♛♚♝♞♜",
            1: "♟♟♟♟♟♟♟♟",
            6: "♙♙♙♙♙♙♙♙",
            7: "♖♘♗♕♔♗♘♖"
        };

        for (let row = 0; row < 8; row++) {
            for (let col = 0; col < 8; col++) {
                const square = document.createElement("div");
                square.className = (row + col) % 2 === 0 ? "white" : "black";
                if (pieces[row]) {
                    square.textContent = pieces[row][col];
                }
                document.querySelector(".chessboard").appendChild(square);
            }
        }
    </script>
</div>
</body>
</html>
