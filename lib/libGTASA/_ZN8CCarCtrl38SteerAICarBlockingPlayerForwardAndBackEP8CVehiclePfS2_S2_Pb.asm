; =========================================================
; Game Engine Function: _ZN8CCarCtrl38SteerAICarBlockingPlayerForwardAndBackEP8CVehiclePfS2_S2_Pb
; Address            : 0x2F5EAC - 0x2F60E8
; =========================================================

2F5EAC:  PUSH            {R4-R7,LR}
2F5EAE:  ADD             R7, SP, #0xC
2F5EB0:  PUSH.W          {R8-R10}
2F5EB4:  VPUSH           {D8-D12}
2F5EB8:  SUB             SP, SP, #0x30
2F5EBA:  LDR.W           R9, [R7,#arg_0]
2F5EBE:  MOV             R6, R0
2F5EC0:  MOVS            R5, #0
2F5EC2:  MOV.W           R0, #0xFFFFFFFF; int
2F5EC6:  STR             R5, [R1]
2F5EC8:  MOV             R8, R3
2F5ECA:  MOV             R10, R2
2F5ECC:  STRB.W          R5, [R9]
2F5ED0:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2F5ED4:  VLDR            S18, [R0]
2F5ED8:  VLDR            S20, [R0,#4]
2F5EDC:  MOV.W           R0, #0xFFFFFFFF; int
2F5EE0:  BLX             j__Z16FindPlayerEntityi; FindPlayerEntity(int)
2F5EE4:  MOV             R4, R0
2F5EE6:  LDR             R0, [R4,#0x14]
2F5EE8:  CBNZ            R0, loc_2F5EFA
2F5EEA:  MOV             R0, R4; this
2F5EEC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2F5EF0:  LDR             R1, [R4,#0x14]; CMatrix *
2F5EF2:  ADDS            R0, R4, #4; this
2F5EF4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2F5EF8:  LDR             R0, [R4,#0x14]
2F5EFA:  LDR             R1, [R6,#0x14]
2F5EFC:  ADD             R2, SP, #0x70+var_50
2F5EFE:  VLDR            S22, [R0,#0x10]
2F5F02:  VLDR            S24, [R0,#0x14]
2F5F06:  LDRD.W          R0, R1, [R1]
2F5F0A:  STM             R2!, {R0,R1,R5}
2F5F0C:  ADD             R0, SP, #0x70+var_50; this
2F5F0E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2F5F12:  LDR             R0, [R6,#0x14]
2F5F14:  LDRD.W          R1, R0, [R0,#0x10]
2F5F18:  STRD.W          R1, R0, [SP,#0x70+var_60]
2F5F1C:  ADD             R0, SP, #0x70+var_60; this
2F5F1E:  STR             R5, [SP,#0x70+var_58]
2F5F20:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2F5F24:  ADD             R0, SP, #0x70+var_6C; int
2F5F26:  MOV.W           R1, #0xFFFFFFFF
2F5F2A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2F5F2E:  VLDR            S16, =0.1
2F5F32:  ADDS            R4, R6, #4
2F5F34:  LDR             R0, [R6,#0x14]
2F5F36:  VMUL.F32        S2, S24, S16
2F5F3A:  MOV             R1, R4
2F5F3C:  VMUL.F32        S0, S22, S16
2F5F40:  CMP             R0, #0
2F5F42:  VLDR            S4, [SP,#0x70+var_64]
2F5F46:  VLDR            S24, =0.0
2F5F4A:  VADD.F32        S20, S20, S2
2F5F4E:  VLDR            S2, [SP,#0x70+var_68]
2F5F52:  VADD.F32        S18, S18, S0
2F5F56:  VLDR            S0, [SP,#0x70+var_6C]
2F5F5A:  IT NE
2F5F5C:  ADDNE.W         R1, R0, #0x30 ; '0'
2F5F60:  VLDR            S12, [SP,#0x70+var_48]
2F5F64:  VLDR            S6, [R1]
2F5F68:  VLDR            S8, [R1,#4]
2F5F6C:  VSUB.F32        S0, S0, S6
2F5F70:  VLDR            S6, [SP,#0x70+var_50]
2F5F74:  VSUB.F32        S2, S2, S8
2F5F78:  VLDR            S8, [SP,#0x70+var_4C]
2F5F7C:  VLDR            S10, [R1,#8]
2F5F80:  VMUL.F32        S14, S20, S8
2F5F84:  VMUL.F32        S1, S18, S6
2F5F88:  VSUB.F32        S4, S4, S10
2F5F8C:  VMUL.F32        S0, S0, S6
2F5F90:  VMUL.F32        S2, S2, S8
2F5F94:  VMUL.F32        S6, S12, S24
2F5F98:  VADD.F32        S8, S1, S14
2F5F9C:  VMUL.F32        S4, S4, S12
2F5FA0:  VADD.F32        S0, S0, S2
2F5FA4:  VADD.F32        S2, S8, S6
2F5FA8:  VADD.F32        S0, S0, S4
2F5FAC:  VLDR            S4, =0.01
2F5FB0:  VCMP.F32        S2, #0.0
2F5FB4:  VMRS            APSR_nzcv, FPSCR
2F5FB8:  VNEG.F32        S0, S0
2F5FBC:  IT EQ
2F5FBE:  VMOVEQ.F32      S2, S4
2F5FC2:  VDIV.F32        S22, S0, S2
2F5FC6:  VCMPE.F32       S22, #0.0
2F5FCA:  VMRS            APSR_nzcv, FPSCR
2F5FCE:  BGE             loc_2F5FD8
2F5FD0:  MOVS            R0, #0
2F5FD2:  STR.W           R0, [R10]
2F5FD6:  B               loc_2F60D8
2F5FD8:  ADD             R0, SP, #0x70+var_6C; int
2F5FDA:  MOV.W           R1, #0xFFFFFFFF
2F5FDE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2F5FE2:  LDR             R0, [R6,#0x14]
2F5FE4:  VLDR            S0, [SP,#0x70+var_60]
2F5FE8:  CMP             R0, #0
2F5FEA:  VLDR            S2, [SP,#0x70+var_5C]
2F5FEE:  VLDR            S4, [SP,#0x70+var_58]
2F5FF2:  VMUL.F32        S14, S18, S0
2F5FF6:  VLDR            S6, [SP,#0x70+var_6C]
2F5FFA:  VMUL.F32        S12, S20, S2
2F5FFE:  VLDR            S8, [SP,#0x70+var_68]
2F6002:  VLDR            S10, [SP,#0x70+var_64]
2F6006:  IT NE
2F6008:  ADDNE.W         R4, R0, #0x30 ; '0'
2F600C:  VLDR            S1, [R4]
2F6010:  VLDR            S3, [R4,#4]
2F6014:  VSUB.F32        S6, S6, S1
2F6018:  VLDR            S5, [R4,#8]
2F601C:  VSUB.F32        S8, S8, S3
2F6020:  VLDR            S7, [R6,#0x48]
2F6024:  VLDR            S9, [R6,#0x4C]
2F6028:  VADD.F32        S12, S14, S12
2F602C:  VMUL.F32        S3, S0, S7
2F6030:  VLDR            S11, [R6,#0x50]
2F6034:  VMUL.F32        S1, S2, S9
2F6038:  VMUL.F32        S7, S4, S24
2F603C:  VSUB.F32        S10, S10, S5
2F6040:  VMUL.F32        S0, S6, S0
2F6044:  VMUL.F32        S2, S8, S2
2F6048:  VMUL.F32        S6, S4, S11
2F604C:  VADD.F32        S8, S3, S1
2F6050:  VADD.F32        S12, S12, S7
2F6054:  VMUL.F32        S4, S10, S4
2F6058:  VADD.F32        S0, S0, S2
2F605C:  VADD.F32        S2, S8, S6
2F6060:  VMUL.F32        S6, S22, S12
2F6064:  VADD.F32        S0, S0, S4
2F6068:  VMUL.F32        S4, S22, S2
2F606C:  VADD.F32        S0, S0, S6
2F6070:  VSUB.F32        S0, S0, S4
2F6074:  VCMPE.F32       S0, #0.0
2F6078:  VMRS            APSR_nzcv, FPSCR
2F607C:  BLE             loc_2F608C
2F607E:  VMOV.F32        S2, #1.0
2F6082:  VMUL.F32        S0, S0, S16
2F6086:  VMIN.F32        D0, D0, D1
2F608A:  B               loc_2F60D2
2F608C:  VCMPE.F32       S2, #0.0
2F6090:  VMRS            APSR_nzcv, FPSCR
2F6094:  BLE             loc_2F60C6
2F6096:  VLDR            S2, =-0.1
2F609A:  VMOV.F32        S6, #1.0
2F609E:  VLDR            S4, =0.95
2F60A2:  MOVS            R0, #0
2F60A4:  VMUL.F32        S0, S0, S2
2F60A8:  STR.W           R0, [R10]
2F60AC:  VMIN.F32        D0, D0, D3
2F60B0:  VCMPE.F32       S0, S4
2F60B4:  VSTR            S0, [R8]
2F60B8:  VMRS            APSR_nzcv, FPSCR
2F60BC:  ITT GT
2F60BE:  MOVGT           R0, #1
2F60C0:  STRBGT.W        R0, [R9]
2F60C4:  B               loc_2F60DC
2F60C6:  VMOV.F32        S2, #-1.0
2F60CA:  VMUL.F32        S0, S0, S16
2F60CE:  VMAX.F32        D0, D0, D1
2F60D2:  MOVS            R0, #0
2F60D4:  VSTR            S0, [R10]
2F60D8:  STR.W           R0, [R8]
2F60DC:  ADD             SP, SP, #0x30 ; '0'
2F60DE:  VPOP            {D8-D12}
2F60E2:  POP.W           {R8-R10}
2F60E6:  POP             {R4-R7,PC}
