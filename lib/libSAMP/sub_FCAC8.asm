; =========================================================
; Game Engine Function: sub_FCAC8
; Address            : 0xFCAC8 - 0xFCB4C
; =========================================================

FCAC8:  PUSH            {R4,R5,R7,LR}
FCACA:  ADD             R7, SP, #8
FCACC:  SUB             SP, SP, #8
FCACE:  BL              sub_161028
FCAD2:  STRB.W          R0, [SP,#0x10+var_C]
FCAD6:  CBZ             R0, loc_FCB42
FCAD8:  LDR             R0, =(off_2474DC - 0xFCADE)
FCADA:  ADD             R0, PC; off_2474DC
FCADC:  LDR             R0, [R0]
FCADE:  BLX             R0
FCAE0:  LDR             R0, =(off_23496C - 0xFCAE6)
FCAE2:  ADD             R0, PC; off_23496C
FCAE4:  LDR             R5, [R0]; dword_23DEF4
FCAE6:  LDR             R0, [R5]
FCAE8:  CBZ             R0, loc_FCB0C
FCAEA:  LDR.W           R0, [R0,#0x3B0]
FCAEE:  LDR             R4, [R0,#0x10]
FCAF0:  CBZ             R4, loc_FCB04
FCAF2:  MOV             R0, R4
FCAF4:  BL              sub_1485F0
FCAF8:  MOV             R0, R4
FCAFA:  BL              sub_1486A6
FCAFE:  LDR             R0, [R5]
FCB00:  LDR.W           R0, [R0,#0x3B0]
FCB04:  LDR             R0, [R0,#0x18]
FCB06:  CBZ             R0, loc_FCB0C
FCB08:  BL              sub_14F5FC
FCB0C:  LDR             R0, =(off_234A2C - 0xFCB12)
FCB0E:  ADD             R0, PC; off_234A2C
FCB10:  LDR             R4, [R0]; byte_23DF18
FCB12:  LDRB            R0, [R4]
FCB14:  CBZ             R0, loc_FCB3E
FCB16:  BL              sub_F0B30
FCB1A:  LDR             R1, =(off_234A30 - 0xFCB20)
FCB1C:  ADD             R1, PC; off_234A30
FCB1E:  LDR             R1, [R1]; dword_23DF20
FCB20:  LDR             R1, [R1]
FCB22:  SUBS            R0, R0, R1
FCB24:  MOVW            R1, #0x5DD
FCB28:  CMP             R0, R1
FCB2A:  BCC             loc_FCB3E
FCB2C:  LDR             R0, =(off_2349A8 - 0xFCB32)
FCB2E:  ADD             R0, PC; off_2349A8
FCB30:  LDR             R0, [R0]; dword_381BF4
FCB32:  LDR             R0, [R0]
FCB34:  CBZ             R0, loc_FCB46
FCB36:  BL              sub_17C8F4
FCB3A:  MOVS            R0, #0
FCB3C:  STRB            R0, [R4]
FCB3E:  BL              sub_161204
FCB42:  ADD             SP, SP, #8
FCB44:  POP             {R4,R5,R7,PC}
FCB46:  MOVS            R0, #0; status
FCB48:  BLX             exit
