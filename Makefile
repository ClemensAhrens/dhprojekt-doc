compile:
	latexmk -pdf dhprojekt-doc

clean:
	find . -name "*.aux" -exec rm {} \;
	find . -name "*.lot" -exec rm {} \;
	find . -name "*.out" -exec rm {} \;
	find . -name "*.bcf" -exec rm {} \;
	find . -name "*.fdb_latexmk" -exec rm {} \;
	find . -name "*.lof" -exec rm {} \;
	find . -name "*.log" -exec rm {} \;
	find . -name "*.run_xml" -exec rm {} \;
	find . -name "*.blg" -exec rm {} \;
	find . -name "*.fls" -exec rm {} \;

dhprojekt-doc.pdf: %.tex: %.sty
	compile
	clean
