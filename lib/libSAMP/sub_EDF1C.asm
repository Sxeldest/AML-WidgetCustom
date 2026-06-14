; =========================================================
; Game Engine Function: sub_EDF1C
; Address            : 0xEDF1C - 0xEDFA8
; =========================================================

EDF1C:  PUSH            {R4-R7,LR}
EDF1E:  ADD             R7, SP, #0xC
EDF20:  PUSH.W          {R8,R9,R11}
EDF24:  LDRD.W          R8, R6, [R0]
EDF28:  MOV             R0, R1; s
EDF2A:  MOV             R5, R2
EDF2C:  CMP             R6, R2
EDF2E:  IT CC
EDF30:  MOVCC           R5, R6
EDF32:  MOV             R9, R1
EDF34:  SUBS            R4, R6, R5
EDF36:  BLX             strlen
EDF3A:  CMP             R4, R0
EDF3C:  IT HI
EDF3E:  ADDHI           R6, R5, R0
EDF40:  ADD.W           R12, R8, R6
EDF44:  CBZ             R0, loc_EDF84
EDF46:  CMP             R6, R0
EDF48:  BLT             loc_EDF84
EDF4A:  ADD.W           R1, R0, R8
EDF4E:  ADD.W           R2, R9, R0
EDF52:  SUB.W           R9, R1, #1
EDF56:  RSB.W           LR, R0, #1
EDF5A:  MOV             R3, R12
EDF5C:  CMP             R9, R3
EDF5E:  BEQ             loc_EDF84
EDF60:  MOV             R1, R3
EDF62:  LDRB.W          R6, [R3,#-1]!
EDF66:  LDRB.W          R4, [R2,#-1]
EDF6A:  CMP             R6, R4
EDF6C:  BNE             loc_EDF5C
EDF6E:  MOV             R6, #0xFFFFFFFE
EDF72:  ADDS            R4, R0, R6
EDF74:  ADDS            R4, #1
EDF76:  BEQ             loc_EDF88
EDF78:  LDRB            R4, [R2,R6]
EDF7A:  LDRB            R5, [R1,R6]
EDF7C:  SUBS            R6, #1
EDF7E:  CMP             R5, R4
EDF80:  BEQ             loc_EDF72
EDF82:  B               loc_EDF5C
EDF84:  MOV             R1, R12
EDF86:  B               loc_EDF8C
EDF88:  ADD.W           R1, R3, LR
EDF8C:  SUB.W           R2, R1, R8
EDF90:  CMP             R1, R12
EDF92:  MOV             R1, R2
EDF94:  IT EQ
EDF96:  MOVEQ.W         R1, #0xFFFFFFFF
EDF9A:  CMP             R0, #0
EDF9C:  IT EQ
EDF9E:  MOVEQ           R1, R2
EDFA0:  MOV             R0, R1
EDFA2:  POP.W           {R8,R9,R11}
EDFA6:  POP             {R4-R7,PC}
