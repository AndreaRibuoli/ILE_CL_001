             CMD        PROMPT('Esempio 0002')
             PARM       KWD(FURBO_FROM) TYPE(FURBO) MIN(1) +
                          PROMPT('Nome oggetto origine')
             PARM       KWD(FURBO_TO) TYPE(FURBO) MIN(1) +
                          PROMPT('Nome oggetto destinazione')
 FURBO:      QUAL       TYPE(*NAME) LEN(10)
             QUAL       TYPE(*NAME) LEN(10) +
                          DFT(*LIBL) +
                          SPCVAL(*LIBL *CURLIB) +
                          PROMPT('Libreria')
