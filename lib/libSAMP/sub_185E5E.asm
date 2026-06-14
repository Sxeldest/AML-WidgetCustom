; =========================================================
; Game Engine Function: sub_185E5E
; Address            : 0x185E5E - 0x185EC4
; =========================================================

185E5E:  PUSH            {R4-R7,LR}
185E60:  ADD             R7, SP, #0xC
185E62:  PUSH.W          {R11}
185E66:  AND.W           R6, R1, #0x1F
185E6A:  MOV             R4, R0
185E6C:  MOVS.W          R12, R1,LSR#5
185E70:  BEQ             loc_185E9C
185E72:  MOVS            R2, #0
185E74:  CMP.W           R2, R1,LSR#9
185E78:  BNE             loc_185E92
185E7A:  SUB.W           R1, R2, R12,LSL#2
185E7E:  ADD.W           R2, R4, #0x3C ; '<'
185E82:  RSB.W           R3, R12, #0x10
185E86:  LDR             R0, [R2,R1]
185E88:  SUBS            R3, #1
185E8A:  CMP             R3, #0
185E8C:  STR.W           R0, [R2],#-4
185E90:  BGT             loc_185E86
185E92:  MOV.W           R1, R12,LSL#2; n
185E96:  MOV             R0, R4; int
185E98:  BLX             sub_22178C
185E9C:  CBZ             R6, loc_185EBE
185E9E:  RSB.W           R0, R6, #0x20 ; ' '
185EA2:  MOVS            R1, #0
185EA4:  MOVS            R2, #0
185EA6:  LDR.W           R3, [R4,R1,LSL#2]
185EAA:  LSL.W           R5, R3, R6
185EAE:  ORRS            R2, R5
185EB0:  STR.W           R2, [R4,R1,LSL#2]
185EB4:  ADDS            R1, #1
185EB6:  LSR.W           R2, R3, R0
185EBA:  CMP             R1, #0x10
185EBC:  BNE             loc_185EA6
185EBE:  POP.W           {R11}
185EC2:  POP             {R4-R7,PC}
