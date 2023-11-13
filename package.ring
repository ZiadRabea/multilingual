aPackageInfo = [
	:name = "The multilingual Package",
	:description = Multilingual package for breaking the language barriers.",
	:folder = "multilingual",
	:developer = "Ziad Rabea",
	:email = "zidr2005@gmail.com",
	:license = "MIT License",
	:version = "1.0.0",
	:ringversion = "1.18",
	:versions = 	[
		[
			:version = "1.0.0",
			:branch = "master"
		]
	],
	:libs = 	[
		[
			:name = "",
			:version = "",
			:providerusername = ""
		]
	],
	:files = 	[
		"lib.ring",
		"main.ring",
		"translator.exe",
		"source_code.ring"
	],
	:ringfolderfiles = 	[
		"bin/load/arabic.ring",
		"bin/load/english.ring",
		"bin/load/french.ring",
		"bin/load/japaneses.ring",
		"bin/load/turkish.ring",
		"documents/json/arabic.json",
		"documents/json/English.json",
		"documents/json/french.json",
		"documents/json/Japanese.json",
		"documents/json/turkish.json"
	]
	:run = "ring main.ring",
]
