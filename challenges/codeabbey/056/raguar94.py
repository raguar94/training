"""This code shows the number of organisms remaining at the end of the turn
 for a certain quantity of turns, the remaining organisms are obtained
 by the rules of game of life by Jhon Conway"""
TURN = 5
BOARD = []
ORIGINAL = []
for i in range(5):
    ORIGINAL.append(raw_input())
for i in range(50):
    for j in range(50):
        BOARD.append([])
        if (i >= 23 and i <= 27) and (j >= 23 and j <= 29):
            BOARD[i].append(ORIGINAL[i-23][j-23])
        else:
            BOARD[i].append("-")
for i in range(TURN):
    ORGANISM = 0
    for j in range(1, 49):
        for k in range(1, 49):
            GRIMM = 0
            if (BOARD[j][k+1] == "X") or (BOARD[j][k+1] == "D"):
                GRIMM += 1
            if (BOARD[j+1][k] == "X") or (BOARD[j+1][k] == "D"):
                GRIMM += 1
            if (BOARD[j+1][k+1] == "X") or (BOARD[j+1][k+1] == "D"):
                GRIMM += 1
            if (BOARD[j][k-1] == "X") or (BOARD[j][k-1] == "D"):
                GRIMM += 1
            if (BOARD[j-1][k] == "X") or (BOARD[j-1][k] == "D"):
                GRIMM += 1
            if (BOARD[j-1][k-1] == "X") or (BOARD[j-1][k-1] == "D"):
                GRIMM += 1
            if (BOARD[j-1][k+1] == "X") or (BOARD[j-1][k+1] == "D"):
                GRIMM += 1
            if (BOARD[j+1][k-1] == "X") or (BOARD[j+1][k-1] == "D"):
                GRIMM += 1
            if (GRIMM < 2 or GRIMM > 3) and (BOARD[j][k] == "X"):
                BOARD[j][k] = "D"
            if (GRIMM == 3) and (BOARD[j][k] == "-"):
                BOARD[j][k] = "B"
    for j in range(1, 49):
        for k in range(1, 49):
            if BOARD[j][k] == "D":
                BOARD[j][k] = "-"
            if BOARD[j][k] == "B":
                BOARD[j][k] = "X"
    for j in range(50):
        for k in range(50):
            if BOARD[j][k] == "X":
                ORGANISM += 1
print str(ORGANISM) + " "
