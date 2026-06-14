; =========================================================
; Game Engine Function: sub_FAFEC
; Address            : 0xFAFEC - 0xFB034
; =========================================================

FAFEC:  PUSH            {R4,R5,R7,LR}
FAFEE:  ADD             R7, SP, #8
FAFF0:  MOV             R4, R0
FAFF2:  LDR             R0, [R0,#0x10]
FAFF4:  MOV             R5, R1
FAFF6:  MOVS            R1, #0
FAFF8:  CMP             R4, R0
FAFFA:  STR             R1, [R4,#0x10]
FAFFC:  BEQ             loc_FB004
FAFFE:  CBZ             R0, loc_FB00E
FB000:  MOVS            R1, #5
FB002:  B               loc_FB006
FB004:  MOVS            R1, #4
FB006:  LDR             R2, [R0]
FB008:  LDR.W           R1, [R2,R1,LSL#2]
FB00C:  BLX             R1
FB00E:  LDR             R0, [R5,#0x10]
FB010:  CBZ             R0, loc_FB01E
FB012:  CMP             R5, R0
FB014:  BEQ             loc_FB024
FB016:  STR             R0, [R4,#0x10]
FB018:  MOVS            R0, #0
FB01A:  STR             R0, [R5,#0x10]
FB01C:  B               loc_FB030
FB01E:  MOVS            R0, #0
FB020:  STR             R0, [R4,#0x10]
FB022:  B               loc_FB030
FB024:  STR             R4, [R4,#0x10]
FB026:  LDR             R0, [R5,#0x10]
FB028:  LDR             R1, [R0]
FB02A:  LDR             R2, [R1,#0xC]
FB02C:  MOV             R1, R4
FB02E:  BLX             R2
FB030:  MOV             R0, R4
FB032:  POP             {R4,R5,R7,PC}
