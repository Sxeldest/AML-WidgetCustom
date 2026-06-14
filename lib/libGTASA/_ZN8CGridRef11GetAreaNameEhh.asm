; =========================================================
; Game Engine Function: _ZN8CGridRef11GetAreaNameEhh
; Address            : 0x5ADABC - 0x5ADADC
; =========================================================

5ADABC:  CMP             R0, #9
5ADABE:  IT LS
5ADAC0:  CMPLS           R1, #9
5ADAC2:  BHI             loc_5ADAD8
5ADAC4:  LDR             R2, =(byte_61CD7E - 0x5ADACC)
5ADAC6:  CMP             R1, #0xFF
5ADAC8:  ADD             R2, PC; byte_61CD7E
5ADACA:  IT EQ
5ADACC:  MOVEQ           R2, #0
5ADACE:  CMP             R0, #0xFF
5ADAD0:  IT EQ
5ADAD2:  MOVEQ           R2, #0
5ADAD4:  MOV             R0, R2
5ADAD6:  BX              LR
5ADAD8:  MOVS            R0, #0
5ADADA:  BX              LR
