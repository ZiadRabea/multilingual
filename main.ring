# The Main File
func main
	C_LINESIZE = 80
	? copy("=",C_LINESIZE)
	? "Multilingual Package"
	? copy("=",C_LINESIZE)
	? "Multilingual package for the Ring programming language"
	? "See the folder : ring/libraries/multilingual"
	? copy("=",C_LINESIZE)
	system("ring source_code.ring")
end