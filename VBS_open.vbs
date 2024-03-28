Set IE = CreateObject("InternetExplorer.Application")
IE.Visible = 1
IE.Navigate "https://github.com/Johann-FullHD"
WScript.Sleep 1000
Set HTMLDoc = IE.Document : Set HTMLInput = HTMLDoc.getElementsByTagName("input")
HTMLInput(0).Value = "Hello, I am a ghost!"