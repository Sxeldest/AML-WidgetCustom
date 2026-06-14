; =========================================================
; Game Engine Function: _ZN11CAutomobile7PopBootEv
; Address            : 0x55ECFA - 0x55ED9E
; =========================================================

55ECFA:  PUSH            {R4-R7,LR}
55ECFC:  ADD             R7, SP, #0xC
55ECFE:  PUSH.W          {R11}
55ED02:  VPUSH           {D8-D10}
55ED06:  SUB             SP, SP, #0x58
55ED08:  MOV             R5, R0
55ED0A:  ADDW            R0, R5, #0x5B4
55ED0E:  MOVS            R1, #1
55ED10:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
55ED14:  ORR.W           R0, R0, #2
55ED18:  CMP             R0, #2
55ED1A:  BNE             loc_55ED92
55ED1C:  LDR.W           R0, [R5,#0x5E4]
55ED20:  ADD             R4, SP, #0x80+var_70
55ED22:  STR.W           R0, [R5,#0x5F0]
55ED26:  MOVS            R2, #0
55ED28:  LDR.W           R0, [R5,#0x6A0]
55ED2C:  MOVS            R6, #0
55ED2E:  ADD.W           R1, R0, #0x10
55ED32:  MOV             R0, R4
55ED34:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
55ED38:  VLDR            S16, [SP,#0x80+var_40]
55ED3C:  MOV             R2, SP
55ED3E:  VLDR            S18, [SP,#0x80+var_3C]
55ED42:  VLDR            S20, [SP,#0x80+var_38]
55ED46:  STRD.W          R6, R6, [SP,#0x80+var_80]
55ED4A:  STR             R6, [SP,#0x80+var_78]
55ED4C:  LDRB.W          R0, [R5,#0x5EE]
55ED50:  LDR.W           R1, [R5,#0x5F0]
55ED54:  STR.W           R1, [R2,R0,LSL#2]
55ED58:  MOV             R0, R4; this
55ED5A:  LDMFD.W         SP, {R1-R3}; float
55ED5E:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
55ED62:  VLDR            S0, [SP,#0x80+var_40]
55ED66:  MOV             R0, R4; this
55ED68:  VLDR            S2, [SP,#0x80+var_3C]
55ED6C:  VLDR            S4, [SP,#0x80+var_38]
55ED70:  VADD.F32        S0, S16, S0
55ED74:  VADD.F32        S2, S18, S2
55ED78:  VADD.F32        S4, S20, S4
55ED7C:  VSTR            S0, [SP,#0x80+var_40]
55ED80:  VSTR            S2, [SP,#0x80+var_3C]
55ED84:  VSTR            S4, [SP,#0x80+var_38]
55ED88:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55ED8C:  MOV             R0, R4; this
55ED8E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55ED92:  ADD             SP, SP, #0x58 ; 'X'
55ED94:  VPOP            {D8-D10}
55ED98:  POP.W           {R11}
55ED9C:  POP             {R4-R7,PC}
