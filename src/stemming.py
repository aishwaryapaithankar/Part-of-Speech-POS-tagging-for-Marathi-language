#-*-coding: utf-8 -*-
f = open('ip.txt','r')
w = open('op.txt', 'w')

for word in f.read().split():
	if "बोल" in word :
		w.write("\n")
		w.write("बोल")
	elif "खेळ" in word :
		w.write("\n")
		w.write("खेळ")
	elif "खा" in word :
		w.write("\n")
		w.write("खा")
	elif "झोप" in word :
		w.write("\n")
		w.write("झोप")
	elif "पहा" in word :
		w.write("\n")
		w.write("पहा")
	elif "बघ" in word :
		w.write("\n")
		w.write("बघ")
	elif "जेव" in word :
		w.write("\n")
		w.write("जेव")	
	else:
		w.write("\n")
		w.write(word)
		
	
