; =========================================================
; Game Engine Function: _ZN25CTaskComplexWalkRoundFire14ControlSubTaskEP4CPed
; Address            : 0x50EB40 - 0x50EBF4
; =========================================================

50EB40:  PUSH            {R4-R7,LR}
50EB42:  ADD             R7, SP, #0xC
50EB44:  PUSH.W          {R11}
50EB48:  SUB             SP, SP, #0x38
50EB4A:  MOV             R4, R0
50EB4C:  MOV             R5, R1
50EB4E:  LDR             R1, [R4,#0x1C]; float
50EB50:  MOVS            R0, #0xFF
50EB52:  MOVS            R2, #0
50EB54:  ADD             R6, SP, #0x48+var_24
50EB56:  STRD.W          R2, R0, [SP,#0x48+var_48]; unsigned __int8
50EB5A:  ADD.W           R2, R4, #0x10; CVector *
50EB5E:  MOV             R0, R6; this
50EB60:  MOVS            R3, #0; unsigned __int8
50EB62:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
50EB66:  ADD             R0, SP, #0x48+var_40
50EB68:  ADD             R1, SP, #0x48+var_30
50EB6A:  ADD.W           R2, R4, #0x2C ; ','; CColSphere *
50EB6E:  ADD.W           R3, R4, #0x20 ; ' '; CVector *
50EB72:  STRD.W          R1, R0, [SP,#0x48+var_48]; CVector *
50EB76:  MOV             R0, R5; this
50EB78:  MOV             R1, R6; CPed *
50EB7A:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
50EB7E:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x50EB88)
50EB80:  VLDR            S2, [SP,#0x48+var_40]
50EB84:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
50EB86:  LDR             R1, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
50EB88:  LDR             R0, [R4,#8]
50EB8A:  VLDR            S0, [R1]
50EB8E:  VLDR            S4, [R0,#0xC]
50EB92:  VCMP.F32        S4, S2
50EB96:  VMRS            APSR_nzcv, FPSCR
50EB9A:  BNE             loc_50EBCE
50EB9C:  VLDR            S2, [SP,#0x48+var_40+4]
50EBA0:  VLDR            S4, [R0,#0x10]
50EBA4:  VCMP.F32        S4, S2
50EBA8:  VMRS            APSR_nzcv, FPSCR
50EBAC:  BNE             loc_50EBCE
50EBAE:  VLDR            S2, [SP,#0x48+var_38]
50EBB2:  VLDR            S4, [R0,#0x14]
50EBB6:  VCMP.F32        S4, S2
50EBBA:  VMRS            APSR_nzcv, FPSCR
50EBBE:  BNE             loc_50EBCE
50EBC0:  VLDR            S2, [R0,#0x18]
50EBC4:  VCMP.F32        S2, S0
50EBC8:  VMRS            APSR_nzcv, FPSCR
50EBCC:  BEQ             loc_50EBEC
50EBCE:  LDRB            R2, [R0,#0x1C]
50EBD0:  VLDR            D16, [SP,#0x48+var_40]
50EBD4:  LDR             R1, [SP,#0x48+var_38]
50EBD6:  STR             R1, [R0,#0x14]
50EBD8:  AND.W           R1, R2, #0xD0
50EBDC:  VSTR            S0, [R0,#0x18]
50EBE0:  ORR.W           R1, R1, #0x20 ; ' '
50EBE4:  VSTR            D16, [R0,#0xC]
50EBE8:  STRB            R1, [R0,#0x1C]
50EBEA:  LDR             R0, [R4,#8]
50EBEC:  ADD             SP, SP, #0x38 ; '8'
50EBEE:  POP.W           {R11}
50EBF2:  POP             {R4-R7,PC}
