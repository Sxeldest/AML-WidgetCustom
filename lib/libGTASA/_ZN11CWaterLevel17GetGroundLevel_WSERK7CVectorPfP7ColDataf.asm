; =========================================================
; Game Engine Function: _ZN11CWaterLevel17GetGroundLevel_WSERK7CVectorPfP7ColDataf
; Address            : 0x59BCE0 - 0x59BDC0
; =========================================================

59BCE0:  PUSH            {R4-R7,LR}
59BCE2:  ADD             R7, SP, #0xC
59BCE4:  PUSH.W          {R8,R9,R11}
59BCE8:  VPUSH           {D8-D11}
59BCEC:  SUB             SP, SP, #0x58
59BCEE:  MOV             R4, R0
59BCF0:  VLDR            S20, =50.0
59BCF4:  VLDR            S16, [R4]
59BCF8:  MOV             R6, R3
59BCFA:  VLDR            S22, =60.0
59BCFE:  MOV             R9, R2
59BD00:  VDIV.F32        S0, S16, S20
59BD04:  MOV             R8, R1
59BD06:  VADD.F32        S0, S0, S22
59BD0A:  VMOV            R0, S0; x
59BD0E:  BLX.W           floorf
59BD12:  VMOV            S0, R0
59BD16:  VCVT.S32.F32    S0, S0
59BD1A:  VMOV            R0, S0
59BD1E:  CMP             R0, #0x77 ; 'w'
59BD20:  BHI             loc_59BDB0
59BD22:  VLDR            S18, [R4,#4]
59BD26:  VDIV.F32        S0, S18, S20
59BD2A:  VADD.F32        S0, S0, S22
59BD2E:  VMOV            R0, S0; x
59BD32:  BLX.W           floorf
59BD36:  VMOV            S0, R0
59BD3A:  MOVS            R5, #0
59BD3C:  VCVT.S32.F32    S0, S0
59BD40:  VMOV            R0, S0
59BD44:  CMP             R0, #0x77 ; 'w'
59BD46:  BHI             loc_59BDB2
59BD48:  VLDR            S2, =0.0
59BD4C:  VMOV            S0, R6
59BD50:  VLDR            S6, [R4,#8]
59BD54:  MOVS            R0, #1
59BD56:  VADD.F32        S4, S18, S2
59BD5A:  EOR.W           R1, R6, #0x80000000; int
59BD5E:  VADD.F32        S2, S16, S2
59BD62:  ADD             R2, SP, #0x90+var_64; int
59BD64:  VADD.F32        S0, S6, S0
59BD68:  ADD             R3, SP, #0x90+var_68; int
59BD6A:  VSTR            S4, [SP,#0x90+var_70]
59BD6E:  VSTR            S2, [SP,#0x90+var_74]
59BD72:  VSTR            S0, [SP,#0x90+var_6C]
59BD76:  STRD.W          R0, R5, [SP,#0x90+var_90]; int
59BD7A:  STRD.W          R5, R5, [SP,#0x90+var_88]; int
59BD7E:  STRD.W          R0, R5, [SP,#0x90+var_80]; int
59BD82:  ADD             R0, SP, #0x90+var_74; CVector *
59BD84:  STR             R5, [SP,#0x90+var_78]; int
59BD86:  BLX.W           j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
59BD8A:  CMP             R0, #1
59BD8C:  BNE             loc_59BDB2
59BD8E:  LDR             R0, [SP,#0x90+var_5C]
59BD90:  CMP.W           R9, #0
59BD94:  STR.W           R0, [R8]
59BD98:  MOV.W           R5, #1
59BD9C:  ITTTT NE
59BD9E:  LDRBNE.W        R0, [SP,#0x90+var_41]
59BDA2:  STRBNE.W        R0, [R9]
59BDA6:  LDRBNE.W        R0, [SP,#0x90+var_40]
59BDAA:  STRBNE.W        R0, [R9,#1]
59BDAE:  B               loc_59BDB2
59BDB0:  MOVS            R5, #0
59BDB2:  MOV             R0, R5
59BDB4:  ADD             SP, SP, #0x58 ; 'X'
59BDB6:  VPOP            {D8-D11}
59BDBA:  POP.W           {R8,R9,R11}
59BDBE:  POP             {R4-R7,PC}
