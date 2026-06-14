; =========================================================
; Game Engine Function: sub_FF8C8
; Address            : 0xFF8C8 - 0xFF8EE
; =========================================================

FF8C8:  PUSH            {R4,R5,R7,LR}
FF8CA:  ADD             R7, SP, #8
FF8CC:  LDR             R1, =(off_25B1D8 - 0xFF8D6)
FF8CE:  LDR             R5, =(word_25B1D2 - 0xFF8DC)
FF8D0:  LDR             R3, =(byte_25B1D0 - 0xFF8DE)
FF8D2:  ADD             R1, PC; off_25B1D8
FF8D4:  LDRB.W          R2, [R0,#0x3A]
FF8D8:  ADD             R5, PC; word_25B1D2
FF8DA:  ADD             R3, PC; byte_25B1D0
FF8DC:  LDRH            R4, [R0,#0x26]
FF8DE:  AND.W           R2, R2, #7
FF8E2:  LDR             R1, [R1]
FF8E4:  STRB            R2, [R3]
FF8E6:  STRH            R4, [R5]
FF8E8:  POP.W           {R4,R5,R7,LR}
FF8EC:  BX              R1
