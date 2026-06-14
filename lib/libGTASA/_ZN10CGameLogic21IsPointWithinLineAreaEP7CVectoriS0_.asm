; =========================================================
; Game Engine Function: _ZN10CGameLogic21IsPointWithinLineAreaEP7CVectoriS0_
; Address            : 0x309C68 - 0x309CF4
; =========================================================

309C68:  PUSH            {R4-R7,LR}
309C6A:  ADD             R7, SP, #0xC
309C6C:  PUSH.W          {R8-R11}
309C70:  SUB             SP, SP, #0x14; float
309C72:  MOV             R6, R1
309C74:  MOV             R10, R3
309C76:  MOV             R11, R2
309C78:  CMP             R6, #1
309C7A:  STR             R0, [SP,#0x30+var_20]; float
309C7C:  BLT             loc_309CEA
309C7E:  LDR             R0, [SP,#0x30+var_20]
309C80:  SUBS            R4, R6, #1
309C82:  MOV.W           R9, #0
309C86:  ADDS            R5, R0, #4
309C88:  MOVS            R0, #0
309C8A:  ADD.W           R8, R0, #1
309C8E:  CMP             R4, R0
309C90:  VLDR            S0, [R5,#-4]
309C94:  MOVW            R2, #0x2400
309C98:  MOV             R0, R8
309C9A:  VLDR            S2, [R5]
309C9E:  IT EQ
309CA0:  MOVEQ           R0, #0
309CA2:  LDR             R1, [SP,#0x30+var_20]
309CA4:  ADD.W           R0, R0, R0,LSL#1
309CA8:  MOVT            R2, #0x4974; float
309CAC:  MOVS            R3, #0; float
309CAE:  ADD.W           R0, R1, R0,LSL#2
309CB2:  MOV             R1, R10; float
309CB4:  VLDR            S4, [R0]
309CB8:  VLDR            S6, [R0,#4]
309CBC:  MOV             R0, R11; this
309CBE:  VSUB.F32        S4, S4, S0
309CC2:  VSTR            S0, [SP,#0x30+var_30]
309CC6:  VSUB.F32        S6, S6, S2
309CCA:  VSTR            S2, [SP,#0x30+var_2C]
309CCE:  VSTR            S4, [SP,#0x30+var_28]
309CD2:  VSTR            S6, [SP,#0x30+var_24]
309CD6:  BLX             j__ZN10CCollision23Test2DLineAgainst2DLineEffffffff; CCollision::Test2DLineAgainst2DLine(float,float,float,float,float,float,float,float)
309CDA:  ADD             R9, R0
309CDC:  ADDS            R5, #0xC
309CDE:  CMP             R6, R8
309CE0:  MOV             R0, R8
309CE2:  BNE             loc_309C8A
309CE4:  AND.W           R0, R9, #1
309CE8:  B               loc_309CEC
309CEA:  MOVS            R0, #0
309CEC:  ADD             SP, SP, #0x14
309CEE:  POP.W           {R8-R11}
309CF2:  POP             {R4-R7,PC}
