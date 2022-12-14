# `PresDebates`: US Presidential Debate Transcripts 
This repository is an extension of the debate transcript repository created by [James Martherus](https://github.com/jamesmartherus/debates) which aims for greater coverage of existing debate transcripts. In addition to the data provided in that repository, this repository includes primary debate transcripts since (and inclusive of) the 2000 Presidential Election.

This repository contains transcripts of presidential debates going back until 1960. This is not a complete repository and is using only the debates that are hosted on [The American Presidency Project](https://www.presidency.ucsb.edu/documents/presidential-documents-archive-guidebook/presidential-campaigns-debates-and-endorsements-0). The data is organized by speaker and in chronological order. The dataset includes a variable denoting if a speaker is a candidate or not, the presidential election year, as well as the type of debate.

While I can make no guarantee that the transcripts are of good quality, please let me know if there are any issues with the data that may have.

Data is also available as a .csv file in the 'data' folder

## Installation

To install `PresDebates`, use the `install_github` function from the `devtools` package:

```
library(devtools)
install_github("JosiahMcMillan/presdebates")
```
Then data can be accessed with the following commands:
```
library(PresDebates)

data(pres_debates) 
```
Alternatively, you can download pres_debates.rda or pres_debates.csv directly from the `data` folder. 

## Examples
Use cases can be found in the Examples folder, currently term frequency is shown but other text minig methods such as topic modeling can be done as well.

## Acknowledgments
- The formatting of this repository and the files within came from [James Martherus](https://github.com/jamesmartherus/debates)
- Transcripts were scraped from The American Presidency Project [Debate Archive](https://www.presidency.ucsb.edu/documents/presidential-documents-archive-guidebook/presidential-campaigns-debates-and-endorsements-0)
