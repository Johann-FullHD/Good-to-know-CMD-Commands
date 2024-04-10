' Number Guessing Game in VBS
minNumber = 1
maxNumber = Rnd()

randomNumber = Int(Rnd() * (maxNumber - minNumber + 1)) + minNumber

guessCount = 0

WScript.Echo "Guess a number between " & minNumber & " and " & maxNumber & ":"

Do While True
    guessCount = guessCount + 1
    guess = InputBox("Guess #" & guessCount)
    If IsNumeric(guess) Then
        If CInt(guess) = randomNumber Then
            WScript.Echo "Congratulations! You guessed the number in " & guessCount & " tries."
            Exit Do
        ElseIf CInt(guess) < randomNumber Then
            WScript.Echo "Too low. Try again."
        Else
            WScript.Echo "Too high. Try again."
        End If
    Else
        WScript.Echo "Invalid input. Please enter a number."
    End If
Loop


' By Johann Kramer 2024