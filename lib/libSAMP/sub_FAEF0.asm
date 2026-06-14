; =========================================================
; Game Engine Function: sub_FAEF0
; Address            : 0xFAEF0 - 0xFAF02
; =========================================================

FAEF0:  LDR             R2, =(_ZTSZN8HeadmoveC1EvE3$_0 - 0xFAEFA); type descriptor name
FAEF2:  LDR             R3, [R1,#4]
FAEF4:  MOVS            R1, #0
FAEF6:  ADD             R2, PC; type descriptor name
FAEF8:  CMP             R3, R2
FAEFA:  IT EQ
FAEFC:  ADDEQ           R1, R0, #4
FAEFE:  MOV             R0, R1
FAF00:  BX              LR
