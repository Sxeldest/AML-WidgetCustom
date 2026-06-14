; =========================================================
; Game Engine Function: _ZN25CTaskComplexWalkRoundFire19ComputeDetourTargetERK4CPedR7CVector
; Address            : 0x50EAF8 - 0x50EB40
; =========================================================

50EAF8:  PUSH            {R4-R7,LR}
50EAFA:  ADD             R7, SP, #0xC
50EAFC:  PUSH.W          {R8}
50EB00:  SUB             SP, SP, #0x28
50EB02:  MOV             R6, R0
50EB04:  MOV             R4, R2
50EB06:  MOV             R5, R1
50EB08:  LDR             R1, [R6,#0x1C]; float
50EB0A:  MOVS            R0, #0xFF
50EB0C:  MOVS            R2, #0
50EB0E:  ADD.W           R8, SP, #0x38+var_24
50EB12:  STRD.W          R2, R0, [SP,#0x38+var_38]; unsigned __int8
50EB16:  ADD.W           R2, R6, #0x10; CVector *
50EB1A:  MOVS            R3, #0; unsigned __int8
50EB1C:  MOV             R0, R8; this
50EB1E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
50EB22:  ADD             R0, SP, #0x38+var_30
50EB24:  ADD.W           R2, R6, #0x2C ; ','; CColSphere *
50EB28:  ADD.W           R3, R6, #0x20 ; ' '; CVector *
50EB2C:  STRD.W          R0, R4, [SP,#0x38+var_38]; CVector *
50EB30:  MOV             R0, R5; this
50EB32:  MOV             R1, R8; CPed *
50EB34:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
50EB38:  ADD             SP, SP, #0x28 ; '('
50EB3A:  POP.W           {R8}
50EB3E:  POP             {R4-R7,PC}
