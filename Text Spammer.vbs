'This sends txt via the sendkeys statement to what txtarea has focus at the time
'Repeatedly until the variable 'mynum' is reached

set a = createobject("wscript.shell")

mytxt=inputbox("TYPE SOME TEXT","Type what you what to spam","Butter")
mynum=inputbox("HOW MANY TIMES U WANNA SPAM?","spamnumber","500") 
myspeed=inputbox("HOW FAST U WANNA SPAM?","delay","1") 
mywait=inputbox("TIME UNTIL YOU LAUNCH DA NUKE","Wait?","7")

msgbox("You have " & mywait & " secs to put focus on your target text area!")
wscript.sleep (mywait*1000) 
for i=1 to mynum 		'count down from mynum variable
	a.sendkeys (mytxt)       'Sends the text you typed in the mytxt prompt
	a.sendkeys ("{ENTER}")   'presses the enter key to send your text you may change it to the apropriate key that sends the msg in your chat
	wscript.sleep (myspeed)   'sleeps OR waits the amount of Milseconds you typed in the Mywait prompt
next
msgbox("Finished Spamming!")