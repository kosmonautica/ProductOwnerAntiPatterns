require 'squib'

data = Squib.xlsx file: 'ProductOwnerAntiPatterns.xlsx'
layouts = ["hand.yml"]

# ******* FRONT SIDES ******

frontsides = Squib::Deck.new cards: 20, layout: layouts do
  background color: 'white'
    rect layout: 'cut' # cut line as defined by TheGameCrafter
    rect layout: 'safe' # safe zone as defined by TheGameCrafter
  
  
 text str: data['NumberOfAntiPattern'],
	color: 'black',
	font: 'Sans 8',
	width: 800, height: 50,
	align: :center,
	y: 100;
	

text str: data['NameOfAntiPattern'],
	color: 'black',
	font: 'Sans 16',
	width: 650, height: 750,
	align: :center,
	x: 70, y: 200;
	
	
svg file: './graphics/BombBlack.svg',
	color: 'black',
	width: 100,	height: 100,
	x: 630, y: 95

	
text str: 'Product Owner Anti Patterns by Luis Goncalves / Card-Deck Layout by @UdoWiegaertner / V 0.1',
	color: 'black',
	font: 'Sans 6',
	width: 650, height: 200,
	align: :center,
	x: 70, y: 970;

save_pdf file:'ProductOwnerAntiPatterns_JustFrontsidesWithBigTitles.pdf'
end
