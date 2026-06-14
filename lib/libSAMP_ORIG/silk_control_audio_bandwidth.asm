; =========================================================
; Game Engine Function: silk_control_audio_bandwidth
; Address            : 0xCAB78 - 0xCACAC
; =========================================================

CAB78:  PUSH            {R4-R7,LR}
CAB7A:  ADD             R7, SP, #0xC
CAB7C:  PUSH.W          {R11}
CAB80:  MOV             R6, R1
CAB82:  MOV.W           R1, #0x11E0
CAB86:  LDR             R5, [R0,R1]
CAB88:  MOVW            R1, #0xFFFF
CAB8C:  CMP             R5, #0
CAB8E:  IT EQ
CAB90:  LDREQ           R5, [R0,#0x20]
CAB92:  TST             R5, R1
CAB94:  BEQ             loc_CABD2
CAB96:  SXTH            R1, R5
CAB98:  MOV.W           R2, #0x3E8
CAB9C:  SMULBB.W        R2, R1, R2
CABA0:  MOVW            R1, #0x11D4
CABA4:  MOVW            R3, #0x11CC
CABA8:  LDR             R1, [R0,R1]
CABAA:  LDR             R3, [R0,R3]
CABAC:  CMP             R2, R3
CABAE:  IT LE
CABB0:  CMPLE           R2, R1
CABB2:  BGT             loc_CABBE
CABB4:  MOVW            R4, #0x11D8
CABB8:  LDR             R4, [R0,R4]
CABBA:  CMP             R2, R4
CABBC:  BGE             loc_CABFC
CABBE:  MOVW            R2, #0x11D8
CABC2:  CMP             R3, R1
CABC4:  LDR             R0, [R0,R2]
CABC6:  IT LT
CABC8:  MOVLT           R1, R3
CABCA:  CMP             R1, R0
CABCC:  IT LE
CABCE:  MOVLE           R1, R0
CABD0:  B               loc_CABE4
CABD2:  MOVW            R1, #0x11CC
CABD6:  MOVW            R2, #0x11DC
CABDA:  LDR             R1, [R0,R1]
CABDC:  LDR             R0, [R0,R2]
CABDE:  CMP             R0, R1
CABE0:  IT LT
CABE2:  MOVLT           R1, R0
CABE4:  MOV             R0, #0x10624DD3
CABEC:  SMMUL.W         R0, R1, R0
CABF0:  ASRS            R1, R0, #6
CABF2:  ADD.W           R0, R1, R0,LSR#31
CABF6:  POP.W           {R11}
CABFA:  POP             {R4-R7,PC}
CABFC:  LDR             R1, [R0,#0x18]
CABFE:  CMP.W           R1, #0x100
CAC02:  ITT GE
CAC04:  MOVGE           R3, #0
CAC06:  STRGE           R3, [R0,#0x1C]
CAC08:  MOVW            R3, #0x11B8
CAC0C:  LDR             R3, [R0,R3]
CAC0E:  CMP             R3, #0
CAC10:  ITT EQ
CAC12:  LDREQ           R3, [R6,#0x40]
CAC14:  CMPEQ           R3, #0
CAC16:  BEQ             loc_CACA4
CAC18:  MOVW            R4, #0x11DC
CAC1C:  ADD.W           R3, R0, #0x10
CAC20:  LDR             R4, [R0,R4]
CAC22:  CMP             R2, R4
CAC24:  BLE             loc_CAC4E
CAC26:  LDR             R2, [R0,#0x1C]
CAC28:  CBNZ            R2, loc_CAC36
CAC2A:  MOV.W           R1, #0x100
CAC2E:  MOVS            R2, #0
CAC30:  STR             R1, [R0,#0x18]
CAC32:  STRD.W          R2, R2, [R3]
CAC36:  LDR             R2, [R6,#0x40]
CAC38:  CBZ             R2, loc_CAC7A
CAC3A:  MOVS            R1, #0
CAC3C:  CMP             R5, #0x10
CAC3E:  STR             R1, [R0,#0x1C]
CAC40:  MOV.W           R0, #8
CAC44:  IT EQ
CAC46:  MOVEQ           R0, #0xC
CAC48:  POP.W           {R11}
CAC4C:  POP             {R4-R7,PC}
CAC4E:  BGE             loc_CAC70
CAC50:  LDR             R1, [R6,#0x40]
CAC52:  CBZ             R1, loc_CAC84
CAC54:  MOVS            R1, #0
CAC56:  MOVS            R2, #1
CAC58:  STRD.W          R1, R1, [R3]
CAC5C:  CMP             R5, #8
CAC5E:  STRD.W          R1, R2, [R0,#0x18]
CAC62:  MOV.W           R0, #0x10
CAC66:  IT EQ
CAC68:  MOVEQ           R0, #0xC
CAC6A:  POP.W           {R11}
CAC6E:  POP             {R4-R7,PC}
CAC70:  LDR             R1, [R0,#0x1C]
CAC72:  CMP.W           R1, #0xFFFFFFFF
CAC76:  BGT             loc_CACA4
CAC78:  B               loc_CAC88
CAC7A:  CMP             R1, #0
CAC7C:  BLE             loc_CAC8E
CAC7E:  MOV             R1, #0xFFFFFFFE
CAC82:  B               loc_CAC8A
CAC84:  LDR             R1, [R0,#0x1C]
CAC86:  CBZ             R1, loc_CAC8E
CAC88:  MOVS            R1, #1
CAC8A:  STR             R1, [R0,#0x1C]
CAC8C:  B               loc_CACA4
CAC8E:  LDR             R4, [R6,#0x38]
CAC90:  MOVS            R1, #1
CAC92:  LDR             R0, [R6,#0x18]
CAC94:  STR             R1, [R6,#0x58]
CAC96:  ADDS            R1, R0, #5
CAC98:  ADD.W           R0, R4, R4,LSL#2
CAC9C:  BLX             sub_108848
CACA0:  SUBS            R0, R4, R0
CACA2:  STR             R0, [R6,#0x38]
CACA4:  MOV             R0, R5
CACA6:  POP.W           {R11}
CACAA:  POP             {R4-R7,PC}
