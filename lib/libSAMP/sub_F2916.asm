; =========================================================
; Game Engine Function: sub_F2916
; Address            : 0xF2916 - 0xF2960
; =========================================================

F2916:  PUSH            {R4-R7,LR}
F2918:  ADD             R7, SP, #0xC
F291A:  PUSH.W          {R8}
F291E:  MOV             R5, R1
F2920:  LDRB            R1, [R0,#0x14]
F2922:  DMB.W           ISH
F2926:  LSLS            R1, R1, #0x1F
F2928:  BNE             loc_F295A
F292A:  LDRD.W          R6, R4, [R0,#8]
F292E:  CMP             R6, R4
F2930:  BEQ             loc_F295A
F2932:  MOV             R8, R2
F2934:  LDR             R0, [R6]
F2936:  LDRB            R1, [R0,#8]
F2938:  DMB.W           ISH
F293C:  LSLS            R1, R1, #0x1F
F293E:  BEQ             loc_F2954
F2940:  LDRB            R1, [R0,#9]
F2942:  DMB.W           ISH
F2946:  LSLS            R1, R1, #0x1F
F2948:  BNE             loc_F2954
F294A:  LDR             R1, [R0]
F294C:  MOV             R2, R8
F294E:  LDR             R3, [R1,#0x10]
F2950:  MOV             R1, R5
F2952:  BLX             R3
F2954:  ADDS            R6, #8
F2956:  CMP             R6, R4
F2958:  BNE             loc_F2934
F295A:  POP.W           {R8}
F295E:  POP             {R4-R7,PC}
