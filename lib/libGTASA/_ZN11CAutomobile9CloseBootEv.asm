; =========================================================
; Game Engine Function: _ZN11CAutomobile9CloseBootEv
; Address            : 0x55EDD4 - 0x55EE66
; =========================================================

55EDD4:  PUSH            {R4-R7,LR}
55EDD6:  ADD             R7, SP, #0xC
55EDD8:  PUSH.W          {R11}
55EDDC:  VPUSH           {D8-D10}
55EDE0:  SUB             SP, SP, #0x58
55EDE2:  MOV             R5, R0
55EDE4:  ADD             R4, SP, #0x80+var_70
55EDE6:  LDR.W           R0, [R5,#0x5E8]
55EDEA:  MOVS            R2, #0
55EDEC:  STR.W           R0, [R5,#0x5F0]
55EDF0:  MOVS            R6, #0
55EDF2:  LDR.W           R0, [R5,#0x6A0]
55EDF6:  ADD.W           R1, R0, #0x10
55EDFA:  MOV             R0, R4
55EDFC:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
55EE00:  VLDR            S16, [SP,#0x80+var_40]
55EE04:  MOV             R2, SP
55EE06:  VLDR            S18, [SP,#0x80+var_3C]
55EE0A:  VLDR            S20, [SP,#0x80+var_38]
55EE0E:  STRD.W          R6, R6, [SP,#0x80+var_80]
55EE12:  STR             R6, [SP,#0x80+var_78]
55EE14:  LDRB.W          R0, [R5,#0x5EE]
55EE18:  LDR.W           R1, [R5,#0x5F0]
55EE1C:  STR.W           R1, [R2,R0,LSL#2]
55EE20:  MOV             R0, R4; this
55EE22:  LDMFD.W         SP, {R1-R3}; float
55EE26:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
55EE2A:  VLDR            S0, [SP,#0x80+var_40]
55EE2E:  MOV             R0, R4; this
55EE30:  VLDR            S2, [SP,#0x80+var_3C]
55EE34:  VLDR            S4, [SP,#0x80+var_38]
55EE38:  VADD.F32        S0, S16, S0
55EE3C:  VADD.F32        S2, S18, S2
55EE40:  VADD.F32        S4, S20, S4
55EE44:  VSTR            S0, [SP,#0x80+var_40]
55EE48:  VSTR            S2, [SP,#0x80+var_3C]
55EE4C:  VSTR            S4, [SP,#0x80+var_38]
55EE50:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55EE54:  MOV             R0, R4; this
55EE56:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55EE5A:  ADD             SP, SP, #0x58 ; 'X'
55EE5C:  VPOP            {D8-D10}
55EE60:  POP.W           {R11}
55EE64:  POP             {R4-R7,PC}
