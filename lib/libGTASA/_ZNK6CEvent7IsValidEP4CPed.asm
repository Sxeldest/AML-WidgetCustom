; =========================================================
; Game Engine Function: _ZNK6CEvent7IsValidEP4CPed
; Address            : 0x36FBA4 - 0x36FBC6
; =========================================================

36FBA4:  LDRB            R1, [R0,#8]
36FBA6:  CMP             R1, #0
36FBA8:  ITT NE
36FBAA:  MOVNE           R0, #1
36FBAC:  BXNE            LR
36FBAE:  PUSH            {R4,R6,R7,LR}
36FBB0:  ADD             R7, SP, #0x10+var_8
36FBB2:  LDRD.W          R1, R4, [R0]
36FBB6:  LDR             R1, [R1,#0x10]
36FBB8:  BLX             R1
36FBBA:  MOV             R1, R0
36FBBC:  MOVS            R0, #0
36FBBE:  CMP             R4, R1
36FBC0:  IT LE
36FBC2:  MOVLE           R0, #1
36FBC4:  POP             {R4,R6,R7,PC}
