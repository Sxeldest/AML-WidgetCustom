; =========================================================
; Game Engine Function: _ZN4CCam20Process_FollowPed_SAERK7CVectorfffb
; Address            : 0x3C2D50 - 0x3C4C9E
; =========================================================

3C2D50:  PUSH            {R4-R7,LR}
3C2D52:  ADD             R7, SP, #0xC
3C2D54:  PUSH.W          {R8-R11}
3C2D58:  SUB             SP, SP, #4
3C2D5A:  VPUSH           {D8-D15}
3C2D5E:  SUB             SP, SP, #0xA0; int
3C2D60:  MOV             R10, R0
3C2D62:  MOV             R5, R1
3C2D64:  LDR.W           R0, [R10,#0x1F4]; this
3C2D68:  LDRB.W          R1, [R0,#0x3A]
3C2D6C:  AND.W           R1, R1, #7
3C2D70:  CMP             R1, #3
3C2D72:  BNE.W           loc_3C4C60
3C2D76:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3C2D7A:  CMP             R0, #1
3C2D7C:  BNE.W           loc_3C4C60
3C2D80:  MOVS            R0, #0; this
3C2D82:  LDR.W           R8, [R10,#0x1F4]
3C2D86:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C2D8A:  MOV             R6, R0
3C2D8C:  LDR.W           R0, [R8,#0x59C]
3C2D90:  LDR.W           R4, [R8,#0x440]
3C2D94:  CMP             R0, #1
3C2D96:  BNE             loc_3C2DA0
3C2D98:  MOVS            R0, #(stderr+1); this
3C2D9A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C2D9E:  MOV             R6, R0
3C2DA0:  LDR.W           R1, =(_ZN5CGame8currAreaE_ptr - 0x3C2DAC)
3C2DA4:  LDR.W           R0, =(TheCamera_ptr - 0x3C2DB0)
3C2DA8:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
3C2DAA:  LDR             R2, [R5,#8]
3C2DAC:  ADD             R0, PC; TheCamera_ptr
3C2DAE:  LDR.W           R3, =(PEDCAM_SET_ptr - 0x3C2DBA)
3C2DB2:  LDR             R1, [R1]; CGame::currArea ...
3C2DB4:  LDR             R0, [R0]; TheCamera
3C2DB6:  ADD             R3, PC; PEDCAM_SET_ptr
3C2DB8:  VLDR            D16, [R5]
3C2DBC:  STR             R2, [SP,#0x100+var_88]
3C2DBE:  LDR             R2, [R1]; CGame::currArea
3C2DC0:  VSTR            D16, [SP,#0x100+var_90]
3C2DC4:  CMP             R2, #0
3C2DC6:  LDR.W           R0, [R0,#(dword_95206C - 0x951FA8)]
3C2DCA:  STR             R2, [SP,#0x100+var_B4]
3C2DCC:  IT NE
3C2DCE:  MOVNE           R2, #1
3C2DD0:  LDR             R1, [R3]; PEDCAM_SET
3C2DD2:  RSB.W           R11, R2, R2,LSL#4
3C2DD6:  CMP             R0, #3
3C2DD8:  ADD.W           R1, R1, R11,LSL#2
3C2DDC:  VLDR            S16, [R1,#4]
3C2DE0:  ITT EQ
3C2DE2:  LDREQ.W         R1, [R8,#0x484]
3C2DE6:  ANDSEQ.W        R1, R1, #1
3C2DEA:  BNE             loc_3C2E0A
3C2DEC:  MOV             R0, R4; this
3C2DEE:  BLX             j__ZNK16CPedIntelligence17GetUsingParachuteEv; CPedIntelligence::GetUsingParachute(void)
3C2DF2:  LDR.W           R1, =(TheCamera_ptr - 0x3C2E00)
3C2DF6:  VADD.F32        S0, S16, S16
3C2DFA:  CMP             R0, #0
3C2DFC:  ADD             R1, PC; TheCamera_ptr
3C2DFE:  LDR             R0, [R1]; TheCamera
3C2E00:  IT NE
3C2E02:  VMOVNE.F32      S16, S0
3C2E06:  LDR.W           R0, [R0,#(dword_95206C - 0x951FA8)]
3C2E0A:  ADDW            R1, R8, #0x484
3C2E0E:  STR             R1, [SP,#0x100+var_B0]
3C2E10:  LDR.W           R1, =(TheCamera_ptr - 0x3C2E1C)
3C2E14:  LDR.W           R2, =(gLastCamDist_ptr - 0x3C2E22)
3C2E18:  ADD             R1, PC; TheCamera_ptr
3C2E1A:  LDR.W           R3, =(PEDCAM_SET_ptr - 0x3C2E26)
3C2E1E:  ADD             R2, PC; gLastCamDist_ptr
3C2E20:  LDR             R1, [R1]; TheCamera
3C2E22:  ADD             R3, PC; PEDCAM_SET_ptr
3C2E24:  VLDR            S0, [R1,#0xD0]
3C2E28:  LDR             R1, [R2]; gLastCamDist
3C2E2A:  VADD.F32        S16, S16, S0
3C2E2E:  LDR             R2, [R3]; PEDCAM_SET
3C2E30:  VLDR            S0, [R1]
3C2E34:  ADD.W           R2, R2, R11,LSL#2
3C2E38:  VLDR            S2, [R2,#0x38]
3C2E3C:  VLDR            S21, [R2,#8]
3C2E40:  VLDR            S26, [R2,#0xC]
3C2E44:  VCMPE.F32       S16, S0
3C2E48:  VLDR            S18, [R2,#0x10]
3C2E4C:  VMRS            APSR_nzcv, FPSCR
3C2E50:  VLDR            S20, [R2,#0x34]
3C2E54:  VSTR            S2, [SP,#0x100+var_CC]
3C2E58:  IT GT
3C2E5A:  VMOVGT.F32      S26, S16
3C2E5E:  CMP             R0, #3
3C2E60:  VSTR            S16, [R1]
3C2E64:  STR             R2, [SP,#0x100+var_D0]
3C2E66:  BEQ             loc_3C2E76
3C2E68:  CMP             R0, #2
3C2E6A:  BEQ             loc_3C2E7C
3C2E6C:  CMP             R0, #1
3C2E6E:  BNE             loc_3C2E92
3C2E70:  ADD.W           R0, R10, #0xC0
3C2E74:  B               loc_3C2E8A
3C2E76:  ADD.W           R0, R10, #0xCC
3C2E7A:  B               loc_3C2E8A
3C2E7C:  LDR             R0, [SP,#0x100+var_B4]
3C2E7E:  CMP             R0, #0
3C2E80:  ITE EQ
3C2E82:  ADDEQ.W         R0, R10, #0xC4
3C2E86:  ADDNE.W         R0, R10, #0xC8
3C2E8A:  VLDR            S0, [R0]
3C2E8E:  VADD.F32        S21, S21, S0
3C2E92:  MOV             R0, R4; this
3C2E94:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
3C2E98:  CMP             R0, #0
3C2E9A:  STR             R4, [SP,#0x100+var_AC]
3C2E9C:  VSTR            S20, [SP,#0x100+var_C8]
3C2EA0:  BEQ             loc_3C2EF2
3C2EA2:  MOV             R0, R4; this
3C2EA4:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
3C2EA8:  MOV             R1, R4
3C2EAA:  LDRH            R4, [R0,#0xA]
3C2EAC:  MOV             R0, R1; this
3C2EAE:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
3C2EB2:  LDRH            R0, [R0,#0xA]
3C2EB4:  VMOV.F32        S23, #0.5
3C2EB8:  VLDR            S0, =0.0
3C2EBC:  VMOV.F32        S28, #1.0
3C2EC0:  CMP             R0, #4
3C2EC2:  IT EQ
3C2EC4:  VMOVEQ.F32      S23, S0
3C2EC8:  CMP             R4, #0
3C2ECA:  IT EQ
3C2ECC:  VMOVEQ.F32      S28, S0
3C2ED0:  LDR.W           R0, =(TheCamera_ptr - 0x3C2ED8)
3C2ED4:  ADD             R0, PC; TheCamera_ptr
3C2ED6:  LDR             R1, [R0]; TheCamera
3C2ED8:  LDRB.W          R0, [R10,#0xA]
3C2EDC:  LDRB.W          R1, [R1,#(byte_951FFE - 0x951FA8)]
3C2EE0:  CBNZ            R1, loc_3C2F5E
3C2EE2:  CBZ             R0, loc_3C2F2E
3C2EE4:  MOVS            R0, #0x428C0000
3C2EEA:  STR.W           R0, [R10,#0x8C]
3C2EEE:  MOVS            R0, #1
3C2EF0:  B               loc_3C2F5E
3C2EF2:  MOV             R0, R4; this
3C2EF4:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
3C2EF8:  VLDR            S28, =0.0
3C2EFC:  CMP             R0, #0
3C2EFE:  BEQ.W           loc_3C36B0
3C2F02:  LDR             R0, [SP,#0x100+var_B0]
3C2F04:  VMOV.F32        S23, S28
3C2F08:  LDRB            R0, [R0]
3C2F0A:  LSLS            R0, R0, #0x1F
3C2F0C:  BNE             loc_3C2ED0
3C2F0E:  MOV             R0, R6; this
3C2F10:  BLX             j__ZN4CPad15GetJetpackHoverEv; CPad::GetJetpackHover(void)
3C2F14:  VLDR            S0, =0.0
3C2F18:  VMOV.F32        S23, #3.0
3C2F1C:  VMOV.F32        S28, #0.5
3C2F20:  CMP             R0, #0
3C2F22:  ITT NE
3C2F24:  VMOVNE.F32      S23, S0
3C2F28:  VMOVNE.F32      S28, S0
3C2F2C:  B               loc_3C2ED0
3C2F2E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C2F3A)
3C2F32:  VLDR            S2, [R10,#0x8C]
3C2F36:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C2F38:  VLDR            S4, =70.0
3C2F3C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C2F3E:  VLDR            S6, [R0]
3C2F42:  MOVS            R0, #0
3C2F44:  VADD.F32        S0, S6, S2
3C2F48:  VCMPE.F32       S0, S4
3C2F4C:  VMRS            APSR_nzcv, FPSCR
3C2F50:  ITT GE
3C2F52:  VSUBGE.F32      S0, S2, S6
3C2F56:  VMAXGE.F32      D0, D0, D2
3C2F5A:  VSTR            S0, [R10,#0x8C]
3C2F5E:  LDR.W           R1, =(PEDCAM_SET_ptr - 0x3C2F70)
3C2F62:  VMAX.F32        D16, D8, D9
3C2F66:  VLDR            S0, [SP,#0x100+var_88]
3C2F6A:  CMP             R0, #0
3C2F6C:  ADD             R1, PC; PEDCAM_SET_ptr
3C2F6E:  LDR             R4, [R7,#arg_4]
3C2F70:  LDR             R1, [R1]; PEDCAM_SET
3C2F72:  VSTR            D16, [SP,#0x100+var_C0]
3C2F76:  ADD.W           R5, R1, R11,LSL#2
3C2F7A:  VLDR            S2, [R5]
3C2F7E:  VADD.F32        S24, S2, S0
3C2F82:  VSTR            S24, [SP,#0x100+var_88]
3C2F86:  BEQ.W           loc_3C30A8
3C2F8A:  CMP             R4, #1
3C2F8C:  BNE             loc_3C2FDA
3C2F8E:  LDR.W           R0, [R8,#0x14]
3C2F92:  LDR.W           R2, =(dword_952D58 - 0x3C2FA4)
3C2F96:  LDR.W           R1, =(dword_952D64 - 0x3C2FAC)
3C2F9A:  ADD.W           R3, R0, #0x30 ; '0'
3C2F9E:  CMP             R0, #0
3C2FA0:  ADD             R2, PC; dword_952D58
3C2FA2:  IT EQ
3C2FA4:  ADDEQ.W         R3, R8, #4
3C2FA8:  ADD             R1, PC; dword_952D64
3C2FAA:  VLDR            D16, [R3]
3C2FAE:  LDR             R0, [R3,#8]
3C2FB0:  STR             R0, [R2,#(dword_952D60 - 0x952D58)]
3C2FB2:  MOVS            R0, #0
3C2FB4:  STRD.W          R0, R0, [R1]
3C2FB8:  STR             R0, [R1,#(dword_952D6C - 0x952D64)]
3C2FBA:  VSTR            D16, [R2]
3C2FBE:  VLDR            D16, [R3]
3C2FC2:  LDR             R0, [R3,#8]
3C2FC4:  STR             R0, [SP,#0x100+var_88]
3C2FC6:  VSTR            D16, [SP,#0x100+var_90]
3C2FCA:  VLDR            S0, [SP,#0x100+var_88]
3C2FCE:  VLDR            S2, [R5]
3C2FD2:  VADD.F32        S24, S2, S0
3C2FD6:  VSTR            S24, [SP,#0x100+var_88]
3C2FDA:  LDR.W           R0, =(TheCamera_ptr - 0x3C2FE8)
3C2FDE:  MOVS            R5, #0
3C2FE0:  STR             R6, [SP,#0x100+var_C4]
3C2FE2:  MOVS            R1, #1; bool
3C2FE4:  ADD             R0, PC; TheCamera_ptr
3C2FE6:  MOVS            R6, #1
3C2FE8:  LDR             R0, [R0]; TheCamera
3C2FEA:  STR.W           R5, [R0,#(dword_952B84 - 0x951FA8)]
3C2FEE:  STR.W           R5, [R0,#(dword_952B88 - 0x951FA8)]
3C2FF2:  LDR.W           R0, [R8,#0x440]; this
3C2FF6:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
3C2FFA:  CBZ             R0, loc_3C305C
3C2FFC:  LDR             R1, [SP,#0x100+var_B0]
3C2FFE:  LDRB            R1, [R1,#3]
3C3000:  LSLS            R1, R1, #0x1D
3C3002:  BPL             loc_3C305C
3C3004:  LDRB            R0, [R0,#0x19]
3C3006:  CBNZ            R0, loc_3C305C
3C3008:  VLDR            S0, [R8,#0x48]
3C300C:  MOVW            R1, #0x3333
3C3010:  VLDR            S2, [R8,#0x4C]
3C3014:  MOVT            R1, #0xBEB3
3C3018:  VMUL.F32        S0, S0, S0
3C301C:  VLDR            S4, [R8,#0x50]
3C3020:  VMUL.F32        S2, S2, S2
3C3024:  LDR.W           R0, =(TheCamera_ptr - 0x3C3030)
3C3028:  VMUL.F32        S4, S4, S4
3C302C:  ADD             R0, PC; TheCamera_ptr
3C302E:  LDR             R0, [R0]; TheCamera
3C3030:  VADD.F32        S0, S0, S2
3C3034:  VLDR            S2, =0.000001
3C3038:  STR.W           R1, [R0,#(dword_952B88 - 0x951FA8)]
3C303C:  ADR.W           R1, dword_3C3C94
3C3040:  ADDW            R0, R0, #0xBDC
3C3044:  VADD.F32        S0, S0, S4
3C3048:  VCMPE.F32       S0, S2
3C304C:  VMRS            APSR_nzcv, FPSCR
3C3050:  IT GT
3C3052:  ADDGT           R1, #4
3C3054:  VLDR            S0, [R1]
3C3058:  VSTR            S0, [R0]
3C305C:  LDR.W           R0, =(gForceCamBehindPlayer_ptr - 0x3C3068)
3C3060:  LDR.W           R1, =(TheCamera_ptr - 0x3C306E)
3C3064:  ADD             R0, PC; gForceCamBehindPlayer_ptr
3C3066:  STR.W           R8, [SP,#0x100+var_A8]
3C306A:  ADD             R1, PC; TheCamera_ptr
3C306C:  STRB.W          R5, [R10,#0xC]
3C3070:  LDR             R0, [R0]; gForceCamBehindPlayer
3C3072:  LDR             R1, [R1]; TheCamera
3C3074:  STRB            R5, [R0]
3C3076:  STRB.W          R6, [R10,#3]
3C307A:  LDRB.W          R0, [R1,#(byte_951FCE - 0x951FA8)]
3C307E:  CMP             R0, #0
3C3080:  IT NE
3C3082:  MOVNE           R0, #1
3C3084:  ORRS.W          R8, R0, R4
3C3088:  BNE.W           loc_3C3240
3C308C:  LDR             R1, [SP,#0x100+var_A8]
3C308E:  LDR             R0, [R1,#0x14]
3C3090:  CMP             R0, #0
3C3092:  BEQ.W           loc_3C3216
3C3096:  LDRD.W          R2, R1, [R0,#0x10]; x
3C309A:  EOR.W           R0, R2, #0x80000000; y
3C309E:  BLX             atan2f
3C30A2:  VMOV            S0, R0
3C30A6:  B               loc_3C321A
3C30A8:  MOV.W           R0, #0xFFFFFFFF; int
3C30AC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C30B0:  CBZ             R0, loc_3C30E8
3C30B2:  MOV.W           R0, #0xFFFFFFFF; int
3C30B6:  MOVS            R1, #0; bool
3C30B8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C30BC:  CBZ             R0, loc_3C30E8
3C30BE:  LDR.W           R0, [R0,#0x5A4]
3C30C2:  SUBS            R0, #3
3C30C4:  CMP             R0, #2
3C30C6:  BCC.W           loc_3C2F8A
3C30CA:  LDR.W           R0, =(currentPad_ptr - 0x3C30D2)
3C30CE:  ADD             R0, PC; currentPad_ptr
3C30D0:  LDR             R0, [R0]; currentPad
3C30D2:  LDR             R0, [R0]
3C30D4:  CMP             R0, #0
3C30D6:  ITT EQ
3C30D8:  MOVEQ           R0, #0; this
3C30DA:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C30DE:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
3C30E2:  CMP             R0, #0
3C30E4:  BNE.W           loc_3C2F8A
3C30E8:  LDR.W           R0, =(TheCamera_ptr - 0x3C30F0)
3C30EC:  ADD             R0, PC; TheCamera_ptr
3C30EE:  LDR             R0, [R0]; TheCamera
3C30F0:  LDRB            R1, [R0,#(word_951FC2 - 0x951FA8)]
3C30F2:  LDRB            R0, [R0,#(word_951FC2+1 - 0x951FA8)]
3C30F4:  ORRS            R0, R1
3C30F6:  LSLS            R0, R0, #0x18
3C30F8:  BNE.W           loc_3C2F8A
3C30FC:  CMP             R4, #1
3C30FE:  BEQ.W           loc_3C2F8A
3C3102:  LDR.W           R0, [R8,#0x56C]
3C3106:  CMP             R0, #0
3C3108:  BEQ.W           loc_3C3448
3C310C:  LDRB.W          R1, [R0,#0x3A]
3C3110:  AND.W           R1, R1, #7
3C3114:  CMP             R1, #2
3C3116:  ITT EQ
3C3118:  LDREQ.W         R1, [R0,#0x5A4]
3C311C:  CMPEQ           R1, #6
3C311E:  BEQ             loc_3C3140
3C3120:  LDR.W           R1, [R0,#0x100]
3C3124:  CMP             R1, #0
3C3126:  BEQ.W           loc_3C3448
3C312A:  LDRB.W          R2, [R1,#0x3A]
3C312E:  AND.W           R2, R2, #7
3C3132:  CMP             R2, #2
3C3134:  ITT EQ
3C3136:  LDREQ.W         R1, [R1,#0x5A4]
3C313A:  CMPEQ           R1, #6
3C313C:  BNE.W           loc_3C3448
3C3140:  VLDR            S0, [R0,#0x48]
3C3144:  VLDR            S2, [R0,#0x4C]
3C3148:  VMUL.F32        S8, S0, S0
3C314C:  VLDR            S4, [R0,#0x50]
3C3150:  VMUL.F32        S6, S2, S2
3C3154:  VLDR            S12, =0.0
3C3158:  VMUL.F32        S10, S4, S4
3C315C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C3168)
3C3160:  VLDR            S14, [R10,#0x1B8]
3C3164:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C3166:  VLDR            S1, [R10,#0x1BC]
3C316A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C316C:  VADD.F32        S6, S8, S6
3C3170:  VLDR            S8, =-0.01
3C3174:  VADD.F32        S6, S6, S10
3C3178:  VLDR            S10, =0.01
3C317C:  VSQRT.F32       S6, S6
3C3180:  VADD.F32        S8, S6, S8
3C3184:  VMAX.F32        D3, D3, D5
3C3188:  VLDR            S10, [R10,#0x1B0]
3C318C:  VMAX.F32        D4, D4, D6
3C3190:  VLDR            S12, [R10,#0x1B4]
3C3194:  VDIV.F32        S6, S8, S6
3C3198:  VMUL.F32        S0, S0, S6
3C319C:  VLDR            S8, [R0]
3C31A0:  VMUL.F32        S2, S2, S6
3C31A4:  VMUL.F32        S4, S4, S6
3C31A8:  VMUL.F32        S0, S8, S0
3C31AC:  VMUL.F32        S2, S8, S2
3C31B0:  VMUL.F32        S4, S8, S4
3C31B4:  VADD.F32        S0, S10, S0
3C31B8:  VADD.F32        S2, S12, S2
3C31BC:  VADD.F32        S4, S14, S4
3C31C0:  VSTR            S0, [R10,#0x1B0]
3C31C4:  VSTR            S2, [R10,#0x1B4]
3C31C8:  VSTR            S4, [R10,#0x1B8]
3C31CC:  LDR.W           R0, [R8,#0x56C]
3C31D0:  VLDR            S0, [R0,#0x48]
3C31D4:  VLDR            S2, [R0,#0x4C]
3C31D8:  VLDR            S4, [R0,#0x50]
3C31DC:  VMUL.F32        S0, S6, S0
3C31E0:  VMUL.F32        S2, S6, S2
3C31E4:  VMUL.F32        S4, S6, S4
3C31E8:  VLDR            S6, [R10,#0x1C4]
3C31EC:  VMUL.F32        S0, S0, S8
3C31F0:  VMUL.F32        S2, S2, S8
3C31F4:  VMUL.F32        S4, S4, S8
3C31F8:  VLDR            S8, [R10,#0x1C0]
3C31FC:  VADD.F32        S0, S0, S1
3C3200:  VADD.F32        S2, S2, S8
3C3204:  VADD.F32        S4, S4, S6
3C3208:  VSTR            S0, [R10,#0x1BC]
3C320C:  VSTR            S4, [R10,#0x1C4]
3C3210:  VSTR            S2, [R10,#0x1C0]
3C3214:  B               loc_3C3448
3C3216:  VLDR            S0, [R1,#0x10]
3C321A:  VLDR            S2, =-1.5708
3C321E:  LDR.W           R0, =(TheCamera_ptr - 0x3C322A)
3C3222:  VADD.F32        S0, S0, S2
3C3226:  ADD             R0, PC; TheCamera_ptr
3C3228:  LDR             R0, [R0]; TheCamera
3C322A:  VSTR            S0, [R10,#0x94]
3C322E:  LDRB            R0, [R0,#(word_951FC2+1 - 0x951FA8)]
3C3230:  CMP             R0, #0
3C3232:  ITTT NE
3C3234:  VLDRNE          S2, =3.1416
3C3238:  VADDNE.F32      S0, S0, S2
3C323C:  VSTRNE          S0, [R10,#0x94]
3C3240:  LDR.W           R0, =(TheCamera_ptr - 0x3C3250)
3C3244:  MOVS            R2, #0
3C3246:  MOVS            R1, #0
3C3248:  MOVT            R2, #0x447A
3C324C:  ADD             R0, PC; TheCamera_ptr
3C324E:  STR.W           R1, [R10,#0x88]
3C3252:  STRD.W          R1, R2, [R10,#0x98]
3C3256:  LDR             R0, [R0]; TheCamera
3C3258:  VLDR            S0, [R0,#0xC8]
3C325C:  VCMP.F32        S16, S0
3C3260:  VMRS            APSR_nzcv, FPSCR
3C3264:  BNE             loc_3C3276
3C3266:  LDR.W           R0, =(TheCamera_ptr - 0x3C326E)
3C326A:  ADD             R0, PC; TheCamera_ptr
3C326C:  LDR             R0, [R0]; TheCamera
3C326E:  VLDR            S16, [R0,#0xCC]
3C3272:  VSTR            S16, [R0,#0xD0]
3C3276:  CMP.W           R8, #1
3C327A:  BNE             loc_3C32BC
3C327C:  MOV             R9, R11
3C327E:  VLDR            S18, [R10,#0x84]
3C3282:  B               loc_3C3336
3C3284:  DCFS 0.0
3C3288:  DCFS 70.0
3C328C:  DCFS 0.000001
3C3290:  DCFS -0.01
3C3294:  DCFS 0.01
3C3298:  DCFS -1.5708
3C329C:  DCFS 3.1416
3C32A0:  DCFS -0.34907
3C32A4:  DCFS -0.2618
3C32A8:  DCFS -3.1416
3C32AC:  DCFS 6.2832
3C32B0:  DCFS -6.2832
3C32B4:  DCFS 0.001
3C32B8:  DCFS 2.9671
3C32BC:  MOVS            R0, #0
3C32BE:  MOV             R9, R11
3C32C0:  STR.W           R0, [R10,#0x84]
3C32C4:  LDR             R0, [SP,#0x100+var_B0]
3C32C6:  LDRB            R0, [R0]
3C32C8:  LSLS            R0, R0, #0x1F
3C32CA:  BNE             loc_3C32D2
3C32CC:  VLDR            S18, =0.0
3C32D0:  B               loc_3C3336
3C32D2:  LDR             R2, [SP,#0x100+var_A8]
3C32D4:  ADD.W           R1, R2, #0x580
3C32D8:  LDR             R0, [R2,#0x14]
3C32DA:  VLDR            S0, [R1]
3C32DE:  VLDR            S4, [R0,#0x14]
3C32E2:  VLDR            S2, [R0,#0x10]
3C32E6:  VLDR            S6, [R0,#0x18]
3C32EA:  ADDW            R0, R2, #0x57C
3C32EE:  VMUL.F32        S0, S0, S4
3C32F2:  VLDR            S8, [R0]
3C32F6:  ADDW            R0, R2, #0x584
3C32FA:  VMUL.F32        S2, S8, S2
3C32FE:  VLDR            S4, [R0]
3C3302:  VMUL.F32        S4, S4, S6
3C3306:  VADD.F32        S0, S2, S0
3C330A:  VMOV.F32        S2, #-1.0
3C330E:  VADD.F32        S0, S0, S4
3C3312:  VMOV.F32        S4, #1.0
3C3316:  VMAX.F32        D16, D0, D1
3C331A:  VMIN.F32        D0, D16, D2
3C331E:  VMOV            R0, S0; x
3C3322:  BLX             asinf
3C3326:  VLDR            S0, =0.0
3C332A:  VMOV            S2, R0
3C332E:  VSUB.F32        S18, S0, S2
3C3332:  VSTR            S18, [R10,#0x84]
3C3336:  LDR.W           R5, [R10,#0x94]
3C333A:  MOV             R0, R5; x
3C333C:  BLX             cosf
3C3340:  VMOV            R4, S18
3C3344:  MOV             R11, R0
3C3346:  MOV             R0, R4; x
3C3348:  BLX             cosf
3C334C:  MOV             R6, R0
3C334E:  MOV             R0, R5; x
3C3350:  BLX             sinf
3C3354:  VMOV            S0, R0
3C3358:  MOV             R0, R4; x
3C335A:  VMOV            S2, R6
3C335E:  VMOV            S4, R11
3C3362:  VMUL.F32        S18, S2, S0
3C3366:  VMUL.F32        S20, S4, S2
3C336A:  VNMUL.F32       S22, S2, S0
3C336E:  VNMUL.F32       S30, S4, S2
3C3372:  BLX             sinf
3C3376:  VLDR            D3, [SP,#0x100+var_C0]
3C337A:  VMOV            S0, R0
3C337E:  VMUL.F32        S8, S16, S20
3C3382:  STR.W           R0, [R10,#0x170]
3C3386:  VMUL.F32        S2, S6, S0
3C338A:  VSTR            S30, [R10,#0x168]
3C338E:  VMUL.F32        S0, S16, S0
3C3392:  VSTR            S22, [R10,#0x16C]
3C3396:  VMUL.F32        S4, S6, S18
3C339A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C33B2)
3C339E:  VMUL.F32        S6, S6, S20
3C33A2:  VLDR            S10, [SP,#0x100+var_90]
3C33A6:  VMUL.F32        S14, S16, S18
3C33AA:  VLDR            S12, [SP,#0x100+var_90+4]
3C33AE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3C33B0:  CMP.W           R8, #0
3C33B4:  VADD.F32        S8, S10, S8
3C33B8:  VSUB.F32        S2, S24, S2
3C33BC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3C33BE:  VSUB.F32        S0, S24, S0
3C33C2:  VADD.F32        S4, S12, S4
3C33C6:  VADD.F32        S6, S10, S6
3C33CA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3C33CC:  VADD.F32        S10, S12, S14
3C33D0:  STR.W           R0, [R10,#0x1E0]
3C33D4:  MOV.W           R0, #0
3C33D8:  VSTR            S6, [R10,#0x1B0]
3C33DC:  VSTR            S4, [R10,#0x1B4]
3C33E0:  VSTR            S2, [R10,#0x1B8]
3C33E4:  VSTR            S8, [R10,#0x1BC]
3C33E8:  VSTR            S10, [R10,#0x1C0]
3C33EC:  VSTR            S0, [R10,#0x1C4]
3C33F0:  STR.W           R0, [R10,#0x1F0]
3C33F4:  ITT EQ
3C33F6:  VNEGEQ.F32      S0, S21
3C33FA:  VSTREQ          S0, [R10,#0x84]
3C33FE:  LDR             R4, [SP,#0x100+var_AC]
3C3400:  MOV             R0, R4; this
3C3402:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
3C3406:  LDR.W           R8, [SP,#0x100+var_A8]
3C340A:  CMP             R0, #0
3C340C:  MOV             R11, R9
3C340E:  BEQ             loc_3C341C
3C3410:  MOV             R0, R4; this
3C3412:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
3C3416:  LDRH            R0, [R0,#0xA]
3C3418:  CMP             R0, #4
3C341A:  BNE             loc_3C342C
3C341C:  MOV             R0, R4; this
3C341E:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
3C3422:  LDR             R6, [SP,#0x100+var_C4]
3C3424:  CBZ             R0, loc_3C343E
3C3426:  VLDR            S0, =-0.34907
3C342A:  B               loc_3C3432
3C342C:  VLDR            S0, =-0.2618
3C3430:  LDR             R6, [SP,#0x100+var_C4]
3C3432:  VLDR            S2, [R10,#0x84]
3C3436:  VADD.F32        S0, S0, S2
3C343A:  VSTR            S0, [R10,#0x84]
3C343E:  MOVS            R0, #0; this
3C3440:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C3444:  BLX             j__ZN4CPad17ClearMouseHistoryEv; CPad::ClearMouseHistory(void)
3C3448:  VLDR            S4, [R10,#0x1B8]
3C344C:  ADD.W           R4, R10, #0x168
3C3450:  VLDR            S18, [SP,#0x100+var_90]
3C3454:  VLDR            S0, [R10,#0x1B0]
3C3458:  VSUB.F32        S4, S24, S4
3C345C:  VLDR            S20, [SP,#0x100+var_90+4]
3C3460:  MOV             R0, R4; this
3C3462:  VLDR            S2, [R10,#0x1B4]
3C3466:  VSUB.F32        S0, S18, S0
3C346A:  VSUB.F32        S2, S20, S2
3C346E:  VSTR            S0, [R10,#0x168]
3C3472:  VSTR            S2, [R10,#0x16C]
3C3476:  VSTR            S4, [R10,#0x170]
3C347A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C347E:  VLDR            S0, [R10,#0x1BC]
3C3482:  VLDR            S2, [R10,#0x1C0]
3C3486:  VSUB.F32        S0, S18, S0
3C348A:  VLDR            S4, [R10,#0x1C4]
3C348E:  VSUB.F32        S2, S20, S2
3C3492:  VSUB.F32        S4, S24, S4
3C3496:  VMUL.F32        S0, S0, S0
3C349A:  VMUL.F32        S2, S2, S2
3C349E:  VMUL.F32        S4, S4, S4
3C34A2:  VADD.F32        S0, S0, S2
3C34A6:  VADD.F32        S0, S0, S4
3C34AA:  VSQRT.F32       S0, S0
3C34AE:  VCMPE.F32       S0, S16
3C34B2:  VMRS            APSR_nzcv, FPSCR
3C34B6:  BGE             loc_3C34CE
3C34B8:  LDR             R0, [SP,#0x100+var_D0]
3C34BA:  ADDS            R0, #0xC
3C34BC:  VLDR            S2, [R0]
3C34C0:  VCMPE.F32       S16, S2
3C34C4:  VMRS            APSR_nzcv, FPSCR
3C34C8:  IT GT
3C34CA:  VMAXGT.F32      D8, D13, D0
3C34CE:  LDRD.W          R0, R1, [R10,#0x168]; x
3C34D2:  EOR.W           R0, R0, #0x80000000; y
3C34D6:  BLX             atan2f
3C34DA:  VLDR            S18, =-1.5708
3C34DE:  VMOV            S0, R0
3C34E2:  VLDR            S2, =-3.1416
3C34E6:  VADD.F32        S20, S0, S18
3C34EA:  VLDR            S22, =6.2832
3C34EE:  VCMPE.F32       S20, S2
3C34F2:  VMRS            APSR_nzcv, FPSCR
3C34F6:  VADD.F32        S0, S20, S22
3C34FA:  IT LT
3C34FC:  VMOVLT.F32      S20, S0
3C3500:  LDR.W           R0, [R8,#0x14]
3C3504:  CBZ             R0, loc_3C3518
3C3506:  LDRD.W          R2, R1, [R0,#0x10]; x
3C350A:  EOR.W           R0, R2, #0x80000000; y
3C350E:  BLX             atan2f
3C3512:  VMOV            S0, R0
3C3516:  B               loc_3C351C
3C3518:  VLDR            S0, [R8,#0x10]
3C351C:  VADD.F32        S18, S0, S18
3C3520:  VLDR            S2, =3.1416
3C3524:  VSUB.F32        S0, S18, S20
3C3528:  VCMPE.F32       S0, S2
3C352C:  VMRS            APSR_nzcv, FPSCR
3C3530:  BLE             loc_3C353C
3C3532:  VLDR            S0, =-6.2832
3C3536:  VADD.F32        S18, S18, S0
3C353A:  B               loc_3C354E
3C353C:  VLDR            S2, =-3.1416
3C3540:  VCMPE.F32       S0, S2
3C3544:  VMRS            APSR_nzcv, FPSCR
3C3548:  IT LT
3C354A:  VADDLT.F32      S18, S18, S22
3C354E:  MOV             R0, R6; this
3C3550:  BLX             j__ZN4CPad26GetForceCameraBehindPlayerEv; CPad::GetForceCameraBehindPlayer(void)
3C3554:  CMP             R0, #1
3C3556:  STR             R4, [SP,#0x100+var_C4]
3C3558:  BNE             loc_3C3564
3C355A:  LDR.W           R0, =(gForceCamBehindPlayer_ptr - 0x3C3564)
3C355E:  MOVS            R1, #1
3C3560:  ADD             R0, PC; gForceCamBehindPlayer_ptr
3C3562:  B               loc_3C35E0
3C3564:  LDR.W           R0, =(gForceCamBehindPlayer_ptr - 0x3C356C)
3C3568:  ADD             R0, PC; gForceCamBehindPlayer_ptr
3C356A:  LDR             R0, [R0]; gForceCamBehindPlayer
3C356C:  LDRB            R0, [R0]
3C356E:  CBZ             R0, loc_3C35E4
3C3570:  VLDR            S0, [R8,#0x48]
3C3574:  VLDR            S2, [R8,#0x4C]
3C3578:  VMUL.F32        S0, S0, S0
3C357C:  VLDR            S4, [R8,#0x50]
3C3580:  VMUL.F32        S2, S2, S2
3C3584:  VMUL.F32        S4, S4, S4
3C3588:  VADD.F32        S0, S0, S2
3C358C:  VLDR            S2, =0.001
3C3590:  VADD.F32        S0, S0, S4
3C3594:  VCMPE.F32       S0, S2
3C3598:  VMRS            APSR_nzcv, FPSCR
3C359C:  BGT             loc_3C35D8
3C359E:  VSUB.F32        S0, S18, S20
3C35A2:  VLDR            S2, =0.01
3C35A6:  VABS.F32        S0, S0
3C35AA:  VCMPE.F32       S0, S2
3C35AE:  VMRS            APSR_nzcv, FPSCR
3C35B2:  BLT             loc_3C35D8
3C35B4:  MOV             R0, R6; this
3C35B6:  MOV             R1, R8; CPed *
3C35B8:  MOVS            R2, #0; bool *
3C35BA:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
3C35BE:  VMOV            S0, R0
3C35C2:  VCMP.F32        S0, #0.0
3C35C6:  VMRS            APSR_nzcv, FPSCR
3C35CA:  BNE             loc_3C35D8
3C35CC:  MOV             R0, R6; this
3C35CE:  MOV             R1, R8; CPed *
3C35D0:  MOVS            R2, #0; bool *
3C35D2:  BLX             j__ZN4CPad15AimWeaponUpDownEP4CPedPb; CPad::AimWeaponUpDown(CPed *,bool *)
3C35D6:  CBZ             R0, loc_3C35E4
3C35D8:  LDR.W           R0, =(gForceCamBehindPlayer_ptr - 0x3C35E2)
3C35DC:  MOVS            R1, #0
3C35DE:  ADD             R0, PC; gForceCamBehindPlayer_ptr
3C35E0:  LDR             R0, [R0]; gForceCamBehindPlayer
3C35E2:  STRB            R1, [R0]
3C35E4:  VSUB.F32        S0, S18, S20
3C35E8:  LDR.W           R0, =(gForceCamBehindPlayer_ptr - 0x3C35F4)
3C35EC:  VLDR            S4, =2.9671
3C35F0:  ADD             R0, PC; gForceCamBehindPlayer_ptr
3C35F2:  LDR             R0, [R0]; gForceCamBehindPlayer
3C35F4:  VABS.F32        S2, S0
3C35F8:  LDRB            R4, [R0]
3C35FA:  VCMPE.F32       S2, S4
3C35FE:  VMRS            APSR_nzcv, FPSCR
3C3602:  BLT             loc_3C3622
3C3604:  VCMP.F32        S28, #0.0
3C3608:  VMRS            APSR_nzcv, FPSCR
3C360C:  IT EQ
3C360E:  CMPEQ           R4, #0
3C3610:  BNE             loc_3C3622
3C3612:  VLDR            S26, =0.0
3C3616:  MOVS            R4, #0
3C3618:  VMOV            D12, D13
3C361C:  VMOV            D0, D13
3C3620:  B               loc_3C36F4
3C3622:  VCMP.F32        S28, #0.0
3C3626:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C3636)
3C362A:  VMRS            APSR_nzcv, FPSCR
3C362E:  LDR.W           R1, =(PEDCAM_SET_ptr - 0x3C3638)
3C3632:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C3634:  ADD             R1, PC; PEDCAM_SET_ptr
3C3636:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C3638:  LDR             R1, [R1]; PEDCAM_SET
3C363A:  VLDR            S2, [R0]
3C363E:  ADD.W           R0, R1, R11,LSL#2
3C3642:  VLDR            S6, [R0,#0x2C]
3C3646:  VLDR            S4, [R0,#0x28]
3C364A:  VMUL.F32        S26, S2, S6
3C364E:  VMUL.F32        S2, S4, S2
3C3652:  IT EQ
3C3654:  CMPEQ           R4, #0
3C3656:  BEQ             loc_3C3680
3C3658:  VCMP.F32        S28, #0.0
3C365C:  VMRS            APSR_nzcv, FPSCR
3C3660:  VMOV.F32        S4, #0.5
3C3664:  VADD.F32        S26, S26, S26
3C3668:  VMOV.F32        S6, #1.0
3C366C:  VMUL.F32        S2, S2, S4
3C3670:  VMIN.F32        D12, D1, D3
3C3674:  ITT NE
3C3676:  VMULNE.F32      S26, S28, S26
3C367A:  VMULNE.F32      S24, S28, S24
3C367E:  B               loc_3C36E4
3C3680:  LDR.W           R0, [R8,#0x56C]
3C3684:  VLDR            S4, [R8,#0x48]
3C3688:  CBZ             R0, loc_3C36B8
3C368A:  VLDR            S6, [R0,#0x48]
3C368E:  VLDR            D16, [R0,#0x4C]
3C3692:  VSUB.F32        S4, S4, S6
3C3696:  VLDR            D17, [R8,#0x4C]
3C369A:  VSUB.F32        D16, D17, D16
3C369E:  VMUL.F32        D3, D16, D16
3C36A2:  VMUL.F32        S4, S4, S4
3C36A6:  VADD.F32        S4, S4, S6
3C36AA:  VADD.F32        S4, S4, S7
3C36AE:  B               loc_3C36D4
3C36B0:  VMOV.F32        S23, S28
3C36B4:  B.W             loc_3C2ED0
3C36B8:  VLDR            S6, [R8,#0x4C]
3C36BC:  VMUL.F32        S4, S4, S4
3C36C0:  VLDR            S8, [R8,#0x50]
3C36C4:  VMUL.F32        S6, S6, S6
3C36C8:  VMUL.F32        S8, S8, S8
3C36CC:  VADD.F32        S4, S4, S6
3C36D0:  VADD.F32        S4, S4, S8
3C36D4:  VSQRT.F32       S4, S4
3C36D8:  VMOV.F32        S6, #1.0
3C36DC:  VMUL.F32        S2, S2, S4
3C36E0:  VMIN.F32        D12, D1, D3
3C36E4:  VMUL.F32        S0, S0, S24
3C36E8:  VNEG.F32        S2, S26
3C36EC:  VMIN.F32        D16, D0, D13
3C36F0:  VMAX.F32        D0, D16, D1
3C36F4:  VADD.F32        S19, S20, S0
3C36F8:  VLDR            S30, [R10,#0x94]
3C36FC:  VLDR            S0, =3.1416
3C3700:  VMOV.F32        S22, S21
3C3704:  VADD.F32        S0, S30, S0
3C3708:  VCMPE.F32       S19, S0
3C370C:  VMRS            APSR_nzcv, FPSCR
3C3710:  BLE             loc_3C3718
3C3712:  VLDR            S0, =-6.2832
3C3716:  B               loc_3C372E
3C3718:  VLDR            S0, =-3.1416
3C371C:  VADD.F32        S0, S30, S0
3C3720:  VCMPE.F32       S19, S0
3C3724:  VMRS            APSR_nzcv, FPSCR
3C3728:  BGE             loc_3C3732
3C372A:  VLDR            S0, =6.2832
3C372E:  VADD.F32        S19, S19, S0
3C3732:  VMOV.F32        S4, #1.0
3C3736:  VLDR            S0, [R10,#0x170]
3C373A:  VMOV.F32        S28, #-1.0
3C373E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C374A)
3C3742:  VMOV.F32        S2, S0
3C3746:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C3748:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C374A:  VCMPE.F32       S0, S4
3C374E:  VMRS            APSR_nzcv, FPSCR
3C3752:  IT GT
3C3754:  VMOVGT.F32      S2, S4
3C3758:  VCMPE.F32       S2, S28
3C375C:  VMRS            APSR_nzcv, FPSCR
3C3760:  VMOV.F32        S2, S4
3C3764:  VCMPE.F32       S0, S4
3C3768:  IT LT
3C376A:  VMOVLT.F32      S2, S28
3C376E:  IT LT
3C3770:  VMOVLT.F32      S0, S2
3C3774:  VMRS            APSR_nzcv, FPSCR
3C3778:  IT GT
3C377A:  VMOVGT.F32      S0, S2
3C377E:  VLDR            S20, [R0]
3C3782:  VMOV            R0, S0; x
3C3786:  BLX             asinf
3C378A:  VSUB.F32        S0, S18, S19
3C378E:  VLDR            S8, =1.5708
3C3792:  VMOV            S18, R0
3C3796:  VABS.F32        S0, S0
3C379A:  VCMPE.F32       S0, S8
3C379E:  VMRS            APSR_nzcv, FPSCR
3C37A2:  BLE             loc_3C3854
3C37A4:  VLDR            S2, [R8,#0x48]
3C37A8:  VLDR            S4, [R8,#0x4C]
3C37AC:  VMUL.F32        S2, S2, S2
3C37B0:  VLDR            S6, [R8,#0x50]
3C37B4:  VMUL.F32        S4, S4, S4
3C37B8:  VMUL.F32        S6, S6, S6
3C37BC:  VADD.F32        S2, S2, S4
3C37C0:  VLDR            S4, =0.002
3C37C4:  VADD.F32        S2, S2, S6
3C37C8:  VCMPE.F32       S2, S4
3C37CC:  VMRS            APSR_nzcv, FPSCR
3C37D0:  BLE             loc_3C3854
3C37D2:  VLDR            S2, =-1.5708
3C37D6:  VMOV            R1, S20; y
3C37DA:  VSTR            D8, [SP,#0x100+var_A8]
3C37DE:  VMOV.F32        S16, #1.0
3C37E2:  VADD.F32        S0, S0, S2
3C37E6:  VLDR            S2, =1.2
3C37EA:  MOV             R0, #0x3F666666; x
3C37F2:  VMUL.F32        S0, S0, S2
3C37F6:  VLDR            S2, =-1.2217
3C37FA:  VDIV.F32        S0, S0, S8
3C37FE:  VMIN.F32        D0, D0, D8
3C3802:  VMUL.F32        S0, S0, S2
3C3806:  VADD.F32        S31, S0, S8
3C380A:  BLX             powf
3C380E:  VCMPE.F32       S18, S31
3C3812:  VMOV            S0, R0
3C3816:  VMRS            APSR_nzcv, FPSCR
3C381A:  BLE             loc_3C382E
3C381C:  VSUB.F32        S2, S16, S0
3C3820:  VMUL.F32        S0, S18, S0
3C3824:  VMUL.F32        S2, S31, S2
3C3828:  VADD.F32        S18, S0, S2
3C382C:  B               loc_3C3850
3C382E:  VNEG.F32        S2, S31
3C3832:  VCMPE.F32       S18, S2
3C3836:  VMRS            APSR_nzcv, FPSCR
3C383A:  BGE             loc_3C3850
3C383C:  VMOV.F32        S2, #1.0
3C3840:  VSUB.F32        S2, S2, S0
3C3844:  VMUL.F32        S0, S18, S0
3C3848:  VMUL.F32        S2, S31, S2
3C384C:  VSUB.F32        S18, S0, S2
3C3850:  VLDR            D8, [SP,#0x100+var_A8]
3C3854:  VCMP.F32        S23, #0.0
3C3858:  VMRS            APSR_nzcv, FPSCR
3C385C:  BNE             loc_3C3870
3C385E:  CMP             R4, #0
3C3860:  VLDR            S0, =0.0
3C3864:  ITTT NE
3C3866:  LDRNE           R0, [SP,#0x100+var_B0]
3C3868:  LDRBNE          R0, [R0]
3C386A:  MOVSNE.W        R0, R0,LSL#31
3C386E:  BEQ             loc_3C396C
3C3870:  LDR             R4, [SP,#0x100+var_AC]
3C3872:  MOV             R0, R4; this
3C3874:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
3C3878:  CBZ             R0, loc_3C3884
3C387A:  VLDR            S0, =-0.34907
3C387E:  VMOV.F32        S28, #1.0
3C3882:  B               loc_3C3930
3C3884:  MOV             R0, R4; this
3C3886:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
3C388A:  CBZ             R0, loc_3C3896
3C388C:  VLDR            S0, =-0.2618
3C3890:  VMOV.F32        S28, #1.0
3C3894:  B               loc_3C3930
3C3896:  LDR             R0, [SP,#0x100+var_B0]
3C3898:  LDRB            R0, [R0]
3C389A:  LSLS            R0, R0, #0x1F
3C389C:  BNE             loc_3C38D8
3C389E:  VLDR            S0, =0.0
3C38A2:  VMOV.F32        S28, #1.0
3C38A6:  B               loc_3C3930
3C38A8:  DCFS 3.1416
3C38AC:  DCFS -6.2832
3C38B0:  DCFS -3.1416
3C38B4:  DCFS 6.2832
3C38B8:  DCFS 1.5708
3C38BC:  DCFS 0.002
3C38C0:  DCFS -1.5708
3C38C4:  DCFS 1.2
3C38C8:  DCFS -1.2217
3C38CC:  DCFS 0.0
3C38D0:  DCFS -0.34907
3C38D4:  DCFS -0.2618
3C38D8:  LDR.W           R0, [R8,#0x14]
3C38DC:  ADD.W           R1, R8, #0x580
3C38E0:  VLDR            S0, [R1]
3C38E4:  VLDR            S4, [R0,#0x14]
3C38E8:  VLDR            S2, [R0,#0x10]
3C38EC:  VLDR            S6, [R0,#0x18]
3C38F0:  ADDW            R0, R8, #0x57C
3C38F4:  VMUL.F32        S0, S0, S4
3C38F8:  VLDR            S8, [R0]
3C38FC:  ADDW            R0, R8, #0x584
3C3900:  VMUL.F32        S2, S8, S2
3C3904:  VLDR            S4, [R0]
3C3908:  VMUL.F32        S4, S4, S6
3C390C:  VADD.F32        S0, S2, S0
3C3910:  VADD.F32        S0, S0, S4
3C3914:  VMAX.F32        D16, D0, D14
3C3918:  VMOV.F32        S28, #1.0
3C391C:  VMIN.F32        D0, D16, D14
3C3920:  VMOV            R0, S0; x
3C3924:  BLX             asinf
3C3928:  EOR.W           R0, R0, #0x80000000
3C392C:  VMOV            S0, R0
3C3930:  VCMP.F32        S23, #0.0
3C3934:  VMRS            APSR_nzcv, FPSCR
3C3938:  VMOV.F32        S2, #4.0
3C393C:  VMIN.F32        D2, D12, D14
3C3940:  VSUB.F32        S0, S0, S18
3C3944:  VMUL.F32        S6, S23, S4
3C3948:  VMUL.F32        S2, S26, S2
3C394C:  IT NE
3C394E:  VMOVNE.F32      S4, S6
3C3952:  VMUL.F32        S6, S23, S2
3C3956:  VMUL.F32        S0, S4, S0
3C395A:  IT NE
3C395C:  VMOVNE.F32      S2, S6
3C3960:  VMIN.F32        D16, D0, D1
3C3964:  VNEG.F32        S0, S2
3C3968:  VMAX.F32        D0, D16, D0
3C396C:  VMOV.F32        S23, S22
3C3970:  VLDR            S22, [SP,#0x100+var_C8]
3C3974:  VADD.F32        S0, S18, S0
3C3978:  VMOV.F32        S28, #1.0
3C397C:  VMOV.F32        S31, S22
3C3980:  VSUB.F32        S0, S0, S23
3C3984:  VMAX.F32        D10, D10, D14
3C3988:  VCMPE.F32       S0, S22
3C398C:  VMRS            APSR_nzcv, FPSCR
3C3990:  BGT             loc_3C39AC
3C3992:  VLDR            S2, [SP,#0x100+var_CC]
3C3996:  VMOV.F32        S31, S0
3C399A:  VNEG.F32        S2, S2
3C399E:  VCMPE.F32       S0, S2
3C39A2:  VMRS            APSR_nzcv, FPSCR
3C39A6:  IT LT
3C39A8:  VMOVLT.F32      S31, S2
3C39AC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C39BA)
3C39AE:  SUB.W           R2, R7, #-var_91; bool *
3C39B2:  LDR             R1, =(PEDCAM_SET_ptr - 0x3C39C0)
3C39B4:  MOVS            R5, #0
3C39B6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C39B8:  VLDR            S0, [R10,#0x84]
3C39BC:  ADD             R1, PC; PEDCAM_SET_ptr
3C39BE:  MOV             R9, R11
3C39C0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C39C2:  LDR             R1, [R1]; PEDCAM_SET
3C39C4:  VSTR            S0, [SP,#0x100+var_D0]
3C39C8:  VLDR            S24, [R0]
3C39CC:  ADD.W           R0, R1, R11,LSL#2
3C39D0:  MOV             R1, R8; CPed *
3C39D2:  STRB.W          R5, [R7,#var_91]
3C39D6:  VLDR            S27, [R0,#0x18]
3C39DA:  LDR             R4, [R0,#(dword_6AA028 - 0x6AA014)]
3C39DC:  MOV             R0, R6; this
3C39DE:  STRB.W          R5, [R7,#var_92]
3C39E2:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
3C39E6:  VMOV            S2, R0
3C39EA:  VLDR            S0, =-2.6
3C39EE:  SUB.W           R2, R7, #-var_92; bool *
3C39F2:  MOV             R0, R6; this
3C39F4:  VMUL.F32        S0, S2, S0
3C39F8:  MOV             R1, R8; CPed *
3C39FA:  VSTR            S0, [SP,#0x100+var_98]
3C39FE:  BLX             j__ZN4CPad15AimWeaponUpDownEP4CPedPb; CPad::AimWeaponUpDown(CPed *,bool *)
3C3A02:  VMOV            R1, S24; y
3C3A06:  VMOV            S0, R0
3C3A0A:  MOV             R0, R4; x
3C3A0C:  VCVT.F32.S32    S18, S0
3C3A10:  BLX             powf
3C3A14:  VLDR            S0, =1.95
3C3A18:  LDR             R4, [SP,#0x100+var_AC]
3C3A1A:  VMUL.F32        S0, S18, S0
3C3A1E:  STR             R0, [SP,#0x100+var_D4]
3C3A20:  MOV             R0, R4; this
3C3A22:  VSTR            S0, [SP,#0x100+var_9C]
3C3A26:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
3C3A2A:  VLDR            S25, =6.2832
3C3A2E:  CMP             R0, #0
3C3A30:  BEQ             loc_3C3A94
3C3A32:  MOV             R0, R4; this
3C3A34:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
3C3A38:  LDRB            R0, [R0,#0x10]
3C3A3A:  ORR.W           R0, R0, #1
3C3A3E:  UXTB            R0, R0
3C3A40:  CMP             R0, #3
3C3A42:  BNE             loc_3C3A94
3C3A44:  MOV             R0, R4; this
3C3A46:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
3C3A4A:  LDR             R0, [R0,#0x30]
3C3A4C:  CBZ             R0, loc_3C3A94
3C3A4E:  MOV             R0, R4; this
3C3A50:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
3C3A54:  LDR             R0, [R0,#0x30]
3C3A56:  LDRB            R0, [R0,#0x18]
3C3A58:  LSLS            R0, R0, #0x1E
3C3A5A:  BMI             loc_3C3A94
3C3A5C:  MOV             R0, R6; this
3C3A5E:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
3C3A62:  VMOV            S0, R0
3C3A66:  VCVT.F32.S32    S0, S0
3C3A6A:  VLDR            S2, [SP,#0x100+var_98]
3C3A6E:  VABS.F32        S2, S2
3C3A72:  VABS.F32        S0, S0
3C3A76:  VCMPE.F32       S0, S2
3C3A7A:  VMRS            APSR_nzcv, FPSCR
3C3A7E:  BLE             loc_3C3A94
3C3A80:  MOV             R0, R6; this
3C3A82:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
3C3A86:  NEGS            R0, R0
3C3A88:  VMOV            S0, R0
3C3A8C:  VCVT.F32.S32    S0, S0
3C3A90:  VSTR            S0, [SP,#0x100+var_98]
3C3A94:  VLDR            S0, [SP,#0x100+var_98]
3C3A98:  ADD.W           R0, R10, #0x94
3C3A9C:  VLDR            S2, [SP,#0x100+var_9C]
3C3AA0:  VSUB.F32        S18, S19, S30
3C3AA4:  VCMP.F32        S0, #0.0
3C3AA8:  STR             R0, [SP,#0x100+var_A8]
3C3AAA:  VMRS            APSR_nzcv, FPSCR
3C3AAE:  MOV.W           R0, #0
3C3AB2:  VCMP.F32        S2, #0.0
3C3AB6:  ADD.W           R11, R10, #0x84
3C3ABA:  IT NE
3C3ABC:  MOVNE           R0, #1
3C3ABE:  VMRS            APSR_nzcv, FPSCR
3C3AC2:  IT NE
3C3AC4:  MOVNE           R5, #1
3C3AC6:  ORRS            R0, R5
3C3AC8:  BEQ.W           loc_3C3BD2
3C3ACC:  MOV             R0, R6; this
3C3ACE:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
3C3AD2:  CMP             R0, #0
3C3AD4:  BNE             loc_3C3BD2
3C3AD6:  MOV             R0, R6; this
3C3AD8:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
3C3ADC:  CMP             R0, #0
3C3ADE:  BNE             loc_3C3BD2
3C3AE0:  MOVS            R0, #0; int
3C3AE2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C3AE6:  MOV             R3, R0
3C3AE8:  LDR             R0, =(TheCamera_ptr - 0x3C3AF0)
3C3AEA:  LDR             R4, [R3,#0x14]
3C3AEC:  ADD             R0, PC; TheCamera_ptr
3C3AEE:  LDR             R0, [R0]; TheCamera
3C3AF0:  VLDR            S26, [R4,#0x10]
3C3AF4:  VLDR            S30, [R4,#0x14]
3C3AF8:  LDR             R0, [R0,#(dword_951FBC - 0x951FA8)]
3C3AFA:  VLDR            S28, [R4,#0x18]
3C3AFE:  CBZ             R0, loc_3C3B0E
3C3B00:  VLDR            S2, [R0,#0x10]
3C3B04:  VLDR            S4, [R0,#0x14]
3C3B08:  VLDR            S0, [R0,#0x18]
3C3B0C:  B               loc_3C3B3A
3C3B0E:  LDR             R0, =(TheCamera_ptr - 0x3C3B16)
3C3B10:  STR             R3, [SP,#0x100+var_D8]
3C3B12:  ADD             R0, PC; TheCamera_ptr
3C3B14:  LDR             R0, [R0]; TheCamera
3C3B16:  LDR             R5, [R0,#(dword_951FB8 - 0x951FA8)]
3C3B18:  MOV             R0, R5; x
3C3B1A:  BLX             sinf
3C3B1E:  STR             R0, [SP,#0x100+var_DC]
3C3B20:  MOV             R0, R5; x
3C3B22:  BLX             cosf
3C3B26:  VMOV            S4, R0
3C3B2A:  LDR             R0, [SP,#0x100+var_DC]
3C3B2C:  LDR             R3, [SP,#0x100+var_D8]
3C3B2E:  EOR.W           R0, R0, #0x80000000
3C3B32:  VLDR            S0, =0.0
3C3B36:  VMOV            S2, R0
3C3B3A:  VMUL.F32        S6, S30, S4
3C3B3E:  VMUL.F32        S8, S26, S2
3C3B42:  VMUL.F32        S10, S28, S0
3C3B46:  VMOV.F32        S28, #1.0
3C3B4A:  VADD.F32        S6, S8, S6
3C3B4E:  VLDR            S8, =0.3
3C3B52:  VADD.F32        S6, S6, S10
3C3B56:  VCMPE.F32       S6, S8
3C3B5A:  VMRS            APSR_nzcv, FPSCR
3C3B5E:  BLE             loc_3C3BD2
3C3B60:  VMOV.F32        S6, #5.0
3C3B64:  ADD.W           R0, R4, #0x30 ; '0'
3C3B68:  CMP             R4, #0
3C3B6A:  ADD             R5, SP, #0x100+iptr
3C3B6C:  IT EQ
3C3B6E:  ADDEQ           R0, R3, #4
3C3B70:  MOV.W           R4, #0xFFFFFFFF
3C3B74:  VLDR            S8, [R0,#4]
3C3B78:  MOVW            R2, #0x5DC
3C3B7C:  VLDR            S10, [R0,#8]
3C3B80:  MOVS            R1, #0
3C3B82:  MOV.W           LR, #0x1F4
3C3B86:  MOV.W           R12, #0x3E800000
3C3B8A:  VMUL.F32        S4, S4, S6
3C3B8E:  VMUL.F32        S0, S0, S6
3C3B92:  VMUL.F32        S2, S2, S6
3C3B96:  VLDR            S6, [R0]
3C3B9A:  LDR             R0, =(g_ikChainMan_ptr - 0x3C3BA0)
3C3B9C:  ADD             R0, PC; g_ikChainMan_ptr
3C3B9E:  VADD.F32        S4, S4, S8
3C3BA2:  LDR             R0, [R0]; g_ikChainMan ; int
3C3BA4:  VADD.F32        S0, S0, S10
3C3BA8:  VADD.F32        S2, S2, S6
3C3BAC:  VSTR            S4, [SP,#0x100+iptr+4]
3C3BB0:  VSTR            S2, [SP,#0x100+iptr]
3C3BB4:  VSTR            S0, [SP,#0x100+var_68]
3C3BB8:  STMEA.W         SP, {R2,R4,R5}
3C3BBC:  ADD             R2, SP, #0x100+var_F4
3C3BBE:  STM.W           R2, {R1,R12,LR}
3C3BC2:  MOVS            R2, #3
3C3BC4:  STRD.W          R2, R1, [SP,#0x100+var_E8]; int
3C3BC8:  ADR             R1, aFollowpedsa; "FollowPedSA"
3C3BCA:  MOV             R2, R3; CPed *
3C3BCC:  MOVS            R3, #0; int
3C3BCE:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
3C3BD2:  LDR             R0, =(AIMWEAPON_STICK_SENS_ptr - 0x3C3BDE)
3C3BD4:  VDIV.F32        S18, S18, S20
3C3BD8:  LDR             R4, [SP,#0x100+var_AC]
3C3BDA:  ADD             R0, PC; AIMWEAPON_STICK_SENS_ptr
3C3BDC:  LDR             R0, [R0]; AIMWEAPON_STICK_SENS
3C3BDE:  VLDR            S30, =80.0
3C3BE2:  VLDR            S0, [R10,#0x8C]
3C3BE6:  VLDR            S4, [R0]
3C3BEA:  MOV             R0, R4; this
3C3BEC:  VDIV.F32        S0, S0, S30
3C3BF0:  VLDR            S2, [SP,#0x100+var_98]
3C3BF4:  VMUL.F32        S4, S4, S4
3C3BF8:  VLDR            S8, =0.071429
3C3BFC:  VABS.F32        S6, S2
3C3C00:  VMUL.F32        S8, S0, S8
3C3C04:  VMUL.F32        S6, S4, S6
3C3C08:  VMUL.F32        S2, S2, S6
3C3C0C:  VMUL.F32        S2, S2, S8
3C3C10:  VSTR            S2, [SP,#0x100+var_98]
3C3C14:  VLDR            S2, [SP,#0x100+var_9C]
3C3C18:  VABS.F32        S6, S2
3C3C1C:  VMUL.F32        S4, S4, S6
3C3C20:  VLDR            S6, =0.042857
3C3C24:  VMUL.F32        S0, S0, S6
3C3C28:  VMUL.F32        S2, S2, S4
3C3C2C:  VMUL.F32        S0, S2, S0
3C3C30:  VSTR            S0, [SP,#0x100+var_9C]
3C3C34:  BLX             j__ZNK16CPedIntelligence12GetTaskClimbEv; CPedIntelligence::GetTaskClimb(void)
3C3C38:  VMOV.F32        S20, S23
3C3C3C:  CMP             R0, #0
3C3C3E:  BEQ.W           loc_3C3D5C
3C3C42:  MOV             R0, R4; this
3C3C44:  BLX             j__ZNK16CPedIntelligence12GetTaskClimbEv; CPedIntelligence::GetTaskClimb(void)
3C3C48:  ADD             R1, SP, #0x100+var_98
3C3C4A:  ADD             R2, SP, #0x100+var_9C
3C3C4C:  STRD.W          R2, R1, [SP,#0x100+var_100]; float *
3C3C50:  MOV             R1, R8; CPed *
3C3C52:  LDR             R3, [SP,#0x100+var_A8]; float *
3C3C54:  MOV             R2, R11; float *
3C3C56:  BLX             j__ZN16CTaskSimpleClimb22GetCameraStickModifierEP4CPedRfS2_S2_S2_; CTaskSimpleClimb::GetCameraStickModifier(CPed *,float &,float &,float &,float &)
3C3C5A:  B               loc_3C3D90
3C3C5C:  DCD _ZN5CGame8currAreaE_ptr - 0x3C2DAC
3C3C60:  DCD TheCamera_ptr - 0x3C2DB0
3C3C64:  DCD PEDCAM_SET_ptr - 0x3C2DBA
3C3C68:  DCD TheCamera_ptr - 0x3C2E00
3C3C6C:  DCD TheCamera_ptr - 0x3C2E1C
3C3C70:  DCD gLastCamDist_ptr - 0x3C2E22
3C3C74:  DCD PEDCAM_SET_ptr - 0x3C2E26
3C3C78:  DCD TheCamera_ptr - 0x3C2ED8
3C3C7C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C2F3A
3C3C80:  DCD PEDCAM_SET_ptr - 0x3C2F70
3C3C84:  DCD dword_952D58 - 0x3C2FA4
3C3C88:  DCD dword_952D64 - 0x3C2FAC
3C3C8C:  DCD TheCamera_ptr - 0x3C2FE8
3C3C90:  DCD TheCamera_ptr - 0x3C3030
3C3C94:  DCD 0xBF333333
3C3C98:  LDM             R4!, {R2,R3,R6,R7}
3C3C9A:  BKPT            0x4C ; 'L'
3C3C9C:  DCD gForceCamBehindPlayer_ptr - 0x3C3068
3C3CA0:  DCD TheCamera_ptr - 0x3C306E
3C3CA4:  DCD currentPad_ptr - 0x3C30D2
3C3CA8:  DCD TheCamera_ptr - 0x3C30F0
3C3CAC:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C3168
3C3CB0:  DCD TheCamera_ptr - 0x3C322A
3C3CB4:  DCD TheCamera_ptr - 0x3C3250
3C3CB8:  DCD TheCamera_ptr - 0x3C326E
3C3CBC:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C33B2
3C3CC0:  DCD gForceCamBehindPlayer_ptr - 0x3C3564
3C3CC4:  DCD gForceCamBehindPlayer_ptr - 0x3C356C
3C3CC8:  DCD gForceCamBehindPlayer_ptr - 0x3C35E2
3C3CCC:  DCD gForceCamBehindPlayer_ptr - 0x3C35F4
3C3CD0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C3636
3C3CD4:  DCD PEDCAM_SET_ptr - 0x3C3638
3C3CD8:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C374A
3C3CDC:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C39BA
3C3CE0:  DCD PEDCAM_SET_ptr - 0x3C39C0
3C3CE4:  DCFS -2.6
3C3CE8:  DCFS 1.95
3C3CEC:  DCD TheCamera_ptr - 0x3C3AF0
3C3CF0:  DCD TheCamera_ptr - 0x3C3B16
3C3CF4:  DCFS 0.3
3C3CF8:  DCD g_ikChainMan_ptr - 0x3C3BA0
3C3CFC:  DCB "FollowPedSA",0
3C3D08:  DCD AIMWEAPON_STICK_SENS_ptr - 0x3C3BDE
3C3D0C:  DCFS 80.0
3C3D10:  DCFS 0.071429
3C3D14:  DCFS 0.042857
3C3D18:  DCFS 0.0001
3C3D1C:  DCFS 0.0
3C3D20:  DCFS 100.0
3C3D24:  DCFS 0.0006
3C3D28:  DCFS 0.0008
3C3D2C:  DCFS 0.00025
3C3D30:  DCFS -0.0
3C3D34:  DCFS 0.02
3C3D38:  DCFS -80.0
3C3D3C:  DCFS 0.0005
3C3D40:  DCFS 3.1416
3C3D44:  DCFS -6.2832
3C3D48:  DCFS -3.1416
3C3D4C:  DCFS 6.2832
3C3D50:  DCFS 50.0
3C3D54:  DCFS 1000.0
3C3D58:  DCFS 0.0
3C3D5C:  ADDS            R5, R4, #4
3C3D5E:  MOV             R0, R5; this
3C3D60:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3C3D64:  B.W             loc_3F6840
3C3D68:  BLX             R1
3C3D6A:  MOVW            R1, #0x2BD
3C3D6E:  CMP             R0, R1
3C3D70:  BNE             loc_3C3D90
3C3D72:  MOV             R0, R5; this
3C3D74:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3C3D78:  VMOV            R2, S16; float
3C3D7C:  ADD             R3, SP, #0x100+var_9C
3C3D7E:  LDR             R5, [SP,#0x100+var_A8]
3C3D80:  ADD             R1, SP, #0x100+var_98
3C3D82:  STRD.W          R5, R3, [SP,#0x100+var_100]; float *
3C3D86:  MOV             R3, R11; float *
3C3D88:  STR             R1, [SP,#0x100+var_F8]; float *
3C3D8A:  MOV             R1, R8; CPed *
3C3D8C:  BLX             j__ZN20CTaskComplexEnterCar22GetCameraStickModifierEP4CPedfRfS2_S2_S2_; CTaskComplexEnterCar::GetCameraStickModifier(CPed *,float,float &,float &,float &,float &)
3C3D90:  LDR.W           R1, =(PEDCAM_SET_ptr - 0x3C3D9C)
3C3D94:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C3D9E)
3C3D98:  ADD             R1, PC; PEDCAM_SET_ptr
3C3D9A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C3D9C:  LDR             R1, [R1]; PEDCAM_SET
3C3D9E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C3DA0:  ADD.W           R4, R1, R9,LSL#2
3C3DA4:  LDR             R1, [R0]; y
3C3DA6:  LDR             R0, [R4,#(dword_6AA034 - 0x6AA014)]; x
3C3DA8:  BLX             powf
3C3DAC:  VLDR            S0, [SP,#0x100+var_98]
3C3DB0:  VLDR            S23, [R4,#0x24]
3C3DB4:  VADD.F32        S0, S18, S0
3C3DB8:  VMOV.F32        S2, S23
3C3DBC:  VMOV            S18, R0; this
3C3DC0:  VCMPE.F32       S0, S23
3C3DC4:  VMRS            APSR_nzcv, FPSCR
3C3DC8:  BGT             loc_3C3DE0
3C3DCA:  VNEG.F32        S4, S23
3C3DCE:  VMOV.F32        S2, S0
3C3DD2:  VCMPE.F32       S0, S4
3C3DD6:  VMRS            APSR_nzcv, FPSCR
3C3DDA:  IT LT
3C3DDC:  VMOVLT.F32      S2, S4
3C3DE0:  VSUB.F32        S26, S28, S18
3C3DE4:  VLDR            S0, [R10,#0x98]
3C3DE8:  VLDR            S29, =0.0001
3C3DEC:  VMUL.F32        S0, S18, S0
3C3DF0:  VLDR            S19, =0.0
3C3DF4:  VMUL.F32        S2, S26, S2
3C3DF8:  VADD.F32        S0, S2, S0
3C3DFC:  VABS.F32        S2, S0
3C3E00:  VCMPE.F32       S2, S29
3C3E04:  VMRS            APSR_nzcv, FPSCR
3C3E08:  IT LT
3C3E0A:  VMOVLT.F32      S0, S19
3C3E0E:  VSTR            S0, [R10,#0x98]
3C3E12:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C3E16:  CMP             R0, #2
3C3E18:  ITT EQ
3C3E1A:  LDRHEQ.W        R0, [R6,#0x110]; this
3C3E1E:  CMPEQ           R0, #0
3C3E20:  BEQ             loc_3C3EF0
3C3E22:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C3E26:  CMP             R0, #1
3C3E28:  BNE             loc_3C3EE0
3C3E2A:  SUB.W           R2, R7, #-var_91; bool *
3C3E2E:  MOV             R0, R6; this
3C3E30:  MOV             R1, R8; CPed *
3C3E32:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
3C3E36:  SUB.W           R2, R7, #-var_92; bool *
3C3E3A:  MOV             R5, R0
3C3E3C:  MOV             R0, R6; this
3C3E3E:  MOV             R1, R8; CPed *
3C3E40:  BLX             j__ZN4CPad15AimWeaponUpDownEP4CPedPb; CPad::AimWeaponUpDown(CPed *,bool *)
3C3E44:  LDR.W           R1, =(_ZN14MobileSettings8settingsE_ptr - 0x3C3E50)
3C3E48:  VLDR            S4, =100.0
3C3E4C:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
3C3E4E:  VLDR            S8, =0.0006
3C3E52:  LDR             R1, [R1]; MobileSettings::settings ...
3C3E54:  VLDR            S0, [R1,#0x328]
3C3E58:  VLDR            S2, [R1,#0x348]
3C3E5C:  VCVT.F32.S32    S0, S0
3C3E60:  VCVT.F32.S32    S2, S2
3C3E64:  VLDR            S6, [R10,#0x8C]
3C3E68:  VDIV.F32        S0, S0, S4
3C3E6C:  VDIV.F32        S2, S2, S4
3C3E70:  VLDR            S4, =0.0008
3C3E74:  VMUL.F32        S2, S2, S8
3C3E78:  VMOV            S8, R0
3C3E7C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C3E8C)
3C3E80:  VMUL.F32        S0, S0, S4
3C3E84:  VDIV.F32        S4, S6, S30
3C3E88:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C3E8A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C3E8C:  VLDR            S6, =0.00025
3C3E90:  VCVT.F32.S32    S8, S8
3C3E94:  VADD.F32        S2, S2, S6
3C3E98:  VADD.F32        S0, S0, S6
3C3E9C:  VMOV            S6, R5
3C3EA0:  VMUL.F32        S2, S2, S8
3C3EA4:  VMUL.F32        S0, S6, S0
3C3EA8:  VMUL.F32        S2, S2, S4
3C3EAC:  VMUL.F32        S6, S4, S0
3C3EB0:  VLDR            S0, [R0]
3C3EB4:  VMUL.F32        S8, S0, S2
3C3EB8:  VMUL.F32        S2, S0, S6
3C3EBC:  VNMUL.F32       S4, S0, S6
3C3EC0:  VLDR            S6, =-0.0
3C3EC4:  VSTR            S8, [SP,#0x100+var_9C]
3C3EC8:  VCMP.F32        S2, S6
3C3ECC:  VMRS            APSR_nzcv, FPSCR
3C3ED0:  VSTR            S4, [SP,#0x100+var_98]
3C3ED4:  BEQ             loc_3C3F88
3C3ED6:  VLDR            S0, [R10,#0x94]
3C3EDA:  VSUB.F32        S0, S0, S2
3C3EDE:  B               loc_3C408A
3C3EE0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C3EE4:  CMP             R0, #0
3C3EE6:  BEQ             loc_3C3F90
3C3EE8:  LDR             R0, [SP,#0x100+var_A8]
3C3EEA:  VLDR            S0, [R0]
3C3EEE:  B               loc_3C4094
3C3EF0:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C3EFC)
3C3EF4:  VLDR            S2, =100.0
3C3EF8:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C3EFA:  VLDR            S4, =0.02
3C3EFE:  LDR             R0, [R0]; MobileSettings::settings ...
3C3F00:  VLDR            S0, [R0,#0x3E8]
3C3F04:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C3F14)
3C3F08:  VCVT.F32.S32    S0, S0
3C3F0C:  VLDR            S6, [R10,#0x8C]
3C3F10:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C3F12:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C3F14:  VDIV.F32        S0, S0, S2
3C3F18:  VLDR            S2, =-80.0
3C3F1C:  VMUL.F32        S0, S0, S4
3C3F20:  VLDR            S4, =0.0005
3C3F24:  VDIV.F32        S2, S6, S2
3C3F28:  VADD.F32        S0, S0, S4
3C3F2C:  VLDR            S4, [R0,#0xC]
3C3F30:  LDR.W           R0, =(byte_952DF8 - 0x3C3F38)
3C3F34:  ADD             R0, PC; byte_952DF8
3C3F36:  VMUL.F32        S0, S4, S0
3C3F3A:  VMUL.F32        S0, S2, S0
3C3F3E:  VSTR            S0, [SP,#0x100+var_98]
3C3F42:  LDRB            R0, [R0]
3C3F44:  DMB.W           ISH
3C3F48:  TST.W           R0, #1
3C3F4C:  BNE             loc_3C3F70
3C3F4E:  LDR.W           R0, =(byte_952DF8 - 0x3C3F56)
3C3F52:  ADD             R0, PC; byte_952DF8 ; __guard *
3C3F54:  BLX             j___cxa_guard_acquire
3C3F58:  CBZ             R0, loc_3C3F70
3C3F5A:  LDR             R0, [SP,#0x100+var_A8]
3C3F5C:  LDR.W           R1, =(dword_952DF4 - 0x3C3F66)
3C3F60:  LDR             R2, [R0]
3C3F62:  ADD             R1, PC; dword_952DF4
3C3F64:  LDR.W           R0, =(byte_952DF8 - 0x3C3F6E)
3C3F68:  STR             R2, [R1]
3C3F6A:  ADD             R0, PC; byte_952DF8 ; __guard *
3C3F6C:  BLX             j___cxa_guard_release
3C3F70:  LDRB.W          R0, [R10,#0xB]
3C3F74:  CBZ             R0, loc_3C3FBE
3C3F76:  LDR             R1, [SP,#0x100+var_A8]
3C3F78:  LDR.W           R0, =(dword_952DF4 - 0x3C3F82)
3C3F7C:  LDR             R1, [R1]
3C3F7E:  ADD             R0, PC; dword_952DF4
3C3F80:  STR             R1, [R0]
3C3F82:  VMOV            S0, R1
3C3F86:  B               loc_3C3FC8
3C3F88:  LDRB.W          R0, [R7,#var_91]
3C3F8C:  CMP             R0, #0
3C3F8E:  B               loc_3C3FA2
3C3F90:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C3F9C)
3C3F94:  LDRB.W          R1, [R7,#var_91]
3C3F98:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C3F9A:  CMP             R1, #0
3C3F9C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C3F9E:  VLDR            S0, [R0]
3C3FA2:  VMOV.F32        S2, #1.0
3C3FA6:  IT EQ
3C3FA8:  VMOVEQ.F32      S2, S0
3C3FAC:  VLDR            S4, [R10,#0x98]
3C3FB0:  VLDR            S0, [R10,#0x94]
3C3FB4:  VMUL.F32        S2, S4, S2
3C3FB8:  VADD.F32        S0, S0, S2
3C3FBC:  B               loc_3C4090
3C3FBE:  LDR.W           R0, =(dword_952DF4 - 0x3C3FC6)
3C3FC2:  ADD             R0, PC; dword_952DF4
3C3FC4:  VLDR            S0, [R0]
3C3FC8:  VLDR            S2, [SP,#0x100+var_98]
3C3FCC:  LDR.W           R0, =(dword_952DF4 - 0x3C3FDC)
3C3FD0:  VADD.F32        S0, S2, S0
3C3FD4:  VLDR            S2, =3.1416
3C3FD8:  ADD             R0, PC; dword_952DF4
3C3FDA:  VCMPE.F32       S0, S2
3C3FDE:  VSTR            S0, [R0]
3C3FE2:  VMRS            APSR_nzcv, FPSCR
3C3FE6:  BLE             loc_3C3FEE
3C3FE8:  VLDR            S2, =-6.2832
3C3FEC:  B               loc_3C4000
3C3FEE:  VLDR            S2, =-3.1416
3C3FF2:  VCMPE.F32       S0, S2
3C3FF6:  VMRS            APSR_nzcv, FPSCR
3C3FFA:  BGE             loc_3C400E
3C3FFC:  VLDR            S2, =6.2832
3C4000:  VADD.F32        S0, S0, S2
3C4004:  LDR.W           R0, =(dword_952DF4 - 0x3C400C)
3C4008:  ADD             R0, PC; dword_952DF4
3C400A:  VSTR            S0, [R0]
3C400E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C401A)
3C4012:  VLDR            S2, =50.0
3C4016:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C4018:  VLDR            S8, =3.1416
3C401C:  VLDR            S10, =-3.1416
3C4020:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C4022:  VLDR            S4, [R0]
3C4026:  VDIV.F32        S2, S4, S2
3C402A:  VLDR            S4, =1000.0
3C402E:  VMUL.F32        S2, S2, S4
3C4032:  VCVT.U32.F32    S2, S2
3C4036:  VCVT.F32.U32    S2, S2
3C403A:  VLDR            S6, [R10,#0x94]
3C403E:  VSUB.F32        S0, S0, S6
3C4042:  VDIV.F32        S2, S2, S4
3C4046:  VCMPE.F32       S0, S8
3C404A:  VLDR            S4, =-6.2832
3C404E:  VMRS            APSR_nzcv, FPSCR
3C4052:  VMOV.F32        S8, #12.5
3C4056:  VADD.F32        S4, S0, S4
3C405A:  VMUL.F32        S2, S2, S8
3C405E:  IT GT
3C4060:  VMOVGT.F32      S0, S4
3C4064:  VLDR            S4, =6.2832
3C4068:  VCMPE.F32       S0, S10
3C406C:  VMRS            APSR_nzcv, FPSCR
3C4070:  VADD.F32        S4, S0, S4
3C4074:  IT LT
3C4076:  VMOVLT.F32      S0, S4
3C407A:  VMOV.F32        S4, #1.0
3C407E:  VMIN.F32        D1, D1, D2
3C4082:  VMUL.F32        S0, S0, S2
3C4086:  VADD.F32        S0, S6, S0
3C408A:  MOVS            R0, #0
3C408C:  STR.W           R0, [R10,#0x98]
3C4090:  VSTR            S0, [R10,#0x94]
3C4094:  VLDR            S2, =3.1416
3C4098:  VCMPE.F32       S0, S2
3C409C:  VMRS            APSR_nzcv, FPSCR
3C40A0:  BLE             loc_3C40A8
3C40A2:  VLDR            S25, =-6.2832
3C40A6:  B               loc_3C40B6
3C40A8:  VLDR            S2, =-3.1416
3C40AC:  VCMPE.F32       S0, S2
3C40B0:  VMRS            APSR_nzcv, FPSCR
3C40B4:  BGE             loc_3C40C0
3C40B6:  VADD.F32        S0, S0, S25
3C40BA:  LDR             R0, [SP,#0x100+var_A8]
3C40BC:  VSTR            S0, [R0]
3C40C0:  VLDR            S0, [SP,#0x100+var_9C]
3C40C4:  VLDR            S2, [R10,#0x88]
3C40C8:  VMUL.F32        S0, S18, S0
3C40CC:  VMUL.F32        S2, S26, S2
3C40D0:  VADD.F32        S25, S0, S2
3C40D4:  VCMPE.F32       S25, S23
3C40D8:  VSTR            S25, [R10,#0x88]
3C40DC:  VMRS            APSR_nzcv, FPSCR
3C40E0:  BGT             loc_3C40F0
3C40E2:  VNEG.F32        S23, S23
3C40E6:  VCMPE.F32       S25, S23
3C40EA:  VMRS            APSR_nzcv, FPSCR
3C40EE:  BGE             loc_3C40F8
3C40F0:  VMOV.F32        S25, S23
3C40F4:  VSTR            S23, [R10,#0x88]
3C40F8:  VABS.F32        S0, S25
3C40FC:  VMOV.F32        S2, #1.0
3C4100:  VCMPE.F32       S0, S29
3C4104:  VMRS            APSR_nzcv, FPSCR
3C4108:  VMOV.F32        S18, S2
3C410C:  ITTT LT
3C410E:  MOVLT           R0, #0
3C4110:  VLDRLT          S25, =0.0
3C4114:  STRLT.W         R0, [R10,#0x88]
3C4118:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C4124)
3C411C:  LDRB.W          R1, [R7,#var_92]
3C4120:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C4122:  CMP             R1, #0
3C4124:  LDR             R0, [R0]; this
3C4126:  VLDR            S0, [R0]
3C412A:  IT EQ
3C412C:  VMOVEQ.F32      S18, S0
3C4130:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C4134:  VMOV.F32        S23, S20
3C4138:  CMP             R0, #2
3C413A:  ITT EQ
3C413C:  LDRHEQ.W        R0, [R6,#0x110]
3C4140:  CMPEQ           R0, #0
3C4142:  BEQ             loc_3C417C
3C4144:  VMOV.F32        S4, #1.0
3C4148:  LDR             R0, [SP,#0x100+var_D4]
3C414A:  VLDR            S2, [SP,#0x100+var_D0]
3C414E:  VMOV            S0, R0
3C4152:  VSUB.F32        S2, S31, S2
3C4156:  VSUB.F32        S0, S4, S0
3C415A:  VMUL.F32        S4, S24, S27
3C415E:  VMUL.F32        S0, S0, S2
3C4162:  VLDR            S2, [R11]
3C4166:  VMIN.F32        D16, D0, D2
3C416A:  VNMUL.F32       S0, S24, S27
3C416E:  VMAX.F32        D0, D16, D0
3C4172:  VADD.F32        S20, S0, S2
3C4176:  VSTR            S20, [R11]
3C417A:  B               loc_3C43C2
3C417C:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C4188)
3C4180:  VLDR            S2, =100.0
3C4184:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C4186:  LDR             R0, [R0]; MobileSettings::settings ...
3C4188:  ADD.W           R1, R0, #0x408
3C418C:  VLDR            S0, [R1]
3C4190:  LDR.W           R1, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C41A0)
3C4194:  VCVT.F32.S32    S0, S0
3C4198:  VLDR            S4, [R10,#0x8C]
3C419C:  ADD             R1, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C419E:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3C41A2:  LDR             R1, [R1]; CPad::NewMouseControllerState ...
3C41A4:  CMP             R0, #0
3C41A6:  VDIV.F32        S0, S0, S2
3C41AA:  VLDR            S2, =0.0175
3C41AE:  VMUL.F32        S0, S0, S2
3C41B2:  VDIV.F32        S2, S4, S30
3C41B6:  VLDR            S4, =0.0005
3C41BA:  VADD.F32        S0, S0, S4
3C41BE:  VLDR            S4, [R1,#0x10]
3C41C2:  LDR.W           R1, =(TheCamera_ptr - 0x3C41CA)
3C41C6:  ADD             R1, PC; TheCamera_ptr
3C41C8:  LDR             R0, [R1]; TheCamera
3C41CA:  VMUL.F32        S0, S4, S0
3C41CE:  VMUL.F32        S4, S2, S0
3C41D2:  VNMUL.F32       S0, S2, S0
3C41D6:  IT EQ
3C41D8:  VMOVEQ.F32      S4, S0
3C41DC:  LDRB.W          R0, [R0,#(byte_951FF7 - 0x951FA8)]
3C41E0:  VSTR            S4, [SP,#0x100+var_9C]
3C41E4:  CBZ             R0, loc_3C4214
3C41E6:  LDR.W           R0, =(_ZN5CDraw9FadeValueE_ptr - 0x3C41F2)
3C41EA:  LDR.W           R1, =(TheCamera_ptr - 0x3C41F4)
3C41EE:  ADD             R0, PC; _ZN5CDraw9FadeValueE_ptr
3C41F0:  ADD             R1, PC; TheCamera_ptr
3C41F2:  LDR             R0, [R0]; CDraw::FadeValue ...
3C41F4:  LDR             R1, [R1]; TheCamera
3C41F6:  LDRB            R2, [R0]; CDraw::FadeValue
3C41F8:  LDRH.W          R0, [R1,#(word_952B60 - 0x951FA8)]
3C41FC:  MOVS            R1, #0
3C41FE:  CMP             R2, #0x2D ; '-'
3C4200:  IT HI
3C4202:  MOVHI           R1, #1
3C4204:  CMP             R0, #1
3C4206:  IT NE
3C4208:  MOVNE           R0, #0
3C420A:  CMP             R2, #0xC8
3C420C:  BHI             loc_3C4222
3C420E:  ANDS            R0, R1
3C4210:  BEQ             loc_3C425C
3C4212:  B               loc_3C4222
3C4214:  LDR.W           R0, =(_ZN5CDraw9FadeValueE_ptr - 0x3C421C)
3C4218:  ADD             R0, PC; _ZN5CDraw9FadeValueE_ptr
3C421A:  LDR             R0, [R0]; CDraw::FadeValue ...
3C421C:  LDRB            R0, [R0]; CDraw::FadeValue
3C421E:  CMP             R0, #0xC9
3C4220:  BCC             loc_3C425C
3C4222:  VLDR            S0, =-0.05
3C4226:  VSUB.F32        S2, S0, S23
3C422A:  VLDR            S0, [R11]
3C422E:  VCMPE.F32       S0, S2
3C4232:  VMRS            APSR_nzcv, FPSCR
3C4236:  BGE             loc_3C4244
3C4238:  MOV             R0, #0x3D4CCCCD
3C4240:  STR             R0, [SP,#0x100+var_9C]
3C4242:  B               loc_3C425C
3C4244:  VNEG.F32        S2, S23
3C4248:  VCMPE.F32       S0, S2
3C424C:  VMRS            APSR_nzcv, FPSCR
3C4250:  BGE.W           loc_3C4C6E
3C4254:  VSUB.F32        S0, S2, S0
3C4258:  VSTR            S0, [SP,#0x100+var_9C]
3C425C:  LDR.W           R0, =(byte_952E00 - 0x3C4264)
3C4260:  ADD             R0, PC; byte_952E00
3C4262:  LDRB            R0, [R0]
3C4264:  DMB.W           ISH
3C4268:  TST.W           R0, #1
3C426C:  BNE             loc_3C4290
3C426E:  LDR.W           R0, =(byte_952E00 - 0x3C4276)
3C4272:  ADD             R0, PC; byte_952E00 ; __guard *
3C4274:  BLX             j___cxa_guard_acquire
3C4278:  CBZ             R0, loc_3C4290
3C427A:  LDR.W           R1, =(dword_952DFC - 0x3C4286)
3C427E:  LDR.W           R0, =(byte_952E00 - 0x3C428C)
3C4282:  ADD             R1, PC; dword_952DFC
3C4284:  LDR.W           R2, [R11]
3C4288:  ADD             R0, PC; byte_952E00 ; __guard *
3C428A:  STR             R2, [R1]
3C428C:  BLX             j___cxa_guard_release
3C4290:  LDRB.W          R0, [R10,#0xB]
3C4294:  CBZ             R0, loc_3C42AE
3C4296:  LDR.W           R0, =(dword_952DFC - 0x3C42A2)
3C429A:  LDR.W           R1, [R10,#0x84]
3C429E:  ADD             R0, PC; dword_952DFC
3C42A0:  VMOV            S0, R1
3C42A4:  STR             R1, [R0]
3C42A6:  MOVS            R0, #0
3C42A8:  STRB.W          R0, [R10,#0xB]
3C42AC:  B               loc_3C42B8
3C42AE:  LDR.W           R0, =(dword_952DFC - 0x3C42B6)
3C42B2:  ADD             R0, PC; dword_952DFC
3C42B4:  VLDR            S0, [R0]
3C42B8:  VLDR            S2, [SP,#0x100+var_9C]
3C42BC:  LDR.W           R0, =(dword_952DFC - 0x3C42CC)
3C42C0:  VADD.F32        S0, S2, S0
3C42C4:  VLDR            S2, =3.1416
3C42C8:  ADD             R0, PC; dword_952DFC
3C42CA:  VCMPE.F32       S0, S2
3C42CE:  VSTR            S0, [R0]
3C42D2:  VMRS            APSR_nzcv, FPSCR
3C42D6:  BLE             loc_3C431C
3C42D8:  VLDR            S2, =-6.2832
3C42DC:  B               loc_3C432E
3C42DE:  ALIGN 0x10
3C42E0:  DCFS 100.0
3C42E4:  DCFS 0.0175
3C42E8:  DCFS 0.0005
3C42EC:  DCFS -0.05
3C42F0:  DCFS 3.1416
3C42F4:  DCFS -6.2832
3C42F8:  DCFS -3.1416
3C42FC:  DCFS 6.2832
3C4300:  DCFS 50.0
3C4304:  DCFS 1000.0
3C4308:  DCFS 100000.0
3C430C:  DCFS 10000.0
3C4310:  DCFS -1.5708
3C4314:  DCFS -6.2832
3C4318:  DCFS -3.1416
3C431C:  VLDR            S2, =-3.1416
3C4320:  VCMPE.F32       S0, S2
3C4324:  VMRS            APSR_nzcv, FPSCR
3C4328:  BGE             loc_3C433C
3C432A:  VLDR            S2, =6.2832
3C432E:  VADD.F32        S0, S0, S2
3C4332:  LDR.W           R0, =(dword_952DFC - 0x3C433A)
3C4336:  ADD             R0, PC; dword_952DFC
3C4338:  VSTR            S0, [R0]
3C433C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C4348)
3C4340:  VLDR            S2, =50.0
3C4344:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C4346:  VLDR            S8, =3.1416
3C434A:  VLDR            S10, =-3.1416
3C434E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C4350:  VLDR            S4, [R0]
3C4354:  MOVS            R0, #0
3C4356:  VDIV.F32        S2, S4, S2
3C435A:  VLDR            S4, =1000.0
3C435E:  VMUL.F32        S2, S2, S4
3C4362:  VCVT.U32.F32    S2, S2
3C4366:  VCVT.F32.U32    S2, S2
3C436A:  VLDR            S6, [R10,#0x84]
3C436E:  VSUB.F32        S0, S0, S6
3C4372:  VDIV.F32        S2, S2, S4
3C4376:  VCMPE.F32       S0, S8
3C437A:  VLDR            S4, =-6.2832
3C437E:  VMRS            APSR_nzcv, FPSCR
3C4382:  VMOV.F32        S8, #12.5
3C4386:  VADD.F32        S4, S0, S4
3C438A:  VMUL.F32        S2, S2, S8
3C438E:  IT GT
3C4390:  VMOVGT.F32      S0, S4
3C4394:  VLDR            S4, =6.2832
3C4398:  VCMPE.F32       S0, S10
3C439C:  VMRS            APSR_nzcv, FPSCR
3C43A0:  VADD.F32        S4, S0, S4
3C43A4:  IT LT
3C43A6:  VMOVLT.F32      S0, S4
3C43AA:  VMOV.F32        S4, #1.0
3C43AE:  STR.W           R0, [R10,#0x88]
3C43B2:  VMIN.F32        D1, D1, D2
3C43B6:  VMUL.F32        S0, S0, S2
3C43BA:  VADD.F32        S20, S6, S0
3C43BE:  VSTR            S20, [R10,#0x84]
3C43C2:  VCMPE.F32       S20, S22
3C43C6:  VMRS            APSR_nzcv, FPSCR
3C43CA:  BGT             loc_3C43DE
3C43CC:  VLDR            S0, [SP,#0x100+var_CC]
3C43D0:  VNEG.F32        S22, S0
3C43D4:  VCMPE.F32       S20, S22
3C43D8:  VMRS            APSR_nzcv, FPSCR
3C43DC:  BGE             loc_3C43EC
3C43DE:  VMOV.F32        S20, S22
3C43E2:  MOVS            R0, #0
3C43E4:  STR.W           R0, [R10,#0x88]
3C43E8:  VSTR            S22, [R10,#0x84]
3C43EC:  LDR.W           R0, =(unk_6AA08C - 0x3C43F8)
3C43F0:  LDR.W           R1, =(unk_6AA090 - 0x3C43FA)
3C43F4:  ADD             R0, PC; unk_6AA08C
3C43F6:  ADD             R1, PC; unk_6AA090
3C43F8:  VLDR            S0, [R0]
3C43FC:  LDR.W           R0, =(unk_6AA08C - 0x3C4408)
3C4400:  VSUB.F32        S2, S0, S20
3C4404:  ADD             R0, PC; unk_6AA08C
3C4406:  VABS.F32        S2, S2
3C440A:  VCMPE.F32       S2, S29
3C440E:  VMRS            APSR_nzcv, FPSCR
3C4412:  ITT LT
3C4414:  VSTRLT          S0, [R11]
3C4418:  VMOVLT.F32      S20, S0
3C441C:  VMUL.F32        S0, S25, S18
3C4420:  VLDR            S2, [R1]
3C4424:  MOV             R11, R6
3C4426:  VSTR            S20, [R0]
3C442A:  LDR             R0, [SP,#0x100+var_A8]
3C442C:  VLDR            S22, [R0]
3C4430:  VADD.F32        S18, S31, S0
3C4434:  VSUB.F32        S4, S2, S22
3C4438:  VABS.F32        S4, S4
3C443C:  VCMPE.F32       S4, S29
3C4440:  VMRS            APSR_nzcv, FPSCR
3C4444:  ITTT LT
3C4446:  LDRLT           R0, [SP,#0x100+var_A8]
3C4448:  VSTRLT          S2, [R0]
3C444C:  VMOVLT.F32      S22, S2
3C4450:  VMOV            R5, S22
3C4454:  MOV             R0, R5; x
3C4456:  BLX             cosf
3C445A:  VMOV            R4, S20
3C445E:  MOV             R9, R0
3C4460:  MOV             R0, R4; x
3C4462:  BLX             cosf
3C4466:  MOV             R6, R0
3C4468:  MOV             R0, R5; x
3C446A:  BLX             sinf
3C446E:  VMOV            S0, R0
3C4472:  LDR.W           R0, =(unk_6AA090 - 0x3C447E)
3C4476:  VMOV            S2, R6
3C447A:  ADD             R0, PC; unk_6AA090
3C447C:  VMOV            S4, R9
3C4480:  VNMUL.F32       S20, S2, S0
3C4484:  VSTR            S22, [R0]
3C4488:  MOV             R0, R4; x
3C448A:  VNMUL.F32       S24, S4, S2
3C448E:  BLX             sinf
3C4492:  STR.W           R0, [R10,#0x170]
3C4496:  MOVS            R5, #0
3C4498:  MOV.W           R0, #0x3F800000
3C449C:  VSTR            S24, [R10,#0x168]
3C44A0:  VSTR            S20, [R10,#0x16C]
3C44A4:  STRD.W          R5, R5, [R10,#0x18C]
3C44A8:  STR.W           R0, [R10,#0x194]
3C44AC:  LDR             R6, [SP,#0x100+var_C4]
3C44AE:  MOV             R0, R6; this
3C44B0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C44B4:  VLDR            S0, [R10,#0x168]
3C44B8:  ADD.W           R9, R10, #0x18C
3C44BC:  VCMP.F32        S0, #0.0
3C44C0:  VMRS            APSR_nzcv, FPSCR
3C44C4:  BNE             loc_3C44E0
3C44C6:  VLDR            S0, [R10,#0x16C]
3C44CA:  VCMP.F32        S0, #0.0
3C44CE:  VMRS            APSR_nzcv, FPSCR
3C44D2:  ITTT EQ
3C44D4:  MOVWEQ          R0, #0xB717
3C44D8:  MOVTEQ          R0, #0x38D1
3C44DC:  STRDEQ.W        R0, R0, [R10,#0x168]
3C44E0:  ADD             R0, SP, #0x100+var_80; CVector *
3C44E2:  MOV             R1, R6; CVector *
3C44E4:  MOV             R2, R9
3C44E6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C44EA:  ADD             R4, SP, #0x100+iptr
3C44EC:  LDR             R0, [SP,#0x100+var_78]
3C44EE:  VLDR            D16, [SP,#0x100+var_80]
3C44F2:  STR             R0, [SP,#0x100+var_68]
3C44F4:  MOV             R0, R4; this
3C44F6:  VSTR            D16, [SP,#0x100+iptr]
3C44FA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C44FE:  ADD             R0, SP, #0x100+var_80; CVector *
3C4500:  MOV             R1, R4; CVector *
3C4502:  MOV             R2, R6
3C4504:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C4508:  LDR.W           R0, =(TheCamera_ptr - 0x3C451C)
3C450C:  VMOV.F32        S22, #5.0
3C4510:  VLDR            D16, [SP,#0x100+var_80]
3C4514:  VMOV.F32        S26, #-5.0
3C4518:  ADD             R0, PC; TheCamera_ptr
3C451A:  LDR             R1, [SP,#0x100+var_78]
3C451C:  STR.W           R1, [R9,#8]
3C4520:  VMOV.F32        S28, #10.0
3C4524:  LDR             R0, [R0]; TheCamera
3C4526:  ADD             R1, SP, #0x100+iptr; iptr
3C4528:  VSTR            D16, [R9]
3C452C:  VLDR            S20, [SP,#0x100+var_90]
3C4530:  STRH            R5, [R0,#(word_951FC2 - 0x951FA8)]
3C4532:  VMOV.F32        S6, S22
3C4536:  VLDR            S0, [R10,#0x168]
3C453A:  VLDR            S24, =100000.0
3C453E:  VMUL.F32        S0, S16, S0
3C4542:  VLDR            S2, [R10,#0x16C]
3C4546:  VLDR            S4, [R10,#0x170]
3C454A:  VLDR            S30, [SP,#0x100+var_90+4]
3C454E:  VMUL.F32        S2, S16, S2
3C4552:  VLDR            S21, [SP,#0x100+var_88]
3C4556:  VMUL.F32        S4, S16, S4
3C455A:  VSUB.F32        S0, S20, S0
3C455E:  VSUB.F32        S2, S30, S2
3C4562:  VSUB.F32        S4, S21, S4
3C4566:  VCMPE.F32       S0, #0.0
3C456A:  VMRS            APSR_nzcv, FPSCR
3C456E:  VMUL.F32        S8, S0, S24
3C4572:  IT LT
3C4574:  VMOVLT.F32      S6, S26
3C4578:  VSTR            S0, [R10,#0x174]
3C457C:  VADD.F32        S6, S8, S6
3C4580:  VSTR            S2, [R10,#0x178]
3C4584:  VSTR            S4, [R10,#0x17C]
3C4588:  VDIV.F32        S6, S6, S28
3C458C:  VMOV            R0, S6; x
3C4590:  BLX             modff
3C4594:  VLDR            S2, [R10,#0x178]
3C4598:  VMOV.F32        S4, S22
3C459C:  VLDR            S0, [SP,#0x100+iptr]
3C45A0:  ADD             R1, SP, #0x100+iptr; iptr
3C45A2:  VCMPE.F32       S2, #0.0
3C45A6:  VLDR            S25, =10000.0
3C45AA:  VMRS            APSR_nzcv, FPSCR
3C45AE:  VMUL.F32        S2, S2, S24
3C45B2:  VDIV.F32        S0, S0, S25
3C45B6:  IT LT
3C45B8:  VMOVLT.F32      S4, S26
3C45BC:  VADD.F32        S2, S2, S4
3C45C0:  VSTR            S0, [R10,#0x174]
3C45C4:  VDIV.F32        S2, S2, S28
3C45C8:  VMOV            R0, S2; x
3C45CC:  BLX             modff
3C45D0:  VLDR            S2, [R10,#0x17C]
3C45D4:  VMOV.F32        S4, S22
3C45D8:  VLDR            S0, [SP,#0x100+iptr]
3C45DC:  ADD             R1, SP, #0x100+iptr; iptr
3C45DE:  VCMPE.F32       S2, #0.0
3C45E2:  VMRS            APSR_nzcv, FPSCR
3C45E6:  VMUL.F32        S2, S2, S24
3C45EA:  VDIV.F32        S0, S0, S25
3C45EE:  IT LT
3C45F0:  VMOVLT.F32      S4, S26
3C45F4:  VADD.F32        S2, S2, S4
3C45F8:  VSTR            S0, [R10,#0x178]
3C45FC:  VDIV.F32        S2, S2, S28
3C4600:  VMOV            R0, S2; x
3C4604:  BLX             modff
3C4608:  VADD.F32        S0, S23, S18
3C460C:  VLDR            S2, [SP,#0x100+iptr]
3C4610:  VDIV.F32        S18, S2, S25
3C4614:  VMOV            R4, S0
3C4618:  MOV             R0, R4; x
3C461A:  BLX             cosf
3C461E:  LDR.W           R5, [R10,#0x94]
3C4622:  VMOV            S23, R0
3C4626:  MOV             R0, R5; x
3C4628:  BLX             cosf
3C462C:  VMOV            S27, R0
3C4630:  MOV             R0, R5; x
3C4632:  BLX             sinf
3C4636:  VMOV            S0, R0
3C463A:  MOV             R0, R4; x
3C463C:  VMUL.F32        S27, S27, S23
3C4640:  VMUL.F32        S23, S23, S0
3C4644:  BLX             sinf
3C4648:  VLDR            D3, [SP,#0x100+var_C0]
3C464C:  VMOV            S0, R0
3C4650:  VMUL.F32        S8, S16, S27
3C4654:  MOV             R4, R11
3C4656:  VMUL.F32        S2, S6, S0
3C465A:  MOV             R0, R4; this
3C465C:  VMUL.F32        S4, S6, S27
3C4660:  VSTR            S18, [R10,#0x17C]
3C4664:  VMUL.F32        S0, S16, S0
3C4668:  VMUL.F32        S6, S6, S23
3C466C:  VMUL.F32        S10, S16, S23
3C4670:  VADD.F32        S8, S20, S8
3C4674:  VSUB.F32        S2, S21, S2
3C4678:  VADD.F32        S4, S4, S20
3C467C:  VSUB.F32        S0, S21, S0
3C4680:  VADD.F32        S6, S6, S30
3C4684:  VADD.F32        S10, S30, S10
3C4688:  VSTR            S4, [R10,#0x1B0]
3C468C:  VSTR            S6, [R10,#0x1B4]
3C4690:  VSTR            S2, [R10,#0x1B8]
3C4694:  VSTR            S8, [R10,#0x1BC]
3C4698:  VSTR            S10, [R10,#0x1C0]
3C469C:  VSTR            S0, [R10,#0x1C4]
3C46A0:  BLX             j__ZN4CPad26GetForceCameraBehindPlayerEv; CPad::GetForceCameraBehindPlayer(void)
3C46A4:  CMP             R0, #1
3C46A6:  BNE             loc_3C4736
3C46A8:  MOV             R0, R4; this
3C46AA:  MOVS            R1, #0; CPed *
3C46AC:  MOVS            R2, #0; bool *
3C46AE:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
3C46B2:  VMOV            S0, R0
3C46B6:  VCMP.F32        S0, #0.0
3C46BA:  VMRS            APSR_nzcv, FPSCR
3C46BE:  BEQ             loc_3C4736
3C46C0:  ADDW            R0, R8, #0x55C
3C46C4:  VLDR            S2, =-1.5708
3C46C8:  VLDR            S4, =3.1416
3C46CC:  VLDR            S0, [R0]
3C46D0:  LDR             R0, [SP,#0x100+var_A8]
3C46D2:  VADD.F32        S2, S0, S2
3C46D6:  VLDR            S0, [R0]
3C46DA:  VSUB.F32        S2, S0, S2
3C46DE:  VCMPE.F32       S2, S4
3C46E2:  VMRS            APSR_nzcv, FPSCR
3C46E6:  BLE             loc_3C46EE
3C46E8:  VLDR            S4, =-6.2832
3C46EC:  B               loc_3C4700
3C46EE:  VLDR            S4, =-3.1416
3C46F2:  VCMPE.F32       S2, S4
3C46F6:  VMRS            APSR_nzcv, FPSCR
3C46FA:  BGE             loc_3C4704
3C46FC:  VLDR            S4, =6.2832
3C4700:  VADD.F32        S2, S2, S4
3C4704:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C4714)
3C4708:  VABS.F32        S2, S2
3C470C:  VLDR            S4, =0.1
3C4710:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C4712:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C4714:  VLDR            S6, [R0]
3C4718:  VMUL.F32        S4, S6, S4
3C471C:  VCMPE.F32       S2, S4
3C4720:  VMRS            APSR_nzcv, FPSCR
3C4724:  ITTTT LT
3C4726:  VLDRLT          S2, =1.5708
3C472A:  VADDLT.F32      S0, S0, S2
3C472E:  ADDLT.W         R0, R8, #0x560
3C4732:  VSTRLT          S0, [R0]
3C4736:  LDR.W           R0, [R8,#0x440]; this
3C473A:  MOVS            R1, #1; bool
3C473C:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
3C4740:  LDR.W           R0, [R8,#0x440]; this
3C4744:  MOVS            R1, #1; bool
3C4746:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
3C474A:  CBZ             R0, loc_3C4790
3C474C:  LDR             R1, [SP,#0x100+var_B0]
3C474E:  LDRB            R1, [R1,#3]
3C4750:  LSLS            R1, R1, #0x1D
3C4752:  BPL             loc_3C4790
3C4754:  LDRB            R0, [R0,#0x19]
3C4756:  CBNZ            R0, loc_3C4790
3C4758:  VLDR            S0, [R8,#0x48]
3C475C:  ADR.W           R0, dword_3C4CA0
3C4760:  VLDR            S2, [R8,#0x4C]
3C4764:  VMUL.F32        S0, S0, S0
3C4768:  VLDR            S4, [R8,#0x50]
3C476C:  VMUL.F32        S2, S2, S2
3C4770:  VMUL.F32        S4, S4, S4
3C4774:  VADD.F32        S0, S0, S2
3C4778:  VLDR            S2, =0.000001
3C477C:  VADD.F32        S0, S0, S4
3C4780:  VCMPE.F32       S0, S2
3C4784:  VMRS            APSR_nzcv, FPSCR
3C4788:  IT GT
3C478A:  ADDGT           R0, #4
3C478C:  VLDR            S19, [R0]
3C4790:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C479C)
3C4794:  LDR.W           R1, =(TheCamera_ptr - 0x3C47A2)
3C4798:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C479A:  VLDR            S0, =0.1
3C479E:  ADD             R1, PC; TheCamera_ptr
3C47A0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C47A2:  LDR             R4, [R1]; TheCamera
3C47A4:  VLDR            S2, [R0]
3C47A8:  ADDW            R0, R4, #0xBDC
3C47AC:  VLDR            S4, [R0]
3C47B0:  VMUL.F32        S0, S2, S0
3C47B4:  VSUB.F32        S2, S19, S4
3C47B8:  VMUL.F32        S0, S2, S0
3C47BC:  VADD.F32        S0, S4, S0
3C47C0:  VSTR            S0, [R0]
3C47C4:  VLDR            S2, [R10,#0x17C]
3C47C8:  VADD.F32        S0, S2, S0
3C47CC:  VSTR            S0, [R10,#0x17C]
3C47D0:  VLDR            S0, [R0]
3C47D4:  VLDR            S2, [SP,#0x100+var_88]
3C47D8:  VADD.F32        S0, S0, S2
3C47DC:  VMOV.F32        S2, S22
3C47E0:  VSTR            S0, [SP,#0x100+var_88]
3C47E4:  VLDR            S0, [R10,#0x174]
3C47E8:  VCMPE.F32       S0, #0.0
3C47EC:  VMRS            APSR_nzcv, FPSCR
3C47F0:  VMUL.F32        S0, S0, S24
3C47F4:  IT LT
3C47F6:  VMOVLT.F32      S2, S26
3C47FA:  VLDR            D16, [SP,#0x100+var_90]
3C47FE:  VADD.F32        S0, S0, S2
3C4802:  LDR             R1, [SP,#0x100+var_88]
3C4804:  VSTR            D16, [R10,#0x120]
3C4808:  STR.W           R1, [R10,#0x128]
3C480C:  ADD             R1, SP, #0x100+iptr; iptr
3C480E:  VDIV.F32        S0, S0, S28
3C4812:  VMOV            R0, S0; x
3C4816:  BLX             modff
3C481A:  VLDR            S2, [R10,#0x178]
3C481E:  VMOV.F32        S4, S22
3C4822:  VLDR            S0, [SP,#0x100+iptr]
3C4826:  ADD             R1, SP, #0x100+iptr; iptr
3C4828:  VCMPE.F32       S2, #0.0
3C482C:  VMRS            APSR_nzcv, FPSCR
3C4830:  VMUL.F32        S2, S2, S24
3C4834:  VDIV.F32        S0, S0, S25
3C4838:  IT LT
3C483A:  VMOVLT.F32      S4, S26
3C483E:  VADD.F32        S2, S2, S4
3C4842:  VSTR            S0, [R10,#0x174]
3C4846:  VDIV.F32        S2, S2, S28
3C484A:  VMOV            R0, S2; x
3C484E:  BLX             modff
3C4852:  VLDR            S2, [R10,#0x17C]
3C4856:  VMOV.F32        S4, S22
3C485A:  VLDR            S0, [SP,#0x100+iptr]
3C485E:  ADD             R1, SP, #0x100+iptr; iptr
3C4860:  VCMPE.F32       S2, #0.0
3C4864:  VMRS            APSR_nzcv, FPSCR
3C4868:  VMUL.F32        S2, S2, S24
3C486C:  VDIV.F32        S0, S0, S25
3C4870:  IT LT
3C4872:  VMOVLT.F32      S4, S26
3C4876:  VADD.F32        S2, S2, S4
3C487A:  VSTR            S0, [R10,#0x178]
3C487E:  VDIV.F32        S2, S2, S28
3C4882:  VMOV            R0, S2; x
3C4886:  BLX             modff
3C488A:  VLDR            S0, [SP,#0x100+iptr]
3C488E:  VDIV.F32        S0, S0, S25
3C4892:  VSTR            S0, [R10,#0x17C]
3C4896:  LDR             R1, [SP,#0x100+var_B4]
3C4898:  LDR.W           R0, [R4,#(dword_95206C - 0x951FA8)]
3C489C:  CBZ             R1, loc_3C48D8
3C489E:  LDR.W           R1, =(gCurCamColVars_ptr - 0x3C48A8)
3C48A2:  ADDS            R0, #6
3C48A4:  ADD             R1, PC; gCurCamColVars_ptr
3C48A6:  LDR             R1, [R1]; gCurCamColVars
3C48A8:  LDRB            R1, [R1]
3C48AA:  CMP             R0, R1
3C48AC:  BEQ             loc_3C491A
3C48AE:  LDR.W           R1, =(gCurCamColVars_ptr - 0x3C48BE)
3C48B2:  LDR.W           R2, =(gCurDistForCam_ptr - 0x3C48C4)
3C48B6:  LDR.W           R3, =(gCamColVars_ptr - 0x3C48C6)
3C48BA:  ADD             R1, PC; gCurCamColVars_ptr
3C48BC:  LDR.W           R5, =(gpCamColVars_ptr - 0x3C48C8)
3C48C0:  ADD             R2, PC; gCurDistForCam_ptr
3C48C2:  ADD             R3, PC; gCamColVars_ptr
3C48C4:  ADD             R5, PC; gpCamColVars_ptr
3C48C6:  B               loc_3C4900
3C48C8:  DCFS 6.2832
3C48CC:  DCFS 0.1
3C48D0:  DCFS 1.5708
3C48D4:  DCFS 0.000001
3C48D8:  LDR.W           R1, =(gCurCamColVars_ptr - 0x3C48E2)
3C48DC:  ADDS            R0, #3
3C48DE:  ADD             R1, PC; gCurCamColVars_ptr
3C48E0:  LDR             R1, [R1]; gCurCamColVars
3C48E2:  LDRB            R1, [R1]
3C48E4:  CMP             R0, R1
3C48E6:  BEQ             loc_3C491A
3C48E8:  LDR.W           R1, =(gCurCamColVars_ptr - 0x3C48F8)
3C48EC:  LDR.W           R2, =(gCurDistForCam_ptr - 0x3C48FE)
3C48F0:  LDR.W           R3, =(gCamColVars_ptr - 0x3C4900)
3C48F4:  ADD             R1, PC; gCurCamColVars_ptr
3C48F6:  LDR.W           R5, =(gpCamColVars_ptr - 0x3C4902)
3C48FA:  ADD             R2, PC; gCurDistForCam_ptr
3C48FC:  ADD             R3, PC; gCamColVars_ptr
3C48FE:  ADD             R5, PC; gpCamColVars_ptr
3C4900:  LDR             R1, [R1]; gCurCamColVars
3C4902:  LDR             R2, [R2]; gCurDistForCam
3C4904:  LDR             R5, [R5]; gpCamColVars
3C4906:  STRB            R0, [R1]
3C4908:  ADD.W           R0, R0, R0,LSL#1
3C490C:  LDR             R3, [R3]; gCamColVars
3C490E:  MOV.W           R1, #0x3F800000
3C4912:  STR             R1, [R2]
3C4914:  ADD.W           R0, R3, R0,LSL#3
3C4918:  STR             R0, [R5]
3C491A:  LDR.W           R0, =(dword_6A9F18 - 0x3C4922)
3C491E:  ADD             R0, PC; dword_6A9F18
3C4920:  LDR             R0, [R0]
3C4922:  CMP             R0, #3
3C4924:  BNE.W           loc_3C4A4E
3C4928:  LDR.W           R0, =(TheCamera_ptr - 0x3C4936)
3C492C:  MOVS            R1, #0
3C492E:  ADD.W           R5, R10, #0x174
3C4932:  ADD             R0, PC; TheCamera_ptr
3C4934:  LDR             R0, [R0]; TheCamera
3C4936:  STR.W           R1, [R0,#(dword_952B78 - 0x951FA8)]
3C493A:  MOVS            R1, #0; bool
3C493C:  LDR.W           R0, [R8,#0x440]; this
3C4940:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
3C4944:  CMP             R0, #0
3C4946:  ITT NE
3C4948:  LDRNE           R0, [R0,#8]
3C494A:  CMPNE           R0, #0
3C494C:  BEQ             loc_3C4968
3C494E:  LDR.W           R1, =(TheCamera_ptr - 0x3C4956)
3C4952:  ADD             R1, PC; TheCamera_ptr
3C4954:  LDR             R1, [R1]; TheCamera
3C4956:  LDR.W           R2, [R1,#(dword_952B78 - 0x951FA8)]
3C495A:  ADDS            R3, R2, #1
3C495C:  STR.W           R3, [R1,#(dword_952B78 - 0x951FA8)]
3C4960:  ADD.W           R1, R1, R2,LSL#2
3C4964:  STR.W           R0, [R1,#0xBD4]
3C4968:  LDR.W           R1, =(_ZN10CCollision23bCamCollideWithVehiclesE_ptr - 0x3C497C)
3C496C:  ADD             R4, SP, #0x100+var_90
3C496E:  LDR.W           R2, =(_ZN10CCollision19bCamCollideWithPedsE_ptr - 0x3C497E)
3C4972:  MOVS            R3, #1
3C4974:  LDR.W           R0, =(_ZN10CCollision22bCamCollideWithObjectsE_ptr - 0x3C4980)
3C4978:  ADD             R1, PC; _ZN10CCollision23bCamCollideWithVehiclesE_ptr
3C497A:  ADD             R2, PC; _ZN10CCollision19bCamCollideWithPedsE_ptr
3C497C:  ADD             R0, PC; _ZN10CCollision22bCamCollideWithObjectsE_ptr
3C497E:  LDR             R1, [R1]; CCollision::bCamCollideWithVehicles ...
3C4980:  LDR             R2, [R2]; CCollision::bCamCollideWithPeds ...
3C4982:  LDR             R0, [R0]; this
3C4984:  STRB            R3, [R1]; CCollision::bCamCollideWithVehicles
3C4986:  MOV             R1, R5; CVector *
3C4988:  STRB            R3, [R2]; CCollision::bCamCollideWithPeds
3C498A:  MOV             R2, R4; CVector *
3C498C:  STRB            R3, [R0]; CCollision::bCamCollideWithObjects
3C498E:  BLX             j__ZN7CCamera20CameraColDetAndReactEP7CVectorS1_; CCamera::CameraColDetAndReact(CVector *,CVector *)
3C4992:  LDR.W           R0, =(TheCamera_ptr - 0x3C49A0)
3C4996:  MOVS            R1, #0; CVehicle *
3C4998:  MOV             R2, R8; CPed *
3C499A:  MOV             R3, R5; CVector *
3C499C:  ADD             R0, PC; TheCamera_ptr
3C499E:  STR             R4, [SP,#0x100+var_100]; CVector *
3C49A0:  LDR             R0, [R0]; TheCamera ; this
3C49A2:  BLX             j__ZN7CCamera15ImproveNearClipEP8CVehicleP4CPedP7CVectorS5_; CCamera::ImproveNearClip(CVehicle *,CPed *,CVector *,CVector *)
3C49A6:  VLDR            S0, [R10,#0x174]
3C49AA:  VMOV.F32        S2, S22
3C49AE:  ADD             R1, SP, #0x100+iptr; iptr
3C49B0:  VCMPE.F32       S0, #0.0
3C49B4:  VMRS            APSR_nzcv, FPSCR
3C49B8:  VMUL.F32        S0, S0, S24
3C49BC:  IT LT
3C49BE:  VMOVLT.F32      S2, S26
3C49C2:  VADD.F32        S0, S0, S2
3C49C6:  VDIV.F32        S0, S0, S28
3C49CA:  VMOV            R0, S0; x
3C49CE:  BLX             modff
3C49D2:  VLDR            S2, [R10,#0x178]
3C49D6:  VMOV.F32        S4, S22
3C49DA:  VLDR            S0, [SP,#0x100+iptr]
3C49DE:  ADD             R1, SP, #0x100+iptr; iptr
3C49E0:  VCMPE.F32       S2, #0.0
3C49E4:  VMRS            APSR_nzcv, FPSCR
3C49E8:  VMUL.F32        S2, S2, S24
3C49EC:  VDIV.F32        S0, S0, S25
3C49F0:  IT LT
3C49F2:  VMOVLT.F32      S4, S26
3C49F6:  VADD.F32        S2, S2, S4
3C49FA:  VSTR            S0, [R10,#0x174]
3C49FE:  VDIV.F32        S2, S2, S28
3C4A02:  VMOV            R0, S2; x
3C4A06:  BLX             modff
3C4A0A:  VLDR            S2, [R10,#0x17C]
3C4A0E:  VMOV.F32        S4, S22
3C4A12:  VLDR            S0, [SP,#0x100+iptr]
3C4A16:  ADD             R1, SP, #0x100+iptr; iptr
3C4A18:  VCMPE.F32       S2, #0.0
3C4A1C:  VMRS            APSR_nzcv, FPSCR
3C4A20:  VMUL.F32        S2, S2, S24
3C4A24:  VDIV.F32        S0, S0, S25
3C4A28:  IT LT
3C4A2A:  VMOVLT.F32      S4, S26
3C4A2E:  VADD.F32        S2, S2, S4
3C4A32:  VSTR            S0, [R10,#0x178]
3C4A36:  VDIV.F32        S2, S2, S28
3C4A3A:  VMOV            R0, S2; x
3C4A3E:  BLX             modff
3C4A42:  VLDR            S0, [SP,#0x100+iptr]
3C4A46:  VDIV.F32        S0, S0, S25
3C4A4A:  VSTR            S0, [R10,#0x17C]
3C4A4E:  LDR             R0, =(TheCamera_ptr - 0x3C4A5C)
3C4A50:  MOVS            R4, #0
3C4A52:  VMOV.F32        S2, S22
3C4A56:  ADD             R1, SP, #0x100+iptr; iptr
3C4A58:  ADD             R0, PC; TheCamera_ptr
3C4A5A:  LDR             R0, [R0]; TheCamera
3C4A5C:  STRH            R4, [R0,#(word_951FC2 - 0x951FA8)]
3C4A5E:  VLDR            S0, [R10,#0x174]
3C4A62:  VCMPE.F32       S0, #0.0
3C4A66:  VMRS            APSR_nzcv, FPSCR
3C4A6A:  VMUL.F32        S0, S0, S24
3C4A6E:  IT LT
3C4A70:  VMOVLT.F32      S2, S26
3C4A74:  VADD.F32        S0, S0, S2
3C4A78:  VDIV.F32        S0, S0, S28
3C4A7C:  VMOV            R0, S0; x
3C4A80:  BLX             modff
3C4A84:  VLDR            S2, [R10,#0x178]
3C4A88:  VMOV.F32        S4, S22
3C4A8C:  VLDR            S0, [SP,#0x100+iptr]
3C4A90:  ADD             R1, SP, #0x100+iptr; iptr
3C4A92:  VCMPE.F32       S2, #0.0
3C4A96:  VMRS            APSR_nzcv, FPSCR
3C4A9A:  VMUL.F32        S2, S2, S24
3C4A9E:  VDIV.F32        S0, S0, S25
3C4AA2:  IT LT
3C4AA4:  VMOVLT.F32      S4, S26
3C4AA8:  VADD.F32        S2, S2, S4
3C4AAC:  VSTR            S0, [R10,#0x174]
3C4AB0:  VDIV.F32        S2, S2, S28
3C4AB4:  VMOV            R0, S2; x
3C4AB8:  BLX             modff
3C4ABC:  VLDR            S2, [R10,#0x17C]
3C4AC0:  ADD             R1, SP, #0x100+iptr; iptr
3C4AC2:  VLDR            S0, [SP,#0x100+iptr]
3C4AC6:  VCMPE.F32       S2, #0.0
3C4ACA:  VMRS            APSR_nzcv, FPSCR
3C4ACE:  VMUL.F32        S2, S2, S24
3C4AD2:  VDIV.F32        S0, S0, S25
3C4AD6:  IT LT
3C4AD8:  VMOVLT.F32      S22, S26
3C4ADC:  VADD.F32        S2, S2, S22
3C4AE0:  VSTR            S0, [R10,#0x178]
3C4AE4:  VDIV.F32        S2, S2, S28
3C4AE8:  VMOV            R0, S2; x
3C4AEC:  BLX             modff
3C4AF0:  VLDR            S0, [SP,#0x100+iptr]
3C4AF4:  MOV.W           R0, #0x3F800000
3C4AF8:  VDIV.F32        S0, S0, S25
3C4AFC:  VSTR            S0, [R10,#0x17C]
3C4B00:  STRD.W          R4, R4, [R10,#0x18C]
3C4B04:  STR.W           R0, [R10,#0x194]
3C4B08:  MOV             R0, R6; this
3C4B0A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C4B0E:  VLDR            S0, [R10,#0x168]
3C4B12:  VCMP.F32        S0, #0.0
3C4B16:  VMRS            APSR_nzcv, FPSCR
3C4B1A:  BNE             loc_3C4B36
3C4B1C:  VLDR            S0, [R10,#0x16C]
3C4B20:  VCMP.F32        S0, #0.0
3C4B24:  VMRS            APSR_nzcv, FPSCR
3C4B28:  ITTT EQ
3C4B2A:  MOVWEQ          R0, #0xB717
3C4B2E:  MOVTEQ          R0, #0x38D1
3C4B32:  STRDEQ.W        R0, R0, [R10,#0x168]
3C4B36:  ADD             R0, SP, #0x100+var_80; CVector *
3C4B38:  MOV             R1, R6; CVector *
3C4B3A:  MOV             R2, R9
3C4B3C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C4B40:  ADD             R4, SP, #0x100+iptr
3C4B42:  LDR             R0, [SP,#0x100+var_78]
3C4B44:  VLDR            D16, [SP,#0x100+var_80]
3C4B48:  STR             R0, [SP,#0x100+var_68]
3C4B4A:  MOV             R0, R4; this
3C4B4C:  VSTR            D16, [SP,#0x100+iptr]
3C4B50:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C4B54:  ADD             R0, SP, #0x100+var_80; CVector *
3C4B56:  MOV             R1, R4; CVector *
3C4B58:  MOV             R2, R6
3C4B5A:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C4B5E:  LDR             R0, =(TheCamera_ptr - 0x3C4B6A)
3C4B60:  MOVS            R4, #0
3C4B62:  VLDR            D16, [SP,#0x100+var_80]
3C4B66:  ADD             R0, PC; TheCamera_ptr
3C4B68:  LDR             R1, [SP,#0x100+var_78]
3C4B6A:  STR.W           R1, [R9,#8]
3C4B6E:  LDR             R0, [R0]; TheCamera
3C4B70:  VSTR            D16, [R9]
3C4B74:  LDR.W           R0, [R0,#(dword_952054 - 0x951FA8)]
3C4B78:  CMP             R0, #1
3C4B7A:  BEQ             loc_3C4C50
3C4B7C:  LDR             R0, [SP,#0x100+var_B4]
3C4B7E:  MOVS            R1, #0
3C4B80:  CMP             R0, #0
3C4B82:  BNE             loc_3C4C52
3C4B84:  LDR             R0, [SP,#0x100+var_B0]
3C4B86:  LDRB            R0, [R0]
3C4B88:  LSLS            R0, R0, #0x1F
3C4B8A:  BEQ             loc_3C4C50
3C4B8C:  LDR             R0, =(TheCamera_ptr - 0x3C4B92)
3C4B8E:  ADD             R0, PC; TheCamera_ptr ; this
3C4B90:  LDR             R5, [R0]; TheCamera
3C4B92:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
3C4B96:  LDRB.W          R2, [R5,#(byte_952BE5 - 0x951FA8)]
3C4B9A:  LDRB.W          R3, [R5,#(byte_952C1C - 0x951FA8)]
3C4B9E:  LDRB.W          R1, [R5,#(byte_952BBC - 0x951FA8)]
3C4BA2:  ORRS            R2, R3
3C4BA4:  ORRS            R1, R2
3C4BA6:  LSLS            R1, R1, #0x18
3C4BA8:  MOV.W           R1, #0
3C4BAC:  IT EQ
3C4BAE:  CMPEQ           R0, #0
3C4BB0:  BNE             loc_3C4C52
3C4BB2:  VLDR            S0, [R8,#0x48]
3C4BB6:  VLDR            S2, [R8,#0x4C]
3C4BBA:  VMUL.F32        S0, S0, S0
3C4BBE:  VLDR            S4, [R8,#0x50]
3C4BC2:  VMUL.F32        S2, S2, S2
3C4BC6:  VMUL.F32        S4, S4, S4
3C4BCA:  VADD.F32        S0, S0, S2
3C4BCE:  VADD.F32        S0, S0, S4
3C4BD2:  VCMPE.F32       S0, S29
3C4BD6:  VMRS            APSR_nzcv, FPSCR
3C4BDA:  BGT             loc_3C4C50
3C4BDC:  LDR             R0, =(currentPad_ptr - 0x3C4BE4)
3C4BDE:  LDR             R1, =(gIdleCam_ptr - 0x3C4BE6)
3C4BE0:  ADD             R0, PC; currentPad_ptr
3C4BE2:  ADD             R1, PC; gIdleCam_ptr
3C4BE4:  LDR             R0, [R0]; currentPad
3C4BE6:  LDR             R1, [R1]; gIdleCam ; int
3C4BE8:  LDR             R0, [R0]
3C4BEA:  LDR.W           R5, [R1,#(dword_952D4C - 0x952CBC)]
3C4BEE:  CMP             R0, #0
3C4BF0:  ITT EQ
3C4BF2:  MOVEQ           R0, #0; this
3C4BF4:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C4BF8:  LDR.W           R0, [R0,#0x134]
3C4BFC:  CMP             R5, R0
3C4BFE:  BNE             loc_3C4C30
3C4C00:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C4C0A)
3C4C02:  VLDR            S0, =50.0
3C4C06:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C4C08:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C4C0A:  VLDR            S2, [R0]
3C4C0E:  LDR             R0, =(gIdleCam_ptr - 0x3C4C18)
3C4C10:  VDIV.F32        S0, S2, S0
3C4C14:  ADD             R0, PC; gIdleCam_ptr
3C4C16:  LDR             R0, [R0]; gIdleCam
3C4C18:  LDR.W           R0, [R0,#(dword_952D50 - 0x952CBC)]
3C4C1C:  VLDR            S2, =1000.0
3C4C20:  VMUL.F32        S0, S0, S2
3C4C24:  VCVT.U32.F32    S0, S0
3C4C28:  VMOV            R1, S0
3C4C2C:  ADD             R1, R0
3C4C2E:  B               loc_3C4C52
3C4C30:  LDR             R0, =(currentPad_ptr - 0x3C4C36)
3C4C32:  ADD             R0, PC; currentPad_ptr
3C4C34:  LDR             R0, [R0]; currentPad
3C4C36:  LDR             R0, [R0]
3C4C38:  CMP             R0, #0
3C4C3A:  ITT EQ
3C4C3C:  MOVEQ           R0, #0; this
3C4C3E:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C4C42:  LDR             R1, =(gIdleCam_ptr - 0x3C4C4C)
3C4C44:  LDR.W           R0, [R0,#0x134]
3C4C48:  ADD             R1, PC; gIdleCam_ptr
3C4C4A:  LDR             R1, [R1]; gIdleCam
3C4C4C:  STR.W           R0, [R1,#(dword_952D4C - 0x952CBC)]
3C4C50:  MOVS            R1, #0
3C4C52:  LDR             R0, =(gIdleCam_ptr - 0x3C4C58)
3C4C54:  ADD             R0, PC; gIdleCam_ptr
3C4C56:  LDR             R0, [R0]; gIdleCam
3C4C58:  STR.W           R1, [R0,#(dword_952D50 - 0x952CBC)]
3C4C5C:  STRB.W          R4, [R10,#0xA]
3C4C60:  ADD             SP, SP, #0xA0
3C4C62:  VPOP            {D8-D15}
3C4C66:  ADD             SP, SP, #4
3C4C68:  POP.W           {R8-R11}
3C4C6C:  POP             {R4-R7,PC}
3C4C6E:  VLDR            S4, =0.05
3C4C72:  VSUB.F32        S4, S4, S23
3C4C76:  VCMPE.F32       S0, S4
3C4C7A:  VMRS            APSR_nzcv, FPSCR
3C4C7E:  BLE             loc_3C4C8C
3C4C80:  MOV             R0, #0xBD4CCCCD
3C4C88:  B.W             loc_3C4240
3C4C8C:  VCMPE.F32       S0, S2
3C4C90:  VMRS            APSR_nzcv, FPSCR
3C4C94:  BGT.W           loc_3C4254
3C4C98:  MOVS            R0, #0
3C4C9A:  B.W             loc_3C4240
