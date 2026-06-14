; =========================================================
; Game Engine Function: sub_184F38
; Address            : 0x184F38 - 0x184F9C
; =========================================================

184F38:  PUSH            {R4-R7,LR}
184F3A:  ADD             R7, SP, #0xC
184F3C:  PUSH.W          {R11}
184F40:  AND.W           R6, R1, #0x1F
184F44:  MOV             R4, R0
184F46:  MOVS.W          R12, R1,LSR#5
184F4A:  BEQ             loc_184F74
184F4C:  CMP             R1, #0x7F
184F4E:  BHI             loc_184F6A
184F50:  MOVS            R1, #0
184F52:  ADD.W           R2, R4, #0xC
184F56:  SUB.W           R1, R1, R12,LSL#2
184F5A:  RSB.W           R3, R12, #4
184F5E:  LDR             R0, [R2,R1]
184F60:  SUBS            R3, #1
184F62:  CMP             R3, #0
184F64:  STR.W           R0, [R2],#-4
184F68:  BGT             loc_184F5E
184F6A:  MOV.W           R1, R12,LSL#2; n
184F6E:  MOV             R0, R4; int
184F70:  BLX             sub_22178C
184F74:  CBZ             R6, loc_184F96
184F76:  RSB.W           R0, R6, #0x20 ; ' '
184F7A:  MOVS            R1, #0
184F7C:  MOVS            R2, #0
184F7E:  LDR.W           R3, [R4,R1,LSL#2]
184F82:  LSL.W           R5, R3, R6
184F86:  ORRS            R2, R5
184F88:  STR.W           R2, [R4,R1,LSL#2]
184F8C:  ADDS            R1, #1
184F8E:  LSR.W           R2, R3, R0
184F92:  CMP             R1, #4
184F94:  BNE             loc_184F7E
184F96:  POP.W           {R11}
184F9A:  POP             {R4-R7,PC}
