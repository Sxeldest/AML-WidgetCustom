; =========================================================
; Game Engine Function: sub_F0670
; Address            : 0xF0670 - 0xF06B2
; =========================================================

F0670:  PUSH            {R4-R7,LR}
F0672:  ADD             R7, SP, #0xC
F0674:  PUSH.W          {R11}
F0678:  SUB             SP, SP, #8
F067A:  MOV             R4, R0
F067C:  LDR             R5, [R0,#8]
F067E:  LDRB            R0, [R0,#4]
F0680:  CBZ             R0, loc_F0698
F0682:  LDR             R6, [R1,#0x28]
F0684:  MOV             R0, R6; s
F0686:  BLX             strlen
F068A:  LDR             R3, [R4]
F068C:  MOV             R2, R0
F068E:  MOV             R0, R5
F0690:  MOV             R1, R6
F0692:  BL              sub_EFEA0
F0696:  B               loc_F06A8
F0698:  LDR             R2, [R4]
F069A:  MOVS            R0, #0
F069C:  LDR             R1, [R4,#0xC]
F069E:  MOVS            R3, #0x5A ; 'Z'
F06A0:  STR             R0, [SP,#0x18+var_18]
F06A2:  MOV             R0, R5
F06A4:  BL              sub_EFCE0
F06A8:  STR             R0, [R4,#8]
F06AA:  ADD             SP, SP, #8
F06AC:  POP.W           {R11}
F06B0:  POP             {R4-R7,PC}
