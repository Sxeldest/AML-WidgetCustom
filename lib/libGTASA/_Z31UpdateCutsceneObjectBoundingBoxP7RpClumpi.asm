; =========================================================
; Game Engine Function: _Z31UpdateCutsceneObjectBoundingBoxP7RpClumpi
; Address            : 0x465034 - 0x4650B8
; =========================================================

465034:  PUSH            {R4,R5,R7,LR}
465036:  ADD             R7, SP, #8
465038:  VPUSH           {D8}
46503C:  SUB             SP, SP, #8
46503E:  LDR             R2, =(_ZN14CTempColModels17ms_colModelCutObjE_ptr - 0x46504A)
465040:  SUB.W           R1, R1, #0x12C
465044:  LDR             R3, =(_Z31CalculateBoundingSphereRadiusCBP8RpAtomicPv_ptr - 0x465050)
465046:  ADD             R2, PC; _ZN14CTempColModels17ms_colModelCutObjE_ptr
465048:  ADD.W           R4, R1, R1,LSL#1
46504C:  ADD             R3, PC; _Z31CalculateBoundingSphereRadiusCBP8RpAtomicPv_ptr
46504E:  LDR             R2, [R2]; CTempColModels::ms_colModelCutObj ...
465050:  LDR             R1, [R3]; CalculateBoundingSphereRadiusCB(RpAtomic *,void *)
465052:  ADD.W           R5, R2, R4,LSL#4
465056:  ADD             R2, SP, #0x18+var_14
465058:  VLDR            S16, [R5,#0x24]
46505C:  VSTR            S16, [SP,#0x18+var_14]
465060:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
465064:  VMOV.F32        S0, #20.0
465068:  LDR             R1, =(_ZN14CTempColModels17ms_colModelCutObjE_ptr - 0x465072)
46506A:  ADD.W           R0, R5, #0x24 ; '$'
46506E:  ADD             R1, PC; _ZN14CTempColModels17ms_colModelCutObjE_ptr
465070:  VMAX.F32        D1, D8, D0
465074:  VLDR            S0, [SP,#0x18+var_14]
465078:  VCMPE.F32       S0, S2
46507C:  VMRS            APSR_nzcv, FPSCR
465080:  ITT GT
465082:  VSTRGT          S2, [SP,#0x18+var_14]
465086:  VMOVGT.F32      S0, S2
46508A:  VNEG.F32        S2, S0
46508E:  VSTR            S0, [R0]
465092:  LDR             R0, [R1]; CTempColModels::ms_colModelCutObj ...
465094:  ADD.W           R0, R0, R4,LSL#4
465098:  VSTR            S2, [R0]
46509C:  VSTR            S2, [R0,#4]
4650A0:  VSTR            S2, [R0,#8]
4650A4:  VSTR            S0, [R0,#0xC]
4650A8:  VSTR            S0, [R0,#0x10]
4650AC:  VSTR            S0, [R0,#0x14]
4650B0:  ADD             SP, SP, #8
4650B2:  VPOP            {D8}
4650B6:  POP             {R4,R5,R7,PC}
