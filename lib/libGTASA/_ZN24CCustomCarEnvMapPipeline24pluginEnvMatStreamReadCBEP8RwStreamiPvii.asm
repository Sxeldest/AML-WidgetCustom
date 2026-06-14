; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline24pluginEnvMatStreamReadCBEP8RwStreamiPvii
; Address            : 0x2CC8E4 - 0x2CCA26
; =========================================================

2CC8E4:  PUSH            {R4-R7,LR}
2CC8E6:  ADD             R7, SP, #0xC
2CC8E8:  PUSH.W          {R8,R9,R11}
2CC8EC:  SUB             SP, SP, #0x28
2CC8EE:  MOV             R9, R2
2CC8F0:  MOV             R2, R1; size_t
2CC8F2:  ADD             R1, SP, #0x40+var_30; void *
2CC8F4:  MOVS            R5, #0
2CC8F6:  MOV             R8, R3
2CC8F8:  MOV             R4, R0
2CC8FA:  STR             R5, [SP,#0x40+var_1C]
2CC8FC:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2CC900:  VLDR            S0, [SP,#0x40+var_20]
2CC904:  VLDR            S4, =255.0
2CC908:  VCVT.S32.F32    S2, S0
2CC90C:  VMOV            R0, S2
2CC910:  CMP             R0, #0
2CC912:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CC932)
2CC914:  ITTT NE
2CC916:  VCVTNE.F32.S32  S2, S2
2CC91A:  VSUBNE.F32      S0, S0, S2
2CC91E:  VSTRNE          S0, [SP,#0x40+var_20]
2CC922:  VMOV.F32        S2, #8.0
2CC926:  VLDR            S6, [SP,#0x40+var_30]
2CC92A:  VLDR            S10, [SP,#0x40+var_28]
2CC92E:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CC930:  VMUL.F32        S0, S0, S4
2CC934:  LDR             R1, [SP,#0x40+var_1C]
2CC936:  VLDR            S8, [SP,#0x40+var_2C]
2CC93A:  VLDR            S12, [SP,#0x40+var_24]
2CC93E:  VMUL.F32        S4, S10, S2
2CC942:  VMUL.F32        S6, S6, S2
2CC946:  VCVT.U32.F32    S0, S0
2CC94A:  STR             R1, [SP,#0x40+var_38]
2CC94C:  LDR             R1, [R0]; void *
2CC94E:  VMUL.F32        S8, S8, S2
2CC952:  VMUL.F32        S2, S12, S2
2CC956:  VCVT.S32.F32    S4, S4
2CC95A:  VCVT.S32.F32    S6, S6
2CC95E:  VCVT.S32.F32    S8, S8
2CC962:  VMOV            R0, S6
2CC966:  STRB.W          R0, [SP,#0x40+var_40]
2CC96A:  VMOV            R0, S8
2CC96E:  VCVT.S32.F32    S2, S2
2CC972:  VMOV            R2, S2
2CC976:  STRB.W          R0, [SP,#0x40+var_40+1]
2CC97A:  VMOV            R0, S4
2CC97E:  STRB.W          R0, [SP,#0x40+var_40+2]
2CC982:  MOV             R0, SP; void *
2CC984:  STRB.W          R2, [SP,#0x40+var_40+3]
2CC988:  VMOV            R2, S0
2CC98C:  STRB.W          R2, [SP,#0x40+var_40+4]
2CC990:  MOVS            R2, #0xC; size_t
2CC992:  STRH.W          R5, [SP,#0x40+var_40+6]
2CC996:  BLX             memcmp
2CC99A:  CMP             R0, #0
2CC99C:  BEQ             loc_2CCA02
2CC99E:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr - 0x2CC9A6)
2CC9A0:  MOVS            R3, #0
2CC9A2:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr
2CC9A4:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool ...
2CC9A6:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool
2CC9A8:  LDRD.W          R2, R1, [R0,#8]
2CC9AC:  ADDS            R1, #1
2CC9AE:  STR             R1, [R0,#0xC]
2CC9B0:  CMP             R1, R2
2CC9B2:  BNE             loc_2CC9BE
2CC9B4:  MOVS            R1, #0
2CC9B6:  LSLS            R3, R3, #0x1F
2CC9B8:  STR             R1, [R0,#0xC]
2CC9BA:  BNE             loc_2CCA08
2CC9BC:  MOVS            R3, #1
2CC9BE:  LDR             R5, [R0,#4]
2CC9C0:  LDRSB           R6, [R5,R1]
2CC9C2:  CMP.W           R6, #0xFFFFFFFF
2CC9C6:  BGT             loc_2CC9AC
2CC9C8:  AND.W           R2, R6, #0x7F
2CC9CC:  STRB            R2, [R5,R1]
2CC9CE:  LDR             R1, [R0,#4]
2CC9D0:  LDR             R2, [R0,#0xC]
2CC9D2:  LDRB            R3, [R1,R2]
2CC9D4:  AND.W           R6, R3, #0x80
2CC9D8:  ADDS            R3, #1
2CC9DA:  AND.W           R3, R3, #0x7F
2CC9DE:  ORRS            R3, R6
2CC9E0:  STRB            R3, [R1,R2]
2CC9E2:  LDR             R1, [R0]
2CC9E4:  LDR             R0, [R0,#0xC]
2CC9E6:  ADD.W           R0, R0, R0,LSL#1
2CC9EA:  ADD.W           R0, R1, R0,LSL#2
2CC9EE:  STR.W           R0, [R9,R8]
2CC9F2:  CBZ             R0, loc_2CCA12
2CC9F4:  VLDR            D16, [SP,#0x40+var_40]
2CC9F8:  LDR             R1, [SP,#0x40+var_38]
2CC9FA:  STR             R1, [R0,#8]
2CC9FC:  VSTR            D16, [R0]
2CCA00:  B               loc_2CCA1C
2CCA02:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CCA08)
2CCA04:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CCA06:  B               loc_2CCA16
2CCA08:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CCA12)
2CCA0A:  STR.W           R1, [R9,R8]
2CCA0E:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CCA10:  B               loc_2CCA16
2CCA12:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CCA18)
2CCA14:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CCA16:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CCA18:  STR.W           R0, [R9,R8]
2CCA1C:  MOV             R0, R4
2CCA1E:  ADD             SP, SP, #0x28 ; '('
2CCA20:  POP.W           {R8,R9,R11}
2CCA24:  POP             {R4-R7,PC}
