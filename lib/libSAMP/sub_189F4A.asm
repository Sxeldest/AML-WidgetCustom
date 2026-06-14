; =========================================================
; Game Engine Function: sub_189F4A
; Address            : 0x189F4A - 0x189F9A
; =========================================================

189F4A:  PUSH            {R4,R6,R7,LR}
189F4C:  ADD             R7, SP, #8
189F4E:  LDR             R3, [R0,#4]
189F50:  CBZ             R3, loc_189F8E
189F52:  LDRH.W          LR, [R1]
189F56:  SUBS            R1, R3, #1
189F58:  LDR.W           R12, [R0]
189F5C:  ADD.W           R0, R3, R3,LSR#31
189F60:  MOVS            R3, #0
189F62:  ASRS            R0, R0, #1
189F64:  LDR.W           R4, [R12,R0,LSL#2]
189F68:  LDR             R4, [R4,#8]
189F6A:  LDR             R4, [R4]
189F6C:  LDRH            R4, [R4,#0x14]
189F6E:  CMP             LR, R4
189F70:  BEQ             loc_189F94
189F72:  IT CC
189F74:  SUBCC           R1, R0, #1
189F76:  CMP             LR, R4
189F78:  IT CS
189F7A:  ADDCS           R3, R0, #1
189F7C:  SUBS            R0, R1, R3
189F7E:  ADD.W           R0, R0, R0,LSR#31
189F82:  ADD.W           R0, R3, R0,ASR#1
189F86:  BGE             loc_189F64
189F88:  MOVS            R1, #0
189F8A:  MOV             R0, R3
189F8C:  B               loc_189F96
189F8E:  MOVS            R1, #0
189F90:  MOVS            R0, #0
189F92:  B               loc_189F96
189F94:  MOVS            R1, #1
189F96:  STRB            R1, [R2]
189F98:  POP             {R4,R6,R7,PC}
