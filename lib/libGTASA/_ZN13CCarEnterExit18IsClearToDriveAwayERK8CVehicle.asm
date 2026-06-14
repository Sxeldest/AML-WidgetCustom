; =========================================================
; Game Engine Function: _ZN13CCarEnterExit18IsClearToDriveAwayERK8CVehicle
; Address            : 0x508A98 - 0x508B48
; =========================================================

508A98:  PUSH            {R4,R5,R7,LR}
508A9A:  ADD             R7, SP, #8
508A9C:  SUB             SP, SP, #0x60
508A9E:  MOV             R4, R0
508AA0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x508AAE)
508AA2:  LDRSH.W         R1, [R4,#0x26]
508AA6:  VMOV.F32        S4, #0.5
508AAA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
508AAC:  MOVS            R5, #0
508AAE:  ADD             R2, SP, #0x68+var_34
508AB0:  ADD             R3, SP, #0x68+var_38
508AB2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
508AB4:  LDR.W           R0, [R0,R1,LSL#2]
508AB8:  LDR             R0, [R0,#0x2C]
508ABA:  VLDR            S0, [R0,#4]
508ABE:  VLDR            S2, [R0,#0x10]
508AC2:  LDR             R0, [R4,#0x14]
508AC4:  VSUB.F32        S0, S2, S0
508AC8:  VMOV.F32        S2, #1.5
508ACC:  ADD.W           R1, R0, #0x30 ; '0'
508AD0:  VLDR            S6, [R0,#0x18]
508AD4:  CMP             R0, #0
508AD6:  VMUL.F32        S0, S0, S4
508ADA:  VLDR            S4, [R0,#0x14]
508ADE:  VADD.F32        S0, S0, S2
508AE2:  VLDR            S2, [R0,#0x10]
508AE6:  STR             R5, [SP,#0x68+var_38]
508AE8:  IT EQ
508AEA:  ADDEQ           R1, R4, #4
508AEC:  VLDR            S8, [R1,#4]
508AF0:  MOVS            R0, #1
508AF2:  VLDR            S10, [R1,#8]
508AF6:  VMUL.F32        S4, S0, S4
508AFA:  VMUL.F32        S2, S2, S0
508AFE:  VMUL.F32        S0, S0, S6
508B02:  VLDR            S6, [R1]
508B06:  VADD.F32        S4, S4, S8
508B0A:  VADD.F32        S2, S2, S6
508B0E:  VADD.F32        S0, S0, S10
508B12:  VSTR            S4, [SP,#0x68+var_40]
508B16:  VSTR            S2, [SP,#0x68+var_44]
508B1A:  VSTR            S0, [SP,#0x68+var_3C]
508B1E:  STRD.W          R0, R0, [SP,#0x68+var_68]
508B22:  STRD.W          R5, R5, [SP,#0x68+var_60]
508B26:  STRD.W          R5, R0, [SP,#0x68+var_58]
508B2A:  STRD.W          R0, R5, [SP,#0x68+var_50]
508B2E:  ADD             R0, SP, #0x68+var_44
508B30:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
508B34:  LDR             R1, [SP,#0x68+var_38]
508B36:  CMP             R1, R4
508B38:  IT EQ
508B3A:  MOVEQ           R5, #1
508B3C:  ORN.W           R0, R5, R0
508B40:  AND.W           R0, R0, #1
508B44:  ADD             SP, SP, #0x60 ; '`'
508B46:  POP             {R4,R5,R7,PC}
