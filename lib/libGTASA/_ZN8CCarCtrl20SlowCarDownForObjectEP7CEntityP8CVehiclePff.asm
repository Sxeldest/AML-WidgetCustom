; =========================================================
; Game Engine Function: _ZN8CCarCtrl20SlowCarDownForObjectEP7CEntityP8CVehiclePff
; Address            : 0x2EED90 - 0x2EEEA8
; =========================================================

2EED90:  PUSH            {R4,R5,R7,LR}
2EED92:  ADD             R7, SP, #8
2EED94:  LDR.W           R12, [R1,#0x14]
2EED98:  LDR.W           LR, [R0,#0x14]
2EED9C:  ADD.W           R4, R12, #0x30 ; '0'
2EEDA0:  CMP.W           R12, #0
2EEDA4:  IT EQ
2EEDA6:  ADDEQ           R4, R1, #4
2EEDA8:  ADD.W           R5, LR, #0x30 ; '0'
2EEDAC:  CMP.W           LR, #0
2EEDB0:  VLDR            S0, [R4]
2EEDB4:  VLDR            S2, [R4,#4]
2EEDB8:  VLDR            S6, [R4,#8]
2EEDBC:  IT EQ
2EEDBE:  ADDEQ           R5, R0, #4
2EEDC0:  VLDR            S4, [R5,#4]
2EEDC4:  VLDR            S8, [R5]
2EEDC8:  VSUB.F32        S4, S4, S2
2EEDCC:  VLDR            S10, [R5,#8]
2EEDD0:  VSUB.F32        S2, S8, S0
2EEDD4:  VLDR            S0, [R12,#0x10]
2EEDD8:  VLDR            S8, [R12,#0x14]
2EEDDC:  VSUB.F32        S6, S10, S6
2EEDE0:  VLDR            S12, [R12,#0x18]
2EEDE4:  VMUL.F32        S8, S4, S8
2EEDE8:  VMUL.F32        S0, S2, S0
2EEDEC:  VMUL.F32        S10, S6, S12
2EEDF0:  VADD.F32        S0, S0, S8
2EEDF4:  VADD.F32        S0, S0, S10
2EEDF8:  VCMPE.F32       S0, #0.0
2EEDFC:  VMRS            APSR_nzcv, FPSCR
2EEE00:  BLE             locret_2EEEA6
2EEE02:  VMOV.F32        S8, #20.0
2EEE06:  VCMPE.F32       S0, S8
2EEE0A:  VMRS            APSR_nzcv, FPSCR
2EEE0E:  BGE             locret_2EEEA6
2EEE10:  VLDR            S8, [R12]
2EEE14:  VLDR            S10, [R12,#4]
2EEE18:  VMUL.F32        S2, S2, S8
2EEE1C:  VLDR            S12, [R12,#8]
2EEE20:  VMUL.F32        S4, S4, S10
2EEE24:  LDR             R5, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2EEE32)
2EEE26:  VMUL.F32        S6, S6, S12
2EEE2A:  LDRSH.W         R1, [R1,#0x26]
2EEE2E:  ADD             R5, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2EEE30:  LDRSH.W         R0, [R0,#0x26]
2EEE34:  LDR             R5, [R5]; CModelInfo::ms_modelInfoPtrs ...
2EEE36:  VADD.F32        S2, S2, S4
2EEE3A:  LDR.W           R1, [R5,R1,LSL#2]
2EEE3E:  LDR.W           R0, [R5,R0,LSL#2]
2EEE42:  LDR             R1, [R1,#0x2C]
2EEE44:  LDR             R0, [R0,#0x2C]
2EEE46:  VLDR            S4, [R1,#0xC]
2EEE4A:  VADD.F32        S2, S2, S6
2EEE4E:  VLDR            S6, [R0,#0x24]
2EEE52:  VADD.F32        S4, S6, S4
2EEE56:  VABS.F32        S2, S2
2EEE5A:  VCMPE.F32       S2, S4
2EEE5E:  VMRS            APSR_nzcv, FPSCR
2EEE62:  IT GE
2EEE64:  POPGE           {R4,R5,R7,PC}
2EEE66:  VMOV.F32        S2, #7.0
2EEE6A:  VCMPE.F32       S0, S2
2EEE6E:  VMRS            APSR_nzcv, FPSCR
2EEE72:  BGE             loc_2EEE7A
2EEE74:  VLDR            S0, =0.0
2EEE78:  B               loc_2EEEA2
2EEE7A:  VMOV.F32        S4, #-7.0
2EEE7E:  VMOV.F32        S6, #-13.0
2EEE82:  VMOV            S2, R3
2EEE86:  VADD.F32        S0, S0, S4
2EEE8A:  VMOV.F32        S4, #1.0
2EEE8E:  VDIV.F32        S0, S0, S6
2EEE92:  VADD.F32        S0, S0, S4
2EEE96:  VLDR            S4, [R2]
2EEE9A:  VMUL.F32        S0, S0, S2
2EEE9E:  VMIN.F32        D0, D2, D0
2EEEA2:  VSTR            S0, [R2]
2EEEA6:  POP             {R4,R5,R7,PC}
