# stat159-hw03-multiple-regression
## Author: Austin Carango

This report runs multiple least squares regression over the dataset Advertising.csv and comments on its validity. 

The file structiure is as follows:

```
stat159-fall2016-hw03/
	.gitignore
	README.md
	LICENSE
	Makefile
	session-info.txt                     # produced by session-info-script.R
	code/
	  README.md
	  functions/
	    regression-functions.R
	  scripts/
	    eda-script.R
	    regression-script.R
	    session-info-script.R
	  tests/
	    test-regression.R
	data/
	  README.md
	  Advertising.csv
	  eda-output.txt                      # produced by eda-script.R
	  correlation-matrix.RData            # produced by eda-script.R
	  regression.RData                    # produced by regression-script.R
	images/
		histogram-sales.png                # produced by eda-script.R
		histogram-tv.png                   # produced by eda-script.R
		histogram-radio.png                # produced by eda-script.R
		histogram-newspaper.png            # produced by eda-script.R
		scatterplot-matrix.png             # produced by eda-script.R
		scatterplot-tv-sales.png           # produced by regression-script.R
		scatterplot-radio-sales.png        # produced by regression-script.R
		scatterplot-newspaper-sales.png    # produced by regression-script.R
		residual-plot.png                  # produced by regression-script.R
		scale-location-plot.png            # produced by regression-script.R
		normal-qq-plot.png                 # produced by regression-script.R
	report/
		report.Rmd
		report.pdf
```

To recreate this report, simply run the command `make all`. This will run the eda and regression scripts and render the report. 

The full list of phony targets to be used with make are as follows and can help with reprodiction:

- `data:` will download the file `Advertising.csv` to the folder `data/`. 
- `tests:` will test the functions I created created for finding RSS, TSS, R2, F-stat, and RSE, from an lm object.
- `eda:` will perform the exploratory data analysis.
- `regression:` will perform all regression analyses.
- `report:` will generate `report.html`
- `clean:` will delete `report.html`
- `all:` will run phony targets `eda`, `regression`, and `report`

All media is licenced under CC BY 4.0 and all code is licenced under MIT. See LICENCE for details.
