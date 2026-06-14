; =========================================================
; Game Engine Function: _ZN11CWaterLevel20TestLineAgainstWaterE7CVectorS0_PS0_
; Address            : 0x596080 - 0x59640C
; =========================================================

596080:  PUSH            {R4-R7,LR}
596082:  ADD             R7, SP, #0xC
596084:  PUSH.W          {R8-R11}
596088:  SUB             SP, SP, #4
59608A:  VPUSH           {D8-D11}
59608E:  SUB             SP, SP, #0x48
596090:  VLDR            S4, [R7,#arg_0]
596094:  VMOV            S0, R1
596098:  VMOV            S2, R0
59609C:  VLDR            S8, =500.0
5960A0:  VMOV            S6, R3
5960A4:  MOVS            R0, #0
5960A6:  VMAX.F32        D6, D1, D3
5960AA:  VMAX.F32        D7, D0, D2
5960AE:  VMIN.F32        D5, D0, D2
5960B2:  VMIN.F32        D8, D1, D3
5960B6:  VDIV.F32        S12, S12, S8
5960BA:  VDIV.F32        S9, S10, S8
5960BE:  VDIV.F32        S14, S14, S8
5960C2:  VDIV.F32        S11, S16, S8
5960C6:  VMOV.F32        S10, #6.0
5960CA:  VADD.F32        S12, S12, S10
5960CE:  VADD.F32        S9, S9, S10
5960D2:  VADD.F32        S14, S14, S10
5960D6:  VADD.F32        S11, S11, S10
5960DA:  VCVT.S32.F32    S13, S12
5960DE:  VCVT.S32.F32    S12, S9
5960E2:  VCVT.S32.F32    S14, S14
5960E6:  VCVT.S32.F32    S9, S11
5960EA:  VMOV            R1, S13
5960EE:  VMOV            R3, S9
5960F2:  CMP             R3, R1
5960F4:  BGT.W           loc_5963FE
5960F8:  VLDR            S16, [R7,#arg_4]
5960FC:  VMOV            S18, R2
596100:  VMOV            LR, S14
596104:  LDR             R2, [R7,#arg_8]
596106:  VMAX.F32        D10, D9, D8
59610A:  MOVS            R4, #1
59610C:  VMIN.F32        D11, D9, D8
596110:  VMOV            R6, S12
596114:  VABS.F32        S14, S18
596118:  VSUB.F32        S4, S4, S0
59611C:  VCMPE.F32       S20, #0.0
596120:  VSUB.F32        S12, S20, S22
596124:  VMRS            APSR_nzcv, FPSCR
596128:  VSUB.F32        S6, S6, S2
59612C:  VCMPE.F32       S22, #0.0
596130:  VDIV.F32        S12, S14, S12
596134:  STR             R6, [SP,#0x88+var_64]
596136:  MOV.W           R6, #0
59613A:  IT GT
59613C:  MOVGT           R6, #1
59613E:  VMUL.F32        S4, S4, S12
596142:  VMRS            APSR_nzcv, FPSCR
596146:  VMUL.F32        S6, S6, S12
59614A:  VADD.F32        S0, S4, S0
59614E:  VADD.F32        S2, S6, S2
596152:  VDIV.F32        S4, S0, S8
596156:  IT LT
596158:  MOVLT           R0, #1
59615A:  ANDS            R0, R6
59615C:  LDR             R6, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x596162)
59615E:  ADD             R6, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
596160:  LDR             R5, [R6]; CWaterLevel::m_aQuads ...
596162:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596168)
596164:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596166:  LDR.W           R8, [R6]; CWaterLevel::m_aVertices ...
59616A:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596170)
59616C:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59616E:  VDIV.F32        S6, S2, S8
596172:  VSUB.F32        S8, S16, S18
596176:  VMUL.F32        S8, S8, S12
59617A:  VADD.F32        S12, S4, S10
59617E:  VADD.F32        S10, S6, S10
596182:  VMUL.F32        S4, S18, S16
596186:  VADD.F32        S6, S8, S18
59618A:  VCVT.S32.F32    S8, S12
59618E:  VCVT.S32.F32    S10, S10
596192:  STR             R0, [SP,#0x88+var_48]
596194:  STR             R1, [SP,#0x88+var_74]
596196:  VMOV            R0, S8
59619A:  STR             R0, [SP,#0x88+var_68]
59619C:  VMOV            R0, S10
5961A0:  STR             R0, [SP,#0x88+var_54]
5961A2:  LDR             R0, =(_ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr - 0x5961A8)
5961A4:  ADD             R0, PC; _ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr
5961A6:  LDR             R0, [R0]; CWaterLevel::m_QuadsAndTrianglesInEachBlock ...
5961A8:  STR             R0, [SP,#0x88+var_4C]
5961AA:  LDR             R0, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x5961B0)
5961AC:  ADD             R0, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
5961AE:  LDR             R0, [R0]; CWaterLevel::m_QuadsAndTrianglesList ...
5961B0:  STR             R0, [SP,#0x88+var_58]
5961B2:  LDR             R0, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x5961B8)
5961B4:  ADD             R0, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
5961B6:  LDR.W           R12, [R0]; CWaterLevel::m_aVertices ...
5961BA:  LDR             R0, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x5961C0)
5961BC:  ADD             R0, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
5961BE:  LDR             R0, [R0]; CWaterLevel::m_aQuads ...
5961C0:  STR             R0, [SP,#0x88+var_44]
5961C2:  LDR             R0, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x5961C8)
5961C4:  ADD             R0, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
5961C6:  LDR             R0, [R0]; CWaterLevel::m_aVertices ...
5961C8:  STR             R0, [SP,#0x88+var_50]
5961CA:  LDR             R0, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x5961D0)
5961CC:  ADD             R0, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
5961CE:  LDR             R0, [R0]; CWaterLevel::m_aQuads ...
5961D0:  STR             R0, [SP,#0x88+var_5C]
5961D2:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
5961D4:  STR             R0, [SP,#0x88+var_60]
5961D6:  LDR             R0, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x5961DE)
5961D8:  LDR             R6, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x5961E0)
5961DA:  ADD             R0, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
5961DC:  ADD             R6, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
5961DE:  LDR             R0, [R0]; CWaterLevel::m_aVertices ...
5961E0:  LDR             R6, [R6]; CWaterLevel::m_aQuads ...
5961E2:  STR             R0, [SP,#0x88+var_70]
5961E4:  LDR             R0, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x5961EE)
5961E6:  STR             R6, [SP,#0x88+var_6C]
5961E8:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x5961F0)
5961EA:  ADD             R0, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
5961EC:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
5961EE:  LDR             R0, [R0]; CWaterLevel::m_aQuads ...
5961F0:  STR             R0, [SP,#0x88+var_78]
5961F2:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
5961F4:  STR             R0, [SP,#0x88+var_7C]
5961F6:  LDR             R0, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x5961FE)
5961F8:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596200)
5961FA:  ADD             R0, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
5961FC:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
5961FE:  LDR             R0, [R0]; CWaterLevel::m_aVertices ...
596200:  STR             R0, [SP,#0x88+var_80]
596202:  LDR             R0, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x596208)
596204:  ADD             R0, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
596206:  LDR             R0, [R0]; CWaterLevel::m_aQuads ...
596208:  STR             R0, [SP,#0x88+var_84]
59620A:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
59620C:  STR             R0, [SP,#0x88+var_88]
59620E:  LDR             R0, [SP,#0x88+var_64]
596210:  CMP             R0, LR
596212:  BGT.W           loc_5963EC
596216:  LDR             R0, [SP,#0x88+var_64]
596218:  CMP             R3, #0xB
59621A:  MOV             R10, R0
59621C:  IT LS
59621E:  CMPLS.W         R10, #0xC
596222:  BCC             loc_596248
596224:  LDR             R0, [SP,#0x88+var_48]
596226:  CMP             R0, #1
596228:  BNE.W           loc_5963E2
59622C:  VSTR            S2, [R2]
596230:  VSTR            S0, [R2,#4]
596234:  VSTR            S6, [R2,#8]
596238:  LDR             R0, [SP,#0x88+var_54]
59623A:  CMP             R3, R0
59623C:  ITT EQ
59623E:  LDREQ           R0, [SP,#0x88+var_68]
596240:  CMPEQ           R10, R0
596242:  BNE.W           loc_5963E2
596246:  B               loc_5963FC
596248:  ADD.W           R0, R3, R3,LSL#1
59624C:  LDR             R1, [SP,#0x88+var_4C]
59624E:  ADD.W           R0, R1, R0,LSL#3
596252:  MOVS            R1, #3
596254:  LDRH.W          R0, [R0,R10,LSL#1]
596258:  CMP.W           R1, R0,LSR#14
59625C:  BEQ             loc_59631A
59625E:  LSRS            R6, R0, #0xE
596260:  CMP             R6, #1
596262:  BNE.W           loc_5963E2
596266:  VCMPE.F32       S4, #0.0
59626A:  VMRS            APSR_nzcv, FPSCR
59626E:  BGE.W           loc_5963E2
596272:  BFC.W           R0, #0xE, #0x12
596276:  VSTR            S2, [R2]
59627A:  VSTR            S0, [R2,#4]
59627E:  VSTR            S6, [R2,#8]
596282:  ADD.W           R11, R0, R0,LSL#2
596286:  LDR             R0, [SP,#0x88+var_6C]
596288:  LDRSH.W         R6, [R0,R11,LSL#1]
59628C:  LDR             R0, [SP,#0x88+var_70]
59628E:  ADD.W           R6, R6, R6,LSL#2
596292:  LDRSH.W         R0, [R0,R6,LSL#2]
596296:  VMOV            S8, R0
59629A:  VCVT.F32.S32    S8, S8
59629E:  VCMPE.F32       S2, S8
5962A2:  VMRS            APSR_nzcv, FPSCR
5962A6:  BLT.W           loc_5963E2
5962AA:  LDR             R0, [SP,#0x88+var_78]
5962AC:  LDR             R1, [SP,#0x88+var_7C]
5962AE:  ADD.W           R0, R0, R11,LSL#1
5962B2:  LDRSH.W         R0, [R0,#2]
5962B6:  ADD.W           R0, R0, R0,LSL#2
5962BA:  LDRSH.W         R0, [R1,R0,LSL#2]
5962BE:  VMOV            S8, R0
5962C2:  VCVT.F32.S32    S8, S8
5962C6:  VCMPE.F32       S2, S8
5962CA:  VMRS            APSR_nzcv, FPSCR
5962CE:  BGT.W           loc_5963E2
5962D2:  LDR             R0, [SP,#0x88+var_80]
5962D4:  ADD.W           R0, R0, R6,LSL#2
5962D8:  LDRSH.W         R0, [R0,#2]
5962DC:  VMOV            S8, R0
5962E0:  VCVT.F32.S32    S8, S8
5962E4:  VCMPE.F32       S0, S8
5962E8:  VMRS            APSR_nzcv, FPSCR
5962EC:  BLT             loc_5963E2
5962EE:  LDR             R0, [SP,#0x88+var_84]
5962F0:  LDR             R1, [SP,#0x88+var_88]
5962F2:  ADD.W           R0, R0, R11,LSL#1
5962F6:  LDRSH.W         R0, [R0,#4]
5962FA:  ADD.W           R0, R0, R0,LSL#2
5962FE:  ADD.W           R0, R1, R0,LSL#2
596302:  LDRSH.W         R0, [R0,#2]
596306:  VMOV            S8, R0
59630A:  VCVT.F32.S32    S8, S8
59630E:  VCMPE.F32       S0, S8
596312:  VMRS            APSR_nzcv, FPSCR
596316:  BGT             loc_5963E2
596318:  B               loc_5963FC
59631A:  BFC.W           R0, #0xE, #0x12
59631E:  LDR             R1, [SP,#0x88+var_58]
596320:  ADD.W           R11, R1, R0,LSL#1
596324:  B               loc_59632A
596326:  ADD.W           R11, R11, #2
59632A:  LDRH.W          R0, [R11]
59632E:  CMP.W           R4, R0,LSR#14
596332:  BEQ             loc_59633A
596334:  LSRS            R0, R0, #0xE
596336:  BNE             loc_596326
596338:  B               loc_5963E2
59633A:  VCMPE.F32       S4, #0.0
59633E:  VMRS            APSR_nzcv, FPSCR
596342:  BGE             loc_596326
596344:  BFC.W           R0, #0xE, #0x12
596348:  VSTR            S2, [R2]
59634C:  VSTR            S0, [R2,#4]
596350:  ADD.W           R0, R0, R0,LSL#2
596354:  VSTR            S6, [R2,#8]
596358:  LDRSH.W         R6, [R5,R0,LSL#1]
59635C:  ADD.W           R6, R6, R6,LSL#2
596360:  LDRSH.W         R9, [R12,R6,LSL#2]
596364:  VMOV            S8, R9
596368:  VCVT.F32.S32    S8, S8
59636C:  VCMPE.F32       S2, S8
596370:  VMRS            APSR_nzcv, FPSCR
596374:  BLT             loc_596326
596376:  LDR             R1, [SP,#0x88+var_44]
596378:  ADD.W           R1, R1, R0,LSL#1
59637C:  LDRSH.W         R1, [R1,#2]
596380:  ADD.W           R1, R1, R1,LSL#2
596384:  LDRSH.W         R1, [R8,R1,LSL#2]
596388:  VMOV            S8, R1
59638C:  VCVT.F32.S32    S8, S8
596390:  VCMPE.F32       S2, S8
596394:  VMRS            APSR_nzcv, FPSCR
596398:  BGT             loc_596326
59639A:  LDR             R1, [SP,#0x88+var_50]
59639C:  ADD.W           R1, R1, R6,LSL#2
5963A0:  LDRSH.W         R1, [R1,#2]
5963A4:  VMOV            S8, R1
5963A8:  VCVT.F32.S32    S8, S8
5963AC:  VCMPE.F32       S0, S8
5963B0:  VMRS            APSR_nzcv, FPSCR
5963B4:  BLT             loc_596326
5963B6:  LDR             R1, [SP,#0x88+var_5C]
5963B8:  ADD.W           R0, R1, R0,LSL#1
5963BC:  LDR             R1, [SP,#0x88+var_60]
5963BE:  LDRSH.W         R0, [R0,#4]
5963C2:  ADD.W           R0, R0, R0,LSL#2
5963C6:  ADD.W           R0, R1, R0,LSL#2
5963CA:  LDRSH.W         R0, [R0,#2]
5963CE:  VMOV            S8, R0
5963D2:  VCVT.F32.S32    S8, S8
5963D6:  VCMPE.F32       S0, S8
5963DA:  VMRS            APSR_nzcv, FPSCR
5963DE:  BGT             loc_596326
5963E0:  B               loc_5963FC
5963E2:  ADD.W           R0, R10, #1
5963E6:  CMP             R10, LR
5963E8:  BLT.W           loc_596218
5963EC:  LDR             R1, [SP,#0x88+var_74]
5963EE:  ADDS            R0, R3, #1
5963F0:  CMP             R3, R1
5963F2:  MOV             R3, R0
5963F4:  BLT.W           loc_59620E
5963F8:  MOVS            R0, #0
5963FA:  B               loc_5963FE
5963FC:  MOVS            R0, #1
5963FE:  ADD             SP, SP, #0x48 ; 'H'
596400:  VPOP            {D8-D11}
596404:  ADD             SP, SP, #4
596406:  POP.W           {R8-R11}
59640A:  POP             {R4-R7,PC}
