; =========================================================
; Game Engine Function: ec_laplace_decode
; Address            : 0xBCB86 - 0xBCC1E
; =========================================================

BCB86:  PUSH            {R4-R7,LR}
BCB88:  ADD             R7, SP, #0xC
BCB8A:  PUSH.W          {R8,R9,R11}
BCB8E:  MOV             R4, R1
BCB90:  MOVS            R1, #0xF
BCB92:  MOV             R9, R2
BCB94:  MOV             R8, R0
BCB96:  BLX             j_ec_decode_bin
BCB9A:  MOVS            R1, #0
BCB9C:  CMP             R0, R4
BCB9E:  BCS             loc_BCBA6
BCBA0:  MOVS            R5, #0
BCBA2:  MOV             R2, R4
BCBA4:  B               loc_BCBFE
BCBA6:  MOVW            R2, #0x7FE0
BCBAA:  RSB.W           R3, R9, #0x4000
BCBAE:  SUBS            R2, R2, R4
BCBB0:  MUL.W           R6, R3, R2
BCBB4:  MOVS            R3, #1
BCBB6:  ADD.W           R2, R3, R6,LSR#15
BCBBA:  CMP.W           R1, R6,LSR#15
BCBBE:  BEQ             loc_BCBE6
BCBC0:  MOVS            R1, #0
BCBC2:  MOVS            R5, #1
BCBC4:  MOV             R6, R4
BCBC6:  ADD.W           R4, R6, R2,LSL#1
BCBCA:  CMP             R0, R4
BCBCC:  BCC             loc_BCBF4
BCBCE:  LSLS            R2, R2, #1
BCBD0:  ADDS            R5, #1
BCBD2:  SUBS            R2, #2
BCBD4:  MUL.W           R6, R2, R9
BCBD8:  ADD.W           R2, R3, R6,LSR#15
BCBDC:  CMP.W           R1, R6,LSR#15
BCBE0:  MOV             R6, R4
BCBE2:  BNE             loc_BCBC6
BCBE4:  B               loc_BCBE8
BCBE6:  MOVS            R5, #1
BCBE8:  SUBS            R1, R0, R4
BCBEA:  BIC.W           R3, R1, #1
BCBEE:  ADDS            R6, R3, R4
BCBF0:  ADD.W           R5, R5, R1,LSR#1
BCBF4:  ADDS            R1, R6, R2
BCBF6:  CMP             R0, R1
BCBF8:  ITT CC
BCBFA:  NEGCC           R5, R5
BCBFC:  MOVCC           R1, R6
BCBFE:  ADD             R2, R1
BCC00:  MOV.W           R0, #0x8000
BCC04:  CMP.W           R2, #0x8000
BCC08:  MOV.W           R3, #0x8000
BCC0C:  IT CS
BCC0E:  MOVCS           R2, R0
BCC10:  MOV             R0, R8
BCC12:  BLX             j_ec_dec_update
BCC16:  MOV             R0, R5
BCC18:  POP.W           {R8,R9,R11}
BCC1C:  POP             {R4-R7,PC}
