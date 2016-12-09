.PHONY: all data clean tests report eda regression 

all: report eda regression

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > ./data/Advertising.csv

clean:
	cd report; rm -f report.html 

tests:
        cd code/tests; Rscript test-regression.R

report: 
	cd report; Rscript -e 'rmarkdown::render("report.Rmd")'

eda: 
	cd code/scripts; Rscript eda-script.R

regression: 
	cd code/scripts; Rscript regression-script.R 
