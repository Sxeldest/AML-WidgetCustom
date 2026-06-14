; =========================================================
; Game Engine Function: sub_1F1C10
; Address            : 0x1F1C10 - 0x1F1C3C
; =========================================================

1F1C10:  PUSH            {R7,LR}
1F1C12:  MOV             R7, SP
1F1C14:  LDRB            R2, [R1,#0x10]
1F1C16:  SUBS            R2, #1
1F1C18:  TBB.W           [PC,R2]; switch 6 cases
1F1C1C:  DCB 3; jump table for switch statement
1F1C1D:  DCB 6
1F1C1E:  DCB 0xB
1F1C1F:  DCB 6
1F1C20:  DCB 3
1F1C21:  DCB 3
1F1C22:  LDR             R1, =(byte_8F794 - 0x1F1C28); jumptable 001F1C18 cases 0,4,5
1F1C24:  ADD             R1, PC; byte_8F794
1F1C26:  B               loc_1F1C36
1F1C28:  LDRD.W          R2, R1, [R1,#8]; jumptable 001F1C18 cases 1,3
1F1C2C:  STRD.W          R2, R1, [R0]
1F1C30:  POP             {R7,PC}
1F1C32:  LDR             R1, =(asc_83A7E - 0x1F1C38); jumptable 001F1C18 case 2
1F1C34:  ADD             R1, PC; "/"
1F1C36:  BL              sub_1F2468
1F1C3A:  POP             {R7,PC}
