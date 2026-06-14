; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser30ComputeEntityBoundingBoxCentreEfR7CEntityR7CVector
; Address            : 0x4AE350 - 0x4AE3BE
; =========================================================

4AE350:  PUSH            {R4,R5,R7,LR}
4AE352:  ADD             R7, SP, #8
4AE354:  SUB             SP, SP, #0x30
4AE356:  MOV             R4, R2
4AE358:  MOV             R2, SP; CEntity *
4AE35A:  MOV             R5, R0
4AE35C:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AE360:  STR             R5, [R4,#8]
4AE362:  VLDR            S0, =0.0
4AE366:  VLDR            S4, [SP,#0x38+var_34]
4AE36A:  VLDR            S2, [SP,#0x38+var_38]
4AE36E:  VADD.F32        S4, S4, S0
4AE372:  VLDR            S6, [SP,#0x38+var_2C]
4AE376:  VADD.F32        S0, S2, S0
4AE37A:  VLDR            S8, [SP,#0x38+var_28]
4AE37E:  VADD.F32        S2, S4, S8
4AE382:  VLDR            S4, [SP,#0x38+var_1C]
4AE386:  VADD.F32        S0, S0, S6
4AE38A:  VLDR            S6, [SP,#0x38+var_20]
4AE38E:  VMOV.F32        S8, #0.25
4AE392:  VADD.F32        S2, S2, S4
4AE396:  VLDR            S4, [SP,#0x38+var_10]
4AE39A:  VADD.F32        S0, S0, S6
4AE39E:  VLDR            S6, [SP,#0x38+var_14]
4AE3A2:  VADD.F32        S2, S2, S4
4AE3A6:  VADD.F32        S0, S0, S6
4AE3AA:  VMUL.F32        S2, S2, S8
4AE3AE:  VMUL.F32        S0, S0, S8
4AE3B2:  VSTR            S0, [R4]
4AE3B6:  VSTR            S2, [R4,#4]
4AE3BA:  ADD             SP, SP, #0x30 ; '0'
4AE3BC:  POP             {R4,R5,R7,PC}
