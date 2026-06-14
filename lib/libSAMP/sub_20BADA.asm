; =========================================================
; Game Engine Function: sub_20BADA
; Address            : 0x20BADA - 0x20BB74
; =========================================================

20BADA:  PUSH            {R4-R7,LR}
20BADC:  ADD             R7, SP, #0xC
20BADE:  PUSH.W          {R8-R10}
20BAE2:  MOV             R10, R0
20BAE4:  LDR             R0, [R0]
20BAE6:  MOV             R8, R2
20BAE8:  CMP             R0, R1
20BAEA:  BEQ             loc_20BB08
20BAEC:  MOV             R9, R1
20BAEE:  LDRB            R1, [R0]
20BAF0:  SXTB            R0, R1
20BAF2:  CMP             R0, #0
20BAF4:  BMI             loc_20BB02
20BAF6:  LDR             R2, [R3,#8]
20BAF8:  MOV             R5, R3
20BAFA:  LDRB.W          R1, [R2,R1,LSL#2]
20BAFE:  LSLS            R1, R1, #0x19
20BB00:  BMI             loc_20BB1E
20BB02:  MOVS            R6, #0
20BB04:  MOVS            R0, #4
20BB06:  B               loc_20BB0C
20BB08:  MOVS            R6, #0
20BB0A:  MOVS            R0, #6
20BB0C:  LDR.W           R1, [R8]
20BB10:  ORRS            R0, R1
20BB12:  STR.W           R0, [R8]
20BB16:  MOV             R0, R6
20BB18:  POP.W           {R8-R10}
20BB1C:  POP             {R4-R7,PC}
20BB1E:  LDR             R1, [R5]
20BB20:  MOVS            R2, #0
20BB22:  LDR             R4, [R7,#arg_0]
20BB24:  LDR             R3, [R1,#0x24]
20BB26:  UXTB            R1, R0
20BB28:  MOV             R0, R5
20BB2A:  BLX             R3
20BB2C:  LDR.W           R1, [R10]
20BB30:  SUB.W           R6, R0, #0x30 ; '0'
20BB34:  ADDS            R1, #1
20BB36:  STR.W           R1, [R10]
20BB3A:  CMP             R1, R9
20BB3C:  BEQ             loc_20BB6C
20BB3E:  CMP             R4, #2
20BB40:  BLT             loc_20BB6C
20BB42:  LDRB            R1, [R1]
20BB44:  SXTB            R0, R1
20BB46:  CMP             R0, #0
20BB48:  BMI             loc_20BB16
20BB4A:  LDR             R2, [R5,#8]
20BB4C:  LDRB.W          R1, [R2,R1,LSL#2]
20BB50:  LSLS            R1, R1, #0x19
20BB52:  BPL             loc_20BB16
20BB54:  LDR             R1, [R5]
20BB56:  MOVS            R2, #0
20BB58:  LDR             R3, [R1,#0x24]
20BB5A:  UXTB            R1, R0
20BB5C:  MOV             R0, R5
20BB5E:  BLX             R3
20BB60:  ADD.W           R1, R6, R6,LSL#2
20BB64:  SUBS            R4, #1
20BB66:  ADD.W           R0, R0, R1,LSL#1
20BB6A:  B               loc_20BB2C
20BB6C:  CMP             R1, R9
20BB6E:  BNE             loc_20BB16
20BB70:  MOVS            R0, #2
20BB72:  B               loc_20BB0C
