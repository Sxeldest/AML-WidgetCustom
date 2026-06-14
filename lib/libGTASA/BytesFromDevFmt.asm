; =========================================================
; Game Engine Function: BytesFromDevFmt
; Address            : 0x248924 - 0x24893A
; =========================================================

248924:  SUB.W           R0, R0, #0x1400
248928:  CMP             R0, #6
24892A:  ITT HI
24892C:  MOVHI           R0, #0
24892E:  BXHI            LR
248930:  LDR             R1, =(unk_60A6D0 - 0x248936)
248932:  ADD             R1, PC; unk_60A6D0
248934:  LDR.W           R0, [R1,R0,LSL#2]
248938:  BX              LR
