; =========================================================
; Game Engine Function: sub_DEB84
; Address            : 0xDEB84 - 0xDEC36
; =========================================================

DEB84:  PUSH            {R4-R7,LR}
DEB86:  ADD             R7, SP, #0xC
DEB88:  PUSH.W          {R8-R10}
DEB8C:  SUB             SP, SP, #8
DEB8E:  MOV             R5, R0
DEB90:  LDR             R0, =(unk_91CE0 - 0xDEB9E)
DEB92:  LDRH.W          R2, [R1,#9]
DEB96:  ADD.W           R8, R1, #0xB
DEB9A:  ADD             R0, PC; unk_91CE0
DEB9C:  LDR             R6, [R1]
DEB9E:  AND.W           R2, R2, #0xF
DEBA2:  LDR             R4, [R7,#arg_0]
DEBA4:  SUBS            R6, R6, R3
DEBA6:  LDRB            R0, [R0,R2]
DEBA8:  IT CC
DEBAA:  MOVCC           R6, #0
DEBAC:  LSRS.W          R9, R6, R0
DEBB0:  BEQ             loc_DEBBE
DEBB2:  MOV             R0, R5
DEBB4:  MOV             R1, R9
DEBB6:  MOV             R2, R8
DEBB8:  BL              sub_DD992
DEBBC:  MOV             R5, R0
DEBBE:  LDR             R0, [R4]
DEBC0:  LDR             R1, [R0]
DEBC2:  CBZ             R1, loc_DEBEA
DEBC4:  LDR             R2, =(unk_91D45 - 0xDEBCE)
DEBC6:  LDRD.W          R0, R3, [R5,#8]
DEBCA:  ADD             R2, PC; unk_91D45
DEBCC:  LDRB.W          R10, [R2,R1]
DEBD0:  ADDS            R1, R0, #1
DEBD2:  CMP             R3, R1
DEBD4:  BCS             loc_DEBE2
DEBD6:  LDR             R0, [R5]
DEBD8:  LDR             R2, [R0]
DEBDA:  MOV             R0, R5
DEBDC:  BLX             R2
DEBDE:  LDR             R0, [R5,#8]
DEBE0:  ADDS            R1, R0, #1
DEBE2:  LDR             R2, [R5,#4]
DEBE4:  STR             R1, [R5,#8]
DEBE6:  STRB.W          R10, [R2,R0]
DEBEA:  ADD.W           R12, R4, #4
DEBEE:  SUB.W           R9, R6, R9
DEBF2:  LDM.W           R12, {R0-R2,R6,R12}
DEBF6:  LDR             R3, [R2]
DEBF8:  LDR             R2, [R1]
DEBFA:  LDR             R1, [R0]
DEBFC:  LDRB            R0, [R6]
DEBFE:  STRD.W          R0, R12, [SP,#0x20+var_20]
DEC02:  MOV             R0, R5
DEC04:  BL              sub_DEC40
DEC08:  LDR             R1, [R4,#0x18]
DEC0A:  LDR             R1, [R1]
DEC0C:  CMP             R1, #1
DEC0E:  ITT GE
DEC10:  LDRGE           R2, [R4,#0x1C]
DEC12:  BLGE            sub_DE834
DEC16:  CMP.W           R9, #0
DEC1A:  BEQ             loc_DEC2E
DEC1C:  MOV             R1, R9
DEC1E:  MOV             R2, R8
DEC20:  ADD             SP, SP, #8
DEC22:  POP.W           {R8-R10}
DEC26:  POP.W           {R4-R7,LR}
DEC2A:  B.W             sub_DD992
DEC2E:  ADD             SP, SP, #8
DEC30:  POP.W           {R8-R10}
DEC34:  POP             {R4-R7,PC}
