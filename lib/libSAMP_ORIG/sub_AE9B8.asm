; =========================================================
; Game Engine Function: sub_AE9B8
; Address            : 0xAE9B8 - 0xAEA38
; =========================================================

AE9B8:  PUSH            {R4-R7,LR}
AE9BA:  ADD             R7, SP, #0xC
AE9BC:  PUSH.W          {R8}
AE9C0:  MOV             R4, R1
AE9C2:  MOV             R8, R2
AE9C4:  MOV             R6, R0
AE9C6:  LDR             R1, [R1,#4]
AE9C8:  LDR             R2, [R4,#8]
AE9CA:  MOV             R5, R3
AE9CC:  LDR             R0, [R0,#4]
AE9CE:  CMP             R1, R2
AE9D0:  BEQ             loc_AE9E8
AE9D2:  CMP             R1, R0
AE9D4:  ITT GT
AE9D6:  STRGT           R0, [R4,#4]
AE9D8:  MOVGT           R1, R0
AE9DA:  CMP             R2, R0
AE9DC:  ITT GT
AE9DE:  STRGT           R0, [R4,#8]
AE9E0:  MOVGT           R2, R0
AE9E2:  CMP             R1, R2
AE9E4:  IT EQ
AE9E6:  STREQ           R1, [R4]
AE9E8:  LDR             R1, [R4]
AE9EA:  CMP             R1, R0
AE9EC:  IT GT
AE9EE:  STRGT           R0, [R4]
AE9F0:  MOV             R0, R6
AE9F2:  MOV             R1, R4
AE9F4:  BL              sub_AEBCE
AE9F8:  LDR             R1, [R4]
AE9FA:  MOV             R0, R6
AE9FC:  MOV             R2, R8
AE9FE:  MOV             R3, R5
AEA00:  BL              sub_AEADC
AEA04:  CBZ             R0, loc_AEA24
AEA06:  LDR             R1, [R4]
AEA08:  ADD.W           R0, R4, #0x18; dest
AEA0C:  MOVS            R2, #0
AEA0E:  MOV             R3, R5
AEA10:  MOVS            R6, #0
AEA12:  BL              sub_AEFE0
AEA16:  LDR             R0, [R4]
AEA18:  STRB            R6, [R4,#0xF]
AEA1A:  ADD             R0, R5
AEA1C:  STR             R0, [R4]
AEA1E:  POP.W           {R8}
AEA22:  POP             {R4-R7,PC}
AEA24:  LDRH.W          R0, [R4,#0xE16]
AEA28:  CMP             R0, #0
AEA2A:  ITT NE
AEA2C:  SUBNE           R0, #1
AEA2E:  STRHNE.W        R0, [R4,#0xE16]
AEA32:  POP.W           {R8}
AEA36:  POP             {R4-R7,PC}
