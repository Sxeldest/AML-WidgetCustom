; =========================================================
; Game Engine Function: _ZN11StatsScreen6RenderEi
; Address            : 0x2A6130 - 0x2A6A18
; =========================================================

2A6130:  PUSH            {R4-R7,LR}
2A6132:  ADD             R7, SP, #0xC
2A6134:  PUSH.W          {R8-R11}
2A6138:  SUB             SP, SP, #4
2A613A:  VPUSH           {D8-D15}
2A613E:  SUB.W           SP, SP, #0x310
2A6142:  MOV             R10, R0
2A6144:  STR             R1, [SP,#0x370+var_2D0]
2A6146:  LDRB.W          R1, [R10,#0x38]; int
2A614A:  MOV             R0, #(elf_hash_chain+0x8537); this
2A6152:  BLX             j__ZN6CStats17ConstructStatLineEih; CStats::ConstructStatLine(int,uchar)
2A6156:  MOV             R5, R0
2A6158:  ADD             R0, SP, #0x370+var_64; this
2A615A:  MOVS            R4, #0xFF
2A615C:  MOVS            R1, #0xF0; unsigned __int8
2A615E:  MOVS            R2, #0xF0; unsigned __int8
2A6160:  MOVS            R3, #0xF0; unsigned __int8
2A6162:  STR             R4, [SP,#0x370+var_370]; unsigned __int8
2A6164:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A6168:  ADD             R0, SP, #0x370+var_68; this
2A616A:  MOVS            R1, #0xFF; unsigned __int8
2A616C:  MOVS            R2, #0xFF; unsigned __int8
2A616E:  MOVS            R3, #0xFF; unsigned __int8
2A6170:  STR             R4, [SP,#0x370+var_370]; unsigned __int8
2A6172:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A6176:  CMP             R5, #1
2A6178:  BLT.W           loc_2A6884
2A617C:  VMOV.F32        S2, #-30.0
2A6180:  VLDR            S0, [R10,#0x34]
2A6184:  ADDS            R0, R5, #7
2A6186:  VLDR            S16, =50.0
2A618A:  VLDR            S4, =-34.0
2A618E:  VMOV.F32        S24, #20.0
2A6192:  VLDR            S18, =34.0
2A6196:  VMOV.F32        S30, #8.0
2A619A:  VLDR            S22, =-50.0
2A619E:  MOVS            R4, #0
2A61A0:  VLDR            S23, =450.0
2A61A4:  MOV.W           R8, #0
2A61A8:  VMAX.F32        D0, D0, D1
2A61AC:  VLDR            S28, =420.0
2A61B0:  VMOV            S2, R0
2A61B4:  LDR.W           R0, =(gGxtString_ptr - 0x2A61C0)
2A61B8:  VLDR            S17, =390.0
2A61BC:  ADD             R0, PC; gGxtString_ptr
2A61BE:  VCVT.F32.S32    S2, S2
2A61C2:  VLDR            S19, =0.0
2A61C6:  LDR.W           R9, [R0]; gGxtString
2A61CA:  VSUB.F32        S0, S16, S0
2A61CE:  LDR.W           R0, =(RsGlobal_ptr - 0x2A61DA)
2A61D2:  VLDR            S21, =80.0
2A61D6:  ADD             R0, PC; RsGlobal_ptr
2A61D8:  VLDR            S26, =255.0
2A61DC:  LDR             R6, [R0]; RsGlobal
2A61DE:  VMUL.F32        S20, S2, S18
2A61E2:  LDR.W           R0, =(gGxtString_ptr - 0x2A61EE)
2A61E6:  VADD.F32        S31, S0, S4
2A61EA:  ADD             R0, PC; gGxtString_ptr
2A61EC:  LDR             R0, [R0]; gGxtString
2A61EE:  STR             R0, [SP,#0x370+var_298]
2A61F0:  LDR.W           R0, =(_ZN6CStats21m_ThisStatIsABarChartE_ptr - 0x2A61F8)
2A61F4:  ADD             R0, PC; _ZN6CStats21m_ThisStatIsABarChartE_ptr
2A61F6:  LDR             R0, [R0]; CStats::m_ThisStatIsABarChart ...
2A61F8:  STR             R0, [SP,#0x370+var_29C]
2A61FA:  LDR.W           R0, =(TheText_ptr - 0x2A6202)
2A61FE:  ADD             R0, PC; TheText_ptr
2A6200:  LDR             R0, [R0]; TheText
2A6202:  STR             R0, [SP,#0x370+var_2AC]
2A6204:  LDR.W           R0, =(gGxtString_ptr - 0x2A620C)
2A6208:  ADD             R0, PC; gGxtString_ptr
2A620A:  LDR             R0, [R0]; gGxtString
2A620C:  STR             R0, [SP,#0x370+var_2B0]
2A620E:  LDR.W           R0, =(TheText_ptr - 0x2A6216)
2A6212:  ADD             R0, PC; TheText_ptr
2A6214:  LDR             R0, [R0]; TheText
2A6216:  STR             R0, [SP,#0x370+var_2C4]
2A6218:  LDR.W           R0, =(gGxtString_ptr - 0x2A6220)
2A621C:  ADD             R0, PC; gGxtString_ptr
2A621E:  LDR             R0, [R0]; gGxtString
2A6220:  STR             R0, [SP,#0x370+var_2C8]
2A6222:  LDR.W           R0, =(TheText_ptr - 0x2A622A)
2A6226:  ADD             R0, PC; TheText_ptr
2A6228:  LDR             R0, [R0]; TheText
2A622A:  STR             R0, [SP,#0x370+var_2E4]
2A622C:  LDR.W           R0, =(gGxtString_ptr - 0x2A6234)
2A6230:  ADD             R0, PC; gGxtString_ptr
2A6232:  LDR             R0, [R0]; gGxtString
2A6234:  STR             R0, [SP,#0x370+var_2E8]
2A6236:  LDR.W           R0, =(TheText_ptr - 0x2A623E)
2A623A:  ADD             R0, PC; TheText_ptr
2A623C:  LDR             R0, [R0]; TheText
2A623E:  STR             R0, [SP,#0x370+var_2EC]
2A6240:  LDR.W           R0, =(gGxtString_ptr - 0x2A6248)
2A6244:  ADD             R0, PC; gGxtString_ptr
2A6246:  LDR             R0, [R0]; gGxtString
2A6248:  STR             R0, [SP,#0x370+var_2F0]
2A624A:  LDR.W           R0, =(gGxtString2_ptr - 0x2A6252)
2A624E:  ADD             R0, PC; gGxtString2_ptr
2A6250:  LDR             R0, [R0]; gGxtString2
2A6252:  STR             R0, [SP,#0x370+var_2F4]
2A6254:  LDR.W           R0, =(TheText_ptr - 0x2A625C)
2A6258:  ADD             R0, PC; TheText_ptr
2A625A:  LDR             R0, [R0]; TheText
2A625C:  STR             R0, [SP,#0x370+var_2F8]
2A625E:  LDR.W           R0, =(gGxtString2_ptr - 0x2A6266)
2A6262:  ADD             R0, PC; gGxtString2_ptr
2A6264:  LDR             R0, [R0]; gGxtString2
2A6266:  STR             R0, [SP,#0x370+var_2FC]
2A6268:  LDR.W           R0, =(TheText_ptr - 0x2A6270)
2A626C:  ADD             R0, PC; TheText_ptr
2A626E:  LDR             R0, [R0]; TheText
2A6270:  STR             R0, [SP,#0x370+var_308]
2A6272:  LDR.W           R0, =(gGxtString2_ptr - 0x2A627A)
2A6276:  ADD             R0, PC; gGxtString2_ptr
2A6278:  LDR             R0, [R0]; gGxtString2
2A627A:  STR             R0, [SP,#0x370+var_30C]
2A627C:  LDR.W           R0, =(TheText_ptr - 0x2A6284)
2A6280:  ADD             R0, PC; TheText_ptr
2A6282:  LDR             R0, [R0]; TheText
2A6284:  STR             R0, [SP,#0x370+var_310]
2A6286:  LDR.W           R0, =(gGxtString2_ptr - 0x2A628E)
2A628A:  ADD             R0, PC; gGxtString2_ptr
2A628C:  LDR             R0, [R0]; gGxtString2
2A628E:  STR             R0, [SP,#0x370+var_314]
2A6290:  LDR.W           R0, =(TheText_ptr - 0x2A6298)
2A6294:  ADD             R0, PC; TheText_ptr
2A6296:  LDR             R0, [R0]; TheText
2A6298:  STR             R0, [SP,#0x370+var_318]
2A629A:  LDR.W           R0, =(gGxtString2_ptr - 0x2A62A2)
2A629E:  ADD             R0, PC; gGxtString2_ptr
2A62A0:  LDR             R0, [R0]; gGxtString2
2A62A2:  STR             R0, [SP,#0x370+var_31C]
2A62A4:  LDR.W           R0, =(TheText_ptr - 0x2A62AC)
2A62A8:  ADD             R0, PC; TheText_ptr
2A62AA:  LDR             R0, [R0]; TheText
2A62AC:  STR             R0, [SP,#0x370+var_320]
2A62AE:  LDR.W           R0, =(gGxtString2_ptr - 0x2A62B6)
2A62B2:  ADD             R0, PC; gGxtString2_ptr
2A62B4:  LDR             R0, [R0]; gGxtString2
2A62B6:  STR             R0, [SP,#0x370+var_324]
2A62B8:  LDR.W           R0, =(TheText_ptr - 0x2A62C0)
2A62BC:  ADD             R0, PC; TheText_ptr
2A62BE:  LDR             R0, [R0]; TheText
2A62C0:  STR             R0, [SP,#0x370+var_328]
2A62C2:  LDR.W           R0, =(gGxtString2_ptr - 0x2A62CA)
2A62C6:  ADD             R0, PC; gGxtString2_ptr
2A62C8:  LDR             R0, [R0]; gGxtString2
2A62CA:  STR             R0, [SP,#0x370+var_32C]
2A62CC:  LDR.W           R0, =(TheText_ptr - 0x2A62D4)
2A62D0:  ADD             R0, PC; TheText_ptr
2A62D2:  LDR             R0, [R0]; TheText
2A62D4:  STR             R0, [SP,#0x370+var_330]
2A62D6:  LDR.W           R0, =(gGxtString2_ptr - 0x2A62DE)
2A62DA:  ADD             R0, PC; gGxtString2_ptr
2A62DC:  LDR             R0, [R0]; gGxtString2
2A62DE:  STR             R0, [SP,#0x370+var_334]
2A62E0:  LDR.W           R0, =(TheText_ptr - 0x2A62E8)
2A62E4:  ADD             R0, PC; TheText_ptr
2A62E6:  LDR             R0, [R0]; TheText
2A62E8:  STR             R0, [SP,#0x370+var_338]
2A62EA:  LDR.W           R0, =(gGxtString2_ptr - 0x2A62F2)
2A62EE:  ADD             R0, PC; gGxtString2_ptr
2A62F0:  LDR             R0, [R0]; gGxtString2
2A62F2:  STR             R0, [SP,#0x370+var_33C]
2A62F4:  LDR.W           R0, =(TheText_ptr - 0x2A62FC)
2A62F8:  ADD             R0, PC; TheText_ptr
2A62FA:  LDR             R0, [R0]; TheText
2A62FC:  STR             R0, [SP,#0x370+var_340]
2A62FE:  LDR.W           R0, =(gGxtString2_ptr - 0x2A6306)
2A6302:  ADD             R0, PC; gGxtString2_ptr
2A6304:  LDR             R0, [R0]; gGxtString2
2A6306:  STR             R0, [SP,#0x370+var_344]
2A6308:  LDR.W           R0, =(TheText_ptr - 0x2A6310)
2A630C:  ADD             R0, PC; TheText_ptr
2A630E:  LDR             R0, [R0]; TheText
2A6310:  STR             R0, [SP,#0x370+var_348]
2A6312:  LDR.W           R0, =(gGxtString2_ptr - 0x2A631A)
2A6316:  ADD             R0, PC; gGxtString2_ptr
2A6318:  LDR             R0, [R0]; gGxtString2
2A631A:  STR             R0, [SP,#0x370+var_34C]
2A631C:  LDR.W           R0, =(gGxtString2_ptr - 0x2A6324)
2A6320:  ADD             R0, PC; gGxtString2_ptr
2A6322:  LDR             R0, [R0]; gGxtString2
2A6324:  STR             R0, [SP,#0x370+var_300]
2A6326:  LDR.W           R0, =(gGxtString2_ptr - 0x2A632E)
2A632A:  ADD             R0, PC; gGxtString2_ptr
2A632C:  LDR             R0, [R0]; gGxtString2
2A632E:  STR             R0, [SP,#0x370+var_304]
2A6330:  LDR.W           R0, =(TheText_ptr - 0x2A6338)
2A6334:  ADD             R0, PC; TheText_ptr
2A6336:  LDR             R0, [R0]; TheText
2A6338:  STR             R0, [SP,#0x370+var_2B4]
2A633A:  LDR.W           R0, =(gGxtString_ptr - 0x2A6342)
2A633E:  ADD             R0, PC; gGxtString_ptr
2A6340:  LDR             R0, [R0]; gGxtString
2A6342:  STR             R0, [SP,#0x370+var_2B8]
2A6344:  LDR.W           R0, =(gGxtString2_ptr - 0x2A634C)
2A6348:  ADD             R0, PC; gGxtString2_ptr
2A634A:  LDR             R0, [R0]; gGxtString2
2A634C:  STR             R0, [SP,#0x370+var_2CC]
2A634E:  LDR.W           R0, =(gGxtString2_ptr - 0x2A6356)
2A6352:  ADD             R0, PC; gGxtString2_ptr
2A6354:  LDR             R0, [R0]; gGxtString2
2A6356:  STR             R0, [SP,#0x370+var_2BC]
2A6358:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x2A6360)
2A635C:  ADD             R0, PC; FrontEndMenuManager_ptr
2A635E:  LDR             R0, [R0]; FrontEndMenuManager
2A6360:  STR             R0, [SP,#0x370+var_2C0]
2A6362:  LDR.W           R0, =(TheText_ptr - 0x2A636A)
2A6366:  ADD             R0, PC; TheText_ptr
2A6368:  LDR             R0, [R0]; TheText
2A636A:  STR             R0, [SP,#0x370+var_2D4]
2A636C:  LDR.W           R0, =(TheText_ptr - 0x2A6374)
2A6370:  ADD             R0, PC; TheText_ptr
2A6372:  LDR             R0, [R0]; TheText
2A6374:  STR             R0, [SP,#0x370+var_2D8]
2A6376:  LDR.W           R0, =(TheText_ptr - 0x2A637E)
2A637A:  ADD             R0, PC; TheText_ptr
2A637C:  LDR             R0, [R0]; TheText
2A637E:  STR             R0, [SP,#0x370+var_2DC]
2A6380:  LDR.W           R0, =(TheText_ptr - 0x2A6388)
2A6384:  ADD             R0, PC; TheText_ptr
2A6386:  LDR             R0, [R0]; TheText
2A6388:  STR             R0, [SP,#0x370+var_2E0]
2A638A:  MOVS            R0, #0
2A638C:  STR             R0, [SP,#0x370+var_2A8]
2A638E:  STRD.W          R9, R6, [SP,#0x370+var_2A4]
2A6392:  B               loc_2A6584
2A6394:  LDR             R0, [SP,#0x370+var_2F4]; this
2A6396:  MOVS            R1, #(stderr+1); unsigned __int16 *
2A6398:  MOVS            R2, #0; unsigned __int8
2A639A:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2A639E:  VMOV            S0, R0
2A63A2:  VLDR            S2, =200.0
2A63A6:  VCMPE.F32       S0, S2
2A63AA:  VMRS            APSR_nzcv, FPSCR
2A63AE:  BLE.W           loc_2A64E4
2A63B2:  LDR             R0, [SP,#0x370+var_2F8]; this
2A63B4:  ADR.W           R1, aNostuc; "NOSTUC"
2A63B8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A63BC:  LDR             R1, [SP,#0x370+var_2FC]; unsigned __int16 *
2A63BE:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A63C2:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A63C6:  CMP             R0, #0
2A63C8:  BNE             loc_2A6496
2A63CA:  LDR             R0, [SP,#0x370+var_308]; this
2A63CC:  ADR.W           R1, aInstun; "INSTUN"
2A63D0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A63D4:  LDR             R1, [SP,#0x370+var_30C]; unsigned __int16 *
2A63D6:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A63DA:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A63DE:  CMP             R0, #0
2A63E0:  BNE             loc_2A6496
2A63E2:  LDR             R0, [SP,#0x370+var_310]; this
2A63E4:  ADR.W           R1, aPrinst; "PRINST"
2A63E8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A63EC:  LDR             R1, [SP,#0x370+var_314]; unsigned __int16 *
2A63EE:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A63F2:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A63F6:  CMP             R0, #0
2A63F8:  BNE             loc_2A6496
2A63FA:  LDR             R0, [SP,#0x370+var_318]; this
2A63FC:  ADR.W           R1, aDbinst; "DBINST"
2A6400:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A6404:  LDR             R1, [SP,#0x370+var_31C]; unsigned __int16 *
2A6406:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A640A:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A640E:  CMP             R0, #0
2A6410:  BNE             loc_2A6496
2A6412:  LDR             R0, [SP,#0x370+var_320]; this
2A6414:  ADR.W           R1, aDbpins; "DBPINS"
2A6418:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A641C:  LDR             R1, [SP,#0x370+var_324]; unsigned __int16 *
2A641E:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A6422:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A6426:  CBNZ            R0, loc_2A6496
2A6428:  LDR             R0, [SP,#0x370+var_328]; this
2A642A:  ADR.W           R1, aTrinst; "TRINST"
2A642E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A6432:  LDR             R1, [SP,#0x370+var_32C]; unsigned __int16 *
2A6434:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A6438:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A643C:  CBNZ            R0, loc_2A6496
2A643E:  LDR             R0, [SP,#0x370+var_330]; this
2A6440:  ADR.W           R1, aPrtrst; "PRTRST"
2A6444:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A6448:  LDR             R1, [SP,#0x370+var_334]; unsigned __int16 *
2A644A:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A644E:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A6452:  CBNZ            R0, loc_2A6496
2A6454:  LDR             R0, [SP,#0x370+var_338]; this
2A6456:  ADR.W           R1, aQuinst; "QUINST"
2A645A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A645E:  LDR             R1, [SP,#0x370+var_33C]; unsigned __int16 *
2A6460:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A6464:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A6468:  CBNZ            R0, loc_2A6496
2A646A:  LDR             R0, [SP,#0x370+var_340]; this
2A646C:  ADR.W           R1, aPquins; "PQUINS"
2A6470:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A6474:  LDR             R1, [SP,#0x370+var_344]; unsigned __int16 *
2A6476:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A647A:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A647E:  CBNZ            R0, loc_2A6496
2A6480:  LDR             R0, [SP,#0x370+var_348]; this
2A6482:  ADR.W           R1, aNostuc; "NOSTUC"
2A6486:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A648A:  LDR             R1, [SP,#0x370+var_34C]; unsigned __int16 *
2A648C:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A6490:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A6494:  CBZ             R0, loc_2A64E4
2A6496:  VMOV.F32        S0, #17.0
2A649A:  LDR             R0, [SP,#0x370+var_68]
2A649C:  STR             R0, [SP,#0x370+var_280]
2A649E:  MOVS            R0, #0x438C0000
2A64A4:  MOVS            R4, #0
2A64A6:  STR             R0, [SP,#0x370+var_35C]
2A64A8:  MOVS            R0, #0x41880000
2A64AE:  ADD             R1, SP, #0x370+var_280
2A64B0:  STR             R0, [SP,#0x370+var_358]
2A64B2:  MOVS            R0, #1
2A64B4:  STRD.W          R4, R4, [SP,#0x370+var_354]
2A64B8:  MOVS            R3, #2
2A64BA:  VMOV.F32        S29, S0
2A64BE:  STR             R0, [SP,#0x370+var_370]
2A64C0:  STRD.W          R1, R0, [SP,#0x370+var_36C]
2A64C4:  MOVS            R0, #0x43A50000
2A64CA:  LDR             R2, [SP,#0x370+var_300]
2A64CC:  STR             R0, [SP,#0x370+var_364]
2A64CE:  ADD             R0, SP, #0x370+var_26C
2A64D0:  MOV             R1, R10
2A64D2:  VADD.F32        S0, S31, S29
2A64D6:  VSTR            S0, [SP,#0x370+var_360]
2A64DA:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A64DE:  VADD.F32        S31, S25, S29
2A64E2:  B               loc_2A6876
2A64E4:  LDR             R2, [SP,#0x370+var_2A8]
2A64E6:  CMP             R5, #0x10
2A64E8:  IT EQ
2A64EA:  CMPEQ.W         R8, #1
2A64EE:  BNE             loc_2A650C
2A64F0:  LDR.W           R0, [R10,#0x38]
2A64F4:  CMP             R0, #2
2A64F6:  MOV.W           R0, #0
2A64FA:  IT EQ
2A64FC:  MOVEQ           R0, #1
2A64FE:  ORR.W           R1, R2, R0
2A6502:  LSLS            R1, R1, #0x1F
2A6504:  BEQ             loc_2A6544
2A6506:  ANDS            R2, R0
2A6508:  STR             R2, [SP,#0x370+var_2A8]
2A650A:  B               loc_2A6720
2A650C:  LSLS            R0, R2, #0x1F
2A650E:  BEQ             loc_2A6544
2A6510:  MOVS            R0, #0
2A6512:  STR             R0, [SP,#0x370+var_2A8]
2A6514:  B               loc_2A6720
2A6516:  ALIGN 4
2A6518:  DCFS 50.0
2A651C:  DCFS -34.0
2A6520:  DCFS 34.0
2A6524:  DCFS -50.0
2A6528:  DCFS 450.0
2A652C:  DCFS 420.0
2A6530:  DCFS 390.0
2A6534:  DCFS 0.0
2A6538:  DCFS 80.0
2A653C:  DCFS 255.0
2A6540:  DCFS 200.0
2A6544:  LDR             R0, [SP,#0x370+var_68]
2A6546:  MOVS            R2, #0
2A6548:  STR             R0, [SP,#0x370+var_284]
2A654A:  MOVS            R0, #1
2A654C:  STR             R2, [SP,#0x370+var_350]
2A654E:  ADD             R1, SP, #0x370+var_284
2A6550:  STR             R0, [SP,#0x370+var_370]
2A6552:  MOVS            R3, #2
2A6554:  STRD.W          R1, R0, [SP,#0x370+var_36C]
2A6558:  MOVS            R0, #0x43E60000
2A655E:  MOV             R1, R10
2A6560:  STRD.W          R0, R9, [SP,#0x370+var_364]
2A6564:  MOVS            R0, #0x43160000
2A656A:  STR             R0, [SP,#0x370+var_35C]
2A656C:  MOVS            R0, #0x41880000
2A6572:  STR             R0, [SP,#0x370+var_358]
2A6574:  MOVS            R0, #0
2A6576:  STR             R2, [SP,#0x370+var_354]
2A6578:  LDR             R2, [SP,#0x370+var_304]
2A657A:  STR             R0, [SP,#0x370+var_2A8]
2A657C:  ADD             R0, SP, #0x370+var_26C
2A657E:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A6582:  B               loc_2A6720
2A6584:  LDRB.W          R1, [R10,#0x38]; int
2A6588:  MOV             R0, R8; this
2A658A:  BLX             j__ZN6CStats17ConstructStatLineEih; CStats::ConstructStatLine(int,uchar)
2A658E:  LDRH.W          R0, [R9]
2A6592:  VADD.F32        S25, S31, S18
2A6596:  CMP             R0, #0
2A6598:  IT EQ
2A659A:  VMOVEQ.F32      S25, S31
2A659E:  VMOV.F32        S29, S25
2A65A2:  VCMPE.F32       S25, S16
2A65A6:  VMRS            APSR_nzcv, FPSCR
2A65AA:  BGE             loc_2A65BA
2A65AC:  VADD.F32        S29, S20, S29
2A65B0:  VCMPE.F32       S29, S16
2A65B4:  VMRS            APSR_nzcv, FPSCR
2A65B8:  BLT             loc_2A65AC
2A65BA:  VLDR            S0, [R6,#8]
2A65BE:  VCVT.F32.S32    S0, S0
2A65C2:  VADD.F32        S0, S0, S22
2A65C6:  B               loc_2A65CC
2A65C8:  VSUB.F32        S29, S29, S20
2A65CC:  VCMPE.F32       S29, S0
2A65D0:  VMRS            APSR_nzcv, FPSCR
2A65D4:  BGT             loc_2A65C8
2A65D6:  VCMPE.F32       S29, S24
2A65DA:  VMRS            APSR_nzcv, FPSCR
2A65DE:  BLE.W           loc_2A6728
2A65E2:  VCMPE.F32       S29, S23
2A65E6:  VMRS            APSR_nzcv, FPSCR
2A65EA:  BGE.W           loc_2A6728
2A65EE:  VCMPE.F32       S29, S17
2A65F2:  MOVS            R3, #0
2A65F4:  VMRS            APSR_nzcv, FPSCR
2A65F8:  VSUB.F32        S0, S28, S29
2A65FC:  VMOV.F32        S2, S19
2A6600:  VCMPE.F32       S29, S28
2A6604:  VMOV.F32        S4, S19
2A6608:  VMUL.F32        S0, S0, S30
2A660C:  IT GT
2A660E:  VMOVGT.F32      S2, S0
2A6612:  VMRS            APSR_nzcv, FPSCR
2A6616:  VCMPE.F32       S29, S21
2A661A:  VADD.F32        S0, S29, S22
2A661E:  VMUL.F32        S0, S0, S30
2A6622:  IT LT
2A6624:  VMOVLT.F32      S4, S2
2A6628:  VMRS            APSR_nzcv, FPSCR
2A662C:  VMOV.F32        S2, S4
2A6630:  VCMPE.F32       S29, S16
2A6634:  IT LT
2A6636:  VMOVLT.F32      S2, S0
2A663A:  VMRS            APSR_nzcv, FPSCR
2A663E:  VCMPE.F32       S29, S17
2A6642:  IT GT
2A6644:  VMOVGT.F32      S4, S2
2A6648:  VMRS            APSR_nzcv, FPSCR
2A664C:  VMOV.F32        S0, S4
2A6650:  VCMPE.F32       S29, S21
2A6654:  IT LE
2A6656:  VMOVLE.F32      S0, S26
2A665A:  VMRS            APSR_nzcv, FPSCR
2A665E:  IT GE
2A6660:  VMOVGE.F32      S4, S0
2A6664:  VMIN.F32        D0, D2, D13
2A6668:  VCVT.U32.F32    S0, S0
2A666C:  VMOV            R11, S0
2A6670:  VMOV.F32        S0, #8.5
2A6674:  VADD.F32        S31, S29, S0
2A6678:  STRB.W          R11, [SP,#0x370+var_64+3]
2A667C:  LDR             R0, [SP,#0x370+var_64]
2A667E:  STR             R0, [SP,#0x370+var_6C]
2A6680:  MOVS            R0, #0
2A6682:  STRB.W          R11, [SP,#0x370+var_68+3]
2A6686:  MOVT            R0, #0x4188
2A668A:  LDR.W           R1, [R10,#0x38]
2A668E:  MOV             R2, R0
2A6690:  ADD.W           R0, R2, #0x1E80000
2A6694:  CMP             R1, #0
2A6696:  ADD             R1, SP, #0x370+var_35C
2A6698:  IT EQ
2A669A:  ADDEQ.W         R0, R2, #0x1CA0000
2A669E:  STM             R1!, {R0,R2,R4}
2A66A0:  MOVS            R0, #1
2A66A2:  ADD             R1, SP, #0x370+var_6C
2A66A4:  STR             R4, [SP,#0x370+var_350]
2A66A6:  VSTR            S31, [SP,#0x370+var_360]
2A66AA:  STR             R0, [SP,#0x370+var_370]; float
2A66AC:  STRD.W          R1, R0, [SP,#0x370+var_36C]; float
2A66B0:  MOVS            R0, #0x43520000
2A66B6:  LDR             R2, [SP,#0x370+var_298]
2A66B8:  STR             R0, [SP,#0x370+var_364]; unsigned __int8
2A66BA:  ADD             R0, SP, #0x370+var_26C
2A66BC:  MOV             R1, R10
2A66BE:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A66C2:  VMOV            R9, S31
2A66C6:  LDR             R0, [SP,#0x370+var_29C]
2A66C8:  MOVS            R4, #0
2A66CA:  LDRH            R0, [R0]; this
2A66CC:  CBZ             R0, loc_2A672E
2A66CE:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
2A66D2:  VMOV            S0, R0
2A66D6:  VLDR            S2, =1000.0
2A66DA:  VMOV.F32        S4, #1.0
2A66DE:  MOVS            R1, #0
2A66E0:  VDIV.F32        S0, S0, S2
2A66E4:  MOVW            R3, #0x8000
2A66E8:  MOV             R0, R10; int
2A66EA:  MOVT            R1, #0x43E6; int
2A66EE:  MOV             R2, R9; int
2A66F0:  MOVT            R3, #0x4418; int
2A66F4:  VCMPE.F32       S0, #0.0
2A66F8:  VLDR            S2, =25.5
2A66FC:  VMRS            APSR_nzcv, FPSCR
2A6700:  VMIN.F32        D2, D0, D2
2A6704:  VADD.F32        S2, S29, S2
2A6708:  IT LT
2A670A:  VMOVLT.F32      S4, S19
2A670E:  STRD.W          R4, R11, [SP,#0x370+var_368]; int
2A6712:  STR             R4, [SP,#0x370+var_360]
2A6714:  VSTR            S2, [SP,#0x370+var_370]
2A6718:  VSTR            S4, [SP,#0x370+var_36C]
2A671C:  BLX             j__ZN10MenuScreen10DrawSliderE9CVector2DS0_fbhb; MenuScreen::DrawSlider(CVector2D,CVector2D,float,bool,uchar,bool)
2A6720:  VMOV.F32        S31, S25
2A6724:  MOVS            R4, #0
2A6726:  B               loc_2A6876
2A6728:  VMOV.F32        S31, S25
2A672C:  B               loc_2A687A
2A672E:  LDR             R0, [SP,#0x370+var_2AC]; this
2A6730:  ADR             R1, aStat328; "STAT328"
2A6732:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A6736:  LDR             R1, [SP,#0x370+var_2B0]; unsigned __int16 *
2A6738:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A673C:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A6740:  CBNZ            R0, loc_2A6782
2A6742:  LDR             R0, [SP,#0x370+var_2C4]; this
2A6744:  ADR             R1, aStLab0; "ST_LAB0"
2A6746:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A674A:  LDR             R1, [SP,#0x370+var_2C8]; unsigned __int16 *
2A674C:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A6750:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A6754:  CBNZ            R0, loc_2A6782
2A6756:  LDR             R0, [SP,#0x370+var_2E4]; this
2A6758:  ADR             R1, aStLab1; "ST_LAB1"
2A675A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A675E:  LDR             R1, [SP,#0x370+var_2E8]; unsigned __int16 *
2A6760:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A6764:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A6768:  CBNZ            R0, loc_2A6782
2A676A:  LDR             R0, [SP,#0x370+var_2EC]; this
2A676C:  ADR             R1, aStLab2; "ST_LAB2"
2A676E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A6772:  LDR             R1, [SP,#0x370+var_2F0]; unsigned __int16 *
2A6774:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A6778:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A677C:  CMP             R0, #0
2A677E:  BEQ.W           loc_2A6394
2A6782:  LDRB.W          R1, [R10,#0x38]; int
2A6786:  MOV             R0, R8; this
2A6788:  BLX             j__ZN6CStats17ConstructStatLineEih; CStats::ConstructStatLine(int,uchar)
2A678C:  LDR             R0, [SP,#0x370+var_2B4]; this
2A678E:  ADR             R1, aStat328; "STAT328"
2A6790:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A6794:  LDR             R1, [SP,#0x370+var_2B8]; unsigned __int16 *
2A6796:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
2A679A:  BLX             j__ZN9CMessages16GxtStringCompareEPtS0_t; CMessages::GxtStringCompare(ushort *,ushort *,ushort)
2A679E:  CBZ             R0, loc_2A67BE
2A67A0:  MOV.W           R0, #0xFFFFFFFF; int
2A67A4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2A67A8:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
2A67AC:  ADD             R4, SP, #0x370+var_26C
2A67AE:  CBZ             R0, loc_2A67C4
2A67B0:  CMP             R0, #2
2A67B2:  BEQ             loc_2A67C8
2A67B4:  CMP             R0, #1
2A67B6:  BNE             loc_2A67CE
2A67B8:  LDR             R0, [SP,#0x370+var_2DC]
2A67BA:  ADR             R1, aWsStd; "WS_STD"
2A67BC:  B               loc_2A67D2
2A67BE:  ADD             R4, SP, #0x370+var_26C
2A67C0:  LDR             R1, [SP,#0x370+var_2CC]
2A67C2:  B               loc_2A67D8
2A67C4:  LDR             R0, [SP,#0x370+var_2D4]
2A67C6:  B               loc_2A67D0
2A67C8:  LDR             R0, [SP,#0x370+var_2D8]
2A67CA:  ADR             R1, aWsPro; "WS_PRO"
2A67CC:  B               loc_2A67D2
2A67CE:  LDR             R0, [SP,#0x370+var_2E0]; this
2A67D0:  ADR             R1, aWsPoor; "WS_POOR"
2A67D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A67D6:  MOV             R1, R0; unsigned __int16 *
2A67D8:  MOV             R0, R4; unsigned __int16 *
2A67DA:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
2A67DE:  ADD             R6, SP, #0x370+var_294
2A67E0:  ADR             R0, dword_2A6AA4; char *
2A67E2:  MOV             R1, R6; unsigned __int16 *
2A67E4:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2A67E8:  MOV             R0, R4; unsigned __int16 *
2A67EA:  MOV             R1, R6; unsigned __int16 *
2A67EC:  BLX             j__Z13GxtCharStrcatPtS_; GxtCharStrcat(ushort *,ushort *)
2A67F0:  LDRB.W          R1, [R10,#0x38]; int
2A67F4:  ADD.W           R0, R8, #1; this
2A67F8:  BLX             j__ZN6CStats17ConstructStatLineEih; CStats::ConstructStatLine(int,uchar)
2A67FC:  LDR             R1, [SP,#0x370+var_2BC]; unsigned __int16 *
2A67FE:  MOV             R0, R4; unsigned __int16 *
2A6800:  BLX             j__Z13GxtCharStrcatPtS_; GxtCharStrcat(ushort *,ushort *)
2A6804:  LDR             R0, [SP,#0x370+var_2C0]
2A6806:  MOV             R2, R4
2A6808:  LDRB.W          R1, [R0,#0x48]
2A680C:  LDR             R0, [SP,#0x370+var_68]
2A680E:  CMP             R1, #5
2A6810:  BNE             loc_2A6836
2A6812:  STR             R0, [SP,#0x370+var_270]
2A6814:  MOVS            R0, #0
2A6816:  STR             R0, [SP,#0x370+var_350]
2A6818:  MOVS            R0, #1
2A681A:  STR             R0, [SP,#0x370+var_370]
2A681C:  ADD             R1, SP, #0x370+var_270
2A681E:  STRD.W          R1, R0, [SP,#0x370+var_36C]
2A6822:  MOVS            R0, #0x43B40000
2A6828:  MOVS            R4, #0
2A682A:  STRD.W          R0, R9, [SP,#0x370+var_364]
2A682E:  MOVS            R0, #0x437A0000
2A6834:  B               loc_2A6858
2A6836:  STR             R0, [SP,#0x370+var_27C]
2A6838:  MOVS            R0, #0
2A683A:  STR             R0, [SP,#0x370+var_350]
2A683C:  MOVS            R0, #1
2A683E:  STR             R0, [SP,#0x370+var_370]
2A6840:  ADD             R1, SP, #0x370+var_27C
2A6842:  STRD.W          R1, R0, [SP,#0x370+var_36C]
2A6846:  MOVS            R0, #0x43E60000
2A684C:  MOVS            R4, #0
2A684E:  STRD.W          R0, R9, [SP,#0x370+var_364]
2A6852:  MOVS            R0, #0x43160000
2A6858:  STR             R0, [SP,#0x370+var_35C]
2A685A:  MOVS            R0, #0x41880000
2A6860:  MOV             R1, R10
2A6862:  STRD.W          R0, R4, [SP,#0x370+var_358]
2A6866:  ADD             R0, SP, #0x370+var_278
2A6868:  MOVS            R3, #2
2A686A:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A686E:  MOVS            R0, #(stderr+1); this
2A6870:  VMOV.F32        S31, S25
2A6874:  STR             R0, [SP,#0x370+var_2A8]
2A6876:  LDRD.W          R9, R6, [SP,#0x370+var_2A4]
2A687A:  ADD.W           R8, R8, #1
2A687E:  CMP             R8, R5
2A6880:  BNE.W           loc_2A6584
2A6884:  BLX             j__ZN6CStats24FindCriminalRatingNumberEv; CStats::FindCriminalRatingNumber(void)
2A6888:  MOV             R2, R0
2A688A:  LDR             R0, =(gString_ptr - 0x2A6892)
2A688C:  ADR             R1, dword_2A6B58
2A688E:  ADD             R0, PC; gString_ptr
2A6890:  LDR             R4, [R0]; gString
2A6892:  MOV             R0, R4
2A6894:  BL              sub_5E6BC0
2A6898:  ADD             R1, SP, #0x370+var_26C; unsigned __int16 *
2A689A:  MOV             R0, R4; char *
2A689C:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2A68A0:  BLX             j__ZN6CStats24FindCriminalRatingStringEv; CStats::FindCriminalRatingString(void)
2A68A4:  MOV             R1, R0; unsigned __int16 *
2A68A6:  LDR             R0, =(gGxtString_ptr - 0x2A68AC)
2A68A8:  ADD             R0, PC; gGxtString_ptr
2A68AA:  LDR             R0, [R0]; gGxtString ; unsigned __int16 *
2A68AC:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
2A68B0:  LDR             R0, =(RsGlobal_ptr - 0x2A68BA)
2A68B2:  VLDR            S18, =1.35
2A68B6:  ADD             R0, PC; RsGlobal_ptr
2A68B8:  VLDR            S16, =480.0
2A68BC:  LDR             R4, [R0]; RsGlobal
2A68BE:  VLDR            S0, [R4,#8]
2A68C2:  VCVT.F32.S32    S0, S0
2A68C6:  VMUL.F32        S0, S0, S18
2A68CA:  VDIV.F32        S0, S0, S16
2A68CE:  VMOV            R0, S0; this
2A68D2:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2A68D6:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
2A68D8:  MOVS            R5, #0
2A68DA:  VLDR            S20, =-0.0
2A68DE:  VMOV            S0, R0
2A68E2:  MOVS            R0, #0; this
2A68E4:  VCVT.F32.S32    S0, S0
2A68E8:  VMUL.F32        S2, S0, S20
2A68EC:  VADD.F32        S22, S0, S2
2A68F0:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2A68F4:  VMOV            S0, R0
2A68F8:  VLDR            S4, =449.5
2A68FC:  VSUB.F32        S2, S22, S0
2A6900:  VLDR            S0, [R4,#8]
2A6904:  VCVT.F32.S32    S0, S0
2A6908:  VMUL.F32        S2, S2, S16
2A690C:  VDIV.F32        S2, S2, S0
2A6910:  VCMPE.F32       S2, S4
2A6914:  VMRS            APSR_nzcv, FPSCR
2A6918:  BLE             loc_2A6924
2A691A:  MOV             R6, #0x43E0C000
2A6922:  B               loc_2A696E
2A6924:  VMUL.F32        S0, S0, S18
2A6928:  VDIV.F32        S0, S0, S16
2A692C:  VMOV            R0, S0; this
2A6930:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2A6934:  LDR             R0, =(RsGlobal_ptr - 0x2A693A)
2A6936:  ADD             R0, PC; RsGlobal_ptr
2A6938:  LDR             R4, [R0]; RsGlobal
2A693A:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
2A693C:  VMOV            S0, R0
2A6940:  MOVS            R0, #0; this
2A6942:  VCVT.F32.S32    S0, S0
2A6946:  VMUL.F32        S2, S0, S20
2A694A:  VADD.F32        S18, S0, S2
2A694E:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2A6952:  VMOV            S0, R0
2A6956:  VLDR            S2, [R4,#8]
2A695A:  VSUB.F32        S0, S18, S0
2A695E:  VCVT.F32.S32    S2, S2
2A6962:  VMUL.F32        S0, S0, S16
2A6966:  VDIV.F32        S0, S0, S2
2A696A:  VMOV            R6, S0
2A696E:  ADD             R4, SP, #0x370+var_288
2A6970:  MOVS            R0, #0xFF
2A6972:  STR             R0, [SP,#0x370+var_370]; unsigned __int8
2A6974:  MOVS            R1, #0xF0; unsigned __int8
2A6976:  MOV             R0, R4; this
2A6978:  MOVS            R2, #0xF0; unsigned __int8
2A697A:  MOVS            R3, #0xF0; unsigned __int8
2A697C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A6980:  LDR.W           R0, [R10]
2A6984:  LDR             R1, [R0,#0x30]
2A6986:  MOV             R0, R10
2A6988:  BLX             R1
2A698A:  MOVW            R11, #0
2A698E:  MOVW            R9, #0
2A6992:  MOVS            R1, #1
2A6994:  MOV.W           R8, #3
2A6998:  STR             R5, [SP,#0x370+var_350]
2A699A:  MOVT            R11, #0x4190
2A699E:  STRD.W          R8, R4, [SP,#0x370+var_370]
2A69A2:  MOVT            R9, #0x4348
2A69A6:  STR             R1, [SP,#0x370+var_368]
2A69A8:  ADD             R1, SP, #0x370+var_364
2A69AA:  STM.W           R1, {R0,R6,R9,R11}
2A69AE:  MOVS            R5, #0
2A69B0:  MOV             R1, R10
2A69B2:  LDR             R0, =(gGxtString_ptr - 0x2A69BE)
2A69B4:  MOVS            R3, #0
2A69B6:  MOVS            R4, #1
2A69B8:  STR             R5, [SP,#0x370+var_354]
2A69BA:  ADD             R0, PC; gGxtString_ptr
2A69BC:  LDR             R2, [R0]; gGxtString
2A69BE:  ADD             R0, SP, #0x370+var_278
2A69C0:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A69C4:  MOVS            R0, #0xFF
2A69C6:  MOVS            R1, #0xFF; unsigned __int8
2A69C8:  STR             R0, [SP,#0x370+var_370]; unsigned __int8
2A69CA:  ADD             R0, SP, #0x370+var_28C; this
2A69CC:  MOVS            R2, #0xFF; unsigned __int8
2A69CE:  MOVS            R3, #0xFF; unsigned __int8
2A69D0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A69D4:  VMOV.F32        S2, #10.0
2A69D8:  VLDR            S0, [SP,#0x370+var_274]
2A69DC:  ADD             R1, SP, #0x370+var_360
2A69DE:  ADD             R2, SP, #0x370+var_26C
2A69E0:  STM.W           R1, {R6,R9,R11}
2A69E4:  MOV             R1, R10
2A69E6:  MOVS            R3, #0
2A69E8:  STRD.W          R5, R5, [SP,#0x370+var_354]
2A69EC:  STRD.W          R8, R0, [SP,#0x370+var_370]
2A69F0:  ADD             R0, SP, #0x370+var_294
2A69F2:  STR             R4, [SP,#0x370+var_368]
2A69F4:  VADD.F32        S0, S0, S2
2A69F8:  VSTR            S0, [SP,#0x370+var_364]
2A69FC:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A6A00:  LDR             R1, [SP,#0x370+var_2D0]; int
2A6A02:  MOV             R0, R10; this
2A6A04:  BLX             j__ZN12SelectScreen6RenderEi; SelectScreen::Render(int)
2A6A08:  ADD.W           SP, SP, #0x310
2A6A0C:  VPOP            {D8-D15}
2A6A10:  ADD             SP, SP, #4
2A6A12:  POP.W           {R8-R11}
2A6A16:  POP             {R4-R7,PC}
