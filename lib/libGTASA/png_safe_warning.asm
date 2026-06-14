; =========================================================
; Game Engine Function: png_safe_warning
; Address            : 0x1F30E8 - 0x1F3134
; =========================================================

1F30E8:  PUSH            {R4,R6,R7,LR}
1F30EA:  ADD             R7, SP, #8
1F30EC:  LDR.W           LR, [R0,#0x114]
1F30F0:  LDR.W           R0, [LR,#0x1C]
1F30F4:  CMP             R0, #0
1F30F6:  IT NE
1F30F8:  POPNE           {R4,R6,R7,PC}
1F30FA:  MOV.W           R12, #0
1F30FE:  CBZ             R1, loc_1F311E
1F3100:  LDRB            R2, [R1]
1F3102:  CBZ             R2, loc_1F311E
1F3104:  ADD.W           R3, LR, #0x20 ; ' '
1F3108:  ADDS            R1, #1
1F310A:  MOVS            R4, #0
1F310C:  ADDS            R0, R4, #1
1F310E:  STRB            R2, [R3,R4]
1F3110:  CMP             R0, #0x3E ; '>'
1F3112:  BHI             loc_1F3120
1F3114:  LDRB            R2, [R1,R4]
1F3116:  MOV             R4, R0
1F3118:  CMP             R2, #0
1F311A:  BNE             loc_1F310C
1F311C:  B               loc_1F3120
1F311E:  MOVS            R0, #0
1F3120:  ADD             R0, LR
1F3122:  STRB.W          R12, [R0,#0x20]
1F3126:  LDR.W           R0, [LR,#0x1C]
1F312A:  ORR.W           R0, R0, #1
1F312E:  STR.W           R0, [LR,#0x1C]
1F3132:  POP             {R4,R6,R7,PC}
