; =========================================================
; Game Engine Function: sub_104DC0
; Address            : 0x104DC0 - 0x104DCE
; =========================================================

104DC0:  PUSH            {R7,LR}
104DC2:  MOV             R7, SP
104DC4:  LDR             R1, [R1,#8]
104DC6:  LDR             R2, [R1]
104DC8:  LDR             R2, [R2,#0x18]
104DCA:  BLX             R2
104DCC:  POP             {R7,PC}
