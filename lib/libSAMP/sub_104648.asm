; =========================================================
; Game Engine Function: sub_104648
; Address            : 0x104648 - 0x10467A
; =========================================================

104648:  PUSH            {R4,R6,R7,LR}
10464A:  ADD             R7, SP, #8
10464C:  SUB             SP, SP, #8
10464E:  MOV             R4, R0
104650:  LDR             R0, [R0,#0x5C]
104652:  CBZ             R0, loc_104672
104654:  LDR             R0, [R4,#8]
104656:  BL              sub_1082F4
10465A:  CBZ             R0, loc_104672
10465C:  LDR             R0, [R4,#0x6C]
10465E:  ADDS            R1, R0, #1
104660:  BNE             loc_104674
104662:  LDR             R0, =(unk_B3712 - 0x10466C)
104664:  ADD             R2, SP, #0x10+var_C
104666:  LDR             R1, [R4,#8]
104668:  ADD             R0, PC; unk_B3712
10466A:  BL              sub_107188
10466E:  LDR             R0, [SP,#0x10+var_C]
104670:  B               loc_104674
104672:  MOVS            R0, #0
104674:  UXTB            R0, R0
104676:  ADD             SP, SP, #8
104678:  POP             {R4,R6,R7,PC}
