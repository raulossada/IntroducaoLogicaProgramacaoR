

```
library(reshape)
aux3 <- colsplit(x=bd1$IBGEorigem, split="-", names=c("a", "b"))


###
colunaSeparada <- strsplit(coluna, sep);
DFcolunaSeparada <- do.call(rbind, colunaSeparada);

# Exemplo
# 1100122-JI-PARANA
```

A mensagem de alerta a seguir indica que após separar a informação, houve alguma linha em que o separador usado aparece mais de uma vez, fazendo esta linha ser separada em mais de duas partes e ao tentar criar duas colunas com o resultado da separação têm-se um problema, pois o numero de colunas não bate com o que seria esperado.

```
Warning message:
  In (function (..., deparse.level = 1)  :
        number of columns of result is not a multiple of vector length (arg 1)
```


Possível forma de localizar o problema:

```
table(sapply(colunaSeparada, FUN=length))
which(sapply(colunaSeparada, FUN=length)==3)
View(bd1[114710:114720,])
```

