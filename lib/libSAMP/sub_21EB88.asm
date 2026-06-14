; =========================================================
; Game Engine Function: sub_21EB88
; Address            : 0x21EB88 - 0x21EBA8
; =========================================================

21EB88:  PUSH            {R4,R6,R7,LR}
21EB8A:  ADD             R7, SP, #8
21EB8C:  MOV             R4, R0
21EB8E:  BL              sub_21DA2C
21EB92:  LDR             R2, =0x434C4E47
21EB94:  EORS            R1, R2
21EB96:  LDR             R2, =0x432B2B01
21EB98:  EORS            R0, R2
21EB9A:  ORRS            R0, R1
21EB9C:  ITE EQ
21EB9E:  LDREQ.W         R0, [R4,#-0x24]
21EBA2:  ADDNE.W         R0, R4, #0x58 ; 'X'
21EBA6:  POP             {R4,R6,R7,PC}
