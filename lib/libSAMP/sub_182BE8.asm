; =========================================================
; Game Engine Function: sub_182BE8
; Address            : 0x182BE8 - 0x182C30
; =========================================================

182BE8:  PUSH            {R4,R6,R7,LR}
182BEA:  ADD             R7, SP, #8
182BEC:  SUB             SP, SP, #8
182BEE:  MOVS            R3, #1
182BF0:  STR             R3, [SP,#0x10+var_10]
182BF2:  MOVS            R3, #1
182BF4:  BL              sub_181978
182BF8:  CBZ             R0, loc_182C26
182BFA:  MOVW            R12, #0xFFFF
182BFE:  MOVS            R3, #0
182C00:  MOVW            R1, #0xFFFF
182C04:  MOV.W           LR, #0
182C08:  ADDS            R4, R0, R3
182C0A:  LDRH.W          R2, [R4,#0x6CC]
182C0E:  CMP             R2, R12
182C10:  BEQ             loc_182C2A
182C12:  CMP             R1, R2
182C14:  ADD.W           R3, R3, #8
182C18:  ITT GT
182C1A:  LDRGT.W         LR, [R4,#0x6D0]
182C1E:  MOVGT           R1, R2
182C20:  CMP             R3, #0x28 ; '('
182C22:  BNE             loc_182C08
182C24:  B               loc_182C2A
182C26:  MOV.W           LR, #0
182C2A:  MOV             R0, LR
182C2C:  ADD             SP, SP, #8
182C2E:  POP             {R4,R6,R7,PC}
