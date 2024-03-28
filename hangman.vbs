Dim secretWord, guessedLetters, numGuesses
secretWord = "programming"
guessedLetters = ""
numGuesses = 10

While true
 document.write("<p>Current word: " & getVisibleWord() & "  Guesses left: " & numGuesses & "</p>")
 guessedLetter = InputBox("Enter a letter:", "Hangman Game")
 guessedLetters = guessedLetters & " " & guessedLetter
 if isGuessCorrect(guessedLetter) then
 if isWordGuessed() then
 document.write("<p>Congratulations! You guessed the word.</p>")
 Exit While
 else
 document.write("<p>Correct guess!</p>")
 end if
 else
 numGuesses = numGuesses - 1
 if numGuesses = 0 then
 document.write("<p>You ran out of guesses. The word was " & secretWord & ".</p>")
 Exit While
 else
 document.write("<p>Incorrect guess!</p>")
 end if
 end if
Wend

Function getVisibleWord()
 arr = Split(secretWord)
 ret = ""
 for i = 0 to UBound(arr)
 if isGuessCorrect(arr(i)) then
 ret = ret & arr(i)
 else
ret = ret & "_ "
 end if
 next
 getVisibleWord = ret
End Function

Function isGuessCorrect(letter)
 for i = 0 to UBound(guessedLetters)
 if Trim(guessedLetters(i)) = letter then
 isGuessCorrect = True
 Exit Function
 end if
 next
 isGuessCorrect = False
End Function

Function isWordGuessed()
 for i = 0 to UBound(secretWord)
 if isGuessCorrect(secretWord(i)) then
 else
 isWordGuessed = False
 Exit Function
 end if
 next
 isWordGuessed = True
End Function
