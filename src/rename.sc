//> using dep com.lihaoyi::os-lib:0.10.4

val dir = os.pwd/os.up
for (f <- os.list(dir) if f.ext == "html") {
	val fileDir = f/os.up
	val newFileName = s"${f.baseName}-suffix.html"
	os.move(f, fileDir/newFileName)
}
