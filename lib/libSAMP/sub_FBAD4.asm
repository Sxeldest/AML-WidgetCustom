; =========================================================
; Game Engine Function: sub_FBAD4
; Address            : 0xFBAD4 - 0xFBB7E
; =========================================================

FBAD4:  PUSH            {R4,R5,R7,LR}
FBAD6:  ADD             R7, SP, #8
FBAD8:  LDR             R0, =(off_23494C - 0xFBAE0)
FBADA:  LDR             R1, =(off_234A88 - 0xFBAE2)
FBADC:  ADD             R0, PC; off_23494C
FBADE:  ADD             R1, PC; off_234A88
FBAE0:  LDR             R5, [R0]; dword_23DF24
FBAE2:  LDR             R0, [R1]; off_2636B8
FBAE4:  LDR             R1, [R5]
FBAE6:  LDR             R2, [R0]
FBAE8:  MOV             R0, #0x9FC93C
FBAF0:  LDR             R4, [R1,R0]
FBAF2:  MOV             R0, R4
FBAF4:  BLX             R2
FBAF6:  CMP             R0, #0
FBAF8:  BEQ             locret_FBB7C
FBAFA:  LDR             R0, [R5]
FBAFC:  MOV             R1, #0x5D0C65
FBB04:  ADD             R0, R1
FBB06:  BLX             R0
FBB08:  LDR             R0, [R5]
FBB0A:  MOV             R1, #0x5C89A9
FBB12:  ADD             R0, R1
FBB14:  BLX             R0
FBB16:  LDR             R0, =(off_234A8C - 0xFBB1E)
FBB18:  MOVS            R1, #3
FBB1A:  ADD             R0, PC; off_234A8C
FBB1C:  LDR             R0, [R0]; off_263758
FBB1E:  LDR             R2, [R0]
FBB20:  MOVS            R0, #2
FBB22:  BLX             R2
FBB24:  MOVW            R1, #:lower16:(loc_1C07D0+1)
FBB28:  LDR             R0, [R5]
FBB2A:  MOVT            R1, #:upper16:(loc_1C07D0+1)
FBB2E:  ADD             R1, R0
FBB30:  MOVS            R0, #0
FBB32:  BLX             R1
FBB34:  LDR             R0, [R5]
FBB36:  VLDR            S0, =100.0
FBB3A:  ADD.W           R0, R0, #0x990000
FBB3E:  ADD.W           R0, R0, #0x20C0
FBB42:  VLDR            S2, [R0]
FBB46:  LDR             R0, =(off_234A24 - 0xFBB50)
FBB48:  VDIV.F32        S0, S2, S0
FBB4C:  ADD             R0, PC; off_234A24
FBB4E:  LDR             R0, [R0]; dword_23DEEC
FBB50:  LDR             R0, [R0]
FBB52:  LDR             R2, [R0,#0x5C]
FBB54:  LDR             R1, [R0]
FBB56:  LDR             R2, [R2,#0x58]
FBB58:  VSTR            S0, [R2,#0x58]
FBB5C:  LDR             R1, [R1,#0x34]
FBB5E:  BLX             R1
FBB60:  LDR             R0, =(off_234A90 - 0xFBB66)
FBB62:  ADD             R0, PC; off_234A90
FBB64:  LDR             R0, [R0]; off_2636BC
FBB66:  LDR             R1, [R0]
FBB68:  MOV             R0, R4
FBB6A:  BLX             R1
FBB6C:  LDR             R0, =(off_234A94 - 0xFBB76)
FBB6E:  MOVS            R1, #0
FBB70:  MOVS            R2, #0
FBB72:  ADD             R0, PC; off_234A94
FBB74:  LDR             R0, [R0]; off_2636C0
FBB76:  LDR             R3, [R0]
FBB78:  MOV             R0, R4
FBB7A:  BLX             R3
FBB7C:  POP             {R4,R5,R7,PC}
