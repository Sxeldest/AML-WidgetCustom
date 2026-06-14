; =========================================================
; Game Engine Function: sub_FD1E4
; Address            : 0xFD1E4 - 0xFD228
; =========================================================

FD1E4:  PUSH            {R4-R7,LR}
FD1E6:  ADD             R7, SP, #0xC
FD1E8:  PUSH.W          {R11}
FD1EC:  MOV             R4, R1
FD1EE:  LDRB            R1, [R0,#0x14]
FD1F0:  DMB.W           ISH
FD1F4:  LSLS            R1, R1, #0x1F
FD1F6:  BNE             loc_FD222
FD1F8:  LDRD.W          R5, R6, [R0,#8]
FD1FC:  CMP             R5, R6
FD1FE:  BEQ             loc_FD222
FD200:  LDR             R0, [R5]
FD202:  LDRB            R1, [R0,#8]
FD204:  DMB.W           ISH
FD208:  LSLS            R1, R1, #0x1F
FD20A:  BEQ             loc_FD21E
FD20C:  LDRB            R1, [R0,#9]
FD20E:  DMB.W           ISH
FD212:  LSLS            R1, R1, #0x1F
FD214:  BNE             loc_FD21E
FD216:  LDR             R1, [R0]
FD218:  LDR             R2, [R1,#0x10]
FD21A:  MOV             R1, R4
FD21C:  BLX             R2
FD21E:  ADDS            R5, #8
FD220:  B               loc_FD1FC
FD222:  POP.W           {R11}
FD226:  POP             {R4-R7,PC}
