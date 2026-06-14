; =========================================================
; Game Engine Function: _ZN7CClouds16MovingFog_UpdateEv
; Address            : 0x5A1A04 - 0x5A1BA0
; =========================================================

5A1A04:  LDR             R0, =(_ZN8CWeather12Foggyness_SFE_ptr - 0x5A1A0A)
5A1A06:  ADD             R0, PC; _ZN8CWeather12Foggyness_SFE_ptr
5A1A08:  LDR             R0, [R0]; CWeather::Foggyness_SF ...
5A1A0A:  VLDR            S0, [R0]
5A1A0E:  VCMP.F32        S0, #0.0
5A1A12:  VMRS            APSR_nzcv, FPSCR
5A1A16:  IT EQ
5A1A18:  BXEQ            LR
5A1A1A:  PUSH            {R4-R7,LR}
5A1A1C:  ADD             R7, SP, #0x14+var_8
5A1A1E:  PUSH.W          {R8-R11}
5A1A22:  SUB             SP, SP, #4
5A1A24:  VPUSH           {D8-D13}
5A1A28:  SUB             SP, SP, #0x18
5A1A2A:  LDR             R0, =(TheCamera_ptr - 0x5A1A34)
5A1A2C:  MOVS            R5, #0x32 ; '2'
5A1A2E:  LDR             R2, =(_ZN7CClouds5ms_mfE_ptr - 0x5A1A38)
5A1A30:  ADD             R0, PC; TheCamera_ptr
5A1A32:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x5A1A3C)
5A1A34:  ADD             R2, PC; _ZN7CClouds5ms_mfE_ptr
5A1A36:  LDR             R0, [R0]; TheCamera
5A1A38:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
5A1A3A:  LDR             R2, [R2]; CClouds::ms_mf ...
5A1A3C:  LDR             R1, [R1]; MobileSettings::settings ...
5A1A3E:  ADD.W           R6, R2, #0x4E8
5A1A42:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
5A1A44:  ADDW            R2, R2, #0x4E4
5A1A48:  VLDR            S16, [R6]
5A1A4C:  ADD.W           R6, R3, #0x30 ; '0'
5A1A50:  CMP             R3, #0
5A1A52:  LDR             R1, [R1,#(dword_6E03FC - 0x6E03F4)]; CVector *
5A1A54:  IT EQ
5A1A56:  ADDEQ           R6, R0, #4
5A1A58:  VLDR            S18, [R2]
5A1A5C:  VLDR            D16, [R6]
5A1A60:  CMP             R1, #0
5A1A62:  LDR             R0, [R6,#(dword_951FB4 - 0x951FAC)]
5A1A64:  STR             R0, [SP,#0x70+var_60]
5A1A66:  VSTR            D16, [SP,#0x70+var_68]
5A1A6A:  IT EQ
5A1A6C:  MOVEQ           R5, #0x19
5A1A6E:  ADD.W           R0, R5, R5,LSL#1
5A1A72:  CMP             R1, #1
5A1A74:  IT EQ
5A1A76:  LSREQ           R5, R0, #2
5A1A78:  CMP             R5, #0
5A1A7A:  BEQ.W           loc_5A1B8E
5A1A7E:  LDR             R0, =(_ZN7CClouds5ms_mfE_ptr - 0x5A1A90)
5A1A80:  MOV.W           R11, #0
5A1A84:  VLDR            S20, [SP,#0x70+var_68]
5A1A88:  MOV.W           R9, #0
5A1A8C:  ADD             R0, PC; _ZN7CClouds5ms_mfE_ptr
5A1A8E:  VLDR            S22, [SP,#0x70+var_68+4]
5A1A92:  VLDR            S24, [SP,#0x70+var_60]
5A1A96:  MOV.W           R8, #0
5A1A9A:  LDR             R6, [R0]; CClouds::ms_mf ...
5A1A9C:  LDR             R0, =(_ZN7CClouds5ms_mfE_ptr - 0x5A1AA6)
5A1A9E:  VLDR            S26, =60.0
5A1AA2:  ADD             R0, PC; _ZN7CClouds5ms_mfE_ptr
5A1AA4:  LDR.W           R10, [R0]; CClouds::ms_mf ...
5A1AA8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5A1AAE)
5A1AAA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5A1AAC:  LDR             R4, [R0]; CTimer::ms_fTimeStep ...
5A1AAE:  LDR             R0, =(_ZN7CClouds5ms_mfE_ptr - 0x5A1AB4)
5A1AB0:  ADD             R0, PC; _ZN7CClouds5ms_mfE_ptr
5A1AB2:  LDR             R0, [R0]; CClouds::ms_mf ...
5A1AB4:  STR             R0, [SP,#0x70+var_70]
5A1AB6:  LDR             R0, =(_ZN7CClouds5ms_mfE_ptr - 0x5A1ABC)
5A1AB8:  ADD             R0, PC; _ZN7CClouds5ms_mfE_ptr
5A1ABA:  LDR             R0, [R0]; CClouds::ms_mf ...
5A1ABC:  STR             R0, [SP,#0x70+var_6C]
5A1ABE:  LDRB.W          R0, [R6,R8]
5A1AC2:  CMP             R0, #0
5A1AC4:  BEQ             loc_5A1B54
5A1AC6:  ADD.W           R1, R6, R11
5A1ACA:  ADD.W           R0, R10, R9
5A1ACE:  ADD.W           R2, R0, #0x4F0
5A1AD2:  VLDR            S0, [R1,#0x34]
5A1AD6:  VLDR            S2, [R1,#0x38]
5A1ADA:  VSUB.F32        S8, S0, S20
5A1ADE:  VLDR            S4, [R1,#0x3C]
5A1AE2:  VSUB.F32        S6, S2, S22
5A1AE6:  VSUB.F32        S4, S4, S24
5A1AEA:  VMUL.F32        S8, S8, S8
5A1AEE:  VMUL.F32        S6, S6, S6
5A1AF2:  VMUL.F32        S4, S4, S4
5A1AF6:  VADD.F32        S6, S8, S6
5A1AFA:  VADD.F32        S4, S6, S4
5A1AFE:  VLDR            S6, [R2]
5A1B02:  VMUL.F32        S8, S18, S6
5A1B06:  VMUL.F32        S6, S16, S6
5A1B0A:  VSQRT.F32       S4, S4
5A1B0E:  VADD.F32        S0, S0, S8
5A1B12:  VADD.F32        S2, S6, S2
5A1B16:  VCMPE.F32       S4, S26
5A1B1A:  VMRS            APSR_nzcv, FPSCR
5A1B1E:  VSTR            S0, [R1,#0x34]
5A1B22:  VSTR            S2, [R1,#0x38]
5A1B26:  VLDR            S0, [R0,#0x354]
5A1B2A:  VLDR            S2, [R4]
5A1B2E:  BLE             loc_5A1B5C
5A1B30:  VSUB.F32        S0, S0, S2
5A1B34:  VCMPE.F32       S0, #0.0
5A1B38:  VSTR            S0, [R0,#0x354]
5A1B3C:  VMRS            APSR_nzcv, FPSCR
5A1B40:  BGT             loc_5A1B7E
5A1B42:  CMP.W           R8, #0x31 ; '1'
5A1B46:  MOV             R0, R8
5A1B48:  IT GE
5A1B4A:  MOVGE           R0, #0x31 ; '1'
5A1B4C:  LDR             R2, [SP,#0x70+var_70]
5A1B4E:  MOVS            R1, #0
5A1B50:  STRB            R1, [R2,R0]
5A1B52:  B               loc_5A1B7E
5A1B54:  ADD             R0, SP, #0x70+var_68; this
5A1B56:  BLX.W           j__ZN7CClouds16MovingFog_CreateEP7CVector; CClouds::MovingFog_Create(CVector *)
5A1B5A:  B               loc_5A1B7E
5A1B5C:  VADD.F32        S2, S2, S0
5A1B60:  LDR             R1, [SP,#0x70+var_6C]
5A1B62:  ADD             R1, R9
5A1B64:  ADDW            R1, R1, #0x41C
5A1B68:  VSTR            S2, [R0,#0x354]
5A1B6C:  VLDR            S0, [R1]
5A1B70:  VCMPE.F32       S2, S0
5A1B74:  VMRS            APSR_nzcv, FPSCR
5A1B78:  IT GT
5A1B7A:  VSTRGT          S0, [R0,#0x354]
5A1B7E:  ADD.W           R8, R8, #1
5A1B82:  ADD.W           R11, R11, #0xC
5A1B86:  ADD.W           R9, R9, #4
5A1B8A:  CMP             R8, R5
5A1B8C:  BLT             loc_5A1ABE
5A1B8E:  ADD             SP, SP, #0x18
5A1B90:  VPOP            {D8-D13}
5A1B94:  ADD             SP, SP, #4
5A1B96:  POP.W           {R8-R11}
5A1B9A:  POP.W           {R4-R7,LR}
5A1B9E:  BX              LR
