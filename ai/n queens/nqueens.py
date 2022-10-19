def issafe(board, x, y):
    for i in range(y):
        if board[x][i] == "1":
            return False
    i = x
    j = y
    while i >= 0 and j >= 0:
        if board[i][j] == "1":
            return False
        i -= 1
        j -= 1
    i = x
    j = y
    while j >= 0 and i < n:
        if board[i][j] == "1":
            return False
        i += 1
        j -= 1
    return True


def dfs(col, arr):
    if col >= n:
        print(arr)
        return
    for i in range(n):
        if issafe(arr, i, col):
            arr[i][col] = "1"
            dfs(col+1, arr)
            arr[i][col] = "0"


if __name__ == "__main__":
    global n
    n = int(input())
    arr = [
        ["0"]*n for i in range(n)
    ]
    dfs(0, arr)
