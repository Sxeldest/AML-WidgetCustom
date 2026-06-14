; =========================================================
; Game Engine Function: sub_F2882
; Address            : 0xF2882 - 0xF28CC
; =========================================================

F2882:  PUSH            {R4-R7,LR}
F2884:  ADD             R7, SP, #0xC
F2886:  PUSH.W          {R8}
F288A:  MOV             R5, R1
F288C:  LDRB            R1, [R0,#0x14]
F288E:  DMB.W           ISH
F2892:  LSLS            R1, R1, #0x1F
F2894:  BNE             loc_F28C6
F2896:  LDRD.W          R6, R4, [R0,#8]
F289A:  CMP             R6, R4
F289C:  BEQ             loc_F28C6
F289E:  MOV             R8, R2
F28A0:  LDR             R0, [R6]
F28A2:  LDRB            R1, [R0,#8]
F28A4:  DMB.W           ISH
F28A8:  LSLS            R1, R1, #0x1F
F28AA:  BEQ             loc_F28C0
F28AC:  LDRB            R1, [R0,#9]
F28AE:  DMB.W           ISH
F28B2:  LSLS            R1, R1, #0x1F
F28B4:  BNE             loc_F28C0
F28B6:  LDR             R1, [R0]
F28B8:  MOV             R2, R8
F28BA:  LDR             R3, [R1,#0x10]
F28BC:  MOV             R1, R5
F28BE:  BLX             R3
F28C0:  ADDS            R6, #8
F28C2:  CMP             R6, R4
F28C4:  BNE             loc_F28A0
F28C6:  POP.W           {R8}
F28CA:  POP             {R4-R7,PC}
