# Corrige checkForGitbook - k
system("npm -v", ignore.stdout = TRUE)


# Corrige gitbookInfo
listInstalledModules <- system("npm list -g", intern=TRUE);

gitbookIndex <- grep("gitbook@", listInstalledModules, fixed=TRUE);

position <- regexpr("gitbook@", listInstalledModules[gitbookIndex], fixed=TRUE);

installed <- substr( listInstalledModules[gitbookIndex], position+8, nchar(listInstalledModules[gitbookIndex]) )

# Corrige newGitbook
# Basta corrigir o checkForGitbook
library('knitcitations');

# Corrige initGitbook
# Basta corrigir o checkForGitbook
