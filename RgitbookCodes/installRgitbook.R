install.packages('devtools');
library('devtools');
find_rtools();


# devtools::install_github("jbryer/Rgitbook");
devtools::install_github("raulossada/Rgitbook");
require(Rgitbook);

# Instalado o node-v0.10.29-x64. Seguido de um Reboot da maquina.

# Function that tries to install Node.js packages (gitbook, gitbook-pdf and gitbook-plugin) using npm
system("npm install gitbook-plugin -g");

installGitbook();
# Fazer o download manual do arquivo phantomjs-1.9.7-windows.zip

checkForGitbook(); # Pode ignorar esse comando


gitbookInfo() # Também é inútil

newGitbook("testbook"); 
initGitbook();

# buildRmd() # Precisa testar

buildGitbook();

openGitbook();
