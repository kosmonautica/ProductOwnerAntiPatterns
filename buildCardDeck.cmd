rem creates all frontsides and all backsides as PDF
call deck.rb
cd _output
rem Rotates all backsides 180 degrees
call pdftk backsides_ProductOwnerAntiPatterns.pdf cat 1-endsouth output backsides_ProductOwnerAntiPatterns_Rotated.pdf
rem pastes frontsides and backsides together alternating for duplex printing
call "C:\Program Files (x86)\PDFtk\bin\Pdftk.exe" A="frontsides_ProductOwnerAntiPatterns.pdf" B="backsides_ProductOwnerAntiPatterns_Rotated.pdf" shuffle output "ProductOwnerAntiPatterns_doublesided.pdf"
cd..