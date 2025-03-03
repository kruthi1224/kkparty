<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chess Board</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
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
            margin-top: 20px;
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

        .start-button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <h1>Let's Start the Game</h1>
    <button class="start-button" onclick="startGame()">Start</button>
    <div class="chessboard" id="chessboard"></div>
    <script>
        function startGame() {
            const pieces = {
                0: "♜♞♝♛♚♝♞♜",
                1: "♟♟♟♟♟♟♟♟",
                6: "♙♙♙♙♙♙♙♙",
                7: "♖♘♗♕♔♗♘♖"
            };

            const chessboard = document.getElementById("chessboard");
            chessboard.innerHTML = ""; // Clear the board

            for (let row = 0; row < 8; row++) {
                for (let col = 0; col < 8; col++) {
                    const square = document.createElement("div");
                    square.className = (row + col) % 2 === 0 ? "white" : "black";
                    if (pieces[row]) {
                        square.textContent = pieces[row][col];
                    }
                    chessboard.appendChild(square);
                }
            }
        }
    </script>
</body>
</html>
