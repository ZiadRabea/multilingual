# The Main File

load "lib.ring"

func main
	C_LINESIZE = 80
	? copy("=",C_LINESIZE)
	? "Multilingual Package"
	? copy("=",C_LINESIZE)
	? "Multilingual package for the Ring programming language"
	? "See the folder : ring/libraries/multilingual"
	? copy("=",C_LINESIZE)
	cDir = currentdir()
	system("translator.exe")
	chdir(cDir)
end