; =========================================================
; Game Engine Function: sub_AEADC
; Address            : 0xAEADC - 0xAEBCE
; =========================================================

AEADC:  PUSH            {R4-R7,LR}
AEADE:  ADD             R7, SP, #0xC
AEAE0:  PUSH.W          {R8-R11}
AEAE4:  SUB             SP, SP, #0xC
AEAE6:  MOV             R9, R1
AEAE8:  ADD.W           R1, R2, R3,LSL#1
AEAEC:  MOV             R4, R0
AEAEE:  LDR.W           R11, [R0,#4]
AEAF2:  LDR.W           R6, [R0,#0xE68]
AEAF6:  MOV             R0, R2
AEAF8:  MOV             R5, R3
AEAFA:  MOV             R10, R2
AEAFC:  BL              sub_889DE
AEB00:  MOV             R8, R0
AEB02:  LSLS            R0, R6, #0xD
AEB04:  BMI             loc_AEB1E
AEB06:  LDR             R0, [R4,#8]
AEB08:  LDR             R1, [R4,#0x34]
AEB0A:  ADD             R0, R8
AEB0C:  CMP             R0, R1
AEB0E:  BGE             loc_AEB1A
AEB10:  LDR             R1, [R4,#0xC]
AEB12:  ADD.W           R0, R11, R5
AEB16:  CMP             R0, R1
AEB18:  BLT             loc_AEB8C
AEB1A:  MOVS            R0, #0
AEB1C:  B               loc_AEBC6
AEB1E:  LDR             R0, [R4,#0xC]
AEB20:  ADD.W           R1, R11, R5
AEB24:  CMP             R1, R0
AEB26:  BLT             loc_AEB8C
AEB28:  MOV             R1, R5
AEB2A:  CMP.W           R5, #0x100
AEB2E:  IT LE
AEB30:  MOVLE.W         R1, #0x100
AEB34:  LDR             R0, [R4,#0x10]
AEB36:  CMP.W           R1, R5,LSL#2
AEB3A:  IT GE
AEB3C:  LSLGE           R1, R5, #2
AEB3E:  CMP             R5, #8
AEB40:  IT LT
AEB42:  MOVLT           R1, #0x20 ; ' '
AEB44:  ADD             R1, R11
AEB46:  ADDS            R6, R1, #1
AEB48:  CMP             R0, R1
AEB4A:  MOV             R2, R6
AEB4C:  BGT             loc_AEB8A
AEB4E:  CMP             R0, #0
AEB50:  ITTE NE
AEB52:  ADDNE.W         R1, R0, R0,LSR#31
AEB56:  ADDNE.W         R1, R0, R1,ASR#1
AEB5A:  MOVEQ           R1, #8
AEB5C:  CMP             R1, R6
AEB5E:  IT GT
AEB60:  MOVGT           R6, R1
AEB62:  CMP             R0, R6
AEB64:  BGE             loc_AEB8A
AEB66:  LSLS            R0, R6, #1
AEB68:  STR             R2, [SP,#0x28+var_20]
AEB6A:  BL              sub_885E4
AEB6E:  LDR             R1, [R4,#0x14]; src
AEB70:  CBZ             R1, loc_AEB84
AEB72:  LDR             R2, [R4,#0xC]
AEB74:  STR             R0, [SP,#0x28+var_24]
AEB76:  LSLS            R2, R2, #1; n
AEB78:  BLX             j_memcpy
AEB7C:  LDR             R0, [R4,#0x14]
AEB7E:  BL              sub_88614
AEB82:  LDR             R0, [SP,#0x28+var_24]
AEB84:  LDR             R2, [SP,#0x28+var_20]
AEB86:  STRD.W          R6, R0, [R4,#0x10]
AEB8A:  STR             R2, [R4,#0xC]
AEB8C:  LDR             R6, [R4,#0x14]
AEB8E:  CMP             R11, R9
AEB90:  BEQ             loc_AEBA4
AEB92:  SUB.W           R2, R11, R9
AEB96:  ADD.W           R1, R6, R9,LSL#1; src
AEB9A:  ADD.W           R0, R1, R5,LSL#1; dest
AEB9E:  LSLS            R2, R2, #1; n
AEBA0:  BLX             j_memmove
AEBA4:  ADD.W           R0, R6, R9,LSL#1; dest
AEBA8:  LSLS            R2, R5, #1; n
AEBAA:  MOV             R1, R10; src
AEBAC:  BLX             j_memcpy
AEBB0:  LDRD.W          R0, R1, [R4,#4]
AEBB4:  MOVS            R3, #0
AEBB6:  LDR             R2, [R4,#0x14]
AEBB8:  ADD             R1, R8
AEBBA:  ADD             R0, R5
AEBBC:  STRD.W          R0, R1, [R4,#4]
AEBC0:  STRH.W          R3, [R2,R0,LSL#1]
AEBC4:  MOVS            R0, #1
AEBC6:  ADD             SP, SP, #0xC
AEBC8:  POP.W           {R8-R11}
AEBCC:  POP             {R4-R7,PC}
