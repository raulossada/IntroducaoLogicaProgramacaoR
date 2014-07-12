initGitbook <- function (dir = getwd()) 
{
  dir <- normalizePath(dir)
  checkForGitbook(quiet = TRUE)
  oldwd <- setwd(dir)
  test <- system(paste0("gitbook init ", dir))
  if (test != 0) {
    stop("gitbook initalization failed")
  }
  mdfiles <- list.files(dir, "*.md", recursive = TRUE, full.names = TRUE)
  mdfiles <- mdfiles[-c(grep("README.md$", mdfiles), grep("SUMMARY.md$", 
                                                          mdfiles))]
  if( Sys.info()['sysname'] == "Windows"){
    mdfiles2 <- gsub("\\.md$", ".Rmd", mdfiles);
  } else{
    mdfiles2 <- gsub("/.md$", ".Rmd", mdfiles)
  }
  file.rename(mdfiles, mdfiles2)
  knitr.header <- c("```{r knitsetup, echo=FALSE, results='hide', warning=FALSE, message=FALSE, cache=FALSE}", 
                    "opts_knit$set(base.dir='./', fig.path='', out.format='md')", 
                    "opts_chunk$set(prompt=TRUE, comment='', results='markup')", 
                    "# See yihui.name/knitr/options for more Knitr options.", 
                    "##### Put other setup R code here", "", "```", "")
  for (rmd in mdfiles2) {
    file <- file(rmd)
    lines <- readLines(file)
    close(file)
    
    flag <- grepl("r knitsetup.+\n", lines);
    if( length(flag)==0 ){
      flag <- FALSE;
    }
    if(any(flag)==TRUE) {
      lines1 <- c(knitr.header, lines) 
    }
    
    file <- file(rmd)
    writeLines(lines, file(rmd))
    close(file)
  }
  setwd(oldwd)
  invisible()
}
