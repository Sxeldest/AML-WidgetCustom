; =========================================================
; Game Engine Function: _ZN9C3dMarker6RenderEv
; Address            : 0x5C3160 - 0x5C339A
; =========================================================

5C3160:  PUSH            {R4-R7,LR}
5C3162:  ADD             R7, SP, #0xC
5C3164:  PUSH.W          {R8}
5C3168:  SUB             SP, SP, #0x100
5C316A:  MOV             R4, R0
5C316C:  LDR             R0, [R4,#0x48]
5C316E:  CMP             R0, #0
5C3170:  BEQ.W           loc_5C3392
5C3174:  LDRH.W          R0, [R4,#0x50]
5C3178:  CMP             R0, #1
5C317A:  MOV.W           R0, #0x14
5C317E:  ITE NE
5C3180:  MOVNE           R1, #2
5C3182:  MOVEQ           R1, #1
5C3184:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C3188:  MOV             R0, R4; this
5C318A:  BLX.W           j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
5C318E:  MOVS            R5, #0
5C3190:  ADD             R0, SP, #0x110+var_A0
5C3192:  STRD.W          R5, R5, [SP,#0x110+var_60]
5C3196:  MOVS            R2, #0
5C3198:  LDR             R1, [R4,#0x40]
5C319A:  BLX.W           j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
5C319E:  LDRH.W          R0, [R4,#0x50]
5C31A2:  SUBS            R1, R0, #3
5C31A4:  UXTH            R1, R1
5C31A6:  CMP             R1, #1
5C31A8:  BHI             loc_5C3278
5C31AA:  ADD             R0, SP, #0x110+var_E8; this
5C31AC:  STRD.W          R5, R5, [SP,#0x110+var_A8]
5C31B0:  BLX.W           j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
5C31B4:  VLDR            S0, [R4,#0x78]
5C31B8:  VCMP.F32        S0, #0.0
5C31BC:  VMRS            APSR_nzcv, FPSCR
5C31C0:  ITTT EQ
5C31C2:  VLDREQ          S0, [R4,#0x7C]
5C31C6:  VCMPEQ.F32      S0, #0.0
5C31CA:  VMRSEQ          APSR_nzcv, FPSCR
5C31CE:  BNE             loc_5C31E2
5C31D0:  VMOV.F32        S0, #1.0
5C31D4:  VLDR            S2, [R4,#0x80]
5C31D8:  VCMP.F32        S2, S0
5C31DC:  VMRS            APSR_nzcv, FPSCR
5C31E0:  BEQ             loc_5C324E
5C31E2:  MOVS            R0, #0
5C31E4:  ADD.W           R5, R4, #0x78 ; 'x'
5C31E8:  STRD.W          R0, R0, [SP,#0x110+var_104]
5C31EC:  MOV.W           R0, #0x3F800000
5C31F0:  STR             R0, [SP,#0x110+var_FC]
5C31F2:  ADD             R0, SP, #0x110+var_F8; CVector *
5C31F4:  ADD             R1, SP, #0x110+var_104; CVector *
5C31F6:  MOV             R2, R5
5C31F8:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5C31FC:  ADD             R6, SP, #0x110+var_58
5C31FE:  LDR             R0, [SP,#0x110+var_F0]
5C3200:  VLDR            D16, [SP,#0x110+var_F8]
5C3204:  STR             R0, [SP,#0x110+var_50]
5C3206:  MOV             R0, R6; this
5C3208:  VSTR            D16, [SP,#0x110+var_58]
5C320C:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5C3210:  MOV             R0, SP; CVector *
5C3212:  MOV             R1, R5; CVector *
5C3214:  MOV             R2, R6
5C3216:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5C321A:  LDR             R0, [SP,#0x110+var_108]
5C321C:  STR             R0, [SP,#0x110+var_F0]
5C321E:  ADD             R0, SP, #0x110+var_F8; this
5C3220:  VLDR            D16, [SP,#0x110+var_110]
5C3224:  VSTR            D16, [SP,#0x110+var_F8]
5C3228:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5C322C:  ADD             R2, SP, #0x110+var_58
5C322E:  ADD.W           R6, R4, #0x78 ; 'x'
5C3232:  LDM             R2, {R0-R2}
5C3234:  STR             R0, [SP,#0x110+var_E8]
5C3236:  LDR             R0, [SP,#0x110+var_F8]
5C3238:  STR             R0, [SP,#0x110+var_D8]
5C323A:  LDM             R6, {R0,R3,R6}
5C323C:  STR             R0, [SP,#0x110+var_C8]
5C323E:  LDR             R0, [SP,#0x110+var_F8+4]
5C3240:  STR             R1, [SP,#0x110+var_E4]
5C3242:  STR             R0, [SP,#0x110+var_D4]
5C3244:  LDR             R0, [SP,#0x110+var_F0]
5C3246:  STR             R3, [SP,#0x110+var_C4]
5C3248:  STR             R2, [SP,#0x110+var_E0]
5C324A:  STR             R0, [SP,#0x110+var_D0]
5C324C:  STR             R6, [SP,#0x110+var_C0]
5C324E:  ADD             R5, SP, #0x110+var_58
5C3250:  ADD             R6, SP, #0x110+var_A0
5C3252:  ADD.W           R8, SP, #0x110+var_E8
5C3256:  MOV             R0, R5
5C3258:  MOV             R1, R6
5C325A:  MOV             R2, R8
5C325C:  BLX.W           j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
5C3260:  MOV             R0, R6
5C3262:  MOV             R1, R5
5C3264:  BLX.W           j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5C3268:  MOV             R0, R5; this
5C326A:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5C326E:  MOV             R0, R8; this
5C3270:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5C3274:  LDRH.W          R0, [R4,#0x50]
5C3278:  VLDR            S0, [SP,#0x110+var_A0]
5C327C:  CMP             R0, #2
5C327E:  VLDR            S8, [R4,#0x6C]
5C3282:  VLDR            S2, [SP,#0x110+var_9C]
5C3286:  VLDR            S4, [SP,#0x110+var_98]
5C328A:  VMUL.F32        S12, S8, S0
5C328E:  VLDR            S10, [SP,#0x110+var_88]
5C3292:  VLDR            S6, [SP,#0x110+var_90]
5C3296:  VLDR            S14, [SP,#0x110+var_8C]
5C329A:  VMUL.F32        S0, S8, S10
5C329E:  VLDR            S1, [SP,#0x110+var_80]
5C32A2:  VMUL.F32        S10, S8, S2
5C32A6:  VMUL.F32        S2, S8, S4
5C32AA:  VLDR            S4, [SP,#0x110+var_78]
5C32AE:  VLDR            S3, [SP,#0x110+var_7C]
5C32B2:  VMUL.F32        S6, S8, S6
5C32B6:  VMUL.F32        S4, S8, S4
5C32BA:  VSTR            S12, [SP,#0x110+var_A0]
5C32BE:  VMUL.F32        S14, S8, S14
5C32C2:  VMUL.F32        S1, S8, S1
5C32C6:  VMUL.F32        S8, S8, S3
5C32CA:  VSTR            S10, [SP,#0x110+var_9C]
5C32CE:  VSTR            S2, [SP,#0x110+var_98]
5C32D2:  VSTR            S6, [SP,#0x110+var_90]
5C32D6:  VSTR            S14, [SP,#0x110+var_8C]
5C32DA:  VSTR            S0, [SP,#0x110+var_88]
5C32DE:  VSTR            S1, [SP,#0x110+var_80]
5C32E2:  VSTR            S8, [SP,#0x110+var_7C]
5C32E6:  VSTR            S4, [SP,#0x110+var_78]
5C32EA:  BNE             loc_5C3308
5C32EC:  VMOV.F32        S6, #20.0
5C32F0:  VMUL.F32        S0, S0, S6
5C32F4:  VMUL.F32        S2, S2, S6
5C32F8:  VMUL.F32        S4, S4, S6
5C32FC:  VSTR            S0, [SP,#0x110+var_88]
5C3300:  VSTR            S2, [SP,#0x110+var_98]
5C3304:  VSTR            S4, [SP,#0x110+var_78]
5C3308:  ADD             R0, SP, #0x110+var_A0; this
5C330A:  BLX.W           j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
5C330E:  LDR             R0, [R4,#0x48]
5C3310:  LDR             R0, [R0,#4]
5C3312:  BLX.W           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
5C3316:  LDRH.W          R0, [R4,#0x50]
5C331A:  CMP             R0, #6
5C331C:  BHI             loc_5C3336
5C331E:  MOVS            R1, #1
5C3320:  LSL.W           R0, R1, R0
5C3324:  TST.W           R0, #0x61
5C3328:  BEQ             loc_5C3336
5C332A:  VLDR            S0, =255.0
5C332E:  MOVS            R0, #0xFF
5C3330:  STRB.W          R0, [R4,#0x5B]
5C3334:  B               loc_5C3342
5C3336:  LDRB.W          R0, [R4,#0x5B]
5C333A:  VMOV            S0, R0
5C333E:  VCVT.F32.U32    S0, S0
5C3342:  VLDR            S2, =255.0
5C3346:  VDIV.F32        S0, S0, S2
5C334A:  VMOV            R0, S0; float
5C334E:  BLX.W           j__Z23emu_EnableAlphaModulatef; emu_EnableAlphaModulate(float)
5C3352:  LDR             R0, [R4,#0x4C]
5C3354:  LDR             R1, [R4,#0x58]
5C3356:  STR             R1, [R0,#4]
5C3358:  LDR             R0, [R4,#0x70]; float
5C335A:  BLX.W           j__Z22SetBrightMarkerColoursf; SetBrightMarkerColours(float)
5C335E:  MOVS            R0, #8
5C3360:  MOVS            R1, #0
5C3362:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C3366:  LDRH.W          R0, [R4,#0x50]
5C336A:  CMP             R0, #3
5C336C:  BNE             loc_5C3376
5C336E:  MOVS            R0, #0x14
5C3370:  MOVS            R1, #1
5C3372:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C3376:  LDR             R0, [R4,#0x48]
5C3378:  LDR             R1, [R0,#0x48]
5C337A:  BLX             R1
5C337C:  MOVS            R0, #8
5C337E:  MOVS            R1, #1
5C3380:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C3384:  BLX.W           j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
5C3388:  BLX.W           j__Z33ReSetAmbientAndDirectionalColoursv; ReSetAmbientAndDirectionalColours(void)
5C338C:  ADD             R0, SP, #0x110+var_A0; this
5C338E:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5C3392:  ADD             SP, SP, #0x100
5C3394:  POP.W           {R8}
5C3398:  POP             {R4-R7,PC}
