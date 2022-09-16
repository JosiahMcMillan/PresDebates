# PresDebates
This repository is an extension of the debate transcript repository created by [James Martherus](https://github.com/jamesmartherus/debates) which aims for greater coverage of existing debate transcripts. In addition to the data provided in that repository, this repository includes primary debate transcripts since (and inclusive of) the 2000 Presidential Election.

This repository contains transcripts of presidential debates going back until 1960. This is not a complete repository and is using only the debates that are hosted on The American Presidency Project. The data is organized by speaker and in chronological order. The dataset includes a variable denoting if a speaker is a candidate or not, the presidential election year, as well as the type of debate.

While I can make no guarantee that the transcripts are of good quality, please let me know if there are any issues with the data that may have.

## Installation

To install `PresDebates`, use the `install_github` function from the `devtools` package:

```
library(devtools)
install_github("JosiahMcMillan/presdebates")
```

Alternatively, you can download transcripts.rda directly from the `data` folder. 

## Example

```
library(PresDebates)

data(pres_debates) 
```

## Acknowledgments

- Transcripts were scraped from The American Presidency Project [Debate Archive](https://www.presidency.ucsb.edu/documents/presidential-documents-archive-guidebook/presidential-campaigns-debates-and-endorsements-0)