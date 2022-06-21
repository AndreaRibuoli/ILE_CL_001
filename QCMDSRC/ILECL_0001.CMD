             CMD        PROMPT('Esempio 0001')
             PARM       KWD(FURBO) TYPE(FURBO) MIN(1) +
                          PROMPT('Nome oggetto qualificato')
 FURBO:      QUAL       TYPE(*NAME) LEN(10)
             QUAL       TYPE(*NAME) LEN(10) +
                          DFT(*LIBL) +
                          SPCVAL(*LIBL *CURLIB) +
                          PROMPT('Libreria')
