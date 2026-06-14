; =========================================================
; Game Engine Function: sub_1490CE
; Address            : 0x1490CE - 0x14912C
; =========================================================

1490CE:  PUSH            {R4-R7,LR}
1490D0:  ADD             R7, SP, #0xC
1490D2:  PUSH.W          {R8,R9,R11}
1490D6:  MOVW            R9, #0xF050
1490DA:  MOVW            R1, #0x13C8
1490DE:  ADD.W           R8, R0, R1
1490E2:  ADDW            R6, R0, #0xFB4
1490E6:  MOVS            R5, #0
1490E8:  MOVT            R9, #0xFFFF
1490EC:  LDRB            R0, [R6,R5]
1490EE:  CBZ             R0, loc_14911E
1490F0:  ADD.W           R0, R6, R5,LSL#2
1490F4:  LDR.W           R0, [R0,R9]
1490F8:  CBZ             R0, loc_14911E
1490FA:  LDR             R0, [R0]
1490FC:  CBZ             R0, loc_14911E
1490FE:  LDR.W           R4, [R0,#0x128]
149102:  CBZ             R4, loc_14911E
149104:  MOV             R0, R4
149106:  BL              sub_104108
14910A:  CBNZ            R0, loc_14911E
14910C:  MOV             R0, R4
14910E:  BL              sub_F8EF0
149112:  STRB.W          R0, [R8,R5]
149116:  MOV             R0, R4
149118:  MOVS            R1, #1
14911A:  BL              sub_F8EC0
14911E:  ADDS            R5, #1
149120:  CMP.W           R5, #0x3EC
149124:  BNE             loc_1490EC
149126:  POP.W           {R8,R9,R11}
14912A:  POP             {R4-R7,PC}
