; =========================================================
; Game Engine Function: _ZN12CPostEffects12MobileRenderEv
; Address            : 0x5B5F08 - 0x5B6ACE
; =========================================================

5B5F08:  PUSH            {R4-R7,LR}
5B5F0A:  ADD             R7, SP, #0xC
5B5F0C:  PUSH.W          {R8-R10}
5B5F10:  VPUSH           {D8-D9}
5B5F14:  SUB             SP, SP, #0x40
5B5F16:  MOV             R4, SP
5B5F18:  BFC.W           R4, #0, #4
5B5F1C:  MOV             SP, R4
5B5F1E:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5B5F32)
5B5F22:  ADD.W           R10, SP, #0x68+var_38
5B5F26:  ADD.W           R9, SP, #0x68+var_48
5B5F2A:  LDR.W           R1, =(byte_A478E4 - 0x5B5F38)
5B5F2E:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5B5F30:  ADD.W           R8, SP, #0x68+var_58
5B5F34:  ADD             R1, PC; byte_A478E4
5B5F36:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5B5F38:  ADD.W           R2, R0, #0xAC
5B5F3C:  VLD1.32         {D16-D17}, [R2]
5B5F40:  ADD.W           R2, R0, #0xBC
5B5F44:  ADDS            R0, #0xCC
5B5F46:  VST1.64         {D16-D17}, [R10@128]
5B5F4A:  VLD1.32         {D16-D17}, [R2]
5B5F4E:  VST1.64         {D16-D17}, [R9@128]
5B5F52:  VLD1.32         {D16-D17}, [R0]
5B5F56:  VST1.64         {D16-D17}, [R8@128]
5B5F5A:  LDRB            R0, [R1]
5B5F5C:  DMB.W           ISH
5B5F60:  TST.W           R0, #1
5B5F64:  BNE             loc_5B5F8E
5B5F66:  LDR.W           R0, =(byte_A478E4 - 0x5B5F6E)
5B5F6A:  ADD             R0, PC; byte_A478E4 ; __guard *
5B5F6C:  BLX.W           j___cxa_guard_acquire
5B5F70:  CBZ             R0, loc_5B5F8E
5B5F72:  LDR.W           R0, =(_ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr - 0x5B5F7E)
5B5F76:  LDR.W           R1, =(dword_A478E0 - 0x5B5F80)
5B5F7A:  ADD             R0, PC; _ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr
5B5F7C:  ADD             R1, PC; dword_A478E0
5B5F7E:  LDR             R0, [R0]; CPostEffects::SCREEN_EXTRA_MULT_BASE_CAP ...
5B5F80:  LDR             R2, [R0]; CPostEffects::SCREEN_EXTRA_MULT_BASE_CAP
5B5F82:  LDR.W           R0, =(byte_A478E4 - 0x5B5F8C)
5B5F86:  STR             R2, [R1]
5B5F88:  ADD             R0, PC; byte_A478E4 ; __guard *
5B5F8A:  BLX.W           j___cxa_guard_release
5B5F8E:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5B5F96)
5B5F92:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5B5F94:  LDR             R4, [R0]; CTimeCycle::m_CurrentColours ...
5B5F96:  VLDR            S0, [R4,#0x78]
5B5F9A:  VLDR            S2, [R4,#0x7C]
5B5F9E:  VLDR            S4, [R4,#0x80]
5B5FA2:  VLDR            S6, [R4,#0x84]
5B5FA6:  VCVT.U32.F32    S0, S0
5B5FAA:  VCVT.U32.F32    S2, S2
5B5FAE:  VCVT.U32.F32    S6, S6
5B5FB2:  VCVT.U32.F32    S4, S4
5B5FB6:  VMOV            R1, S0; unsigned __int8
5B5FBA:  VMOV            R2, S2; unsigned __int8
5B5FBE:  VMOV            R0, S6
5B5FC2:  VMOV            R3, S4; unsigned __int8
5B5FC6:  STR             R0, [SP,#0x68+var_68]; unsigned __int8
5B5FC8:  ADD             R0, SP, #0x68+var_5C; this
5B5FCA:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5B5FCE:  VLDR            S0, [R4,#0x88]
5B5FD2:  VLDR            S2, [R4,#0x8C]
5B5FD6:  VLDR            S4, [R4,#0x90]
5B5FDA:  VLDR            S6, [R4,#0x94]
5B5FDE:  VCVT.U32.F32    S0, S0
5B5FE2:  VCVT.U32.F32    S2, S2
5B5FE6:  VCVT.U32.F32    S6, S6
5B5FEA:  VCVT.U32.F32    S4, S4
5B5FEE:  VMOV            R1, S0; unsigned __int8
5B5FF2:  VMOV            R2, S2; unsigned __int8
5B5FF6:  VMOV            R0, S6
5B5FFA:  VMOV            R3, S4; unsigned __int8
5B5FFE:  STR             R0, [SP,#0x68+var_68]; float
5B6000:  ADD             R0, SP, #0x68+var_60; this
5B6002:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5B6006:  LDR.W           R0, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x5B600E)
5B600A:  ADD             R0, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
5B600C:  LDR             R0, [R0]; CPostEffects::m_bNightVision ...
5B600E:  LDRB            R0, [R0]; CPostEffects::m_bNightVision
5B6010:  CMP             R0, #0
5B6012:  ITTTT NE
5B6014:  MOVNE           R0, #0x40 ; '@'
5B6016:  STRBNE.W        R0, [SP,#0x68+var_5A]
5B601A:  MOVWNE          R1, #0x4040
5B601E:  STRHNE.W        R1, [SP,#0x68+var_5C]
5B6022:  ITT NE
5B6024:  STRBNE.W        R0, [SP,#0x68+var_5E]
5B6028:  STRHNE.W        R1, [SP,#0x68+var_60]
5B602C:  LDR.W           R0, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x5B6034)
5B6030:  ADD             R0, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
5B6032:  LDR             R0, [R0]; CPostEffects::m_bInfraredVision ...
5B6034:  LDRB            R0, [R0]; CPostEffects::m_bInfraredVision
5B6036:  CBZ             R0, loc_5B6054
5B6038:  MOVS            R0, #0x40 ; '@'
5B603A:  MOVW            R1, #0x4040
5B603E:  STRB.W          R0, [SP,#0x68+var_5A]
5B6042:  MOVS            R2, #0x40 ; '@'
5B6044:  STRB.W          R0, [SP,#0x68+var_5E]
5B6048:  STRH.W          R1, [SP,#0x68+var_5C]
5B604C:  STRH.W          R1, [SP,#0x68+var_60]
5B6050:  MOVS            R1, #0x40 ; '@'
5B6052:  B               loc_5B6060
5B6054:  LDRB.W          R2, [SP,#0x68+var_5C]
5B6058:  LDRB.W          R1, [SP,#0x68+var_5C+1]
5B605C:  LDRB.W          R0, [SP,#0x68+var_5A]
5B6060:  LDR.W           R3, =(gfLaRiotsLightMult_ptr - 0x5B6070)
5B6064:  VMOV            S0, R0
5B6068:  VMOV            S2, R2
5B606C:  ADD             R3, PC; gfLaRiotsLightMult_ptr
5B606E:  VCVT.F32.U32    S0, S0
5B6072:  VCVT.F32.U32    S2, S2
5B6076:  LDR             R0, [R3]; gfLaRiotsLightMult
5B6078:  VMOV            S4, R1
5B607C:  VCVT.F32.U32    S4, S4
5B6080:  VLDR            S6, [R0]
5B6084:  VMUL.F32        S0, S6, S0
5B6088:  VMUL.F32        S2, S6, S2
5B608C:  VMUL.F32        S4, S6, S4
5B6090:  VCVT.U32.F32    S0, S0
5B6094:  VCVT.U32.F32    S2, S2
5B6098:  VCVT.U32.F32    S4, S4
5B609C:  VMOV            R0, S2
5B60A0:  STRB.W          R0, [SP,#0x68+var_5C]
5B60A4:  VMOV            R0, S4
5B60A8:  STRB.W          R0, [SP,#0x68+var_5C+1]
5B60AC:  VMOV            R0, S0
5B60B0:  STRB.W          R0, [SP,#0x68+var_5A]
5B60B4:  MOV.W           R0, #0xFFFFFFFF; int
5B60B8:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5B60BC:  CMP             R0, #0
5B60BE:  BEQ             loc_5B618C
5B60C0:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5B60CC)
5B60C4:  LDR.W           R1, =(_ZN12CPostEffects29SCREEN_EXTRA_MULT_CHANGE_RATEE_ptr - 0x5B60CE)
5B60C8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5B60CA:  ADD             R1, PC; _ZN12CPostEffects29SCREEN_EXTRA_MULT_CHANGE_RATEE_ptr
5B60CC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5B60CE:  LDR             R1, [R1]; CPostEffects::SCREEN_EXTRA_MULT_CHANGE_RATE ...
5B60D0:  VLDR            S16, [R0]
5B60D4:  MOV.W           R0, #0xFFFFFFFF; int
5B60D8:  VLDR            S18, [R1]
5B60DC:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5B60E0:  MOVS            R1, #0; bool
5B60E2:  BLX.W           j__ZNK9CPhysical18GetLightingFromColEb; CPhysical::GetLightingFromCol(bool)
5B60E6:  LDR.W           R1, =(dword_A478E0 - 0x5B60FA)
5B60EA:  VMOV            S0, R0
5B60EE:  MOV.W           R0, #0xFFFFFFFF; int
5B60F2:  VMUL.F32        S16, S18, S16
5B60F6:  ADD             R1, PC; dword_A478E0
5B60F8:  VLDR            S2, [R1]
5B60FC:  VSUB.F32        S0, S0, S2
5B6100:  VABS.F32        S18, S0
5B6104:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5B6108:  MOVS            R1, #0; bool
5B610A:  BLX.W           j__ZNK9CPhysical18GetLightingFromColEb; CPhysical::GetLightingFromCol(bool)
5B610E:  VCMPE.F32       S18, S16
5B6112:  VMOV            S0, R0
5B6116:  VMRS            APSR_nzcv, FPSCR
5B611A:  BLT             loc_5B613C
5B611C:  LDR.W           R0, =(dword_A478E0 - 0x5B6128)
5B6120:  VNEG.F32        S2, S16
5B6124:  ADD             R0, PC; dword_A478E0
5B6126:  VLDR            S4, [R0]
5B612A:  VCMPE.F32       S0, S4
5B612E:  VMRS            APSR_nzcv, FPSCR
5B6132:  IT GT
5B6134:  VMOVGT.F32      S2, S16
5B6138:  VADD.F32        S0, S4, S2
5B613C:  LDR.W           R0, =(_ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr - 0x5B6148)
5B6140:  LDR.W           R1, =(dword_A478E0 - 0x5B614A)
5B6144:  ADD             R0, PC; _ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr
5B6146:  ADD             R1, PC; dword_A478E0
5B6148:  LDR             R0, [R0]; CPostEffects::SCREEN_EXTRA_MULT_BASE_CAP ...
5B614A:  VSTR            S0, [R1]
5B614E:  VLDR            S2, [R0]
5B6152:  VCMPE.F32       S0, S2
5B6156:  VMRS            APSR_nzcv, FPSCR
5B615A:  BLE             loc_5B616A
5B615C:  VMOV.F32        S0, S2
5B6160:  LDR.W           R0, =(dword_A478E0 - 0x5B6168)
5B6164:  ADD             R0, PC; dword_A478E0
5B6166:  VSTR            S2, [R0]
5B616A:  VDIV.F32        S0, S0, S2
5B616E:  LDR.W           R0, =(_ZN12CPostEffects27SCREEN_EXTRA_MULT_BASE_MULTE_ptr - 0x5B6176)
5B6172:  ADD             R0, PC; _ZN12CPostEffects27SCREEN_EXTRA_MULT_BASE_MULTE_ptr
5B6174:  LDR             R0, [R0]; CPostEffects::SCREEN_EXTRA_MULT_BASE_MULT ...
5B6176:  VMOV.F32        S2, #1.0
5B617A:  VLDR            S4, [R0]
5B617E:  VSUB.F32        S0, S2, S0
5B6182:  VMUL.F32        S0, S4, S0
5B6186:  VADD.F32        S2, S0, S2
5B618A:  B               loc_5B6190
5B618C:  VMOV.F32        S2, #1.0
5B6190:  LDR.W           R0, =(_ZN12CPostEffects19m_colour1MultiplierE_ptr - 0x5B619C)
5B6194:  LDRB.W          R1, [SP,#0x68+var_5C]
5B6198:  ADD             R0, PC; _ZN12CPostEffects19m_colour1MultiplierE_ptr
5B619A:  VLDR            S8, =255.0
5B619E:  LDR             R0, [R0]; CPostEffects::m_colour1Multiplier ...
5B61A0:  VMOV            S4, R1
5B61A4:  VLDR            S0, [R0]
5B61A8:  VCVT.F32.U32    S6, S4
5B61AC:  VMUL.F32        S4, S2, S0
5B61B0:  VLDR            S0, =0.0
5B61B4:  VMUL.F32        S6, S4, S6
5B61B8:  VCMPE.F32       S6, S8
5B61BC:  VMRS            APSR_nzcv, FPSCR
5B61C0:  BGE             loc_5B61D0
5B61C2:  VMOV.F32        S10, S0
5B61C6:  VCMPE.F32       S6, #0.0
5B61CA:  VMRS            APSR_nzcv, FPSCR
5B61CE:  BLE             loc_5B61E2
5B61D0:  VLDR            S10, =255.0
5B61D4:  VCMPE.F32       S6, S10
5B61D8:  VMRS            APSR_nzcv, FPSCR
5B61DC:  IT LT
5B61DE:  VMOVLT.F32      S10, S6
5B61E2:  LDRB.W          R0, [SP,#0x68+var_5C+1]
5B61E6:  VMOV            S6, R0
5B61EA:  VCVT.F32.U32    S6, S6
5B61EE:  VCVT.U32.F32    S10, S10
5B61F2:  VMUL.F32        S6, S4, S6
5B61F6:  VMOV            R12, S10
5B61FA:  VCMPE.F32       S6, S8
5B61FE:  VMRS            APSR_nzcv, FPSCR
5B6202:  STRB.W          R12, [SP,#0x68+var_5C]
5B6206:  BGE             loc_5B6216
5B6208:  VMOV.F32        S10, S0
5B620C:  VCMPE.F32       S6, #0.0
5B6210:  VMRS            APSR_nzcv, FPSCR
5B6214:  BLE             loc_5B6228
5B6216:  VLDR            S10, =255.0
5B621A:  VCMPE.F32       S6, S10
5B621E:  VMRS            APSR_nzcv, FPSCR
5B6222:  IT LT
5B6224:  VMOVLT.F32      S10, S6
5B6228:  LDRB.W          R1, [SP,#0x68+var_5A]
5B622C:  VMOV            S6, R1
5B6230:  VCVT.F32.U32    S6, S6
5B6234:  VMUL.F32        S4, S4, S6
5B6238:  VCVT.U32.F32    S6, S10
5B623C:  VCMPE.F32       S4, S8
5B6240:  VMOV            LR, S6
5B6244:  VMRS            APSR_nzcv, FPSCR
5B6248:  STRB.W          LR, [SP,#0x68+var_5C+1]
5B624C:  BGE             loc_5B625C
5B624E:  VMOV.F32        S6, S0
5B6252:  VCMPE.F32       S4, #0.0
5B6256:  VMRS            APSR_nzcv, FPSCR
5B625A:  BLE             loc_5B626E
5B625C:  VLDR            S6, =255.0
5B6260:  VCMPE.F32       S4, S6
5B6264:  VMRS            APSR_nzcv, FPSCR
5B6268:  IT LT
5B626A:  VMOVLT.F32      S6, S4
5B626E:  LDR.W           R2, =(_ZN12CPostEffects19m_colour2MultiplierE_ptr - 0x5B627A)
5B6272:  LDRB.W          R3, [SP,#0x68+var_60]
5B6276:  ADD             R2, PC; _ZN12CPostEffects19m_colour2MultiplierE_ptr
5B6278:  LDR             R2, [R2]; CPostEffects::m_colour2Multiplier ...
5B627A:  VMOV            S10, R3
5B627E:  VLDR            S4, [R2]
5B6282:  VCVT.F32.U32    S10, S10
5B6286:  VCVT.U32.F32    S6, S6
5B628A:  VMUL.F32        S2, S2, S4
5B628E:  VMOV            R2, S6
5B6292:  VMUL.F32        S4, S2, S10
5B6296:  VCMPE.F32       S4, S8
5B629A:  VMRS            APSR_nzcv, FPSCR
5B629E:  STRB.W          R2, [SP,#0x68+var_5A]
5B62A2:  BGE             loc_5B62B2
5B62A4:  VMOV.F32        S6, S0
5B62A8:  VCMPE.F32       S4, #0.0
5B62AC:  VMRS            APSR_nzcv, FPSCR
5B62B0:  BLE             loc_5B62C4
5B62B2:  VLDR            S6, =255.0
5B62B6:  VCMPE.F32       S4, S6
5B62BA:  VMRS            APSR_nzcv, FPSCR
5B62BE:  IT LT
5B62C0:  VMOVLT.F32      S6, S4
5B62C4:  LDRB.W          R3, [SP,#0x68+var_60+1]
5B62C8:  VMOV            S4, R3
5B62CC:  VCVT.F32.U32    S4, S4
5B62D0:  VCVT.U32.F32    S6, S6
5B62D4:  VMUL.F32        S4, S2, S4
5B62D8:  VMOV            R3, S6
5B62DC:  VCMPE.F32       S4, S8
5B62E0:  VMRS            APSR_nzcv, FPSCR
5B62E4:  STRB.W          R3, [SP,#0x68+var_60]
5B62E8:  BGE             loc_5B62F8
5B62EA:  VMOV.F32        S6, S0
5B62EE:  VCMPE.F32       S4, #0.0
5B62F2:  VMRS            APSR_nzcv, FPSCR
5B62F6:  BLE             loc_5B630A
5B62F8:  VLDR            S6, =255.0
5B62FC:  VCMPE.F32       S4, S6
5B6300:  VMRS            APSR_nzcv, FPSCR
5B6304:  IT LT
5B6306:  VMOVLT.F32      S6, S4
5B630A:  LDRB.W          R5, [SP,#0x68+var_5E]
5B630E:  VMOV            S4, R5
5B6312:  VCVT.F32.U32    S4, S4
5B6316:  VMUL.F32        S2, S2, S4
5B631A:  VCVT.U32.F32    S4, S6
5B631E:  VCMPE.F32       S2, S8
5B6322:  VMOV            R4, S4
5B6326:  VMRS            APSR_nzcv, FPSCR
5B632A:  STRB.W          R4, [SP,#0x68+var_60+1]
5B632E:  BGE             loc_5B633A
5B6330:  VCMPE.F32       S2, #0.0
5B6334:  VMRS            APSR_nzcv, FPSCR
5B6338:  BLE             loc_5B634C
5B633A:  VCMPE.F32       S2, S8
5B633E:  VMRS            APSR_nzcv, FPSCR
5B6342:  VMOV.F32        S0, S8
5B6346:  IT LT
5B6348:  VMOVLT.F32      S0, S2
5B634C:  LDRB.W          R6, [SP,#0x68+var_5D]
5B6350:  VMOV.F32        S16, #1.0
5B6354:  LDRB.W          R5, [SP,#0x68+var_59]
5B6358:  SMULBB.W        R0, R4, R6
5B635C:  SMULBB.W        R1, R6, R3
5B6360:  SMLABB.W        R1, R5, R12, R1
5B6364:  SMLABB.W        R0, LR, R5, R0
5B6368:  VMOV            S4, R1
5B636C:  LDR.W           R1, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x5B637C)
5B6370:  VMOV            S2, R0
5B6374:  SMULBB.W        R0, R2, R5
5B6378:  ADD             R1, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
5B637A:  VCVT.F32.S32    S2, S2
5B637E:  VCVT.F32.S32    S4, S4
5B6382:  LDR             R1, [R1]; CPostEffects::m_bInfraredVision ...
5B6384:  VCVT.U32.F32    S0, S0
5B6388:  VMUL.F32        S6, S2, S2
5B638C:  VMUL.F32        S10, S4, S4
5B6390:  VMOV            R5, S0
5B6394:  VADD.F32        S6, S10, S6
5B6398:  VMOV.F32        S10, #1.5
5B639C:  SMLABB.W        R0, R6, R5, R0
5B63A0:  VMOV            S0, R0
5B63A4:  LDR.W           R0, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x5B63B8)
5B63A8:  VCVT.F32.S32    S0, S0
5B63AC:  STRB.W          LR, [SP,#0x68+var_5C+1]
5B63B0:  STRB.W          R12, [SP,#0x68+var_5C]
5B63B4:  ADD             R0, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
5B63B6:  STRB.W          R2, [SP,#0x68+var_5A]
5B63BA:  LDR.W           R2, =(_ZN12CPostEffects17m_bDarknessFilterE_ptr - 0x5B63C6)
5B63BE:  VLDR            S14, [SP,#0x68+var_50]
5B63C2:  ADD             R2, PC; _ZN12CPostEffects17m_bDarknessFilterE_ptr
5B63C4:  STRB.W          R5, [SP,#0x68+var_5E]
5B63C8:  STRB.W          R4, [SP,#0x68+var_60+1]
5B63CC:  VMUL.F32        S12, S0, S0
5B63D0:  STRB.W          R3, [SP,#0x68+var_60]
5B63D4:  LDR             R0, [R0]; CPostEffects::m_bNightVision ...
5B63D6:  LDR             R3, [R2]; CPostEffects::m_bDarknessFilter ...
5B63D8:  LDRB            R1, [R1]; CPostEffects::m_bInfraredVision
5B63DA:  LDRB            R2, [R0]; CPostEffects::m_bNightVision
5B63DC:  LDRB            R0, [R3]; CPostEffects::m_bDarknessFilter
5B63DE:  STRB.W          R5, [SP,#0x68+var_5E]
5B63E2:  VADD.F32        S6, S6, S12
5B63E6:  VLDR            S12, [SP,#0x68+var_44]
5B63EA:  CMP             R0, #0
5B63EC:  VSQRT.F32       S6, S6
5B63F0:  VDIV.F32        S6, S16, S6
5B63F4:  VMUL.F32        S4, S6, S4
5B63F8:  VMUL.F32        S2, S6, S2
5B63FC:  VMUL.F32        S0, S6, S0
5B6400:  VLDR            S6, =1.732
5B6404:  VMUL.F32        S4, S4, S6
5B6408:  VMUL.F32        S2, S2, S6
5B640C:  VMUL.F32        S6, S0, S6
5B6410:  VLDR            S0, =0.4
5B6414:  VADD.F32        S4, S4, S10
5B6418:  VADD.F32        S2, S2, S10
5B641C:  VADD.F32        S6, S6, S10
5B6420:  VMUL.F32        S4, S4, S0
5B6424:  VMUL.F32        S10, S2, S0
5B6428:  VLDR            S2, [SP,#0x68+var_38]
5B642C:  VMUL.F32        S6, S6, S0
5B6430:  VMUL.F32        S2, S2, S4
5B6434:  VMUL.F32        S4, S12, S10
5B6438:  VMUL.F32        S6, S14, S6
5B643C:  VSTR            S2, [SP,#0x68+var_38]
5B6440:  VSTR            S4, [SP,#0x68+var_44]
5B6444:  VSTR            S6, [SP,#0x68+var_50]
5B6448:  BEQ             loc_5B64EC
5B644A:  ORRS.W          R3, R1, R2
5B644E:  BNE             loc_5B64EC
5B6450:  LDR.W           R3, =(_ZN12CPostEffects21m_DarknessFilterAlphaE_ptr - 0x5B6458)
5B6454:  ADD             R3, PC; _ZN12CPostEffects21m_DarknessFilterAlphaE_ptr
5B6456:  LDR             R3, [R3]; CPostEffects::m_DarknessFilterAlpha ...
5B6458:  VLDR            S10, [R3]
5B645C:  VCVT.F32.S32    S10, S10
5B6460:  VLDR            S12, [SP,#0x68+var_30]
5B6464:  VLDR            S14, [SP,#0x68+var_2C]
5B6468:  VLDR            S1, [SP,#0x68+var_48]
5B646C:  VSUB.F32        S10, S8, S10
5B6470:  VDIV.F32        S8, S10, S8
5B6474:  VLDR            S10, [SP,#0x68+var_34]
5B6478:  VMUL.F32        S2, S2, S8
5B647C:  VMUL.F32        S12, S8, S12
5B6480:  VMUL.F32        S10, S10, S8
5B6484:  VMUL.F32        S14, S8, S14
5B6488:  VMUL.F32        S4, S8, S4
5B648C:  VMUL.F32        S6, S8, S6
5B6490:  VSTR            S2, [SP,#0x68+var_38]
5B6494:  VSTR            S10, [SP,#0x68+var_34]
5B6498:  VMUL.F32        S10, S8, S1
5B649C:  VSTR            S12, [SP,#0x68+var_30]
5B64A0:  VLDR            S12, [SP,#0x68+var_40]
5B64A4:  VSTR            S14, [SP,#0x68+var_2C]
5B64A8:  VLDR            S14, [SP,#0x68+var_3C]
5B64AC:  VMUL.F32        S12, S8, S12
5B64B0:  VSTR            S4, [SP,#0x68+var_44]
5B64B4:  VMUL.F32        S14, S8, S14
5B64B8:  VLDR            S1, [SP,#0x68+var_58]
5B64BC:  VSTR            S10, [SP,#0x68+var_48]
5B64C0:  VLDR            S10, [SP,#0x68+var_54]
5B64C4:  VMUL.F32        S10, S8, S10
5B64C8:  VSTR            S12, [SP,#0x68+var_40]
5B64CC:  VMUL.F32        S12, S8, S1
5B64D0:  VSTR            S14, [SP,#0x68+var_3C]
5B64D4:  VLDR            S14, [SP,#0x68+var_4C]
5B64D8:  VMUL.F32        S8, S8, S14
5B64DC:  VSTR            S12, [SP,#0x68+var_58]
5B64E0:  VSTR            S6, [SP,#0x68+var_50]
5B64E4:  VSTR            S10, [SP,#0x68+var_54]
5B64E8:  VSTR            S8, [SP,#0x68+var_4C]
5B64EC:  LDR.W           R3, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x5B64FA)
5B64F0:  MOVS            R4, #0
5B64F2:  LDR.W           R6, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x5B6500)
5B64F6:  ADD             R3, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
5B64F8:  LDR.W           R5, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x5B6504)
5B64FC:  ADD             R6, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
5B64FE:  LDR             R3, [R3]; CCutsceneMgr::ms_running ...
5B6500:  ADD             R5, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
5B6502:  LDR             R6, [R6]; CCutsceneMgr::ms_cutsceneProcessing ...
5B6504:  LDR             R5, [R5]; CPostEffects::m_bInCutscene ...
5B6506:  LDRB            R3, [R3]; CCutsceneMgr::ms_running
5B6508:  LDRB            R6, [R6]; CCutsceneMgr::ms_cutsceneProcessing
5B650A:  STRB            R4, [R5]; CPostEffects::m_bInCutscene
5B650C:  ORRS            R3, R6
5B650E:  LSLS            R3, R3, #0x18
5B6510:  BEQ             loc_5B6548
5B6512:  LDR.W           R0, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x5B651C)
5B6516:  MOVS            R1, #1
5B6518:  ADD             R0, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
5B651A:  LDR             R0, [R0]; CPostEffects::m_bInCutscene ...
5B651C:  STRB            R1, [R0]; CPostEffects::m_bInCutscene
5B651E:  B               loc_5B677E
5B6520:  DCFS 255.0
5B6524:  DCFS 0.0
5B6528:  DCFS 1.732
5B652C:  DCFS 0.4
5B6530:  DCFS 0.02
5B6534:  DCFS 0.007
5B6538:  DCFS 0.017
5B653C:  DCFS 2.6
5B6540:  DCFS -60.0
5B6544:  DCFS 240.0
5B6548:  LDR.W           R3, =(_ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr - 0x5B6552)
5B654C:  CMP             R2, #0
5B654E:  ADD             R3, PC; _ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr
5B6550:  LDR             R3, [R3]; CPostEffects::m_fNightVisionSwitchOnFXCount ...
5B6552:  VLDR            S10, [R3]
5B6556:  BEQ.W           loc_5B69EA
5B655A:  VCMPE.F32       S10, #0.0
5B655E:  VMRS            APSR_nzcv, FPSCR
5B6562:  BLE             loc_5B6580
5B6564:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5B656C)
5B6568:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5B656A:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
5B656C:  VLDR            S8, [R2]
5B6570:  LDR.W           R2, =(_ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr - 0x5B657C)
5B6574:  VSUB.F32        S10, S10, S8
5B6578:  ADD             R2, PC; _ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr
5B657A:  LDR             R2, [R2]; CPostEffects::m_fNightVisionSwitchOnFXCount ...
5B657C:  VSTR            S10, [R2]
5B6580:  VCMPE.F32       S10, #0.0
5B6584:  VMRS            APSR_nzcv, FPSCR
5B6588:  BGE             loc_5B659A
5B658A:  LDR.W           R2, =(_ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr - 0x5B6598)
5B658E:  MOVS            R3, #0
5B6590:  VLDR            S10, =0.0
5B6594:  ADD             R2, PC; _ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr
5B6596:  LDR             R2, [R2]; CPostEffects::m_fNightVisionSwitchOnFXCount ...
5B6598:  STR             R3, [R2]; CPostEffects::m_fNightVisionSwitchOnFXCount
5B659A:  VMOV.F32        S8, #0.125
5B659E:  VLDR            S12, [SP,#0x68+var_34]
5B65A2:  VLDR            S14, [SP,#0x68+var_30]
5B65A6:  VLDR            S1, [SP,#0x68+var_2C]
5B65AA:  VLDR            S3, =0.02
5B65AE:  VLDR            S5, [SP,#0x68+var_58]
5B65B2:  VMUL.F32        S3, S10, S3
5B65B6:  VMUL.F32        S2, S2, S8
5B65BA:  VMUL.F32        S12, S12, S8
5B65BE:  VMUL.F32        S14, S14, S8
5B65C2:  VMUL.F32        S1, S1, S8
5B65C6:  VMUL.F32        S6, S6, S8
5B65CA:  VSTR            S2, [SP,#0x68+var_38]
5B65CE:  VSTR            S12, [SP,#0x68+var_34]
5B65D2:  VSTR            S14, [SP,#0x68+var_30]
5B65D6:  VMUL.F32        S14, S5, S8
5B65DA:  VLDR            S12, [SP,#0x68+var_54]
5B65DE:  VSTR            S1, [SP,#0x68+var_2C]
5B65E2:  VLDR            S1, [SP,#0x68+var_4C]
5B65E6:  VMUL.F32        S12, S12, S8
5B65EA:  VMUL.F32        S8, S1, S8
5B65EE:  VADD.F32        S1, S3, S16
5B65F2:  VLDR            S3, =0.007
5B65F6:  VSTR            S14, [SP,#0x68+var_58]
5B65FA:  VSTR            S6, [SP,#0x68+var_50]
5B65FE:  VMUL.F32        S10, S10, S3
5B6602:  VLDR            S14, [SP,#0x68+var_40]
5B6606:  VSTR            S12, [SP,#0x68+var_54]
5B660A:  VLDR            S12, [SP,#0x68+var_48]
5B660E:  VSTR            S8, [SP,#0x68+var_4C]
5B6612:  VLDR            S8, [SP,#0x68+var_3C]
5B6616:  VMUL.F32        S4, S1, S4
5B661A:  VMUL.F32        S12, S12, S1
5B661E:  VMUL.F32        S8, S1, S8
5B6622:  VMUL.F32        S14, S1, S14
5B6626:  VSTR            S4, [SP,#0x68+var_44]
5B662A:  VSTR            S12, [SP,#0x68+var_48]
5B662E:  VADD.F32        S10, S8, S10
5B6632:  VLDR            S8, =0.0
5B6636:  VSTR            S14, [SP,#0x68+var_40]
5B663A:  VSTR            S10, [SP,#0x68+var_3C]
5B663E:  LDR.W           R2, =(_ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr - 0x5B6648)
5B6642:  CMP             R1, #0
5B6644:  ADD             R2, PC; _ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr
5B6646:  LDR             R2, [R2]; CPostEffects::m_fInfraredVisionSwitchOnFXCount ...
5B6648:  VLDR            S10, [R2]
5B664C:  BEQ.W           loc_5B6A5E
5B6650:  VCMPE.F32       S10, #0.0
5B6654:  VMRS            APSR_nzcv, FPSCR
5B6658:  BLE             loc_5B6676
5B665A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5B6662)
5B665E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5B6660:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5B6662:  VLDR            S12, [R0]
5B6666:  LDR.W           R0, =(_ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr - 0x5B6672)
5B666A:  VSUB.F32        S10, S10, S12
5B666E:  ADD             R0, PC; _ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr
5B6670:  LDR             R0, [R0]; CPostEffects::m_fInfraredVisionSwitchOnFXCount ...
5B6672:  VSTR            S10, [R0]
5B6676:  VCMPE.F32       S10, #0.0
5B667A:  VMRS            APSR_nzcv, FPSCR
5B667E:  BGE             loc_5B6690
5B6680:  LDR.W           R0, =(_ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr - 0x5B668E)
5B6684:  MOVS            R1, #0
5B6686:  VLDR            S10, =0.0
5B668A:  ADD             R0, PC; _ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr
5B668C:  LDR             R0, [R0]; CPostEffects::m_fInfraredVisionSwitchOnFXCount ...
5B668E:  STR             R1, [R0]; CPostEffects::m_fInfraredVisionSwitchOnFXCount
5B6690:  VMOV.F32        S12, #0.125
5B6694:  VLDR            S14, [SP,#0x68+var_48]
5B6698:  VLDR            S1, [SP,#0x68+var_40]
5B669C:  VMOV.F32        S5, #6.0
5B66A0:  VLDR            S3, [SP,#0x68+var_3C]
5B66A4:  VLDR            S7, [SP,#0x68+var_58]
5B66A8:  VMUL.F32        S4, S4, S12
5B66AC:  VMUL.F32        S14, S14, S12
5B66B0:  VMUL.F32        S1, S1, S12
5B66B4:  VMUL.F32        S12, S3, S12
5B66B8:  VLDR            S3, =0.017
5B66BC:  VMUL.F32        S2, S2, S5
5B66C0:  VMUL.F32        S10, S10, S3
5B66C4:  VLDR            S3, [SP,#0x68+var_30]
5B66C8:  VMUL.F32        S6, S6, S5
5B66CC:  VSTR            S4, [SP,#0x68+var_44]
5B66D0:  VMUL.F32        S3, S3, S5
5B66D4:  VSTR            S14, [SP,#0x68+var_48]
5B66D8:  VMUL.F32        S7, S7, S5
5B66DC:  VLDR            S14, [SP,#0x68+var_34]
5B66E0:  VSTR            S1, [SP,#0x68+var_40]
5B66E4:  VLDR            S1, [SP,#0x68+var_2C]
5B66E8:  VMUL.F32        S14, S14, S5
5B66EC:  VSTR            S12, [SP,#0x68+var_3C]
5B66F0:  VLDR            S12, [SP,#0x68+var_4C]
5B66F4:  VMUL.F32        S1, S1, S5
5B66F8:  VSTR            S2, [SP,#0x68+var_38]
5B66FC:  VMUL.F32        S12, S12, S5
5B6700:  VSTR            S14, [SP,#0x68+var_34]
5B6704:  VLDR            S14, [SP,#0x68+var_54]
5B6708:  VSTR            S3, [SP,#0x68+var_30]
5B670C:  VMUL.F32        S14, S14, S5
5B6710:  VADD.F32        S12, S12, S10
5B6714:  VADD.F32        S10, S10, S1
5B6718:  VSTR            S12, [SP,#0x68+var_4C]
5B671C:  VSTR            S6, [SP,#0x68+var_50]
5B6720:  VSTR            S7, [SP,#0x68+var_58]
5B6724:  VSTR            S14, [SP,#0x68+var_54]
5B6728:  VSTR            S10, [SP,#0x68+var_2C]
5B672C:  VCMP.F32        S8, #0.0
5B6730:  VMRS            APSR_nzcv, FPSCR
5B6734:  BEQ             loc_5B677E
5B6736:  VLDR            S10, =2.6
5B673A:  VMUL.F32        S0, S8, S0
5B673E:  VMUL.F32        S10, S8, S10
5B6742:  VLDR            S8, [SP,#0x68+var_2C]
5B6746:  VADD.F32        S8, S0, S8
5B674A:  VADD.F32        S4, S10, S4
5B674E:  VADD.F32        S2, S10, S2
5B6752:  VADD.F32        S6, S10, S6
5B6756:  VSTR            S4, [SP,#0x68+var_44]
5B675A:  VSTR            S2, [SP,#0x68+var_38]
5B675E:  VLDR            S2, [SP,#0x68+var_3C]
5B6762:  VSTR            S6, [SP,#0x68+var_50]
5B6766:  VADD.F32        S2, S0, S2
5B676A:  VSTR            S8, [SP,#0x68+var_2C]
5B676E:  VSTR            S2, [SP,#0x68+var_3C]
5B6772:  VLDR            S2, [SP,#0x68+var_4C]
5B6776:  VADD.F32        S0, S0, S2
5B677A:  VSTR            S0, [SP,#0x68+var_4C]
5B677E:  LDR.W           R0, =(_ZN12CPostEffects7m_bCCTVE_ptr - 0x5B6786)
5B6782:  ADD             R0, PC; _ZN12CPostEffects7m_bCCTVE_ptr
5B6784:  LDR             R0, [R0]; CPostEffects::m_bCCTV ...
5B6786:  LDRB            R0, [R0]; this
5B6788:  CMP             R0, #0
5B678A:  IT NE
5B678C:  BLXNE.W         j__ZN12CPostEffects4CCTVEv; CPostEffects::CCTV(void)
5B6790:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5B6798)
5B6794:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5B6796:  LDR             R0, [R0]; MobileSettings::settings ...
5B6798:  LDR.W           R0, [R0,#(dword_6E05FC - 0x6E03F4)]
5B679C:  CMP             R0, #0x3C ; '<'
5B679E:  BEQ             loc_5B6818
5B67A0:  VMOV            S0, R0
5B67A4:  VLDR            S2, =-60.0
5B67A8:  VCVT.F32.S32    S0, S0
5B67AC:  VADD.F32        S0, S0, S2
5B67B0:  VCMPE.F32       S0, #0.0
5B67B4:  VMRS            APSR_nzcv, FPSCR
5B67B8:  BGE             loc_5B67EC
5B67BA:  VLDR            S2, =240.0
5B67BE:  VLD1.64         {D16-D17}, [R10@128]
5B67C2:  VDIV.F32        S0, S0, S2
5B67C6:  VADD.F32        S0, S0, S16
5B67CA:  VMUL.F32        Q8, Q8, D0[0]
5B67CE:  VST1.64         {D16-D17}, [R10@128]
5B67D2:  VLD1.64         {D16-D17}, [R9@128]
5B67D6:  VMUL.F32        Q8, Q8, D0[0]
5B67DA:  VST1.64         {D16-D17}, [R9@128]
5B67DE:  VLD1.64         {D16-D17}, [R8@128]
5B67E2:  VMUL.F32        Q8, Q8, D0[0]
5B67E6:  VST1.64         {D16-D17}, [R8@128]
5B67EA:  B               loc_5B6818
5B67EC:  VLDR            S2, =320.0
5B67F0:  VDIV.F32        S0, S0, S2
5B67F4:  VLDR            S2, [SP,#0x68+var_2C]
5B67F8:  VADD.F32        S2, S0, S2
5B67FC:  VSTR            S2, [SP,#0x68+var_2C]
5B6800:  VLDR            S2, [SP,#0x68+var_3C]
5B6804:  VADD.F32        S2, S0, S2
5B6808:  VSTR            S2, [SP,#0x68+var_3C]
5B680C:  VLDR            S2, [SP,#0x68+var_4C]
5B6810:  VADD.F32        S0, S0, S2
5B6814:  VSTR            S0, [SP,#0x68+var_4C]
5B6818:  LDR             R0, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x5B681E)
5B681A:  ADD             R0, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
5B681C:  LDR             R0, [R0]; CWeapon::ms_bTakePhoto ...
5B681E:  LDRB            R0, [R0]; CWeapon::ms_bTakePhoto
5B6820:  CBZ             R0, loc_5B6834
5B6822:  LDR             R0, =(dword_A478EC - 0x5B6832)
5B6824:  MOVS            R1, #0x40400000
5B682A:  VMOV.F32        S0, #3.0
5B682E:  ADD             R0, PC; dword_A478EC
5B6830:  STR             R1, [R0]
5B6832:  B               loc_5B6846
5B6834:  LDR             R0, =(dword_A478EC - 0x5B683A)
5B6836:  ADD             R0, PC; dword_A478EC
5B6838:  VLDR            S0, [R0]
5B683C:  VCMP.F32        S0, #0.0
5B6840:  VMRS            APSR_nzcv, FPSCR
5B6844:  BEQ             loc_5B688E
5B6846:  VLDR            S2, =1.9
5B684A:  VLDR            S4, =0.0
5B684E:  VDIV.F32        S0, S0, S2
5B6852:  LDR             R0, =(dword_A478EC - 0x5B6858)
5B6854:  ADD             R0, PC; dword_A478EC
5B6856:  VLDR            S2, =-0.06
5B685A:  VADD.F32        S0, S0, S2
5B685E:  VLDR            S2, [SP,#0x68+var_2C]
5B6862:  VMAX.F32        D0, D0, D2
5B6866:  VMIN.F32        D2, D0, D8
5B686A:  VSTR            S0, [R0]
5B686E:  VLDR            S0, [SP,#0x68+var_3C]
5B6872:  VADD.F32        S0, S0, S4
5B6876:  VADD.F32        S2, S2, S4
5B687A:  VSTR            S0, [SP,#0x68+var_3C]
5B687E:  VLDR            S0, [SP,#0x68+var_4C]
5B6882:  VSTR            S2, [SP,#0x68+var_2C]
5B6886:  VADD.F32        S0, S0, S4
5B688A:  VSTR            S0, [SP,#0x68+var_4C]
5B688E:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x5B6896)
5B6890:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x5B6898)
5B6892:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
5B6894:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
5B6896:  LDR             R0, [R0]; CTimer::m_UserPause ...
5B6898:  LDR             R1, [R1]; CTimer::m_CodePause ...
5B689A:  LDRB            R0, [R0]; CTimer::m_UserPause
5B689C:  LDRB            R1, [R1]; CTimer::m_CodePause
5B689E:  ORRS            R0, R1
5B68A0:  LSLS            R0, R0, #0x18
5B68A2:  BEQ             loc_5B693C
5B68A4:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5B68AA)
5B68A6:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5B68A8:  LDR             R0, [R0]; MobileSettings::settings ...
5B68AA:  LDR.W           R0, [R0,#(dword_6E06BC - 0x6E03F4)]
5B68AE:  CMP             R0, #0
5B68B0:  BNE             loc_5B693C
5B68B2:  LDR             R0, =(dword_A478E8 - 0x5B68BC)
5B68B4:  VLDR            S0, =0.032
5B68B8:  ADD             R0, PC; dword_A478E8
5B68BA:  VLDR            S6, =0.8
5B68BE:  VLDR            S4, =0.0
5B68C2:  VLDR            S2, [R0]
5B68C6:  VLDR            S8, =0.33
5B68CA:  VADD.F32        S0, S2, S0
5B68CE:  VLDR            S10, =0.54
5B68D2:  VLD1.64         {D16-D17}, [R10@128]
5B68D6:  VMIN.F32        D3, D0, D3
5B68DA:  VMUL.F32        S3, S6, S4
5B68DE:  VSTR            S6, [R0]
5B68E2:  VMUL.F32        S1, S6, S8
5B68E6:  VSUB.F32        S8, S16, S6
5B68EA:  VMUL.F32        S0, S6, S10
5B68EE:  VMOV.F32        S2, S1
5B68F2:  VMUL.F32        Q8, Q8, D4[0]
5B68F6:  VMOV.F32        S4, S1
5B68FA:  VMOV.F32        S5, S0
5B68FE:  VMOV.F32        S6, S1
5B6902:  VADD.F32        Q8, Q0, Q8
5B6906:  VMOV.F32        S7, S3
5B690A:  VST1.64         {D16-D17}, [R10@128]
5B690E:  VLD1.64         {D16-D17}, [R9@128]
5B6912:  VMUL.F32        Q8, Q8, D4[0]
5B6916:  VADD.F32        Q8, Q1, Q8
5B691A:  VMOV.F32        S5, S1
5B691E:  VMOV.F32        S6, S0
5B6922:  VMOV.F32        S7, S3
5B6926:  VST1.64         {D16-D17}, [R9@128]
5B692A:  VLD1.64         {D16-D17}, [R8@128]
5B692E:  VMUL.F32        Q8, Q8, D4[0]
5B6932:  VADD.F32        Q8, Q1, Q8
5B6936:  VST1.64         {D16-D17}, [R8@128]
5B693A:  B               loc_5B6944
5B693C:  LDR             R0, =(dword_A478E8 - 0x5B6944)
5B693E:  MOVS            R1, #0
5B6940:  ADD             R0, PC; dword_A478E8
5B6942:  STR             R1, [R0]
5B6944:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5B694A)
5B6946:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5B6948:  LDR             R0, [R0]; MobileSettings::settings ...
5B694A:  LDR             R0, [R0,#(dword_6E03FC - 0x6E03F4)]
5B694C:  CMP             R0, #2
5B694E:  BGT             loc_5B69B0
5B6950:  VLDR            S0, [SP,#0x68+var_38]
5B6954:  VLDR            S2, [SP,#0x68+var_34]
5B6958:  VLDR            S6, [SP,#0x68+var_48]
5B695C:  VLDR            S8, [SP,#0x68+var_44]
5B6960:  VADD.F32        S0, S0, S2
5B6964:  VLDR            S14, [SP,#0x68+var_58]
5B6968:  VLDR            S1, [SP,#0x68+var_54]
5B696C:  VADD.F32        S2, S6, S8
5B6970:  VLDR            S4, [SP,#0x68+var_30]
5B6974:  VADD.F32        S6, S14, S1
5B6978:  VLDR            S10, [SP,#0x68+var_40]
5B697C:  VLDR            S3, [SP,#0x68+var_50]
5B6980:  LDR             R3, [SP,#0x68+var_2C]; float
5B6982:  VADD.F32        S0, S0, S4
5B6986:  VLDR            S12, [SP,#0x68+var_3C]
5B698A:  VLDR            S5, [SP,#0x68+var_4C]
5B698E:  VADD.F32        S2, S2, S10
5B6992:  VSTR            S12, [SP,#0x68+var_68]
5B6996:  VSTR            S5, [SP,#0x68+var_64]
5B699A:  VADD.F32        S4, S6, S3
5B699E:  VMOV            R0, S0; float
5B69A2:  VMOV            R1, S2; float
5B69A6:  VMOV            R2, S4; float
5B69AA:  BLX.W           j__Z20emu_SetAltRTContrastffffff; emu_SetAltRTContrast(float,float,float,float,float,float)
5B69AE:  B               loc_5B69DA
5B69B0:  ADD             R0, SP, #0x68+var_38
5B69B2:  ADD             R1, SP, #0x68+var_48
5B69B4:  ADD             R2, SP, #0x68+var_58
5B69B6:  BLX.W           j__Z19emu_SetAltRTGradingRK8RQVectorS1_S1_; emu_SetAltRTGrading(RQVector const&,RQVector const&,RQVector const&)
5B69BA:  LDR             R0, =(dword_A478E8 - 0x5B69C4)
5B69BC:  VLDR            S0, =3.4
5B69C0:  ADD             R0, PC; dword_A478E8
5B69C2:  VLDR            S2, [R0]
5B69C6:  VMUL.F32        S0, S2, S0
5B69CA:  VLDR            S2, =0.0
5B69CE:  VADD.F32        S0, S0, S2
5B69D2:  VMOV            R0, S0; float
5B69D6:  BLX.W           j__Z17emu_SetAltBlurAmtf; emu_SetAltBlurAmt(float)
5B69DA:  SUB.W           R4, R7, #-var_28
5B69DE:  MOV             SP, R4
5B69E0:  VPOP            {D8-D9}
5B69E4:  POP.W           {R8-R10}
5B69E8:  POP             {R4-R7,PC}
5B69EA:  LDR             R2, =(_ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr - 0x5B69F4)
5B69EC:  VLDR            S8, =0.0
5B69F0:  ADD             R2, PC; _ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr
5B69F2:  LDR             R2, [R2]; CPostEffects::m_fNightVisionSwitchOnFXTime ...
5B69F4:  VLDR            S12, [R2]
5B69F8:  VCMP.F32        S10, S12
5B69FC:  VMRS            APSR_nzcv, FPSCR
5B6A00:  BEQ.W           loc_5B663E
5B6A04:  VCMPE.F32       S10, S12
5B6A08:  VMRS            APSR_nzcv, FPSCR
5B6A0C:  BGE             loc_5B6A2E
5B6A0E:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5B6A18)
5B6A10:  VMOV.F32        S14, #0.5
5B6A14:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5B6A16:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
5B6A18:  VLDR            S1, [R2]
5B6A1C:  LDR             R2, =(_ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr - 0x5B6A26)
5B6A1E:  VMUL.F32        S14, S1, S14
5B6A22:  ADD             R2, PC; _ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr
5B6A24:  LDR             R2, [R2]; CPostEffects::m_fNightVisionSwitchOnFXCount ...
5B6A26:  VADD.F32        S10, S10, S14
5B6A2A:  VSTR            S10, [R2]
5B6A2E:  VCMPE.F32       S10, S12
5B6A32:  VMRS            APSR_nzcv, FPSCR
5B6A36:  BLE             loc_5B6A46
5B6A38:  LDR             R2, =(_ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr - 0x5B6A42)
5B6A3A:  VMOV.F32        S10, S12
5B6A3E:  ADD             R2, PC; _ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr
5B6A40:  LDR             R2, [R2]; CPostEffects::m_fNightVisionSwitchOnFXCount ...
5B6A42:  VSTR            S12, [R2]
5B6A46:  CMP             R0, #0
5B6A48:  BNE.W           loc_5B663E
5B6A4C:  VLDR            S8, =50.0
5B6A50:  VSUB.F32        S8, S8, S10
5B6A54:  VLDR            S10, =100.0
5B6A58:  VDIV.F32        S8, S8, S10
5B6A5C:  B               loc_5B663E
5B6A5E:  LDR             R1, =(_ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr - 0x5B6A64)
5B6A60:  ADD             R1, PC; _ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr
5B6A62:  LDR             R1, [R1]; CPostEffects::m_fNightVisionSwitchOnFXTime ...
5B6A64:  VLDR            S12, [R1]
5B6A68:  VCMP.F32        S10, S12
5B6A6C:  VMRS            APSR_nzcv, FPSCR
5B6A70:  BEQ.W           loc_5B672C
5B6A74:  VCMPE.F32       S10, S12
5B6A78:  VMRS            APSR_nzcv, FPSCR
5B6A7C:  BGE             loc_5B6A9E
5B6A7E:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5B6A88)
5B6A80:  VMOV.F32        S14, #0.5
5B6A84:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5B6A86:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5B6A88:  VLDR            S1, [R1]
5B6A8C:  LDR             R1, =(_ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr - 0x5B6A96)
5B6A8E:  VMUL.F32        S14, S1, S14
5B6A92:  ADD             R1, PC; _ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr
5B6A94:  LDR             R1, [R1]; CPostEffects::m_fInfraredVisionSwitchOnFXCount ...
5B6A96:  VADD.F32        S10, S10, S14
5B6A9A:  VSTR            S10, [R1]
5B6A9E:  VCMPE.F32       S10, S12
5B6AA2:  VMRS            APSR_nzcv, FPSCR
5B6AA6:  BLE             loc_5B6AB6
5B6AA8:  LDR             R1, =(_ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr - 0x5B6AB2)
5B6AAA:  VMOV.F32        S10, S12
5B6AAE:  ADD             R1, PC; _ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr
5B6AB0:  LDR             R1, [R1]; CPostEffects::m_fInfraredVisionSwitchOnFXCount ...
5B6AB2:  VSTR            S12, [R1]
5B6AB6:  CMP             R0, #0
5B6AB8:  BNE.W           loc_5B672C
5B6ABC:  VLDR            S8, =50.0
5B6AC0:  VSUB.F32        S8, S8, S10
5B6AC4:  VLDR            S10, =180.0
5B6AC8:  VDIV.F32        S8, S8, S10
5B6ACC:  B               loc_5B672C
