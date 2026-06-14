; =========================================================
; Game Engine Function: sub_21CBD4
; Address            : 0x21CBD4 - 0x21CBE2
; =========================================================

21CBD4:  PUSH            {R7,LR}
21CBD6:  MOV             R7, SP
21CBD8:  LDR             R1, [R1,#8]
21CBDA:  LDR             R2, [R1]
21CBDC:  LDR             R2, [R2,#0x18]
21CBDE:  BLX             R2
21CBE0:  POP             {R7,PC}
