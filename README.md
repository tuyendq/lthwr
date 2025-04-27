# Learn the Hard Way - R

## Install R on Windows
Install R using winget
```powershell
winget install --id RProject.R --source winget
```
Run R as Administrator, then install packages
```R
install.packages.("languageserver")
install.packages.(rvest)
install.packages.(tidyverse)

```



## Variable

## Data types
- integer: 1, 2, 
- numeric: 3.14, 32.781
- character: 
- logical: TRUE, FALSE
- data frame: like a table with rows and columns
- vector:
- factor:

Use class function to check data type.

## Assignment
Assign: <-
n <- 5
list <- seq(1,5)

## Comments

R use # sign to comment


## Function
log(2.718) is 1

## Get help
> help("log")
> ?"log"
> help("%%")
