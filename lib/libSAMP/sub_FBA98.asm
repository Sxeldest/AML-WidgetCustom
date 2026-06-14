; =========================================================
; Game Engine Function: sub_FBA98
; Address            : 0xFBA98 - 0xFBAD2
; =========================================================

FBA98:  PUSH            {R4,R5,R7,LR}
FBA9A:  ADD             R7, SP, #8
FBA9C:  LDRB            R1, [R0,#0x14]
FBA9E:  DMB.W           ISH
FBAA2:  LSLS            R1, R1, #0x1F
FBAA4:  IT NE
FBAA6:  POPNE           {R4,R5,R7,PC}
FBAA8:  LDRD.W          R4, R5, [R0,#8]
FBAAC:  CMP             R4, R5
FBAAE:  BEQ             locret_FBAD0
FBAB0:  LDR             R0, [R4]
FBAB2:  LDRB            R1, [R0,#8]
FBAB4:  DMB.W           ISH
FBAB8:  LSLS            R1, R1, #0x1F
FBABA:  BEQ             loc_FBACC
FBABC:  LDRB            R1, [R0,#9]
FBABE:  DMB.W           ISH
FBAC2:  LSLS            R1, R1, #0x1F
FBAC4:  BNE             loc_FBACC
FBAC6:  LDR             R1, [R0]
FBAC8:  LDR             R1, [R1,#0x10]
FBACA:  BLX             R1
FBACC:  ADDS            R4, #8
FBACE:  B               loc_FBAAC
FBAD0:  POP             {R4,R5,R7,PC}
