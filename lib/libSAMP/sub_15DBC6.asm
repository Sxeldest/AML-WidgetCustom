; =========================================================
; Game Engine Function: sub_15DBC6
; Address            : 0x15DBC6 - 0x15DC6C
; =========================================================

15DBC6:  PUSH            {R4-R7,LR}
15DBC8:  ADD             R7, SP, #0xC
15DBCA:  PUSH.W          {R8-R10}
15DBCE:  LDR             R4, [R0,#4]
15DBD0:  CMP             R4, #0
15DBD2:  BEQ             loc_15DC62
15DBD4:  MOV             R6, R0
15DBD6:  MOV.W           R0, #0x55555555
15DBDA:  AND.W           R0, R0, R4,LSR#1
15DBDE:  LDRH            R5, [R1]
15DBE0:  SUBS            R0, R4, R0
15DBE2:  MOV.W           R1, #0x33333333
15DBE6:  AND.W           R1, R1, R0,LSR#2
15DBEA:  BIC.W           R0, R0, #0xCCCCCCCC
15DBEE:  ADD             R0, R1
15DBF0:  MOV.W           R1, #0x1010101
15DBF4:  ADD.W           R0, R0, R0,LSR#4
15DBF8:  BIC.W           R0, R0, #0xF0F0F0F0
15DBFC:  MULS            R0, R1
15DBFE:  MOV.W           R9, R0,LSR#24
15DC02:  CMP.W           R9, #1
15DC06:  BHI             loc_15DC10
15DC08:  SUBS            R0, R4, #1
15DC0A:  AND.W           R8, R0, R5
15DC0E:  B               loc_15DC22
15DC10:  CMP             R4, R5
15DC12:  BLS             loc_15DC18
15DC14:  MOV             R8, R5
15DC16:  B               loc_15DC22
15DC18:  MOV             R0, R5
15DC1A:  MOV             R1, R4
15DC1C:  BLX             sub_221798
15DC20:  MOV             R8, R1
15DC22:  LDR             R0, [R6]
15DC24:  LDR.W           R0, [R0,R8,LSL#2]
15DC28:  CBZ             R0, loc_15DC62
15DC2A:  LDR             R6, [R0]
15DC2C:  CBZ             R6, loc_15DC62
15DC2E:  SUB.W           R10, R4, #1
15DC32:  LDR             R0, [R6,#4]
15DC34:  CMP             R0, R5
15DC36:  BNE             loc_15DC40
15DC38:  LDRH            R0, [R6,#8]
15DC3A:  CMP             R0, R5
15DC3C:  BNE             loc_15DC5C
15DC3E:  B               loc_15DC64
15DC40:  CMP.W           R9, #1
15DC44:  BHI             loc_15DC4C
15DC46:  AND.W           R0, R0, R10
15DC4A:  B               loc_15DC58
15DC4C:  CMP             R0, R4
15DC4E:  BCC             loc_15DC58
15DC50:  MOV             R1, R4
15DC52:  BLX             sub_221798
15DC56:  MOV             R0, R1
15DC58:  CMP             R0, R8
15DC5A:  BNE             loc_15DC62
15DC5C:  LDR             R6, [R6]
15DC5E:  CMP             R6, #0
15DC60:  BNE             loc_15DC32
15DC62:  MOVS            R6, #0
15DC64:  MOV             R0, R6
15DC66:  POP.W           {R8-R10}
15DC6A:  POP             {R4-R7,PC}
