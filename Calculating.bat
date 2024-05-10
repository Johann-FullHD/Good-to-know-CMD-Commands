@echo off
REM This is a batch script that calculates the factorial of a number

REM Prompt the user for a number
set /p num="Enter a number: "

REM Initialize the factorial to 1
set fact=1

REM Calculate the factorial
for /l %%x in (1,1,%num%) do (
  set /a fact*=%%x
)

REM Print out the result
echo The factorial of %num% is %fact%