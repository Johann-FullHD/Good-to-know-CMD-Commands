Const UPPER_CASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
Const LOWER_CASE = "abcdefghijklmnopqrstuvwxyz"
Const NUMBERS = "0123456789"
Const SYMBOLS = "!@#$%^&*()_+-={}[]|;:,.<>?/~`"

Dim intLength, strPassword, objShell, objFSO, objFile, objFolder, objButton

intLength = 12

Set objFSO = CreateObject("Scripting.FileSystemObject")

Set objFolder = objFSO.GetSpecialFolder(2)
strTempPath = objFolder.Path & "\" & objFSO.GetTempName
objFSO.CreateFolder(strTempPath)

Set objFile = objFSO.CreateTextFile(strTempPath & "\password.html", True)

objFile.WriteLine "<html>"
objFile.WriteLine "<head>"
objFile.WriteLine "<style>"
objFile.WriteLine "body {"
objFile.WriteLine "background-color: #f0f0f0;"
objFile.WriteLine "font-family: Arial, sans-serif;"
objFile.WriteLine "margin: 0;"
objFile.WriteLine "padding: 0;"
objFile.WriteLine "}"
objFile.WriteLine ""
objFile.WriteLine "button {"
objFile.WriteLine "background-color: #007bff;"
objFile.WriteLine "border: none;"
objFile.WriteLine "border-radius: 5px;"
objFile.WriteLine "color: #fff;"
objFile.WriteLine "cursor: pointer;"
objFile.WriteLine "font-size: 16px;"
objFile.WriteLine "padding: 10px 20px;"
objFile.WriteLine "margin: 20px auto;"
objFile.WriteLine "display: block;"
objFile.WriteLine "}"
objFile.WriteLine "</style>"
objFile.WriteLine "</head>"
objFile.WriteLine "<body>"
objFile.WriteLine "<p id=""password"">" & GeneratePassword(UPPER_CASE & LOWER_CASE & NUMBERS & SYMBOLS, intLength) & "</p>"
objFile.WriteLine "<button onclick=""copyToClipboard()"">Copy Password</button>"
objFile.WriteLine "</body>"
objFile.WriteLine "</html>"

objFile.Close

Set objShell = CreateObject("Shell.Application")

objShell.ShellExecute "iexplore.exe", strTempPath & "\password.html", "", "open", 1

Function GeneratePassword(strCharacters, intLength)
    Dim intCounter, strPassword, strCharacter
    For intCounter = 1 To intLength
        strCharacter = Mid(strCharacters, Int((Len(strCharacters) + 1) * Rnd), 1)
        strPassword = strPassword & strCharacter
    Next
    GeneratePassword = strPassword
End Function

' Clean up
Set objFSO = Nothing
Set objFile = Nothing
Set objFolder = Nothing
Set objShell = Nothing