; =========================================================
; Game Engine Function: _ZN13BreakObject_c6RenderEh
; Address            : 0x452468 - 0x452610
; =========================================================

452468:  PUSH            {R4-R7,LR}
45246A:  ADD             R7, SP, #0xC
45246C:  PUSH.W          {R8-R11}
452470:  SUB             SP, SP, #0xA4; float
452472:  MOV             R4, R0
452474:  LDRB            R0, [R4,#3]
452476:  CMP             R0, R1
452478:  BNE.W           loc_452608
45247C:  LDR             R0, [R4,#4]
45247E:  CMP             R0, #1
452480:  BLT.W           loc_452608
452484:  MOVS            R5, #0
452486:  MOV.W           R8, #0
45248A:  LDR             R0, [R4,#8]
45248C:  MOVS            R1, #0x74 ; 't'
45248E:  MLA.W           R0, R8, R1, R0
452492:  LDR             R0, [R0,#0x54]
452494:  CMP             R0, #0
452496:  ITE NE
452498:  LDRNE           R6, [R0]
45249A:  MOVEQ           R6, #0
45249C:  CMP             R5, R6
45249E:  BEQ             loc_4524B0
4524A0:  BLX             j__Z9RenderEndv; RenderEnd(void)
4524A4:  MOV             R0, R6
4524A6:  MOVS            R1, #0
4524A8:  MOVS            R2, #1
4524AA:  BLX             j__Z11RenderBeginP8RwRasterP11RwMatrixTagj; RenderBegin(RwRaster *,RwMatrixTag *,uint)
4524AE:  MOV             R5, R6
4524B0:  ORRS.W          R0, R6, R5
4524B4:  BNE             loc_4524C6
4524B6:  BLX             j__Z9RenderEndv; RenderEnd(void)
4524BA:  MOVS            R0, #0
4524BC:  MOVS            R1, #0
4524BE:  MOVS            R2, #1
4524C0:  MOVS            R5, #0
4524C2:  BLX             j__Z11RenderBeginP8RwRasterP11RwMatrixTagj; RenderBegin(RwRaster *,RwMatrixTag *,uint)
4524C6:  STR             R5, [SP,#0xC0+var_60]
4524C8:  MOVS            R1, #0x74 ; 't'
4524CA:  LDR             R0, [R4,#8]
4524CC:  MLA.W           R1, R8, R1, R0
4524D0:  STR             R1, [SP,#0xC0+var_5C]
4524D2:  LDRH.W          R1, [R1,#0x4E]
4524D6:  CMP             R1, #0
4524D8:  BEQ.W           loc_4525F6
4524DC:  MOVS            R6, #0
4524DE:  SUBS            R1, #1
4524E0:  STR             R1, [SP,#0xC0+var_54]
4524E2:  B               loc_4524EE
4524E4:  LDR             R6, [SP,#0xC0+var_58]
4524E6:  SUBS            R1, #1
4524E8:  LDR             R0, [R4,#8]
4524EA:  ADDS            R6, #0x48 ; 'H'
4524EC:  STR             R1, [SP,#0xC0+var_54]
4524EE:  MOVS            R5, #0x74 ; 't'
4524F0:  LDR             R3, [SP,#0xC0+var_5C]
4524F2:  MLA.W           R0, R8, R5, R0
4524F6:  MOVS            R2, #3
4524F8:  LDR             R0, [R0,#0x50]
4524FA:  ADDS            R1, R0, R6
4524FC:  ADD             R0, SP, #0xC0+var_40
4524FE:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
452502:  LDR             R0, [R4,#8]
452504:  MOV             R2, R8
452506:  MLA.W           R0, R8, R5, R0
45250A:  LDR             R3, [SP,#0xC0+var_40]
45250C:  LDR.W           R12, [SP,#0xC0+var_34]
452510:  VLDR            S12, [SP,#0xC0+var_30]
452514:  VLDR            S14, [SP,#0xC0+var_2C]
452518:  VLDR            S1, [SP,#0xC0+var_28]
45251C:  VLDR            S3, [SP,#0xC0+var_24]
452520:  LDR             R1, [R0,#0x50]
452522:  LDR             R5, [R0,#0x70]
452524:  ADDS            R0, R1, R6
452526:  STR             R6, [SP,#0xC0+var_58]
452528:  VLDR            S5, [SP,#0xC0+var_20]
45252C:  LDRB.W          R1, [R0,#0x3C]
452530:  VLDR            S0, [R0,#0x24]
452534:  VLDR            S2, [R0,#0x28]
452538:  VLDR            S4, [R0,#0x2C]
45253C:  VLDR            S6, [R0,#0x30]
452540:  VLDR            S8, [R0,#0x34]
452544:  VLDR            S10, [R0,#0x38]
452548:  STR             R1, [SP,#0xC0+var_4C]
45254A:  LDRB.W          R1, [R0,#0x3D]
45254E:  STR             R1, [SP,#0xC0+var_50]
452550:  LDRB            R1, [R4]
452552:  LDRB.W          R9, [R0,#0x42]
452556:  LDRB.W          R10, [R0,#0x45]
45255A:  CMP             R1, #0
45255C:  LDRB.W          LR, [R0,#0x3E]
452560:  MOV.W           R1, #0x1F
452564:  LDRB.W          R6, [R0,#0x40]
452568:  LDRB.W          R8, [R0,#0x41]
45256C:  LDRB.W          R11, [R0,#0x44]
452570:  LDRB.W          R0, [R0,#0x46]
452574:  STR             R0, [SP,#0xC0+var_6C]; int
452576:  MOV.W           R0, #3
45257A:  STR             R3, [SP,#0xC0+var_48]
45257C:  STR.W           R12, [SP,#0xC0+var_44]
452580:  LDR             R3, [SP,#0xC0+var_3C]
452582:  LDR.W           R12, [SP,#0xC0+var_38]
452586:  STRD.W          R11, R10, [SP,#0xC0+var_74]; char
45258A:  STRD.W          R8, R9, [SP,#0xC0+var_80]; int
45258E:  MOV             R8, R2
452590:  STR             R6, [SP,#0xC0+var_84]; char
452592:  IT EQ
452594:  MOVEQ           R0, #1
452596:  LSL.W           R0, R5, R0
45259A:  IT EQ
45259C:  MOVEQ           R1, #0x7F
45259E:  CMP             R5, R1
4525A0:  UXTB            R0, R0
4525A2:  IT GT
4525A4:  MOVGT           R0, #0xFF
4525A6:  MOV             R1, R3; float
4525A8:  STR             R0, [SP,#0xC0+var_68]; int
4525AA:  MOV             R2, R12; float
4525AC:  STR             R0, [SP,#0xC0+var_78]; int
4525AE:  STRD.W          LR, R0, [SP,#0xC0+var_8C]; int
4525B2:  LDR             R0, [SP,#0xC0+var_50]
4525B4:  STR             R0, [SP,#0xC0+var_90]; int
4525B6:  LDR             R0, [SP,#0xC0+var_4C]
4525B8:  STR             R0, [SP,#0xC0+var_94]; char
4525BA:  LDR             R0, [SP,#0xC0+var_48]; float
4525BC:  LDR             R3, [SP,#0xC0+var_44]; float
4525BE:  VSTR            S6, [SP,#0xC0+var_A0]
4525C2:  VSTR            S8, [SP,#0xC0+var_9C]
4525C6:  VSTR            S10, [SP,#0xC0+var_98]
4525CA:  VSTR            S12, [SP,#0xC0+var_C0]
4525CE:  VSTR            S14, [SP,#0xC0+var_BC]
4525D2:  VSTR            S1, [SP,#0xC0+var_B8]
4525D6:  VSTR            S3, [SP,#0xC0+var_B4]
4525DA:  VSTR            S5, [SP,#0xC0+var_B0]
4525DE:  VSTR            S0, [SP,#0xC0+var_AC]
4525E2:  VSTR            S2, [SP,#0xC0+var_A8]
4525E6:  VSTR            S4, [SP,#0xC0+var_A4]
4525EA:  BLX             j__Z12RenderAddTrifffffffffffffffiiiiiiiiiiii; RenderAddTri(float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,int,int,int,int,int,int,int,int,int,int,int,int)
4525EE:  LDR             R1, [SP,#0xC0+var_54]
4525F0:  CMP             R1, #0
4525F2:  BNE.W           loc_4524E4
4525F6:  LDR             R0, [R4,#4]
4525F8:  ADD.W           R8, R8, #1
4525FC:  LDR             R5, [SP,#0xC0+var_60]
4525FE:  CMP             R8, R0
452600:  BLT.W           loc_45248A
452604:  BLX             j__Z9RenderEndv; RenderEnd(void)
452608:  ADD             SP, SP, #0xA4
45260A:  POP.W           {R8-R11}
45260E:  POP             {R4-R7,PC}
