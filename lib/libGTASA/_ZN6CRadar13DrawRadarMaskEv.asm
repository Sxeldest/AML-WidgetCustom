; =========================================================
; Game Engine Function: _ZN6CRadar13DrawRadarMaskEv
; Address            : 0x444150 - 0x444480
; =========================================================

444150:  PUSH            {R4-R7,LR}
444152:  ADD             R7, SP, #0xC
444154:  PUSH.W          {R8-R11}
444158:  SUB             SP, SP, #4
44415A:  VPUSH           {D8-D12}
44415E:  SUB             SP, SP, #0x80
444160:  B.W             loc_3F6646
444164:  VLD1.64         {D16-D17}, [R0@128]
444168:  B.W             loc_3F6654
44416C:  VLD1.64         {D18-D19}, [R0@128]
444170:  ADD             R0, SP, #0xC8+var_68
444172:  VST1.32         {D16-D17}, [R0]!
444176:  VST1.32         {D18-D19}, [R0]
44417A:  MOVS            R0, #1
44417C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
444180:  MOVS            R0, #0xA
444182:  MOVS            R1, #5
444184:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
444188:  MOVS            R0, #0xB
44418A:  MOVS            R1, #6
44418C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
444190:  MOVS            R0, #0xE
444192:  MOVS            R1, #0
444194:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
444198:  MOVS            R0, #9
44419A:  MOVS            R1, #2
44419C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4441A0:  MOVS            R0, #7
4441A2:  MOVS            R1, #1
4441A4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4441A8:  MOVS            R0, #6
4441AA:  MOVS            R1, #0
4441AC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4441B0:  MOVS            R0, #8
4441B2:  MOVS            R1, #1
4441B4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4441B8:  MOVS            R0, #0xC
4441BA:  MOVS            R1, #1
4441BC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4441C0:  MOVS            R0, #0x1D
4441C2:  MOVS            R1, #8
4441C4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4441C8:  LDR             R0, =(gMobileMenu_ptr - 0x4441D8)
4441CA:  VMOV.F32        S16, #0.5
4441CE:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x4441DC)
4441D0:  ADD.W           R8, SP, #0xC8+var_A8
4441D4:  ADD             R0, PC; gMobileMenu_ptr
4441D6:  LDR             R2, =(gMobileMenu_ptr - 0x4441E0)
4441D8:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
4441DA:  LDR             R0, [R0]; gMobileMenu
4441DC:  ADD             R2, PC; gMobileMenu_ptr
4441DE:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
4441E0:  LDR             R2, [R2]; gMobileMenu
4441E2:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
4441E6:  CBZ             R0, loc_444216
4441E8:  ADD             R3, SP, #0xC8+var_68
4441EA:  VLDR            S6, [R2,#0x58]
4441EE:  ADD             R3, R4
4441F0:  VLDR            S8, [R2,#0x5C]
4441F4:  VLDR            S0, [R2,#0x60]
4441F8:  VLDR            S2, [R3]
4441FC:  VLDR            S4, [R3,#4]
444200:  ADD.W           R3, R8, R4
444204:  VMUL.F32        S2, S2, S6
444208:  VADD.F32        S2, S8, S2
44420C:  VSTR            S2, [R3]
444210:  VMUL.F32        S2, S4, S6
444214:  B               loc_444274
444216:  LDR.W           R3, [R1,#(dword_6F3A18 - 0x6F3794)]
44421A:  CBZ             R3, loc_444280
44421C:  VLDR            S0, [R3,#0x20]
444220:  ADD             R6, SP, #0xC8+var_68
444222:  VLDR            S2, [R3,#0x28]
444226:  ADD             R6, R4
444228:  ADD.W           R5, R8, R4
44422C:  VSUB.F32        S4, S2, S0
444230:  VLDR            S6, [R6]
444234:  VADD.F32        S0, S0, S2
444238:  VABS.F32        S4, S4
44423C:  VMUL.F32        S0, S0, S16
444240:  VMUL.F32        S2, S6, S4
444244:  VLDR            S6, [R6,#4]
444248:  VMUL.F32        S2, S2, S16
44424C:  VADD.F32        S0, S0, S2
444250:  VSTR            S0, [R5]
444254:  VLDR            S0, [R3,#0x24]
444258:  VLDR            S2, [R3,#0x2C]
44425C:  VSUB.F32        S4, S0, S2
444260:  VADD.F32        S0, S0, S2
444264:  VABS.F32        S4, S4
444268:  VMUL.F32        S0, S0, S16
44426C:  VMUL.F32        S2, S6, S4
444270:  VMUL.F32        S2, S2, S16
444274:  VSUB.F32        S0, S0, S2
444278:  ADD.W           R3, R8, R4
44427C:  VSTR            S0, [R3,#4]
444280:  ADDS            R4, #8
444282:  CMP             R4, #0x20 ; ' '
444284:  BNE             loc_4441E6
444286:  BLX             j__Z19RwIm2DGetFarScreenZv; RwIm2DGetFarScreenZ(void)
44428A:  MOV             R2, R0; float *
44428C:  MOVS            R0, #byte_4; this
44428E:  MOV             R1, R8; int
444290:  BLX             j__ZN9CSprite2d15SetMaskVerticesEiPff; CSprite2d::SetMaskVertices(int,float *,float)
444294:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x44429E)
444296:  MOVS            R2, #6
444298:  LDR             R3, =(unk_6AE3CA - 0x4442A2)
44429A:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
44429C:  STR             R2, [SP,#0xC8+var_C8]
44429E:  ADD             R3, PC; unk_6AE3CA
4442A0:  MOVS            R2, #4
4442A2:  LDR             R1, [R0]; CSprite2d::maVertices ...
4442A4:  MOVS            R0, #3
4442A6:  BLX             j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
4442AA:  ADD.W           R0, R8, #8
4442AE:  STR             R0, [SP,#0xC8+var_B0]
4442B0:  LDR             R0, =(gMobileMenu_ptr - 0x4442C0)
4442B2:  VMOV.F32        S20, #6.0
4442B6:  VLDR            S18, =1.5708
4442BA:  MOVS            R1, #0
4442BC:  ADD             R0, PC; gMobileMenu_ptr
4442BE:  LDR             R0, [R0]; gMobileMenu
4442C0:  STR             R0, [SP,#0xC8+var_B4]
4442C2:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x4442C8)
4442C4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
4442C6:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
4442C8:  STR             R0, [SP,#0xC8+var_C4]
4442CA:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x4442D0)
4442CC:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
4442CE:  LDR.W           R9, [R0]; CTouchInterface::m_pWidgets ...
4442D2:  LDR             R0, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x4442D8)
4442D4:  ADD             R0, PC; _ZN9CSprite2d11NearScreenZE_ptr
4442D6:  LDR             R0, [R0]; CSprite2d::NearScreenZ ...
4442D8:  STR             R0, [SP,#0xC8+var_B8]
4442DA:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x4442E0)
4442DC:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
4442DE:  LDR             R0, [R0]; CSprite2d::maVertices ...
4442E0:  STR             R0, [SP,#0xC8+var_BC]
4442E2:  LDR             R0, =(gMobileMenu_ptr - 0x4442E8)
4442E4:  ADD             R0, PC; gMobileMenu_ptr
4442E6:  LDR.W           R8, [R0]; gMobileMenu
4442EA:  LDR             R0, =(gMobileMenu_ptr - 0x4442F0)
4442EC:  ADD             R0, PC; gMobileMenu_ptr
4442EE:  LDR             R0, [R0]; gMobileMenu
4442F0:  STR             R0, [SP,#0xC8+var_C0]
4442F2:  ADD             R0, SP, #0xC8+var_68
4442F4:  STR             R1, [SP,#0xC8+var_AC]
4442F6:  ADD.W           R0, R0, R1,LSL#3
4442FA:  VLDR            S22, [R0]
4442FE:  VLDR            S24, [R0,#4]
444302:  LDR             R0, [SP,#0xC8+var_B4]
444304:  LDRB.W          R6, [R0,#0x6C]
444308:  CBZ             R6, loc_44432A
44430A:  LDR             R0, [SP,#0xC8+var_C0]
44430C:  VLDR            S2, [R0,#0x58]
444310:  VLDR            S4, [R0,#0x5C]
444314:  VMUL.F32        S6, S2, S22
444318:  VLDR            S0, [R0,#0x60]
44431C:  VMUL.F32        S2, S2, S24
444320:  VADD.F32        S4, S4, S6
444324:  VSTR            S4, [SP,#0xC8+var_A8]
444328:  B               loc_44437A
44432A:  LDR             R0, [SP,#0xC8+var_C4]
44432C:  LDR.W           R0, [R0,#0x284]
444330:  CBZ             R0, loc_444382
444332:  VLDR            S0, [R0,#0x20]
444336:  VLDR            S4, [R0,#0x28]
44433A:  VLDR            S2, [R0,#0x24]
44433E:  VSUB.F32        S8, S4, S0
444342:  VLDR            S6, [R0,#0x2C]
444346:  VADD.F32        S0, S0, S4
44434A:  VABS.F32        S8, S8
44434E:  VMUL.F32        S0, S0, S16
444352:  VMUL.F32        S4, S8, S22
444356:  VMUL.F32        S4, S4, S16
44435A:  VADD.F32        S0, S0, S4
44435E:  VSTR            S0, [SP,#0xC8+var_A8]
444362:  VSUB.F32        S0, S2, S6
444366:  VADD.F32        S2, S2, S6
44436A:  VABS.F32        S0, S0
44436E:  VMUL.F32        S4, S0, S24
444372:  VMUL.F32        S0, S2, S16
444376:  VMUL.F32        S2, S4, S16
44437A:  VSUB.F32        S0, S0, S2
44437E:  VSTR            S0, [SP,#0xC8+var_A4]
444382:  LDR.W           R10, [SP,#0xC8+var_B0]
444386:  MOV.W           R11, #0
44438A:  VMOV            S0, R11
44438E:  VCVT.F32.S32    S0, S0
444392:  VMUL.F32        S0, S0, S18
444396:  VDIV.F32        S0, S0, S20
44439A:  VMOV            R5, S0
44439E:  MOV             R0, R5; x
4443A0:  BLX             cosf
4443A4:  MOV             R4, R0
4443A6:  MOV             R0, R5; x
4443A8:  BLX             sinf
4443AC:  VMOV            S0, R0
4443B0:  ADD.W           R11, R11, #1
4443B4:  VMOV            S2, R4
4443B8:  CMP             R6, #0
4443BA:  VMUL.F32        S0, S0, S24
4443BE:  VMUL.F32        S2, S2, S22
4443C2:  BEQ             loc_4443E2
4443C4:  VLDR            S4, [R8,#0x58]
4443C8:  VLDR            S6, [R8,#0x5C]
4443CC:  VMUL.F32        S2, S2, S4
4443D0:  VMUL.F32        S0, S0, S4
4443D4:  VADD.F32        S2, S6, S2
4443D8:  VSTR            S2, [R10]
4443DC:  VLDR            S2, [R8,#0x60]
4443E0:  B               loc_444430
4443E2:  LDR.W           R0, [R9,#(dword_6F3A18 - 0x6F3794)]
4443E6:  CBZ             R0, loc_444438
4443E8:  VLDR            S4, [R0,#0x20]
4443EC:  VLDR            S6, [R0,#0x28]
4443F0:  VSUB.F32        S8, S6, S4
4443F4:  VADD.F32        S4, S4, S6
4443F8:  VABS.F32        S8, S8
4443FC:  VMUL.F32        S4, S4, S16
444400:  VMUL.F32        S2, S2, S8
444404:  VMUL.F32        S2, S2, S16
444408:  VADD.F32        S2, S4, S2
44440C:  VSTR            S2, [R10]
444410:  VLDR            S2, [R0,#0x24]
444414:  VLDR            S4, [R0,#0x2C]
444418:  VSUB.F32        S6, S2, S4
44441C:  VADD.F32        S2, S2, S4
444420:  VABS.F32        S6, S6
444424:  VMUL.F32        S2, S2, S16
444428:  VMUL.F32        S0, S0, S6
44442C:  VMUL.F32        S0, S0, S16
444430:  VSUB.F32        S0, S2, S0
444434:  VSTR            S0, [R10,#4]
444438:  ADD.W           R10, R10, #8
44443C:  CMP.W           R11, #7
444440:  BNE             loc_44438A
444442:  LDR             R0, [SP,#0xC8+var_B8]
444444:  ADD             R1, SP, #0xC8+var_A8; int
444446:  LDR             R2, [R0]; float *
444448:  MOVS            R0, #byte_8; this
44444A:  BLX             j__ZN9CSprite2d15SetMaskVerticesEiPff; CSprite2d::SetMaskVertices(int,float *,float)
44444E:  LDR             R3, =(unk_6AE3CA - 0x44445A)
444450:  MOVS            R0, #0x12
444452:  LDR             R1, [SP,#0xC8+var_BC]
444454:  MOVS            R2, #8
444456:  ADD             R3, PC; unk_6AE3CA
444458:  STR             R0, [SP,#0xC8+var_C8]
44445A:  MOVS            R0, #3
44445C:  BLX             j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
444460:  LDR             R1, [SP,#0xC8+var_AC]
444462:  ADDS            R1, #1
444464:  CMP             R1, #4
444466:  BNE.W           loc_4442F2
44446A:  MOVS            R0, #0x1D
44446C:  MOVS            R1, #5
44446E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
444472:  ADD             SP, SP, #0x80
444474:  VPOP            {D8-D12}
444478:  ADD             SP, SP, #4
44447A:  POP.W           {R8-R11}
44447E:  POP             {R4-R7,PC}
