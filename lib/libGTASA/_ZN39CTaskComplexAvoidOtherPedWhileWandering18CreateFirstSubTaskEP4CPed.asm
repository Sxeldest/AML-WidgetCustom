; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering18CreateFirstSubTaskEP4CPed
; Address            : 0x521D64 - 0x521EAC
; =========================================================

521D64:  PUSH            {R4-R7,LR}
521D66:  ADD             R7, SP, #0xC
521D68:  PUSH.W          {R8-R10}
521D6C:  SUB             SP, SP, #0x40
521D6E:  MOV             R5, R0
521D70:  MOV             R4, R1
521D72:  LDR             R0, [R5,#0xC]
521D74:  MOV             R8, #0xFFFFFFBF
521D78:  MOV.W           R9, #0xFFFFFFFF
521D7C:  CMP             R0, #0
521D7E:  BEQ             loc_521E72
521D80:  LDR             R0, [R4,#0x14]
521D82:  ADDS            R6, R4, #4
521D84:  ADD.W           R10, SP, #0x58+var_4C
521D88:  CMP             R0, #0
521D8A:  MOV             R1, R6
521D8C:  IT NE
521D8E:  ADDNE.W         R1, R0, #0x30 ; '0'
521D92:  MOV             R2, R10; CColSphere *
521D94:  VLDR            D16, [R1]
521D98:  LDR             R0, [R1,#8]
521D9A:  MOV             R1, R4; CPed *
521D9C:  STR             R0, [R5,#0x18]
521D9E:  MOV             R0, R5; this
521DA0:  VSTR            D16, [R5,#0x10]
521DA4:  BLX             j__ZN39CTaskComplexAvoidOtherPedWhileWandering18ComputeAvoidSphereERK4CPedR10CColSphere; CTaskComplexAvoidOtherPedWhileWandering::ComputeAvoidSphere(CPed const&,CColSphere &)
521DA8:  LDRD.W          R0, R1, [R5,#0x10]
521DAC:  ADD             R2, SP, #0x58+var_28; CColSphere *
521DAE:  STRD.W          R0, R1, [SP,#0x58+var_28]
521DB2:  ADD             R3, SP, #0x58+var_38; CVector *
521DB4:  LDRD.W          R0, R1, [R5,#0x1C]
521DB8:  STRD.W          R0, R1, [SP,#0x58+var_38]
521DBC:  MOV             R1, R10; CPed *
521DBE:  LDR             R0, [R4,#0x14]
521DC0:  CMP             R0, #0
521DC2:  IT NE
521DC4:  ADDNE.W         R6, R0, #0x30 ; '0'
521DC8:  LDR             R0, [R6,#8]
521DCA:  ADD.W           R6, R5, #0x28 ; '('
521DCE:  STR             R0, [SP,#0x58+var_20]
521DD0:  STR             R0, [SP,#0x58+var_30]
521DD2:  STR             R0, [SP,#0x58+var_44]
521DD4:  ADD.W           R0, R5, #0x34 ; '4'
521DD8:  STRD.W          R0, R6, [SP,#0x58+var_58]; CVector *
521DDC:  MOV             R0, R4; this
521DDE:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
521DE2:  CMP             R0, #0
521DE4:  BEQ             loc_521E4E
521DE6:  LDR.W           R0, [R4,#0x490]
521DEA:  ORR.W           R0, R0, #0x40 ; '@'
521DEE:  STR.W           R0, [R4,#0x490]
521DF2:  MOVS            R0, #word_2C; this
521DF4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
521DF8:  LDR             R4, [R5,#0x58]
521DFA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
521DFE:  LDR             R1, =(_ZTV15CTaskSimpleGoTo_ptr - 0x521E06)
521E00:  LDR             R2, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x521E0A)
521E02:  ADD             R1, PC; _ZTV15CTaskSimpleGoTo_ptr
521E04:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x521E10)
521E06:  ADD             R2, PC; _ZTV20CTaskSimpleGoToPoint_ptr
521E08:  STR             R4, [R0,#8]
521E0A:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoTo ...
521E0C:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
521E0E:  LDR             R2, [R2]; `vtable for'CTaskSimpleGoToPoint ...
521E10:  ADDS            R1, #8
521E12:  STR             R1, [R0]
521E14:  LDRB            R1, [R0,#0x1C]
521E16:  ADDS            R2, #8
521E18:  VLDR            D16, [R6]
521E1C:  LDRB            R4, [R0,#0x1D]
521E1E:  AND.W           R1, R1, #0xC0
521E22:  LDR             R6, [R6,#8]
521E24:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
521E26:  STR             R6, [R0,#0x14]
521E28:  STR             R2, [R0]
521E2A:  MOV.W           R2, #0x3F000000
521E2E:  STR             R2, [R0,#0x18]
521E30:  AND.W           R2, R4, #0xE0
521E34:  STRB            R2, [R0,#0x1D]
521E36:  STRB            R1, [R0,#0x1C]
521E38:  MOVS            R1, #1
521E3A:  VSTR            D16, [R0,#0xC]
521E3E:  LDR             R2, [R3]; CTimer::m_snTimeInMilliseconds
521E40:  STRB.W          R1, [R5,#0x54]
521E44:  MOV.W           R1, #0x7D0
521E48:  STRD.W          R2, R1, [R5,#0x4C]
521E4C:  B               loc_521EA4
521E4E:  LDRB.W          R0, [R5,#0x5C]
521E52:  LSLS            R0, R0, #0x1F
521E54:  BEQ             loc_521E72
521E56:  LDR             R0, =(g_ikChainMan_ptr - 0x521E5E)
521E58:  MOV             R1, R4; CPed *
521E5A:  ADD             R0, PC; g_ikChainMan_ptr
521E5C:  LDR             R0, [R0]; g_ikChainMan ; this
521E5E:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
521E62:  CBZ             R0, loc_521E72
521E64:  LDR             R0, =(g_ikChainMan_ptr - 0x521E6E)
521E66:  MOV             R1, R4; CPed *
521E68:  MOVS            R2, #0xFA; int
521E6A:  ADD             R0, PC; g_ikChainMan_ptr
521E6C:  LDR             R0, [R0]; g_ikChainMan ; this
521E6E:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
521E72:  LDR.W           R0, [R4,#0x484]
521E76:  LDR.W           R1, [R4,#0x488]
521E7A:  LDR.W           R2, [R4,#0x48C]
521E7E:  AND.W           R0, R0, R9
521E82:  LDR.W           R3, [R4,#0x490]
521E86:  AND.W           R1, R1, R9
521E8A:  STR.W           R0, [R4,#0x484]
521E8E:  AND.W           R2, R2, R9
521E92:  STR.W           R1, [R4,#0x488]
521E96:  AND.W           R3, R3, R8
521E9A:  STR.W           R2, [R4,#0x48C]
521E9E:  MOVS            R0, #0
521EA0:  STR.W           R3, [R4,#0x490]
521EA4:  ADD             SP, SP, #0x40 ; '@'
521EA6:  POP.W           {R8-R10}
521EAA:  POP             {R4-R7,PC}
