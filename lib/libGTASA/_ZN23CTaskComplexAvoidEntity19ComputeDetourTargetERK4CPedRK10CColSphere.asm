; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity19ComputeDetourTargetERK4CPedRK10CColSphere
; Address            : 0x523030 - 0x523058
; =========================================================

523030:  PUSH            {R7,LR}; CVector *
523032:  MOV             R7, SP
523034:  SUB             SP, SP, #8
523036:  ADD.W           R12, R0, #0x2C ; ','
52303A:  ADD.W           R3, R0, #0x38 ; '8'
52303E:  STRD.W          R3, R12, [SP,#0x10+var_10]; CVector *
523042:  ADD.W           R12, R0, #0x14
523046:  ADD.W           R3, R0, #0x20 ; ' '; CVector *
52304A:  MOV             R0, R1; this
52304C:  MOV             R1, R2; CPed *
52304E:  MOV             R2, R12; CColSphere *
523050:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
523054:  ADD             SP, SP, #8
523056:  POP             {R7,PC}
