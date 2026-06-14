; =========================================================
; Game Engine Function: sub_21CB9E
; Address            : 0x21CB9E - 0x21CBAC
; =========================================================

21CB9E:  PUSH            {R7,LR}
21CBA0:  MOV             R7, SP
21CBA2:  LDR             R1, [R1,#8]
21CBA4:  LDR             R2, [R1]
21CBA6:  LDR             R2, [R2,#0x18]
21CBA8:  BLX             R2
21CBAA:  POP             {R7,PC}
