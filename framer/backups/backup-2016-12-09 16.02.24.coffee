# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "McLean, Erin"
	twitter: ""
	description: ""


res = (Screen.width/1440)

#TextStyles
sideBarText = 
	"fontFamily" : "Josefin Sans"
	"fontSize" : 14 + "pt"
	"lineHeight" : 28 + "px"
	"color" : "#C71B43"
	
sideBarBG = new Layer
	width: 300 * res + 20
	height: 0
	backgroundColor: "white"
	opacity: 0
	shadowSpread: 5
	shadowBlur: 5

	
#HomeScreen
moon = new BackgroundLayer
# 	width: Screen.width
# 	height: res * 1024
	image: "images/moon.png"
	
logo = new Layer
	width: res*374
	height: res*140
	y: res*64
	x: res*48
	image: "images/logo.png"

LogoAvatarAlpha = new Layer
	width: 418 * res
	height: 426 * res
	x: Align.center()
	y: Align.center()
	backgroundColor: null
	
backLine1 = new Layer
	parent: LogoAvatarAlpha
	width: res * 16.06
	height: res * 481.89
	y: Align.center()#res * 327.26
	x: Align.center()##res * 589.36
	rotation: 30	
	backgroundColor: "#A90157"
backLine2 = new Layer
	parent: LogoAvatarAlpha
	width: res * 16.06
	height: res * 481.89
	y: Align.center()#res * 327.26
	x: Align.center()##res * 589.36
	rotation: -45	
	backgroundColor: "#C71B43"

midRing = new Layer
	parent: LogoAvatarAlpha
	width: res * 401.57
	height: res * 401.57
	x: Align.center() #516
	y: Align.center() #339.16
	borderRadius: res * 401.57
	backgroundColor: null 
	borderWidth: res * 8
	borderColor: "#4A5DAA"
midRing2 = new Layer
	parent: LogoAvatarAlpha
	width: res * 401.57
	height: res * 401.57
	x: Align.center() #516
	y: Align.center() #339.16
	borderRadius: res * 401.57
	backgroundColor: null 
	borderWidth: res * 8
	borderColor: "#4A5DAA"
	
midRingCircle = new Layer
	parent: midRing
	image: "images/mars.png"
	width: res * 32.13
	height: res * 32.13
	y: 45
	x: -20


midRingCircle2 = new Layer
	parent: midRing2
	image: "images/rocket.png"
	width: res * 32.13
	height: ((res * 32.13)/42) * 64	
	borderRadius: res * 32.13
	rotation: 11
	x: -33
	y: 88


midLine1 = new Layer
	parent: LogoAvatarAlpha
	width: res * 16.06
	height: res * 481.89
	y: Align.center()#res * 327.26
	x: Align.center()##res * 589.36
	rotation: -30	
	backgroundColor: "#A90157"
midLine2 = new Layer
	parent: LogoAvatarAlpha
	width: res * 16.06
	height: res * 481.89
	y: Align.center()#res * 327.26
	x: Align.center()##res * 589.36
	rotation: 45	
	backgroundColor: "#C71B43"

frontCircle = new Layer
	parent: LogoAvatarAlpha
	width: res * 361.42	
	height: res * 361.42	
	borderRadius: res * 361.42	
	x: Align.center() #res * 535.81
	y: Align.center() #res * 358.97
	backgroundColor: "#A90157"
	
Avatar = new Layer
	parent: LogoAvatarAlpha
	width: res * 321.6
	height: res * 321.6	
	x: Align.center() 
	y: Align.center() 
	image: "images/Avatar.png"

#sideBar Layers
LogoAvatar = new Layer
	width: 418 * res
	height: 426 * res
	parent: LogoAvatarAlpha
	image: "images/LogoAvatar.png"
	opacity: 0

about = new Layer
	parent: sideBarBG
	x: sideBarBG.width * 0.2
	width: sideBarBG.width * 0.6
	height: 28
	backgroundColor: null
	style: sideBarText
	html: "About"
	y: 40 + (sideBarBG.width * 0.6) + (57 * res) + (sideBarBG.width * 0.6/212) * 94

projects = new Layer
	parent: sideBarBG
	x: sideBarBG.width * 0.2
	width: sideBarBG.width * 0.6
	height: 28
	backgroundColor: null
	style: sideBarText
	html: "Projects"
	y: about.y + about.height + 2

resume = new Layer
	parent: sideBarBG
	x: sideBarBG.width * 0.2
	width: sideBarBG.width * 0.6
	height: 28
	backgroundColor: null
	style: sideBarText
	html: "Resume"	
	y: projects.y + projects.height + 2

#scroll Components
contentArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width
	backgroundColor: "white"
	scrollHorizontal: false

contentArea.placeBehind(sideBarBG)

aboutArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width
	backgroundColor: "white"
	scrollHorizontal: false

aboutArea.placeBehind(sideBarBG)

resumeArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width - (16 * res)
	backgroundColor: "white"
	scrollHorizontal: false

resumeArea.placeBehind(sideBarBG)

disneyArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width
	backgroundColor: "white"
	scrollHorizontal: false

disneyArea.placeBehind(sideBarBG)

mageArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width
	backgroundColor: "white"
	scrollHorizontal: false

mageArea.placeBehind(sideBarBG)

runSafeArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width
	backgroundColor: "white"
	scrollHorizontal: false

runSafeArea.placeBehind(sideBarBG)

largePrintArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width
	backgroundColor: "white"
	scrollHorizontal: false

largePrintArea.placeBehind(sideBarBG)

smallPrintArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width
	backgroundColor: "white"
	scrollHorizontal: false

smallPrintArea.placeBehind(sideBarBG)

rockoonArea = new ScrollComponent
	width: Screen.width - sideBarBG.width
	height: 0
	x: sideBarBG.width
	backgroundColor: "white"
	scrollHorizontal: false

rockoonArea.placeBehind(sideBarBG)

#About Me & Resume Content
aboutMeHeader = new Layer
	parent: aboutArea.content
	width: (498 * res) / 2
	height: (180 * res) / 2
	x: Align.center()
	y: 80 * res
	image: "images/aboutMeHeader.png"

aboutMeContent = new Layer
	parent: aboutArea.content
	width: (3036 * res) * (1/3)
	height: (1719 * res) * (1/3)
	x: 64 * res
	y: 274 * res
	image: "images/aboutMeContent.png"

aboutButton = new Layer
	parent: aboutMeContent
	width: 348 * res
	height: 64 * res 
	borderRadius: 8 * res
	backgroundColor: "#A90157"
	html: "Let's Get Connected"
	x: Align.right()
	y: Align.bottom()
aboutButton.style = 
	"fontFamily" : "Josefin Sans"
	"fontSize"	: (24 * res) + "pt"
	"lineHeight" : aboutButton.height + 2 + "px"
	"textAlign" : "center"

aboutBuffer = new Layer
	parent: aboutArea.content
	width: aboutArea.width
	height: 200 * res	
	y: aboutMeContent.height + aboutMeContent.y	
	backgroundColor: "white"
	
resumeHeader = new Layer
	parent: resumeArea.content
	y: 80 * res
	x: Align.center()
	width: (591 * res) * (1/3)
	height: (276 * res) * (1/3)
	image: "images/resumeHeader.png"
		
resumeContent = new Layer
	parent: resumeArea.content
	y: resumeHeader.height + (192 * res)
	x: Align.center()
	width: (3024 * res) * (1/3) * (0.8)
	height: (12027 * res) * (1/3) * (0.8)
	image: "images/resumeContent.png"


#Hero Images	
disneyHero = new Layer
	parent: contentArea.content
	width: (950 * res) * (7/8)
	height: (300 * res) * (7/8)
	x: Align.center()
	image: "images/Group 38.png"
	y: 84
	opacity: 0
	
mageHero = new Layer
	parent: contentArea.content
	width: (950 * res) * (7/8)
	height: (300 * res) * (7/8)
	x: Align.center()
	image: "images/Group 39.png"
	y: 84 + ((300 * res) * (7/8))
	opacity: 0
	
runeSafeHero = new Layer
	parent: contentArea.content
	width: (950 * res) * (7/8)
	height: (300 * res) * (7/8)
	x: Align.center()
	image: "images/Group 40.png"
	y: 84 + ((600 * res) * (7/8))
	opacity: 0
	
printLargeHero = new Layer
	parent: contentArea.content
	width: (950 * res) * (7/8)
	height: (300 * res) * (7/8)
	x: Align.center()
	image: "images/Group 41.png"
	y: 84 + ((900 * res) * (7/8))
	opacity: 0
	
printSmallHero = new Layer
	parent: contentArea.content
	width: (950 * res) * (7/8)
	height: (300 * res) * (7/8)
	x: Align.center()
	image: "images/Group 42.png"
	y: 84 + ((1200 * res) * (7/8))
	opacity: 0
	
rockoonHero = new Layer
	parent: contentArea.content
	width: (950 * res) * (7/8)
	height: (300 * res) * (7/8)
	x: Align.center()
	image: "images/Group 43.png"
	y: 84 + ((1500 * res) * (7/8))
	opacity: 0


#Header Images
printLargestHeader = new Layer
	parent: largePrintArea.content
	y: 0
	opacity: 0
	width: 1140 * res
	height: 448 * res
	image: "images/printLargestHeader.png"

rockoonHeader = new Layer
	parent: rockoonArea.content
	y: 0
	opacity: 0
	width: 1140 * res
	height: 448 * res
	image: "images/rockoonHeader.png"

printSmallHeader = new Layer
	parent: smallPrintArea.content
	y: 0
	opacity: 0
	width: 1140 * res
	height: 448 * res
	image: "images/printSmallHeader.png"

disneyHeader = new Layer
	parent: disneyArea.content
	y: 0
	opacity: 0
	width: 1140 * res
	height: 448 * res
	image: "images/disneyHeader.png"

mageHeader = new Layer
	parent: mageArea.content
	y: 0
	opacity: 0
	width: 1140 * res
	height: 448 * res
	image: "images/mageHeader.png"

runSafeHeader = new Layer
	parent: runSafeArea.content
	y: 0
	opacity: 0
	width: 1140 * res
	height: 448 * res
	image: "images/runSafeHeader.png"



#Content Images
disneyContent = new Layer
	parent: disneyArea.content
	y: disneyHeader.height + (64 * res)
	x: 32 * res
	opacity: 0
	width: (Screen.width - sideBarBG.width) - (res * 64)
	image: "images/disneyContent.png"
	height: (((Screen.width - sideBarBG.width) - (res * 64)) / 1053) * 2745

disneyBuffer = new Layer
	parent: disneyArea.content
	y: disneyContent.height + disneyContent.y
	opacity: 0
	backgroundColor: "white"
	width: disneyContent.width
	x: (32 * res)
	height: (200 * res)

mageContent = new Layer
	parent: mageArea.content
	y: disneyHeader.height + (64 * res)
	opacity: 0
	width: (Screen.width - sideBarBG.width) - (res * 64)
	height: (((Screen.width - sideBarBG.width) - (res * 64)) / 1140) * 9794
	image: "images/mageContent.png"

runSafeContent = new Layer
	parent: runSafeArea.content
	y: disneyHeader.height + (64 * res)
	opacity: 0
	width: (Screen.width - sideBarBG.width) - (res * 64)
	height: (((Screen.width - sideBarBG.width) - (res * 64)) / 1140) * 9838
	image: "images/runSafeContent.png"

printSmallContent = new Layer
	parent: smallPrintArea.content
	y: disneyHeader.height + (64 * res)
	opacity: 0
	width: (Screen.width - sideBarBG.width) - (res * 64)
	height: (((Screen.width - sideBarBG.width) - (res * 64)) / 1140) * 3528
	image: "images/printSmallContent.png"

rockoonContent = new Layer
	parent: rockoonArea.content
	y: disneyHeader.height + (64 * res)
	opacity: 0
	width: (Screen.width - sideBarBG.width) - (res * 64)
	height: (((Screen.width - sideBarBG.width) - (res * 64)) / 1140) * 10452
	image: "images/rockoonContent.png"

printLargeContent = new Layer
	parent: largePrintArea.content
	y: disneyHeader.height + (64 * res)
	opacity: 0
	width: (Screen.width - sideBarBG.width) - (res * 64)
	height: (((Screen.width - sideBarBG.width) - (res * 64)) / 1140) * 14906
	image: "images/printLargeContent.png"


#Arrays
LogoAvatarArray = [Avatar, frontCircle, midLine1, midLine2, midRing, midRing2, midRingCircle, midRingCircle2, backLine1, backLine2] 

heroArray = [disneyHero, mageHero, runeSafeHero, printLargeHero, printSmallHero, rockoonHero]

#Homescreen Animations	
looping = new Animation midRing,
	rotation: 360
	options:
		time: 4.5
	
looping2 = new Animation midRing2,
	rotation: 360
	options:
		time: 5		

looping.start()
looping2.start()
looping.on Events.AnimationEnd, ->
	midRing.rotation = 0
	looping.start()
looping2.on Events.AnimationEnd, ->
	midRing2.rotation = 0
	looping2.start()

#Projects on Click Events
disneyHero.onClick ->
	disneyHero.animate
		properties:
			opacity: 0
		time: 0.9
		curve: "ease-in-out"
	disneyHeader.animate
		properties:
			opacity: 1
		time: 0.9
		curve: "ease-in-out"
	for j in  [1...6]
		heroArray[j].animate
			properties:
				opacity: 0
			time: 0.9
			curve: "ease-in-out"
	contentArea.height = 0
	contentArea.sendToBack()
	disneyArea.bringToFront()
	disneyArea.placeBehind(sideBarBG)
	disneyArea.height = Screen.height
	Utils.delay 0.9, ->
		disneyContent.animate
			properties:
				opacity: 1
			time: 0.9
			curve: "ease-in-out"
		disneyBuffer.animate
			properties:
				opacity: 1
			time: 0.9
			curve: "ease-in-out"			

mageHero.onClick ->
	mageHero.animate
		properties:
			opacity: 0
		time: 0.9
		curve: "ease-in-out"
	mageHeader.animate
		properties:
			opacity: 1
		time: 0.9
		curve: "ease-in-out"
	for j in  [0...6]
		if j > 1 or j is 0
			heroArray[j].animate
				properties:
					opacity: 0
				time: 0.9
				curve: "ease-in-out"
	contentArea.height = 0
	contentArea.sendToBack()
	mageArea.bringToFront()
	mageArea.placeBehind(sideBarBG)
	mageArea.height = Screen.height
	Utils.delay 0.9, ->
		mageContent.animate
			properties:
				opacity: 1
			time: 0.9
			curve: "ease-in-out"


runeSafeHero.onClick ->
	runeSafeHero.animate
		properties:
			opacity: 0
		time: 0.9
		curve: "ease-in-out"
	runSafeHeader.animate
		properties:
			opacity: 1
		time: 0.9
		curve: "ease-in-out"
	for j in  [0...6]
		if j > 2 or j < 2
			heroArray[j].animate
				properties:
					opacity: 0
				time: 0.9
				curve: "ease-in-out"
	contentArea.height = 0
	contentArea.sendToBack()
	runSafeArea.bringToFront()
	runSafeArea.placeBehind(sideBarBG)
	runSafeArea.height = Screen.height
	Utils.delay 0.9, ->
		runSafeContent.animate
			properties:
				opacity: 1
			time: 0.9
			curve: "ease-in-out"


printLargeHero.onClick ->
	printLargeHero.animate
		properties:
			opacity: 0
		time: 0.9
		curve: "ease-in-out"
	printLargestHeader.animate
		properties:
			opacity: 1
		time: 0.9
		curve: "ease-in-out"
	for j in  [0...6]
		if j > 3 or j < 3
			heroArray[j].animate
				properties:
					opacity: 0
				time: 0.9
				curve: "ease-in-out"
	contentArea.height = 0
	contentArea.sendToBack()
	largePrintArea.bringToFront()
	largePrintArea.placeBehind(sideBarBG)
	largePrintArea.height = Screen.height
	Utils.delay 0.9, ->
		printLargeContent.animate
			properties:
				opacity: 1
			time: 0.9
			curve: "ease-in-out"

printSmallHero.onClick ->
	printSmallHero.animate
		properties:
			opacity: 0
		time: 0.9
		curve: "ease-in-out"
	printSmallHeader.animate
		properties:
			opacity: 1
		time: 0.9
		curve: "ease-in-out"
	for j in  [0...6]
		if j > 4 or j < 4
			heroArray[j].animate
				properties:
					opacity: 0
				time: 0.9
				curve: "ease-in-out"
	contentArea.height = 0
	contentArea.sendToBack()
	smallPrintArea.bringToFront()
	smallPrintArea.placeBehind(sideBarBG)
	smallPrintArea.height = Screen.height
	Utils.delay 0.9, ->
		printSmallContent.animate
			properties:
				opacity: 1
			time: 0.9
			curve: "ease-in-out"


rockoonHero.onClick ->
	rockoonHero.animate
		properties:
			opacity: 0
		time: 0.9
		curve: "ease-in-out"
	rockoonHeader.animate
		properties:
			opacity: 1
		time: 0.9
		curve: "ease-in-out"
	for j in  [0...6]
		if j > 5 or j < 5
			heroArray[j].animate
				properties:
					opacity: 0
				time: 0.9
				curve: "ease-in-out"
	contentArea.height = 0
	contentArea.sendToBack()
	rockoonArea.bringToFront()
	rockoonArea.placeBehind(sideBarBG)
	rockoonArea.height = Screen.height
	Utils.delay 0.9, ->
		rockoonContent.animate
			properties:
				opacity: 1
			time: 0.9
			curve: "ease-in-out"

				
Avatar.onClick ->
	looping.stop()
	looping2.stop()
	for i in LogoAvatarArray
		i.opacity = 0
	LogoAvatarAlpha.image = "images/LogoAvatar.png"
	LogoAvatarAlpha.animate
		properties:
			x: sideBarBG.width * 0.2
			y: 41 * res	
			width: sideBarBG.width * 0.6
			height: sideBarBG.width * 0.6
		time: "0.6"
		curve: "ease-in-out"
	logo.image = "images/logo2.png"
	logo.animate
		properties:
			x: sideBarBG.width * 0.2
			y: (sideBarBG.width * 0.6) + (57 * res)
			width: sideBarBG.width * 0.6
			height: (sideBarBG.width * 0.6/212) * 94
		time: "0.6"
		curve: "ease-in-out"
	Utils.delay 0.6, ->
		sideBarBG.opacity = 1
		sideBarBG.animate
			properties:
				height: Screen.height
			time: 0.9
			curve: "ease-in-out"
		moon.animate
			properties:
				backgroundColor: "white"
				opacity: 0
			time: 0.9
			curve: "ease-in-out"
		Utils.delay 0.9, ->
			contentArea.height = Screen.height
			for j in heroArray
				j.animate
					properties:
						opacity: 1
					time: 0.6
					curve: "ease-in-out"
about.onClick ->
	aboutArea.bringToFront()
	aboutArea.placeBehind(sideBarBG)
	aboutArea.height = Screen.height

aboutButton.onClick ->
	
resume.onClick ->
	resumeArea.bringToFront()
	resumeArea.placeBehind(sideBarBG)
	resumeArea.height = Screen.height
					
projects.onClick ->
	contentArea.bringToFront()
	contentArea.placeBehind(sideBarBG)
	contentArea.height = Screen.height
	for j in heroArray
		j.animate
			properties:
				opacity: 1
			time: 0.6
			curve: "ease-in-out"



