; =========================================================
; Game Engine Function: sub_F3BEA
; Address            : 0xF3BEA - 0xF3C84
; =========================================================

F3BEA:  PUSH            {R4-R7,LR}
F3BEC:  ADD             R7, SP, #0xC
F3BEE:  PUSH.W          {R8-R10}
F3BF2:  MOV             R10, R0
F3BF4:  LDR             R0, [R0]
F3BF6:  MOV             R8, R2
F3BF8:  CMP             R0, R1
F3BFA:  BEQ             loc_F3C18
F3BFC:  MOV             R9, R1
F3BFE:  LDRB            R1, [R0]
F3C00:  SXTB            R0, R1
F3C02:  CMP             R0, #0
F3C04:  BMI             loc_F3C12
F3C06:  LDR             R2, [R3,#8]
F3C08:  MOV             R5, R3
F3C0A:  LDRB.W          R1, [R2,R1,LSL#2]
F3C0E:  LSLS            R1, R1, #0x19
F3C10:  BMI             loc_F3C2E
F3C12:  MOVS            R6, #0
F3C14:  MOVS            R0, #4
F3C16:  B               loc_F3C1C
F3C18:  MOVS            R6, #0
F3C1A:  MOVS            R0, #6
F3C1C:  LDR.W           R1, [R8]
F3C20:  ORRS            R0, R1
F3C22:  STR.W           R0, [R8]
F3C26:  MOV             R0, R6
F3C28:  POP.W           {R8-R10}
F3C2C:  POP             {R4-R7,PC}
F3C2E:  LDR             R1, [R5]
F3C30:  MOVS            R2, #0
F3C32:  LDR             R4, [R7,#arg_0]
F3C34:  LDR             R3, [R1,#0x24]
F3C36:  UXTB            R1, R0
F3C38:  MOV             R0, R5
F3C3A:  BLX             R3
F3C3C:  LDR.W           R1, [R10]
F3C40:  SUB.W           R6, R0, #0x30 ; '0'
F3C44:  ADDS            R1, #1
F3C46:  STR.W           R1, [R10]
F3C4A:  CMP             R1, R9
F3C4C:  BEQ             loc_F3C7C
F3C4E:  CMP             R4, #2
F3C50:  BLT             loc_F3C7C
F3C52:  LDRB            R1, [R1]
F3C54:  SXTB            R0, R1
F3C56:  CMP             R0, #0
F3C58:  BMI             loc_F3C26
F3C5A:  LDR             R2, [R5,#8]
F3C5C:  LDRB.W          R1, [R2,R1,LSL#2]
F3C60:  LSLS            R1, R1, #0x19
F3C62:  BPL             loc_F3C26
F3C64:  LDR             R1, [R5]
F3C66:  MOVS            R2, #0
F3C68:  LDR             R3, [R1,#0x24]
F3C6A:  UXTB            R1, R0
F3C6C:  MOV             R0, R5
F3C6E:  BLX             R3
F3C70:  ADD.W           R1, R6, R6,LSL#2
F3C74:  SUBS            R4, #1
F3C76:  ADD.W           R0, R0, R1,LSL#1
F3C7A:  B               loc_F3C3C
F3C7C:  CMP             R1, R9
F3C7E:  BNE             loc_F3C26
F3C80:  MOVS            R0, #2
F3C82:  B               loc_F3C1C
