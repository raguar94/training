"""This code shows the number of organisms remaining at the end of the turn
 for a certain quantity of turns, the remaining organisms are obtained
 by the rules of game of life by Jhon Conway"""
turn = 5
board = []
original = []
for i in range(5):
    origina.append(raw_input())
for i in range(50):
    for j in range(50):
        board.append([])
        if (i >= 23 and i <= 27) and (j >= 23 and j <= 29):
            board[i].append(origina[i-23][j-23])
        else:
            board[i].append("-")
for i in range(turn):
    organism = 0
    for j in range(1, 49):
        for k in range(1, 49):
            grimm = 0
            if (board[j][k+1] == "X") or (board[j][k+1] == "D"):
                grimm += 1
            if (board[j+1][k] == "X") or (board[j+1][k] == "D"):
                grimm += 1
            if (board[j+1][k+1] == "X") or (board[j+1][k+1] == "D"):
                grimm += 1
            if (board[j][k-1] == "X") or (board[j][k-1] == "D"):
                grimm += 1
            if (board[j-1][k] == "X") or (board[j-1][k] == "D"):
                grimm += 1
            if (board[j-1][k-1] == "X") or (board[j-1][k-1] == "D"):
                grimm += 1
            if (board[j-1][k+1] == "X") or (board[j-1][k+1] == "D"):
                grimm += 1
            if (board[j+1][k-1] == "X") or (board[j+1][k-1] == "D"):
                grimm += 1
            if (grimm < 2 or grimm > 3) and (board[j][k] == "X"):
                board[j][k] = "D"
            if (grimm == 3) and (board[j][k] == "-"):
                board[j][k] = "B"
    for j in range(1, 49):
        for k in range(1, 49):
            if board[j][k] == "D":
                board[j][k] = "-"
            if board[j][k] == "B":
                board[j][k] = "X"
    for j in range(50):
        for k in range(50):
            if board[j][k] == "X":
                organism += 1
    print str(organism) + " "
