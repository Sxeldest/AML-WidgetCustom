; =========================================================
; Game Engine Function: sub_EF67E
; Address            : 0xEF67E - 0xEF6B2
; =========================================================

EF67E:  PUSH            {R4,R6,R7,LR}
EF680:  ADD             R7, SP, #8
EF682:  SUB             SP, SP, #8
EF684:  MOV             R4, R0
EF686:  CBZ             R1, loc_EF6A2
EF688:  LDRB            R0, [R4,#4]
EF68A:  CBNZ            R0, loc_EF6A2
EF68C:  LDR             R2, [R4]
EF68E:  MOVS            R3, #0x4F ; 'O'
EF690:  LDRD.W          R0, R1, [R4,#8]
EF694:  STR             R3, [SP,#0x10+var_10]
EF696:  MOVS            R3, #0x64 ; 'd'
EF698:  BL              sub_EFCE0
EF69C:  STR             R0, [R4,#8]
EF69E:  ADD             SP, SP, #8
EF6A0:  POP             {R4,R6,R7,PC}
EF6A2:  LDR             R0, [R4,#0xC]
EF6A4:  LDR             R1, [R0,#0xC]
EF6A6:  MOV             R0, R4
EF6A8:  ADD             SP, SP, #8
EF6AA:  POP.W           {R4,R6,R7,LR}
EF6AE:  B.W             sub_EFC70
