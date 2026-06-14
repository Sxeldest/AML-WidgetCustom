; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline25pluginEnvMatStreamWriteCBEP8RwStreamiPKvii
; Address            : 0x2CCA40 - 0x2CCACA
; =========================================================

2CCA40:  PUSH            {R4,R6,R7,LR}
2CCA42:  ADD             R7, SP, #8
2CCA44:  SUB             SP, SP, #0x18
2CCA46:  MOV             R4, R0
2CCA48:  LDR             R0, [R2,R3]
2CCA4A:  MOV             R12, R1
2CCA4C:  VMOV.F32        S0, #0.125
2CCA50:  MOV             R2, R12; size_t
2CCA52:  LDRSB.W         R1, [R0]
2CCA56:  VMOV            S2, R1
2CCA5A:  VCVT.F32.S32    S2, S2
2CCA5E:  VMUL.F32        S2, S2, S0
2CCA62:  VSTR            S2, [SP,#0x20+var_20]
2CCA66:  LDRSB.W         R1, [R0,#1]
2CCA6A:  VMOV            S2, R1
2CCA6E:  VCVT.F32.S32    S2, S2
2CCA72:  VMUL.F32        S2, S2, S0
2CCA76:  VSTR            S2, [SP,#0x20+var_1C]
2CCA7A:  LDRSB.W         R1, [R0,#2]
2CCA7E:  VMOV            S2, R1
2CCA82:  VCVT.F32.S32    S2, S2
2CCA86:  VMUL.F32        S2, S2, S0
2CCA8A:  VSTR            S2, [SP,#0x20+var_18]
2CCA8E:  LDRSB.W         R1, [R0,#3]
2CCA92:  VMOV            S2, R1
2CCA96:  VCVT.F32.S32    S2, S2
2CCA9A:  VMUL.F32        S0, S2, S0
2CCA9E:  VLDR            S2, =0.0039216
2CCAA2:  VSTR            S0, [SP,#0x20+var_14]
2CCAA6:  LDRB            R1, [R0,#4]
2CCAA8:  VMOV            S0, R1
2CCAAC:  MOV             R1, SP; void *
2CCAAE:  VCVT.F32.U32    S0, S0
2CCAB2:  VMUL.F32        S0, S0, S2
2CCAB6:  VSTR            S0, [SP,#0x20+var_10]
2CCABA:  LDR             R0, [R0,#8]
2CCABC:  STR             R0, [SP,#0x20+var_C]
2CCABE:  MOV             R0, R4; int
2CCAC0:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
2CCAC4:  MOV             R0, R4
2CCAC6:  ADD             SP, SP, #0x18
2CCAC8:  POP             {R4,R6,R7,PC}
