; =========================================================
; Game Engine Function: _ZNK32CEntitySeekPosCalculatorXYOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector
; Address            : 0x544440 - 0x544496
; =========================================================

544440:  PUSH            {R7,LR}
544442:  MOV             R7, SP
544444:  SUB             SP, SP, #0x10
544446:  LDR.W           R12, [R2,#0x14]
54444A:  VLDR            S0, [R0,#4]
54444E:  VLDR            S2, [R0,#8]
544452:  CMP.W           R12, #0
544456:  VLDR            S4, [R0,#0xC]
54445A:  ADD.W           R0, R12, #0x30 ; '0'
54445E:  IT EQ
544460:  ADDEQ           R0, R2, #4
544462:  ADD             R2, SP, #0x18+var_14
544464:  VLDR            S6, [R0]
544468:  VLDR            S8, [R0,#4]
54446C:  VADD.F32        S0, S6, S0
544470:  VLDR            S10, [R0,#8]
544474:  MOV             R0, R1; this
544476:  MOV             R1, R2; CPed *
544478:  MOV             R2, R3; CVector *
54447A:  VSTR            S0, [SP,#0x18+var_14]
54447E:  VADD.F32        S0, S8, S2
544482:  VSTR            S0, [SP,#0x18+var_10]
544486:  VADD.F32        S0, S10, S4
54448A:  VSTR            S0, [SP,#0x18+var_C]
54448E:  BLX             j__ZN20CPedGeometryAnalyser18ComputeClearTargetERK4CPedRK7CVectorRS3_; CPedGeometryAnalyser::ComputeClearTarget(CPed const&,CVector const&,CVector&)
544492:  ADD             SP, SP, #0x10
544494:  POP             {R7,PC}
