# ILE_CL_001
Primo esempio di package per IBM i

## Memoria (**STG**) 

Nel definire una variabile nel linguaggio ILE CL abbiamo la possibilità
di impostare una opzione che specifica il tipo di memoria della variabile stessa.

I valori possibili sono tre: *\*AUTO*, *\*BASED* e *\*DEFINED*.

* **\*AUTO**   memoria automatica.
* **\*BASED**  memoria per questa variabile si basa sulla variabile puntatore specificata nel parametro *Variabile puntatore di base* (**BASPTR**). Una variabile con questa definizione può essere utilizzata solo a partire da quando la variabile puntatore su cui si basa è stata impostata su un indirizzo valido.                   
* **\*DEFINED** la memoria per questa variabile è fornita dalla sezione della variabile CL specificata nel parametro **DEFVAR** (*Definito sulla variabile*).

```
DCL VAR(&FROM_QN) TYPE(*CHAR) LEN(20) STG(*AUTO)
DCL VAR(&F_NAME)  TYPE(*CHAR) LEN(10) STG(*DEFINED) DEFVAR(&FROM_QN  1)
DCL VAR(&F_LIB)   TYPE(*CHAR) LEN(10) STG(*DEFINED) DEFVAR(&FROM_QN 11)
. . .
DCL VAR(&PTR)     TYPE(*PTR)  ADDRESS(*NULL)
DCL VAR(&NOME)    TYPE(*CHAR) LEN(10) STG(*BASED) BASPTR(&PTR)
. . .
CHGVAR  VAR(&PTR) VALUE(%ADDRESS(&F_NAME))
CHGVAR  VAR(&MSG) VALUE('Copierò l''oggetto'          *BCAT &NOME)
CHGVAR  VAR(&PTR) VALUE(%ADDRESS(&F_LIB))
CHGVAR  VAR(&MSG) VALUE(&MSG *TCAT ' dalla libreria'  *BCAT &NOME)
. . .
SNDPGMMSG MSG(&MSG)              
```