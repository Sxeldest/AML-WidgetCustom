; =========================================================
; Game Engine Function: _ZN8CGridRef18GetArtistBugstarIDEhh
; Address            : 0x5ADAE0 - 0x5ADB02
; =========================================================

5ADAE0:  CMP             R0, #9
5ADAE2:  IT LS
5ADAE4:  CMPLS           R1, #9
5ADAE6:  BLS             loc_5ADAEC
5ADAE8:  MOVS            R0, #0
5ADAEA:  BX              LR
5ADAEC:  LDR             R2, =(GridRefList_ptr - 0x5ADAF6)
5ADAEE:  ADD.W           R0, R0, R0,LSL#2
5ADAF2:  ADD             R2, PC; GridRefList_ptr
5ADAF4:  LDR             R2, [R2]; GridRefList
5ADAF6:  ADD.W           R0, R2, R0,LSL#6
5ADAFA:  ADD.W           R0, R0, R1,LSL#5; char *
5ADAFE:  B.W             sub_19A7EC
