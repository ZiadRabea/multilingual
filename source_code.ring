###############
# Imports 
###############

load "jsonlib.ring"

###############
# Cosnts & vars
###############

generate = False
magic_dict = []
is_stirng = False
quotes_count = 0
word = ""
code = ""

see "What is your current language ? (English, Arabic, Turkish, Japanese, French) :" Give language
see "what language do you want to translate your code to? (English, Arabic, Turkish, Japanese, French) : " Give preferred_language
see "Code path : " Give file

try
    cText = read(file)
catch
    see "invalid file path :("
done

cKeywords = JSON2List(read(exefolder() + "../documents/json/"+language+".json"))["keywords"][1]
#see keywords

oTest = New Translate(cText)

oTest{
cRead(preferred_language)
}

#############
# Main Code
#############

class Translate
    self.text self.idx = 0 self.current_char = ""
    func init(text) self.text=text  next_char()
    # see self.text + nl + self.idx + nl + self.current_char
    func next_char()
	idx++
	if idx <= len(text)
	    current_char = text[idx]
	else
	    self.current_char = ""
	    # code = ""
	ok
    end

    func generate_right_dict(lang)
	cTrans = JSON2List(read(exefolder()+"../documents/json/"+lang+".json"))["keywords"][1]
	for i in cKeywords
	    # see i[1]
	    magic_dict[cKeywords[i[1]]] = cTrans[i[1]]
	end
	# see magic_dict	
	generate = True
    end

    func translate(lang)
	if not generate
	    generate_right_dict(lang)
	end
	word = substr(word, "'", "")
	word = substr(word, "(", "")	
	word = substr(word, ")", "")
	word = substr(word, '"', "")
	word = trim(word)
	if magic_dict[word]
            code += magic_dict[word]
	    # see magic_dict[word]
        else
            code += word
	    # see word + nl
	end
	# see code
    end
    func cRead(lang)
	# see self.current_char != ""
	# see '"'
	# see "'"
	while 1
	    # see self.current_char = ""
	    if self.current_char != ""
		# see "Hello world"
		if self.current_char = "'" or self.current_char = '"'
		   code += '"'
		   quotes_count ++
		end
		
		if quotes_count % 2 != 0
		   is_stirng = True
		else 
		   is_string = False
		end

		if not is_string
		   word += self.current_char		
		   if self.current_char = " " or self.current_char = nl or self.current_char = "(" or self.current_char = ")"
		       translate(lang)
		       code += self.current_char
		       word = ""
		   end 
		else
    		    if self.current_char != '"' and self.current_char != "'" and self.current_char != ""
		       code += self.current_char
		    end			
		end 

		next_char()
	    else
		translate(lang)
		write("transalted_code.ring", code)
		break
	    end
	end 
    end   
end
