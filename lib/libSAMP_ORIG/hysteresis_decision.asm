; =========================================================
; Game Engine Function: hysteresis_decision
; Address            : 0xBDA38 - 0xBDA90
; =========================================================

BDA38:  PUSH            {R4,R6,R7,LR}
BDA3A:  ADD             R7, SP, #8
BDA3C:  LDR.W           LR, [R7,#arg_0]
BDA40:  MOV.W           R12, #0
BDA44:  CMP             R3, #1
BDA46:  BLT             loc_BDA58
BDA48:  LDRSH.W         R4, [R1,R12,LSL#1]
BDA4C:  CMP             R4, R0
BDA4E:  ITT LE
BDA50:  ADDLE.W         R12, R12, #1
BDA54:  CMPLE           R12, R3
BDA56:  BLT             loc_BDA48
BDA58:  CMP             R12, LR
BDA5A:  BGT             loc_BDA64
BDA5C:  CMP             R12, LR
BDA5E:  BLT             loc_BDA78
BDA60:  MOV             R0, R12
BDA62:  POP             {R4,R6,R7,PC}
BDA64:  LDRSH.W         R3, [R1,LR,LSL#1]
BDA68:  LDRSH.W         R4, [R2,LR,LSL#1]
BDA6C:  ADD             R3, R4
BDA6E:  CMP             R3, R0
BDA70:  IT GT
BDA72:  MOVGT           R12, LR
BDA74:  CMP             R12, LR
BDA76:  BGE             loc_BDA60
BDA78:  MOV             R3, #0xFFFFFFFE
BDA7C:  ADD.W           R3, R3, LR,LSL#1
BDA80:  LDRSH           R2, [R2,R3]
BDA82:  LDRSH           R1, [R1,R3]
BDA84:  SUBS            R1, R1, R2
BDA86:  CMP             R1, R0
BDA88:  IT LT
BDA8A:  MOVLT           R12, LR
BDA8C:  MOV             R0, R12
BDA8E:  POP             {R4,R6,R7,PC}
