; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity18CreateFirstSubTaskEP4CPed
; Address            : 0x522D3C - 0x522E36
; =========================================================

522D3C:  PUSH            {R4-R7,LR}
522D3E:  ADD             R7, SP, #0xC
522D40:  PUSH.W          {R8}
522D44:  SUB             SP, SP, #0x60
522D46:  MOV             R4, R1
522D48:  MOV             R5, R0
522D4A:  LDR             R0, [R4,#0x14]
522D4C:  ADDS            R6, R4, #4
522D4E:  VMOV.I32        Q9, #0
522D52:  ADD             R2, SP, #0x70+var_50; CEntity **
522D54:  CMP             R0, #0
522D56:  MOV             R1, R6
522D58:  IT NE
522D5A:  ADDNE.W         R1, R0, #0x30 ; '0'
522D5E:  ADD.W           R8, SP, #0x70+var_64
522D62:  VLDR            D16, [R1]
522D66:  LDR             R0, [R1,#8]
522D68:  STR             R0, [R5,#0x1C]
522D6A:  ADD.W           R0, R2, #0x30 ; '0'
522D6E:  VSTR            D16, [R5,#0x14]
522D72:  LDR             R1, [R5,#0xC]
522D74:  VST1.32         {D18-D19}, [R0]
522D78:  ADD.W           R0, R2, #0x24 ; '$'
522D7C:  VST1.32         {D18-D19}, [R0]
522D80:  ADD.W           R0, R2, #0x14
522D84:  VST1.32         {D18-D19}, [R0]
522D88:  ADDS            R0, R2, #4; this
522D8A:  VST1.32         {D18-D19}, [R0]
522D8E:  STR             R1, [SP,#0x70+var_50]
522D90:  MOV             R1, R8; CColSphere *
522D92:  BLX             j__ZN23CTaskComplexAvoidEntity13ComputeSphereER10CColSpherePP7CEntity; CTaskComplexAvoidEntity::ComputeSphere(CColSphere &,CEntity **)
522D96:  LDR             R0, [R4,#0x14]
522D98:  ADD.W           R2, R5, #0x14; CColSphere *
522D9C:  ADD.W           R3, R5, #0x20 ; ' '; CVector *
522DA0:  MOV             R1, R8; CPed *
522DA2:  CMP             R0, #0
522DA4:  IT NE
522DA6:  ADDNE.W         R6, R0, #0x30 ; '0'
522DAA:  LDR             R0, [R6,#8]
522DAC:  ADD.W           R6, R5, #0x2C ; ','
522DB0:  STR             R0, [SP,#0x70+var_5C]
522DB2:  ADD.W           R0, R5, #0x38 ; '8'
522DB6:  STRD.W          R0, R6, [SP,#0x70+var_70]; CVector *
522DBA:  MOV             R0, R4; this
522DBC:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
522DC0:  CBZ             R0, loc_522E08
522DC2:  MOVS            R0, #word_2C; this
522DC4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
522DC8:  LDR             R4, [R5,#0x10]
522DCA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
522DCE:  LDR             R1, =(_ZTV15CTaskSimpleGoTo_ptr - 0x522DD6)
522DD0:  LDR             R2, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x522DDA)
522DD2:  ADD             R1, PC; _ZTV15CTaskSimpleGoTo_ptr
522DD4:  STR             R4, [R0,#8]
522DD6:  ADD             R2, PC; _ZTV20CTaskSimpleGoToPoint_ptr
522DD8:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoTo ...
522DDA:  LDR             R2, [R2]; `vtable for'CTaskSimpleGoToPoint ...
522DDC:  ADDS            R1, #8
522DDE:  STR             R1, [R0]
522DE0:  LDRB            R1, [R0,#0x1C]
522DE2:  ADDS            R2, #8
522DE4:  VLDR            D16, [R6]
522DE8:  LDRB            R3, [R0,#0x1D]
522DEA:  AND.W           R1, R1, #0xC0
522DEE:  LDR             R6, [R6,#8]
522DF0:  STR             R6, [R0,#0x14]
522DF2:  STR             R2, [R0]
522DF4:  MOV.W           R2, #0x3F000000
522DF8:  STR             R2, [R0,#0x18]
522DFA:  AND.W           R2, R3, #0xE0
522DFE:  STRB            R2, [R0,#0x1D]
522E00:  STRB            R1, [R0,#0x1C]
522E02:  VSTR            D16, [R0,#0xC]
522E06:  B               loc_522E2E
522E08:  LDRB.W          R0, [R5,#0x50]
522E0C:  LSLS            R0, R0, #0x1F
522E0E:  BEQ             loc_522E2C
522E10:  LDR             R0, =(g_ikChainMan_ptr - 0x522E18)
522E12:  MOV             R1, R4; CPed *
522E14:  ADD             R0, PC; g_ikChainMan_ptr
522E16:  LDR             R0, [R0]; g_ikChainMan ; this
522E18:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
522E1C:  CBZ             R0, loc_522E2C
522E1E:  LDR             R0, =(g_ikChainMan_ptr - 0x522E28)
522E20:  MOV             R1, R4; CPed *
522E22:  MOVS            R2, #0xFA; int
522E24:  ADD             R0, PC; g_ikChainMan_ptr
522E26:  LDR             R0, [R0]; g_ikChainMan ; this
522E28:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
522E2C:  MOVS            R0, #0
522E2E:  ADD             SP, SP, #0x60 ; '`'
522E30:  POP.W           {R8}
522E34:  POP             {R4-R7,PC}
