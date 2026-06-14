; =========================================================
; Game Engine Function: sub_21CA24
; Address            : 0x21CA24 - 0x21CA38
; =========================================================

21CA24:  PUSH            {R7,LR}
21CA26:  MOV             R7, SP
21CA28:  LDR             R1, [R1,#8]
21CA2A:  LDR             R2, =(off_233EFC - 0x21CA30); "allocator" ...
21CA2C:  ADD             R2, PC; off_233EFC
21CA2E:  LDR.W           R1, [R2,R1,LSL#2]; s
21CA32:  BL              sub_21563C
21CA36:  POP             {R7,PC}
