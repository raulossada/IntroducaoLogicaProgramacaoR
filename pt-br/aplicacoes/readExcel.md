
## Objetivo

Quero ler/importar um arquivo do Excel (\*.xls ou \*.xlsx) para o R.

## Solução

Usar o pacote ``gdata``.

## Pré-requisito da instalação deste pacote

[ ] 1) Baixar e instalar o [ActiveState perl (ActivePerl)](http://www.activestate.com/activeperl/). No Windows, é necessário que se use o ActiveState perl e não o RTools perl.

[ ] 2) Reiniciar a máquina, mesmo que não o programa de instalação não peça para fazê-lo, para que o ActiveState perl seja associado à um caminho em sua máquina. [Possa ser acessado pelo cmd]

## Instalar o pacote
[ ] 3) Instalar e carregar o pacote ``gdata``:

```r
> install.packages("gdata");
```

```
Installing package into 'C:/Users/raul/Documents/R/win-library/3.1'
(as 'lib' is unspecified)
```

```
Warning: package 'gdata' is in use and will not be installed
```

```r
> library("gdata");
```
[ ] 4) Usar a função ``read.xls()``

```r
> arquivoExcel <- read.xls(xls="../../dados/Pasta1.xlsx", sheet=1);
> print(arquivoExcel);
```

```
  alfa        beta   gama
1    1 olho d agua    hey
2    3      doodle  jejej
3    5  alvaro, 34 gogogo
```

