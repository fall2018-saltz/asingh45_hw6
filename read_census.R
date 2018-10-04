
#Reading the census data from the url using read.csv
census <- read.csv(url('https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv')
                     ,stringsAsFactors = FALSE)
