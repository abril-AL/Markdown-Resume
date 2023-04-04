default:
	pandoc resume.md -f markdown -t pdf --pdf-engine=wkhtmltopdf -c resume-stylesheet.css -s -o resume.pdf
html: 
	pandoc resume.md -f markdown -t html -c resume-stylesheet.css -s -o resume.html
htmltopdf:
	wkhtmltopdf --enable-local-file-access resume.html resume.pdf