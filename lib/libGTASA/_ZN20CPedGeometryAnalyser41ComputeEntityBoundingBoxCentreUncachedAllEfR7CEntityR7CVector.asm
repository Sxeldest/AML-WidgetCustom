; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser41ComputeEntityBoundingBoxCentreUncachedAllEfR7CEntityR7CVector
; Address            : 0x4AE3C4 - 0x4AE432
; =========================================================

4AE3C4:  PUSH            {R4,R5,R7,LR}
4AE3C6:  ADD             R7, SP, #8
4AE3C8:  SUB             SP, SP, #0x30
4AE3CA:  MOV             R4, R2
4AE3CC:  MOV             R2, SP; CEntity *
4AE3CE:  MOV             R5, R0
4AE3D0:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AE3D4:  STR             R5, [R4,#8]
4AE3D6:  VLDR            S0, =0.0
4AE3DA:  VLDR            S4, [SP,#0x38+var_34]
4AE3DE:  VLDR            S2, [SP,#0x38+var_38]
4AE3E2:  VADD.F32        S4, S4, S0
4AE3E6:  VLDR            S6, [SP,#0x38+var_2C]
4AE3EA:  VADD.F32        S0, S2, S0
4AE3EE:  VLDR            S8, [SP,#0x38+var_28]
4AE3F2:  VADD.F32        S2, S4, S8
4AE3F6:  VLDR            S4, [SP,#0x38+var_1C]
4AE3FA:  VADD.F32        S0, S0, S6
4AE3FE:  VLDR            S6, [SP,#0x38+var_20]
4AE402:  VMOV.F32        S8, #0.25
4AE406:  VADD.F32        S2, S2, S4
4AE40A:  VLDR            S4, [SP,#0x38+var_10]
4AE40E:  VADD.F32        S0, S0, S6
4AE412:  VLDR            S6, [SP,#0x38+var_14]
4AE416:  VADD.F32        S2, S2, S4
4AE41A:  VADD.F32        S0, S0, S6
4AE41E:  VMUL.F32        S2, S2, S8
4AE422:  VMUL.F32        S0, S0, S8
4AE426:  VSTR            S0, [R4]
4AE42A:  VSTR            S2, [R4,#4]
4AE42E:  ADD             SP, SP, #0x30 ; '0'
4AE430:  POP             {R4,R5,R7,PC}
