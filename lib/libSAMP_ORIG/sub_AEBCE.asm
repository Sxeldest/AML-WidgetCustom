; =========================================================
; Game Engine Function: sub_AEBCE
; Address            : 0xAEBCE - 0xAED88
; =========================================================

AEBCE:  PUSH            {R4-R7,LR}
AEBD0:  ADD             R7, SP, #0xC
AEBD2:  PUSH.W          {R8,R9,R11}
AEBD6:  LDRD.W          R6, R5, [R1,#4]
AEBDA:  MOV             R8, R0
AEBDC:  LDR             R0, [R0,#4]
AEBDE:  MOV             R4, R1
AEBE0:  CMP             R6, R5
AEBE2:  BEQ             loc_AEBFA
AEBE4:  CMP             R6, R0
AEBE6:  ITT GT
AEBE8:  STRGT           R0, [R4,#4]
AEBEA:  MOVGT           R6, R0
AEBEC:  CMP             R5, R0
AEBEE:  ITT GT
AEBF0:  STRGT           R0, [R4,#8]
AEBF2:  MOVGT           R5, R0
AEBF4:  CMP             R6, R5
AEBF6:  BNE             loc_AEBFC
AEBF8:  STR             R6, [R4]
AEBFA:  MOV             R5, R6
AEBFC:  LDR             R1, [R4]
AEBFE:  CMP             R1, R0
AEC00:  IT GT
AEC02:  STRGT           R0, [R4]
AEC04:  CMP             R6, R5
AEC06:  BEQ.W           loc_AED82
AEC0A:  BGE             loc_AEC60
AEC0C:  SUB.W           R9, R5, R6
AEC10:  ADD.W           R0, R4, #0x18; dest
AEC14:  MOV             R1, R6
AEC16:  MOVS            R3, #0
AEC18:  MOV             R2, R9
AEC1A:  BL              sub_AEFE0
AEC1E:  LDR.W           LR, [R8,#0x14]
AEC22:  CMP.W           R9, #1
AEC26:  BLT             loc_AECD6
AEC28:  CMP             R0, #0
AEC2A:  BEQ             loc_AECD6
AEC2C:  CMP.W           R9, #8
AEC30:  BCC             loc_AECB4
AEC32:  ADD.W           R1, LR, R5,LSL#1
AEC36:  ADD.W           R3, LR, R6,LSL#1
AEC3A:  CMP             R0, R1
AEC3C:  ITT CC
AEC3E:  ADDCC.W         R1, R0, R9,LSL#1
AEC42:  CMPCC           R3, R1
AEC44:  BCC             loc_AECB4
AEC46:  BIC.W           R12, R9, #7
AEC4A:  MOV             R1, R0
AEC4C:  MOV             R2, R12
AEC4E:  VLD1.16         {D16-D17}, [R3]!
AEC52:  SUBS            R2, #8
AEC54:  VST1.16         {D16-D17}, [R1]!
AEC58:  BNE             loc_AEC4E
AEC5A:  CMP             R9, R12
AEC5C:  BNE             loc_AECB8
AEC5E:  B               loc_AECD6
AEC60:  SUB.W           R9, R6, R5
AEC64:  ADD.W           R0, R4, #0x18; dest
AEC68:  MOV             R1, R5
AEC6A:  MOVS            R3, #0
AEC6C:  MOV             R2, R9
AEC6E:  BL              sub_AEFE0
AEC72:  LDR.W           LR, [R8,#0x14]
AEC76:  CMP.W           R9, #1
AEC7A:  BLT             loc_AED3C
AEC7C:  CMP             R0, #0
AEC7E:  BEQ             loc_AED3C
AEC80:  CMP.W           R9, #8
AEC84:  BCC             loc_AED1A
AEC86:  ADD.W           R1, LR, R6,LSL#1
AEC8A:  ADD.W           R3, LR, R5,LSL#1
AEC8E:  CMP             R0, R1
AEC90:  ITT CC
AEC92:  ADDCC.W         R1, R0, R9,LSL#1
AEC96:  CMPCC           R3, R1
AEC98:  BCC             loc_AED1A
AEC9A:  BIC.W           R12, R9, #7
AEC9E:  MOV             R1, R0
AECA0:  MOV             R2, R12
AECA2:  VLD1.16         {D16-D17}, [R3]!
AECA6:  SUBS            R2, #8
AECA8:  VST1.16         {D16-D17}, [R1]!
AECAC:  BNE             loc_AECA2
AECAE:  CMP             R9, R12
AECB0:  BNE             loc_AED1E
AECB2:  B               loc_AED3C
AECB4:  MOV.W           R12, #0
AECB8:  SUB.W           R1, R5, R12
AECBC:  ADD.W           R0, R0, R12,LSL#1
AECC0:  SUBS            R3, R1, R6
AECC2:  ADD.W           R1, R6, R12
AECC6:  ADD.W           R2, LR, R1,LSL#1
AECCA:  LDRH.W          R1, [R2],#2
AECCE:  SUBS            R3, #1
AECD0:  STRH.W          R1, [R0],#2
AECD4:  BNE             loc_AECCA
AECD6:  ADD.W           R6, LR, R6,LSL#1
AECDA:  ADD.W           R1, LR, R5,LSL#1
AECDE:  MOV             R0, R6
AECE0:  BL              sub_889DE
AECE4:  LDR.W           R2, [R8,#0x14]
AECE8:  LDRD.W          R12, R3, [R8,#4]
AECEC:  SUBS            R0, R3, R0
AECEE:  LDRH.W          R1, [R2,R5,LSL#1]
AECF2:  SUB.W           R3, R12, R9
AECF6:  STRD.W          R3, R0, [R8,#4]
AECFA:  CBZ             R1, loc_AED0E
AECFC:  ADD.W           R0, R2, R5,LSL#1
AED00:  ADDS            R0, #2
AED02:  STRH.W          R1, [R6],#2
AED06:  LDRH.W          R1, [R0],#2
AED0A:  CMP             R1, #0
AED0C:  BNE             loc_AED02
AED0E:  LDR             R1, [R4,#4]
AED10:  MOVS            R0, #0
AED12:  STRH            R0, [R6]
AED14:  STR             R1, [R4,#8]
AED16:  STR             R1, [R4]
AED18:  B               loc_AED7E
AED1A:  MOV.W           R12, #0
AED1E:  SUB.W           R1, R6, R12
AED22:  ADD.W           R0, R0, R12,LSL#1
AED26:  SUBS            R3, R1, R5
AED28:  ADD.W           R1, R5, R12
AED2C:  ADD.W           R2, LR, R1,LSL#1
AED30:  LDRH.W          R1, [R2],#2
AED34:  SUBS            R3, #1
AED36:  STRH.W          R1, [R0],#2
AED3A:  BNE             loc_AED30
AED3C:  ADD.W           R5, LR, R5,LSL#1
AED40:  ADD.W           R1, LR, R6,LSL#1
AED44:  MOV             R0, R5
AED46:  BL              sub_889DE
AED4A:  LDR.W           R2, [R8,#0x14]
AED4E:  LDRD.W          R12, R3, [R8,#4]
AED52:  SUBS            R0, R3, R0
AED54:  LDRH.W          R1, [R2,R6,LSL#1]
AED58:  SUB.W           R3, R12, R9
AED5C:  STRD.W          R3, R0, [R8,#4]
AED60:  CBZ             R1, loc_AED74
AED62:  ADD.W           R0, R2, R6,LSL#1
AED66:  ADDS            R0, #2
AED68:  STRH.W          R1, [R5],#2
AED6C:  LDRH.W          R1, [R0],#2
AED70:  CMP             R1, #0
AED72:  BNE             loc_AED68
AED74:  LDR             R1, [R4,#8]
AED76:  MOVS            R0, #0
AED78:  STRH            R0, [R5]
AED7A:  STRD.W          R1, R1, [R4]
AED7E:  MOVS            R0, #0
AED80:  STRB            R0, [R4,#0xF]
AED82:  POP.W           {R8,R9,R11}
AED86:  POP             {R4-R7,PC}
