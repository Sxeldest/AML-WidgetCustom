; =========================================================
; Game Engine Function: _ZN10FlowScreen6RenderEi
; Address            : 0x29C030 - 0x29D0C6
; =========================================================

29C030:  PUSH            {R4-R7,LR}
29C032:  ADD             R7, SP, #0xC
29C034:  PUSH.W          {R8-R11}
29C038:  SUB             SP, SP, #4
29C03A:  VPUSH           {D8-D15}
29C03E:  SUB             SP, SP, #0x128
29C040:  MOV             R4, SP
29C042:  BFC.W           R4, #0, #4
29C046:  MOV             SP, R4
29C048:  MOV             R9, R0
29C04A:  MOVS            R0, #1; bool
29C04C:  STR             R1, [SP,#0x188+var_130]
29C04E:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29C052:  CMP             R0, #1
29C054:  STR.W           R9, [SP,#0x188+var_134]
29C058:  BNE             loc_29C06C
29C05A:  LDR.W           R0, =(gMobileMenu_ptr - 0x29C062)
29C05E:  ADD             R0, PC; gMobileMenu_ptr
29C060:  LDR             R0, [R0]; gMobileMenu
29C062:  LDRB.W          R0, [R0,#(word_6E00C0+1 - 0x6E006C)]
29C066:  CMP             R0, #0
29C068:  BEQ.W           loc_29C3C0
29C06C:  ADD.W           R8, SP, #0x188+var_64
29C070:  MOVS            R0, #0xFF
29C072:  LDR.W           R6, [R9,#0x10]
29C076:  MOVS            R1, #0xFF; unsigned __int8
29C078:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29C07A:  MOV             R0, R8; this
29C07C:  MOVS            R2, #0xFF; unsigned __int8
29C07E:  MOVS            R3, #0xFF; unsigned __int8
29C080:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C084:  LDR             R0, [SP,#0x188+var_130]
29C086:  MOVS            R2, #0
29C088:  MOVS            R3, #0
29C08A:  MOVS            R1, #0
29C08C:  CMP             R0, #0
29C08E:  MOV.W           R0, #0
29C092:  MOVT            R2, #0x43CD
29C096:  MOVT            R3, #0x40E0
29C09A:  IT GT
29C09C:  MOVGT           R0, #1
29C09E:  STRD.W          R3, R2, [SP,#0x188+var_188]
29C0A2:  MOVS            R3, #0
29C0A4:  MOVT            R1, #0x4198
29C0A8:  STRD.W          R1, R0, [SP,#0x188+var_180]
29C0AC:  MOVT            R3, #0x4366
29C0B0:  MOV             R0, R9
29C0B2:  MOV             R1, R6
29C0B4:  MOV             R2, R8
29C0B6:  MOVS            R4, #0
29C0B8:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_b; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,bool)
29C0BC:  VMOV.F32        S0, #-0.375
29C0C0:  VLDR            S8, [R9,#0x20]
29C0C4:  VMOV.F32        S6, #-0.25
29C0C8:  VLDR            S22, =0.0
29C0CC:  VMOV.F32        S2, #-0.125
29C0D0:  ADD             R2, SP, #0x188+var_AC
29C0D2:  VMOV.F32        S4, #-0.625
29C0D6:  ADD.W           R1, R2, #0x20 ; ' '
29C0DA:  VMOV.F32        S12, #-0.5
29C0DE:  LDR.W           R0, =(unk_60CBF8 - 0x29C0F2)
29C0E2:  VMOV.F32        S20, #1.0
29C0E6:  MOVW            R8, #0
29C0EA:  VMOV.F32        Q9, #1.0
29C0EE:  ADD             R0, PC; unk_60CBF8
29C0F0:  VADD.F32        S11, S8, S0
29C0F4:  ADD.W           R5, R0, #8
29C0F8:  VADD.F32        S10, S8, S6
29C0FC:  VLDR            S30, =255.0
29C100:  VADD.F32        S9, S8, S2
29C104:  ADD             R6, SP, #0x188+var_B0
29C106:  VADD.F32        S0, S8, S4
29C10A:  VLDR            S17, =640.0
29C10E:  VADD.F32        S2, S8, S12
29C112:  ADD.W           R10, SP, #0x188+var_C8
29C116:  VMOV.F32        S24, #4.0
29C11A:  MOVT            R8, #0x43B4
29C11E:  VMOV.F32        S26, #0.25
29C122:  MOV.W           R9, #0x3F800000
29C126:  MOV.W           R11, #0
29C12A:  VADD.F32        Q8, Q2, Q2
29C12E:  VADD.F32        S4, S0, S0
29C132:  VADD.F32        S6, S2, S2
29C136:  VMIN.F32        Q9, Q8, Q9
29C13A:  VCLT.F32        Q8, Q8, #0.0
29C13E:  VMIN.F32        D1, D2, D10
29C142:  VCMPE.F32       S4, #0.0
29C146:  VMRS            APSR_nzcv, FPSCR
29C14A:  VCMPE.F32       S6, #0.0
29C14E:  VBIC            Q8, Q9, Q8
29C152:  VMIN.F32        D0, D3, D10
29C156:  IT LT
29C158:  VMOVLT.F32      S2, S22
29C15C:  VMRS            APSR_nzcv, FPSCR
29C160:  IT LT
29C162:  VMOVLT.F32      S0, S22
29C166:  VST1.32         {D17[1]}, [R1@32]
29C16A:  ADD.W           R1, R2, #0x24 ; '$'
29C16E:  VST1.32         {D17[0]}, [R1@32]
29C172:  ADD.W           R1, R2, #0x28 ; '('
29C176:  VST1.32         {D16[1]}, [R1@32]
29C17A:  ADD.W           R1, R2, #0x2C ; ','
29C17E:  VST1.32         {D16[0]}, [R1@32]
29C182:  MOV             R1, R2
29C184:  VST1.32         {D16-D17}, [R1]!
29C188:  VSTR            S0, [R1]
29C18C:  ADD.W           R1, R2, #0x30 ; '0'
29C190:  VST1.32         {D16[0]}, [R1@32]
29C194:  ADD.W           R1, R2, #0x34 ; '4'
29C198:  VST1.32         {D17[0]}, [R1@32]
29C19C:  ADD.W           R1, R2, #0x40 ; '@'
29C1A0:  VST1.32         {D17[0]}, [R1@32]
29C1A4:  ADD.W           R1, R2, #0x44 ; 'D'
29C1A8:  VST1.32         {D16[0]}, [R1@32]
29C1AC:  VSTR            S2, [SP,#0x188+var_98]
29C1B0:  VSTR            S2, [SP,#0x188+var_94]
29C1B4:  VSTR            S0, [SP,#0x188+var_90]
29C1B8:  VSTR            S0, [SP,#0x188+var_74]
29C1BC:  VSTR            S0, [SP,#0x188+var_70]
29C1C0:  B               loc_29C1FC
29C1C2:  ALIGN 4
29C1C4:  DCFS 0.0
29C1C8:  DCFS 255.0
29C1CC:  DCFS 640.0
29C1D0:  DCFS 0.8
29C1D4:  DCFS 480.0
29C1D8:  DCFS -240.0
29C1DC:  DCFS 320.0
29C1E0:  DCFS -120.0
29C1E4:  DCFS -127.0
29C1E8:  DCFS 254.0
29C1EC:  DCFS -700.0
29C1F0:  DCFS 0.025
29C1F4:  DCFS 0.1
29C1F8:  DCFS 0.12
29C1FC:  LDR             R0, [SP,#0x188+var_134]
29C1FE:  ADD             R1, SP, #0x188+var_AC
29C200:  VMOV.F32        S4, #-0.5
29C204:  VMOV.F32        S6, S20
29C208:  LDR             R0, [R0,#0x24]
29C20A:  VMOV.F32        S8, S20
29C20E:  VMOV.F32        S23, S20
29C212:  ADD.W           R0, R0, R0,LSL#1
29C216:  ADD.W           R0, R11, R0,LSL#3
29C21A:  ADD             R0, R1
29C21C:  VLDR            S0, [R0]
29C220:  VMUL.F32        S2, S0, S24
29C224:  VADD.F32        S4, S2, S4
29C228:  VCMPE.F32       S4, S20
29C22C:  VMRS            APSR_nzcv, FPSCR
29C230:  IT LT
29C232:  VMOVLT.F32      S6, S4
29C236:  VCMPE.F32       S6, #0.0
29C23A:  VMRS            APSR_nzcv, FPSCR
29C23E:  VCMPE.F32       S4, S20
29C242:  IT LE
29C244:  VMOVLE.F32      S8, S22
29C248:  VMRS            APSR_nzcv, FPSCR
29C24C:  VMOV.F32        S2, S8
29C250:  VCMPE.F32       S6, #0.0
29C254:  IT LT
29C256:  VMOVLT.F32      S2, S4
29C25A:  VMRS            APSR_nzcv, FPSCR
29C25E:  VCMPE.F32       S0, S26
29C262:  IT LE
29C264:  VMOVLE.F32      S2, S8
29C268:  VMRS            APSR_nzcv, FPSCR
29C26C:  BLE             loc_29C282
29C26E:  VLDR            S4, =0.8
29C272:  VDIV.F32        S0, S0, S4
29C276:  VMOV.F32        S4, #-0.25
29C27A:  VADD.F32        S0, S0, S4
29C27E:  VSUB.F32        S23, S20, S0
29C282:  VMUL.F32        S0, S2, S30
29C286:  MOVS            R1, #0xFF; unsigned __int8
29C288:  MOVS            R2, #0xFF; unsigned __int8
29C28A:  MOVS            R3, #0xFF; unsigned __int8
29C28C:  VCVT.U32.F32    S0, S0
29C290:  VMOV            R0, S0
29C294:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29C296:  MOV             R0, R6; this
29C298:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C29C:  VLDR            S19, [R5,#-8]
29C2A0:  VLDR            S25, [R5,#-4]
29C2A4:  VMUL.F32        S0, S19, S17
29C2A8:  VLDR            S27, [R5]
29C2AC:  VLDR            S31, [R5,#4]
29C2B0:  LDR             R0, [SP,#0x188+var_B0]
29C2B2:  STR             R4, [SP,#0x188+var_104]
29C2B4:  CMP.W           R0, #0x1000000
29C2B8:  VSTR            S19, [SP,#0x188+var_108]
29C2BC:  VDUP.32         Q8, R0
29C2C0:  STR             R4, [SP,#0x188+var_E4]
29C2C2:  VSTR            S25, [SP,#0x188+var_100]
29C2C6:  VADD.F32        S29, S0, S22
29C2CA:  STR             R4, [SP,#0x188+var_FC]
29C2CC:  VMUL.F32        S0, S25, S17
29C2D0:  VSTR            S27, [SP,#0x188+var_F8]
29C2D4:  STR.W           R9, [SP,#0x188+var_F4]
29C2D8:  VSTR            S31, [SP,#0x188+var_F0]
29C2DC:  VST1.64         {D16-D17}, [R10@128]
29C2E0:  STR.W           R9, [SP,#0x188+var_EC]
29C2E4:  VSTR            S29, [SP,#0x188+var_E8]
29C2E8:  VADD.F32        S16, S0, S22
29C2EC:  STR             R4, [SP,#0x188+var_DC]
29C2EE:  VMUL.F32        S0, S27, S17
29C2F2:  VSTR            S16, [SP,#0x188+var_E0]
29C2F6:  VADD.F32        S28, S0, S22
29C2FA:  STR.W           R8, [SP,#0x188+var_D4]
29C2FE:  VMUL.F32        S0, S31, S17
29C302:  VSTR            S28, [SP,#0x188+var_D8]
29C306:  VADD.F32        S18, S0, S22
29C30A:  STR.W           R8, [SP,#0x188+var_CC]
29C30E:  VSTR            S18, [SP,#0x188+var_D0]
29C312:  BCC             loc_29C330
29C314:  LDR             R0, [SP,#0x188+var_134]
29C316:  ADD             R3, SP, #0x188+var_108
29C318:  LDR             R2, [SP,#0x188+var_130]
29C31A:  CMP             R2, #0
29C31C:  MOV.W           R2, #0
29C320:  LDR             R1, [R0,#0x18]
29C322:  IT GT
29C324:  MOVGT           R2, #1
29C326:  STRD.W          R10, R2, [SP,#0x188+var_188]
29C32A:  ADD             R2, SP, #0x188+var_E8
29C32C:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTextureP9CVector2DS3_P5CRGBAb; MenuScreen::DrawSprite(RwTexture *,CVector2D *,CVector2D *,CRGBA *,bool)
29C330:  VMUL.F32        S0, S23, S30
29C334:  MOVS            R1, #0xFF; unsigned __int8
29C336:  MOVS            R2, #0xFF; unsigned __int8
29C338:  MOVS            R3, #0xFF; unsigned __int8
29C33A:  VCVT.U32.F32    S0, S0
29C33E:  VMOV            R0, S0
29C342:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29C344:  MOV             R0, R6; this
29C346:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C34A:  LDR             R0, [SP,#0x188+var_B0]
29C34C:  STR             R4, [SP,#0x188+var_E4]
29C34E:  CMP.W           R0, #0x1000000
29C352:  VSTR            S29, [SP,#0x188+var_E8]
29C356:  VDUP.32         Q8, R0
29C35A:  STR             R4, [SP,#0x188+var_104]
29C35C:  VSTR            S16, [SP,#0x188+var_E0]
29C360:  STR             R4, [SP,#0x188+var_DC]
29C362:  VSTR            S28, [SP,#0x188+var_D8]
29C366:  STR.W           R8, [SP,#0x188+var_D4]
29C36A:  VSTR            S18, [SP,#0x188+var_D0]
29C36E:  VSTR            S19, [SP,#0x188+var_108]
29C372:  VSTR            S25, [SP,#0x188+var_100]
29C376:  STR             R4, [SP,#0x188+var_FC]
29C378:  VSTR            S27, [SP,#0x188+var_F8]
29C37C:  STR.W           R9, [SP,#0x188+var_F4]
29C380:  VSTR            S31, [SP,#0x188+var_F0]
29C384:  VST1.64         {D16-D17}, [R10@128]
29C388:  STR.W           R8, [SP,#0x188+var_CC]
29C38C:  STR.W           R9, [SP,#0x188+var_EC]
29C390:  BCC             loc_29C3AE
29C392:  LDR             R0, [SP,#0x188+var_134]
29C394:  ADD             R3, SP, #0x188+var_108
29C396:  LDR             R2, [SP,#0x188+var_130]
29C398:  CMP             R2, #0
29C39A:  MOV.W           R2, #0
29C39E:  LDR             R1, [R0,#0x1C]
29C3A0:  IT GT
29C3A2:  MOVGT           R2, #1
29C3A4:  STRD.W          R10, R2, [SP,#0x188+var_188]
29C3A8:  ADD             R2, SP, #0x188+var_E8
29C3AA:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTextureP9CVector2DS3_P5CRGBAb; MenuScreen::DrawSprite(RwTexture *,CVector2D *,CVector2D *,CRGBA *,bool)
29C3AE:  ADD.W           R11, R11, #4
29C3B2:  ADDS            R5, #0x10
29C3B4:  CMP.W           R11, #0x18
29C3B8:  BNE.W           loc_29C1FC
29C3BC:  LDR.W           R9, [SP,#0x188+var_134]
29C3C0:  MOVS            R0, #1; bool
29C3C2:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29C3C6:  LDR.W           R1, =(gMobileMenu_ptr - 0x29C3D6)
29C3CA:  MOV             R4, #0x43D78000
29C3D2:  ADD             R1, PC; gMobileMenu_ptr
29C3D4:  LDR             R1, [R1]; gMobileMenu
29C3D6:  LDR             R1, [R1,#(dword_6E0090 - 0x6E006C)]
29C3D8:  CMP             R1, #1
29C3DA:  IT EQ
29C3DC:  CMPEQ           R0, #0
29C3DE:  BNE.W           loc_29C51A
29C3E2:  MOVS            R0, #0x40 ; '@'
29C3E4:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
29C3E8:  CMP             R0, #1
29C3EA:  BNE.W           loc_29C51A
29C3EE:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
29C3F2:  CMP             R0, #1
29C3F4:  BNE.W           loc_29C51A
29C3F8:  LDR.W           R0, =(RsGlobal_ptr - 0x29C408)
29C3FC:  MOV.W           R8, #0xFF
29C400:  MOVS            R1, #0xFF; unsigned __int8
29C402:  MOVS            R2, #0xFF; unsigned __int8
29C404:  ADD             R0, PC; RsGlobal_ptr
29C406:  MOVS            R3, #0xFF; unsigned __int8
29C408:  LDR             R0, [R0]; RsGlobal
29C40A:  VLDR            S0, [R0,#4]
29C40E:  VLDR            S2, [R0,#8]
29C412:  ADD             R0, SP, #0x188+var_10C; this
29C414:  VCVT.F32.S32    S16, S2
29C418:  VCVT.F32.S32    S18, S0
29C41C:  STR.W           R8, [SP,#0x188+var_188]; unsigned __int8
29C420:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C424:  VLDR            S0, =0.0
29C428:  VMOV.F32        S2, #12.5
29C42C:  VLDR            S4, =480.0
29C430:  VMUL.F32        S0, S18, S0
29C434:  LDR.W           R0, =(TheText_ptr - 0x29C440)
29C438:  LDR.W           R1, =(aFehSel - 0x29C442); "FEH_SEL"
29C43C:  ADD             R0, PC; TheText_ptr
29C43E:  ADD             R1, PC; "FEH_SEL"
29C440:  LDR             R0, [R0]; TheText ; this
29C442:  VMAX.F32        D0, D0, D1
29C446:  VLDR            S2, =-240.0
29C44A:  VMUL.F32        S2, S18, S2
29C44E:  VSUB.F32        S0, S18, S0
29C452:  VMUL.F32        S0, S0, S4
29C456:  VADD.F32        S0, S0, S2
29C45A:  VLDR            S2, =320.0
29C45E:  VDIV.F32        S0, S0, S16
29C462:  VADD.F32        S16, S0, S2
29C466:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
29C46A:  VLDR            S0, =-120.0
29C46E:  MOVS            R1, #0
29C470:  MOV             R2, R0
29C472:  LDR             R0, [SP,#0x188+var_10C]
29C474:  VADD.F32        S0, S16, S0
29C478:  STR             R0, [SP,#0x188+var_E8]
29C47A:  MOVS            R0, #0
29C47C:  MOVT            R1, #0x42F0
29C480:  STRD.W          R4, R1, [SP,#0x188+var_178]; int
29C484:  MOVS            R6, #0
29C486:  MOVT            R0, #0x41D8
29C48A:  ADD             R1, SP, #0x188+var_E8
29C48C:  STRD.W          R0, R6, [SP,#0x188+var_170]; int
29C490:  MOVS            R0, #1
29C492:  STR             R6, [SP,#0x188+var_168]
29C494:  MOVS            R3, #2
29C496:  STRD.W          R6, R1, [SP,#0x188+var_188]
29C49A:  MOV             R1, R9
29C49C:  STR             R0, [SP,#0x188+var_180]
29C49E:  ADD             R0, SP, #0x188+var_AC
29C4A0:  VSTR            S0, [SP,#0x188+var_17C]
29C4A4:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
29C4A8:  MOV.W           R0, #0x3F800000
29C4AC:  ADD             R2, SP, #0x188+var_E8
29C4AE:  ADD             R3, SP, #0x188+var_108
29C4B0:  STRD.W          R6, R6, [SP,#0x188+var_E8]
29C4B4:  STRD.W          R0, R0, [SP,#0x188+var_108]
29C4B8:  MOVS            R0, #0
29C4BA:  MOVS            R1, #0x40 ; '@'
29C4BC:  BLX             j__ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_; CHID::GetHelpSprite(char const*,HIDMapping,CVector2D *,CVector2D *)
29C4C0:  CBZ             R0, loc_29C51A
29C4C2:  LDR             R5, [R0]
29C4C4:  MOVS            R1, #0xFF; unsigned __int8
29C4C6:  STR.W           R8, [SP,#0x188+var_188]; unsigned __int8
29C4CA:  ADD.W           R8, SP, #0x188+var_110
29C4CE:  MOVS            R2, #0xFF; unsigned __int8
29C4D0:  MOVS            R3, #0xFF; unsigned __int8
29C4D2:  MOV             R0, R8; this
29C4D4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C4D8:  VMOV.F32        S0, #-25.0
29C4DC:  VLDR            S2, [SP,#0x188+var_AC]
29C4E0:  LDRD.W          R0, R1, [SP,#0x188+var_E8]
29C4E4:  ADD.W           R6, R4, #0xC8000
29C4E8:  LDRD.W          R2, R12, [SP,#0x188+var_108]
29C4EC:  STRD.W          R6, R0, [SP,#0x188+var_180]; float
29C4F0:  ADD             R0, SP, #0x188+var_178
29C4F2:  STM.W           R0, {R1,R2,R12}
29C4F6:  ADD.W           R0, R4, #0x28000
29C4FA:  MOV             R1, R5; int
29C4FC:  VADD.F32        S0, S2, S0
29C500:  STR             R0, [SP,#0x188+var_188]; float
29C502:  MOV             R0, R9; int
29C504:  MOV             R2, R8; int
29C506:  VMOV            R3, S0; int
29C50A:  VMOV.F32        S0, #-5.0
29C50E:  VADD.F32        S0, S2, S0
29C512:  VSTR            S0, [SP,#0x188+var_184]
29C516:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
29C51A:  LDR.W           R0, [R9,#0x40]
29C51E:  CMP             R0, #0
29C520:  BEQ.W           loc_29CB5C
29C524:  ADD             R2, SP, #0x188+var_E8
29C526:  VMOV.F32        S20, #0.5
29C52A:  ADD.W           R0, R2, #0xC
29C52E:  STR             R0, [SP,#0x188+var_138]
29C530:  ADD.W           R0, R2, #8
29C534:  STR             R0, [SP,#0x188+var_13C]
29C536:  LDR.W           R0, =(RsGlobal_ptr - 0x29C548)
29C53A:  MOVS            R6, #0
29C53C:  VLDR            S31, =-127.0
29C540:  MOV.W           R10, #0
29C544:  ADD             R0, PC; RsGlobal_ptr
29C546:  VLDR            S29, =254.0
29C54A:  VLDR            S30, =-700.0
29C54E:  LDR             R0, [R0]; RsGlobal
29C550:  STR             R0, [SP,#0x188+var_150]
29C552:  LDR.W           R0, =(RsGlobal_ptr - 0x29C55E)
29C556:  VLDR            S27, =320.0
29C55A:  ADD             R0, PC; RsGlobal_ptr
29C55C:  LDR             R0, [R0]; RsGlobal
29C55E:  STR             R0, [SP,#0x188+var_158]
29C560:  LDR.W           R0, =(TheText_ptr - 0x29C568)
29C564:  ADD             R0, PC; TheText_ptr
29C566:  LDR             R0, [R0]; TheText
29C568:  STR             R0, [SP,#0x188+var_154]
29C56A:  VMOV            S0, R10
29C56E:  STR             R6, [SP,#0x188+var_14C]
29C570:  VMOV.F32        S22, #2.0
29C574:  MOVS            R1, #0xFF; unsigned __int8
29C576:  VCVT.F32.S32    S0, S0
29C57A:  VLDR            S2, [R9,#0x34]
29C57E:  MOVS            R2, #0xFF; unsigned __int8
29C580:  MOVS            R3, #0xFF; unsigned __int8
29C582:  VSUB.F32        S18, S0, S2
29C586:  VABS.F32        S16, S18
29C58A:  VMIN.F32        D0, D8, D11
29C58E:  VSTR            D0, [SP,#0x188+var_148]
29C592:  VMUL.F32        S0, S0, S31
29C596:  VADD.F32        S0, S0, S29
29C59A:  VCVT.U32.F32    S0, S0
29C59E:  VMOV            R0, S0
29C5A2:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29C5A4:  ADD             R0, SP, #0x188+var_108; this
29C5A6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C5AA:  VMOV.F32        S0, #1.0
29C5AE:  VLDR            S2, =0.8
29C5B2:  VMIN.F32        D0, D8, D0
29C5B6:  VMUL.F32        S0, S0, S2
29C5BA:  VLDR            S2, =0.025
29C5BE:  VADD.F32        S0, S0, S2
29C5C2:  VLDR            S2, =0.1
29C5C6:  VMOV.F32        S4, S2
29C5CA:  VMUL.F32        S0, S0, S4
29C5CE:  VMUL.F32        S2, S18, S4
29C5D2:  VLDR            S4, =0.12
29C5D6:  VMOV.F32        S24, S4
29C5DA:  VSUB.F32        S0, S20, S0
29C5DE:  VADD.F32        S16, S18, S2
29C5E2:  VSUB.F32        S2, S16, S0
29C5E6:  VADD.F32        S0, S16, S0
29C5EA:  VMUL.F32        S2, S2, S24
29C5EE:  VMUL.F32        S20, S0, S24
29C5F2:  VMOV            R6, S2
29C5F6:  MOV             R0, R6; x
29C5F8:  BLX             sinf
29C5FC:  MOV             R8, R0
29C5FE:  MOV             R0, R6; x
29C600:  BLX             cosf
29C604:  VMOV            R6, S20
29C608:  MOV             R9, R0
29C60A:  MOV             R0, R6; x
29C60C:  BLX             sinf
29C610:  STR             R0, [SP,#0x188+var_130]
29C612:  MOV             R0, R6; x
29C614:  BLX             cosf
29C618:  VLDR            S0, =-0.45
29C61C:  MOV             R11, R0
29C61E:  VADD.F32        S0, S16, S0
29C622:  VMUL.F32        S0, S0, S24
29C626:  VMOV            R6, S0
29C62A:  VLDR            S0, =0.45
29C62E:  VADD.F32        S0, S16, S0
29C632:  VMUL.F32        S16, S0, S24
29C636:  MOV             R0, R6; x
29C638:  BLX             sinf
29C63C:  MOV             R5, R0
29C63E:  MOV             R0, R6; x
29C640:  BLX             cosf
29C644:  VMOV            R6, S16
29C648:  VMOV            S20, R0
29C64C:  MOV             R0, R6; x
29C64E:  BLX             sinf
29C652:  MOV             R4, R0
29C654:  MOV             R0, R6; x
29C656:  BLX             cosf
29C65A:  VLDR            S2, =0.4
29C65E:  VMOV            S0, R0
29C662:  VLDR            S4, =-0.4
29C666:  VMOV            S8, R5
29C66A:  VLDR            S6, =1050.0
29C66E:  VADD.F32        S2, S18, S2
29C672:  VADD.F32        S4, S18, S4
29C676:  VMOV.F32        S12, S6
29C67A:  VMUL.F32        S6, S0, S12
29C67E:  VABS.F32        S0, S2
29C682:  VABS.F32        S2, S4
29C686:  VMUL.F32        S10, S20, S12
29C68A:  VMOV            S4, R4
29C68E:  VMUL.F32        S20, S8, S12
29C692:  VMUL.F32        S18, S4, S12
29C696:  VMIN.F32        D8, D0, D11
29C69A:  VMIN.F32        D0, D1, D11
29C69E:  VMOV.F32        S2, #5.0
29C6A2:  VADD.F32        S26, S6, S30
29C6A6:  VADD.F32        S19, S10, S30
29C6AA:  VMOV            S22, R9
29C6AE:  LDR.W           R9, [SP,#0x188+var_134]
29C6B2:  VMOV            S30, R8
29C6B6:  LDR.W           R0, [R9,#0x30]
29C6BA:  VMUL.F32        S24, S16, S2
29C6BE:  VMUL.F32        S28, S0, S2
29C6C2:  CMP             R10, R0
29C6C4:  BNE             loc_29C6D4
29C6C6:  MOVS            R0, #0xFF
29C6C8:  MOVS            R1, #0xF0
29C6CA:  STR             R0, [SP,#0x188+var_188]
29C6CC:  ADD             R0, SP, #0x188+var_C8
29C6CE:  MOVS            R2, #0xF0
29C6D0:  MOVS            R3, #0xF0
29C6D2:  B               loc_29C6EE
29C6D4:  VMUL.F32        S0, S0, S31
29C6D8:  MOVS            R1, #0xB4; unsigned __int8
29C6DA:  MOVS            R2, #0xB4; unsigned __int8
29C6DC:  MOVS            R3, #0xB4; unsigned __int8
29C6DE:  VADD.F32        S0, S0, S29
29C6E2:  VCVT.U32.F32    S0, S0
29C6E6:  VMOV            R0, S0
29C6EA:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29C6EC:  ADD             R0, SP, #0x188+var_C8; this
29C6EE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C6F2:  VLDR            S0, =1130.0
29C6F6:  VADD.F32        S28, S19, S28
29C6FA:  LDR             R0, [SP,#0x188+var_130]
29C6FC:  ADD.W           R8, SP, #0x188+var_E8
29C700:  VMUL.F32        S23, S22, S0
29C704:  VMUL.F32        S25, S30, S0
29C708:  VADD.F32        S0, S18, S27
29C70C:  VADD.F32        S22, S20, S27
29C710:  VADD.F32        S20, S24, S26
29C714:  VMOV            S29, R0
29C718:  VMOV            S21, R11
29C71C:  VSTR            S0, [SP,#0x188+var_130]
29C720:  LDR.W           R0, [R9,#0x30]
29C724:  CMP             R10, R0
29C726:  BNE             loc_29C736
29C728:  MOVS            R0, #0xFF
29C72A:  MOVS            R1, #0xF0
29C72C:  STR             R0, [SP,#0x188+var_188]
29C72E:  ADD             R0, SP, #0x188+var_B0
29C730:  MOVS            R2, #0xF0
29C732:  MOVS            R3, #0xF0
29C734:  B               loc_29C754
29C736:  VMUL.F32        S0, S16, S31
29C73A:  VLDR            S2, =254.0
29C73E:  MOVS            R1, #0xB4; unsigned __int8
29C740:  MOVS            R2, #0xB4; unsigned __int8
29C742:  MOVS            R3, #0xB4; unsigned __int8
29C744:  VADD.F32        S0, S0, S2
29C748:  VCVT.U32.F32    S0, S0
29C74C:  VMOV            R0, S0
29C750:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29C752:  ADD             R0, SP, #0x188+var_B0; this
29C754:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C758:  VLDR            S0, =1130.0
29C75C:  ADD.W           R11, SP, #0x188+var_AC
29C760:  VLDR            S27, =-700.0
29C764:  MOV             R2, R8
29C766:  VLDR            S17, =1.7
29C76A:  VMUL.F32        S26, S29, S0
29C76E:  VMUL.F32        S31, S21, S0
29C772:  VLDR            S0, =320.0
29C776:  VLDR            S18, =-1.7
29C77A:  VADD.F32        S30, S23, S27
29C77E:  VLDR            S29, [SP,#0x188+var_130]
29C782:  VADD.F32        S24, S25, S0
29C786:  VADD.F32        S0, S28, S18
29C78A:  LDR             R0, [SP,#0x188+var_C8]
29C78C:  VADD.F32        S25, S20, S17
29C790:  STR             R0, [SP,#0x188+var_E8]
29C792:  VADD.F32        S23, S22, S18
29C796:  STR             R0, [SP,#0x188+var_E0]
29C798:  VADD.F32        S19, S29, S17
29C79C:  LDR             R0, [SP,#0x188+var_B0]
29C79E:  VADD.F32        S2, S20, S18
29C7A2:  STR             R0, [SP,#0x188+var_E4]
29C7A4:  VADD.F32        S16, S28, S17
29C7A8:  STR             R0, [SP,#0x188+var_DC]
29C7AA:  MOV             R0, R9
29C7AC:  MOV             R1, R11
29C7AE:  VSTR            S0, [SP,#0x188+var_A8]
29C7B2:  MOVS            R5, #0
29C7B4:  LDR             R6, [SP,#0x188+var_14C]
29C7B6:  VSTR            S23, [SP,#0x188+var_AC]
29C7BA:  VSTR            S19, [SP,#0x188+var_A4]
29C7BE:  VSTR            S2, [SP,#0x188+var_A0]
29C7C2:  VSTR            S23, [SP,#0x188+var_9C]
29C7C6:  VSTR            S16, [SP,#0x188+var_98]
29C7CA:  VSTR            S19, [SP,#0x188+var_94]
29C7CE:  VSTR            S25, [SP,#0x188+var_90]
29C7D2:  BLX             j__ZN10FlowScreen17DrawFeatheredQuadEP9CVector2DP5CRGBA; FlowScreen::DrawFeatheredQuad(CVector2D *,CRGBA *)
29C7D6:  LDR             R0, [SP,#0x188+var_C8]
29C7D8:  MOVS            R1, #0; unsigned __int8
29C7DA:  MOVS            R2, #0; unsigned __int8
29C7DC:  MOVS            R3, #0; unsigned __int8
29C7DE:  STRD.W          R0, R0, [SP,#0x188+var_E8]
29C7E2:  LDR             R0, [SP,#0x188+var_13C]; this
29C7E4:  STR             R5, [SP,#0x188+var_188]; unsigned __int8
29C7E6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C7EA:  LDR             R0, [SP,#0x188+var_138]; this
29C7EC:  MOVS            R1, #0; unsigned __int8
29C7EE:  MOVS            R2, #0; unsigned __int8
29C7F0:  MOVS            R3, #0; unsigned __int8
29C7F2:  STR             R5, [SP,#0x188+var_188]; unsigned __int8
29C7F4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C7F8:  VSUB.F32        S21, S20, S28
29C7FC:  VSUB.F32        S29, S29, S22
29C800:  VMOV.F32        S8, S17
29C804:  VMUL.F32        S0, S21, S21
29C808:  VMUL.F32        S2, S29, S29
29C80C:  VADD.F32        S17, S2, S0
29C810:  VMOV.F32        S0, #1.0
29C814:  VCMPE.F32       S17, #0.0
29C818:  VMOV.F32        S2, S0
29C81C:  VMRS            APSR_nzcv, FPSCR
29C820:  VMOV.F32        S0, S21
29C824:  BLE             loc_29C83A
29C826:  VSQRT.F32       S0, S17
29C82A:  VMOV.F32        S2, #1.0
29C82E:  VDIV.F32        S2, S2, S0
29C832:  VMUL.F32        S0, S21, S2
29C836:  VMUL.F32        S2, S29, S2
29C83A:  VMUL.F32        S2, S2, S8
29C83E:  VLDR            S4, =320.0
29C842:  VMUL.F32        S0, S0, S8
29C846:  MOV             R0, R9
29C848:  VADD.F32        S31, S31, S27
29C84C:  MOV             R1, R11
29C84E:  VMOV.F32        S27, S4
29C852:  MOV             R2, R8
29C854:  VADD.F32        S6, S30, S8
29C858:  VSTR            S16, [SP,#0x188+var_A8]
29C85C:  VADD.F32        S4, S24, S18
29C860:  VSTR            S23, [SP,#0x188+var_AC]
29C864:  VADD.F32        S8, S24, S8
29C868:  VADD.F32        S2, S2, S2
29C86C:  VADD.F32        S0, S0, S0
29C870:  VADD.F32        S26, S26, S27
29C874:  VSTR            S4, [SP,#0x188+var_9C]
29C878:  VSTR            S6, [SP,#0x188+var_98]
29C87C:  VADD.F32        S2, S23, S2
29C880:  VSTR            S8, [SP,#0x188+var_94]
29C884:  VADD.F32        S0, S16, S0
29C888:  VSTR            S6, [SP,#0x188+var_90]
29C88C:  VSTR            S2, [SP,#0x188+var_A4]
29C890:  VSTR            S0, [SP,#0x188+var_A0]
29C894:  BLX             j__ZN10FlowScreen17DrawFeatheredQuadEP9CVector2DP5CRGBA; FlowScreen::DrawFeatheredQuad(CVector2D *,CRGBA *)
29C898:  LDR             R0, [SP,#0x188+var_B0]
29C89A:  MOVS            R1, #0; unsigned __int8
29C89C:  MOVS            R2, #0; unsigned __int8
29C89E:  MOVS            R3, #0; unsigned __int8
29C8A0:  STRD.W          R0, R0, [SP,#0x188+var_E8]
29C8A4:  LDR             R0, [SP,#0x188+var_13C]; this
29C8A6:  STR             R5, [SP,#0x188+var_188]; unsigned __int8
29C8A8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C8AC:  LDR             R0, [SP,#0x188+var_138]; this
29C8AE:  MOVS            R1, #0; unsigned __int8
29C8B0:  MOVS            R2, #0; unsigned __int8
29C8B2:  MOVS            R3, #0; unsigned __int8
29C8B4:  STR             R5, [SP,#0x188+var_188]; unsigned __int8
29C8B6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29C8BA:  VCMPE.F32       S17, #0.0
29C8BE:  VMRS            APSR_nzcv, FPSCR
29C8C2:  BLE             loc_29C92C
29C8C4:  VSQRT.F32       S0, S17
29C8C8:  VMOV.F32        S2, #1.0
29C8CC:  VDIV.F32        S0, S2, S0
29C8D0:  VMUL.F32        S21, S21, S0
29C8D4:  VMUL.F32        S0, S29, S0
29C8D8:  B               loc_29C930
29C8DA:  ALIGN 4
29C8DC:  DCFS -0.45
29C8E0:  DCFS 0.45
29C8E4:  DCFS 0.4
29C8E8:  DCFS -0.4
29C8EC:  DCFS 1050.0
29C8F0:  DCFS 1130.0
29C8F4:  DCFS 254.0
29C8F8:  DCFS -700.0
29C8FC:  DCFS 1.7
29C900:  DCFS 320.0
29C904:  DCFS -1.7
29C908:  DCFS -127.0
29C90C:  DCFS 1.35
29C910:  DCFS 480.0
29C914:  DCFS -0.0
29C918:  DCFS 438.0
29C91C:  DCFS 255.0
29C920:  DCFS 240.0
29C924:  DCFS 0.0
29C928:  DCD gMobileMenu_ptr - 0x29C062
29C92C:  VMOV.F32        S0, #1.0
29C930:  VLDR            S8, =1.7
29C934:  MOV             R0, R9
29C936:  VLDR            S4, =-1.7
29C93A:  MOV             R1, R11
29C93C:  VMUL.F32        S2, S21, S8
29C940:  MOV             R2, R8
29C942:  VMUL.F32        S0, S0, S8
29C946:  VSTR            S19, [SP,#0x188+var_A4]
29C94A:  VADD.F32        S6, S31, S8
29C94E:  VLDR            S29, =254.0
29C952:  VADD.F32        S4, S26, S4
29C956:  VSTR            S25, [SP,#0x188+var_A0]
29C95A:  VADD.F32        S8, S26, S8
29C95E:  VADD.F32        S2, S2, S2
29C962:  VADD.F32        S0, S0, S0
29C966:  VSTR            S4, [SP,#0x188+var_9C]
29C96A:  VSTR            S6, [SP,#0x188+var_98]
29C96E:  VSTR            S8, [SP,#0x188+var_94]
29C972:  VSTR            S6, [SP,#0x188+var_90]
29C976:  VSUB.F32        S2, S25, S2
29C97A:  VSUB.F32        S0, S19, S0
29C97E:  VSTR            S2, [SP,#0x188+var_A8]
29C982:  VSTR            S0, [SP,#0x188+var_AC]
29C986:  BLX             j__ZN10FlowScreen17DrawFeatheredQuadEP9CVector2DP5CRGBA; FlowScreen::DrawFeatheredQuad(CVector2D *,CRGBA *)
29C98A:  VLDR            S0, [SP,#0x188+var_130]
29C98E:  VMOV.F32        S4, #0.25
29C992:  VADD.F32        S2, S28, S20
29C996:  LDR.W           R0, [R9,#0x30]
29C99A:  VADD.F32        S0, S22, S0
29C99E:  LDR.W           R1, [R9,#0x44]
29C9A2:  VMOV.F32        S6, #21.0
29C9A6:  CMP             R10, R0
29C9A8:  ADD             R2, SP, #0x188+var_114
29C9AA:  VMOV.F32        S8, S4
29C9AE:  VMOV.F32        S4, #18.0
29C9B2:  VADD.F32        S0, S0, S24
29C9B6:  IT EQ
29C9B8:  VMOVEQ.F32      S4, S6
29C9BC:  VADD.F32        S2, S2, S30
29C9C0:  LDR             R1, [R1,R6]
29C9C2:  LDR             R0, [SP,#0x188+var_108]
29C9C4:  STR             R0, [SP,#0x188+var_114]
29C9C6:  MOV             R0, R9
29C9C8:  STR             R5, [SP,#0x188+var_17C]; int
29C9CA:  VADD.F32        S0, S0, S26
29C9CE:  VADD.F32        S2, S2, S31
29C9D2:  VMUL.F32        S0, S0, S8
29C9D6:  VMUL.F32        S2, S2, S8
29C9DA:  VSUB.F32        S6, S0, S4
29C9DE:  VADD.F32        S0, S0, S4
29C9E2:  VMOV            R3, S6
29C9E6:  VADD.F32        S6, S2, S4
29C9EA:  VSUB.F32        S2, S2, S4
29C9EE:  VSTR            S2, [SP,#0x188+var_188]
29C9F2:  VSTR            S0, [SP,#0x188+var_184]
29C9F6:  VSTR            S6, [SP,#0x188+var_180]
29C9FA:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_b; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,bool)
29C9FE:  VMOV.F32        S20, #0.5
29CA02:  VLDR            D11, [SP,#0x188+var_148]
29CA06:  VLDR            S31, =-127.0
29CA0A:  VLDR            S30, =-700.0
29CA0E:  VCMPE.F32       S22, S20
29CA12:  VMRS            APSR_nzcv, FPSCR
29CA16:  BGE.W           loc_29CB4C
29CA1A:  LDR             R4, [SP,#0x188+var_150]
29CA1C:  VLDR            S2, =1.35
29CA20:  LDR             R0, [R4,#8]
29CA22:  VMOV            S0, R0
29CA26:  VCVT.F32.S32    S0, S0
29CA2A:  VMUL.F32        S0, S0, S2
29CA2E:  VLDR            S2, =480.0
29CA32:  VMOV.F32        S18, S2
29CA36:  VDIV.F32        S0, S0, S18
29CA3A:  VMOV            R0, S0; this
29CA3E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
29CA42:  LDR             R0, [R4,#8]
29CA44:  VLDR            S2, =-0.0
29CA48:  VMOV            S0, R0
29CA4C:  MOVS            R0, #0; this
29CA4E:  VCVT.F32.S32    S0, S0
29CA52:  VMUL.F32        S2, S0, S2
29CA56:  VADD.F32        S16, S0, S2
29CA5A:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
29CA5E:  VMOV            S0, R0
29CA62:  VMOV.F32        S4, #-2.0
29CA66:  VSUB.F32        S2, S16, S0
29CA6A:  VLDR            S0, [R4,#8]
29CA6E:  VMOV.F32        S6, #1.0
29CA72:  VCVT.F32.S32    S0, S0
29CA76:  VMUL.F32        S4, S22, S4
29CA7A:  VMUL.F32        S2, S2, S18
29CA7E:  VADD.F32        S4, S4, S6
29CA82:  VDIV.F32        S2, S2, S0
29CA86:  VMUL.F32        S18, S4, S4
29CA8A:  VLDR            S4, =438.0
29CA8E:  VMOV.F32        S16, S4
29CA92:  VCMPE.F32       S2, S4
29CA96:  VMRS            APSR_nzcv, FPSCR
29CA9A:  BGE             loc_29CAEE
29CA9C:  VLDR            S2, =1.35
29CAA0:  VMUL.F32        S0, S0, S2
29CAA4:  VLDR            S2, =480.0
29CAA8:  VMOV.F32        S22, S2
29CAAC:  VDIV.F32        S0, S0, S22
29CAB0:  VMOV            R0, S0; this
29CAB4:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
29CAB8:  LDR             R4, [SP,#0x188+var_158]
29CABA:  VLDR            S2, =-0.0
29CABE:  LDR             R0, [R4,#8]
29CAC0:  VMOV            S0, R0
29CAC4:  MOVS            R0, #0; this
29CAC6:  VCVT.F32.S32    S0, S0
29CACA:  VMUL.F32        S2, S0, S2
29CACE:  VADD.F32        S16, S0, S2
29CAD2:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
29CAD6:  VMOV            S0, R0
29CADA:  VLDR            S2, [R4,#8]
29CADE:  VSUB.F32        S0, S16, S0
29CAE2:  VCVT.F32.S32    S2, S2
29CAE6:  VMUL.F32        S0, S0, S22
29CAEA:  VDIV.F32        S16, S0, S2
29CAEE:  VLDR            S0, =255.0
29CAF2:  MOVS            R1, #0xF0; unsigned __int8
29CAF4:  LDR.W           R0, [R9,#0x44]
29CAF8:  MOVS            R2, #0xF0; unsigned __int8
29CAFA:  VMUL.F32        S0, S18, S0
29CAFE:  MOVS            R3, #0xF0; unsigned __int8
29CB00:  ADD             R0, R6
29CB02:  LDR             R4, [R0,#4]
29CB04:  VCVT.U32.F32    S0, S0
29CB08:  VMOV            R0, S0
29CB0C:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29CB0E:  ADD             R0, SP, #0x188+var_118; this
29CB10:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29CB14:  LDR             R0, [SP,#0x188+var_154]; this
29CB16:  MOV             R1, R4; CKeyGen *
29CB18:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
29CB1C:  MOV             R2, R0
29CB1E:  LDR             R0, [SP,#0x188+var_118]
29CB20:  STR             R0, [SP,#0x188+var_E8]
29CB22:  MOVS            R0, #0x44200000
29CB28:  MOV             R1, R9
29CB2A:  STR             R0, [SP,#0x188+var_174]
29CB2C:  MOVS            R0, #0x41D80000
29CB32:  MOVS            R3, #1
29CB34:  STRD.W          R0, R5, [SP,#0x188+var_170]; int
29CB38:  MOV             R0, R11
29CB3A:  STR             R5, [SP,#0x188+var_168]
29CB3C:  VSTR            S16, [SP,#0x188+var_178]
29CB40:  STRD.W          R5, R8, [SP,#0x188+var_188]
29CB44:  STRD.W          R5, R5, [SP,#0x188+var_180]
29CB48:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
29CB4C:  LDR.W           R0, [R9,#0x40]
29CB50:  ADD.W           R10, R10, #1
29CB54:  ADDS            R6, #0xC
29CB56:  CMP             R10, R0
29CB58:  BCC.W           loc_29C56A
29CB5C:  MOVS            R0, #1; bool
29CB5E:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29CB62:  LDR.W           R1, =(gMobileMenu_ptr - 0x29CB6A)
29CB66:  ADD             R1, PC; gMobileMenu_ptr
29CB68:  LDR             R1, [R1]; gMobileMenu
29CB6A:  LDRB.W          R1, [R1,#(word_6E00C0+1 - 0x6E006C)]
29CB6E:  CMP             R1, #0
29CB70:  IT EQ
29CB72:  CMPEQ           R0, #0
29CB74:  BEQ.W           loc_29CEA4
29CB78:  LDR.W           R0, =(mapModeOpacity_ptr - 0x29CB8A)
29CB7C:  VMOV.F32        S0, #1.0
29CB80:  LDR.W           R8, [R9,#8]
29CB84:  ADD             R5, SP, #0x188+var_AC
29CB86:  ADD             R0, PC; mapModeOpacity_ptr
29CB88:  VLDR            S4, =240.0
29CB8C:  VLDR            S18, =480.0
29CB90:  MOVS            R4, #0x80
29CB92:  LDR             R0, [R0]; mapModeOpacity
29CB94:  MOVS            R1, #0; unsigned __int8
29CB96:  VLDR            S16, =0.0
29CB9A:  MOVS            R2, #0; unsigned __int8
29CB9C:  VLDR            S20, =320.0
29CBA0:  MOVS            R3, #0; unsigned __int8
29CBA2:  VLDR            S2, [R0]
29CBA6:  LDR.W           R0, =(RsGlobal_ptr - 0x29CBB2)
29CBAA:  VSUB.F32        S0, S0, S2
29CBAE:  ADD             R0, PC; RsGlobal_ptr
29CBB0:  LDR             R6, [R0]; RsGlobal
29CBB2:  MOV             R0, R5; this
29CBB4:  VSTR            S0, [R9,#8]
29CBB8:  VLDR            S0, [R6,#4]
29CBBC:  VLDR            S2, [R6,#8]
29CBC0:  VCVT.F32.S32    S0, S0
29CBC4:  VCVT.F32.S32    S2, S2
29CBC8:  VMUL.F32        S4, S0, S4
29CBCC:  VMUL.F32        S0, S0, S18
29CBD0:  VSUB.F32        S0, S0, S4
29CBD4:  VSUB.F32        S4, S16, S4
29CBD8:  VDIV.F32        S0, S0, S2
29CBDC:  VDIV.F32        S2, S4, S2
29CBE0:  VADD.F32        S2, S2, S20
29CBE4:  VADD.F32        S0, S0, S20
29CBE8:  VSTR            S2, [R9,#0x28]
29CBEC:  VSTR            S0, [R9,#0x2C]
29CBF0:  MOV.W           R9, #0
29CBF4:  STR             R4, [SP,#0x188+var_188]; unsigned __int8
29CBF6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29CBFA:  ADDS            R0, R5, #4; this
29CBFC:  MOVS            R1, #0; unsigned __int8
29CBFE:  MOVS            R2, #0; unsigned __int8
29CC00:  MOVS            R3, #0; unsigned __int8
29CC02:  STR             R4, [SP,#0x188+var_188]; unsigned __int8
29CC04:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29CC08:  ADD.W           R0, R5, #8; this
29CC0C:  MOVS            R1, #0; unsigned __int8
29CC0E:  MOVS            R2, #0; unsigned __int8
29CC10:  MOVS            R3, #0; unsigned __int8
29CC12:  STR.W           R9, [SP,#0x188+var_188]; unsigned __int8
29CC16:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29CC1A:  ADD.W           R0, R5, #0xC; this
29CC1E:  MOVS            R1, #0; unsigned __int8
29CC20:  MOVS            R2, #0; unsigned __int8
29CC22:  MOVS            R3, #0; unsigned __int8
29CC24:  STR.W           R9, [SP,#0x188+var_188]; unsigned __int8
29CC28:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29CC2C:  LDRB.W          R0, [SP,#0x188+var_AC+3]
29CC30:  LDRB.W          R1, [SP,#0x188+var_A8+3]
29CC34:  VMOV            S0, R0
29CC38:  VMOV            S4, R1
29CC3C:  VCVT.F32.U32    S0, S0
29CC40:  LDR             R0, [SP,#0x188+var_134]
29CC42:  VLDR            S2, [R0,#8]
29CC46:  LDR             R0, [SP,#0x188+var_134]
29CC48:  VMUL.F32        S0, S2, S0
29CC4C:  VLDR            S22, [R0,#0x28]
29CC50:  LDR             R0, [SP,#0x188+var_134]
29CC52:  VLDR            S24, [R0,#0x2C]
29CC56:  VCVT.U32.F32    S0, S0
29CC5A:  VCVT.F32.U32    S4, S4
29CC5E:  VMOV            R0, S0
29CC62:  VMUL.F32        S4, S2, S4
29CC66:  STRB.W          R0, [SP,#0x188+var_AC+3]
29CC6A:  LDRB.W          R0, [SP,#0x188+var_A4+3]
29CC6E:  LDRB.W          R1, [SP,#0x188+var_A0+3]
29CC72:  VMOV            S0, R0
29CC76:  VMOV            S6, R1
29CC7A:  MOVS            R1, #0
29CC7C:  VCVT.F32.U32    S0, S0
29CC80:  VCVT.F32.U32    S6, S6
29CC84:  VLDR            S8, [R6,#8]
29CC88:  VMUL.F32        S0, S2, S0
29CC8C:  VMUL.F32        S2, S2, S6
29CC90:  VLDR            S6, [R6,#4]
29CC94:  VCVT.U32.F32    S4, S4
29CC98:  VCVT.F32.S32    S26, S6
29CC9C:  VCVT.F32.S32    S28, S8
29CCA0:  VMOV            R0, S4
29CCA4:  STRB.W          R0, [SP,#0x188+var_A8+3]
29CCA8:  VCVT.U32.F32    S0, S0
29CCAC:  VCVT.U32.F32    S2, S2
29CCB0:  VMOV            R0, S0
29CCB4:  STRB.W          R0, [SP,#0x188+var_A4+3]
29CCB8:  VMOV            R0, S2
29CCBC:  STRB.W          R0, [SP,#0x188+var_A0+3]
29CCC0:  MOVS            R0, #1
29CCC2:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29CCC6:  VLDR            S0, =-320.0
29CCCA:  VMUL.F32        S4, S28, S16
29CCCE:  VLDR            S6, =50.0
29CCD2:  VMOV.F32        S8, #0.5
29CCD6:  VADD.F32        S2, S22, S0
29CCDA:  LDR.W           R0, =(maVertices_ptr - 0x29CCEE)
29CCDE:  VADD.F32        S0, S24, S0
29CCE2:  LDRB.W          R2, [SP,#0x188+var_AC+1]
29CCE6:  VMUL.F32        S6, S28, S6
29CCEA:  ADD             R0, PC; maVertices_ptr
29CCEC:  LDRB.W          R3, [SP,#0x188+var_AC+2]
29CCF0:  LDR             R1, [R0]; maVertices
29CCF2:  VDIV.F32        S4, S4, S18
29CCF6:  LDRB.W          R0, [SP,#0x188+var_AC]
29CCFA:  LDRB.W          R6, [SP,#0x188+var_AC+3]
29CCFE:  STRB            R0, [R1,#(byte_6E0148 - 0x6E0138)]
29CD00:  MOV.W           R0, #0x3F800000
29CD04:  STRD.W          R0, R0, [R1,#(dword_6E0140 - 0x6E0138)]
29CD08:  STRD.W          R9, R9, [R1,#(dword_6E014C - 0x6E0138)]
29CD0C:  STRD.W          R0, R0, [R1,#(dword_6E015C - 0x6E0138)]
29CD10:  STRD.W          R0, R9, [R1,#(dword_6E0168 - 0x6E0138)]
29CD14:  STRB            R2, [R1,#(byte_6E0149 - 0x6E0138)]
29CD16:  LDRB.W          R2, [SP,#0x188+var_A8]
29CD1A:  STRB            R3, [R1,#(byte_6E014A - 0x6E0138)]
29CD1C:  STRB            R6, [R1,#(byte_6E014B - 0x6E0138)]
29CD1E:  VMUL.F32        S2, S2, S28
29CD22:  VMUL.F32        S0, S0, S28
29CD26:  VDIV.F32        S6, S6, S18
29CD2A:  VDIV.F32        S2, S2, S18
29CD2E:  VDIV.F32        S0, S0, S18
29CD32:  VMUL.F32        S8, S26, S8
29CD36:  VADD.F32        S2, S8, S2
29CD3A:  VADD.F32        S0, S8, S0
29CD3E:  VSTR            S2, [R1]
29CD42:  VSTR            S4, [R1,#4]
29CD46:  VSTR            S0, [R1,#0x1C]
29CD4A:  VSTR            S4, [R1,#0x20]
29CD4E:  STRB.W          R2, [R1,#(byte_6E0164 - 0x6E0138)]
29CD52:  LDRB.W          R2, [SP,#0x188+var_A8+1]
29CD56:  STRB.W          R2, [R1,#(byte_6E0165 - 0x6E0138)]
29CD5A:  LDRB.W          R2, [SP,#0x188+var_A8+2]
29CD5E:  STRB.W          R2, [R1,#(byte_6E0166 - 0x6E0138)]
29CD62:  LDRB.W          R2, [SP,#0x188+var_A8+3]
29CD66:  STRB.W          R2, [R1,#(byte_6E0167 - 0x6E0138)]
29CD6A:  STRD.W          R0, R0, [R1,#(dword_6E0178 - 0x6E0138)]
29CD6E:  LDRB.W          R2, [SP,#0x188+var_A4]
29CD72:  STR.W           R9, [R1,#(dword_6E0184 - 0x6E0138)]
29CD76:  STR             R0, [R1,#(dword_6E0188 - 0x6E0138)]
29CD78:  VSTR            S2, [R1,#0x38]
29CD7C:  VSTR            S6, [R1,#0x3C]
29CD80:  STRB.W          R2, [R1,#(byte_6E0180 - 0x6E0138)]
29CD84:  LDRB.W          R2, [SP,#0x188+var_A4+1]
29CD88:  STRB.W          R2, [R1,#(byte_6E0181 - 0x6E0138)]
29CD8C:  LDRB.W          R2, [SP,#0x188+var_A4+2]
29CD90:  STRB.W          R2, [R1,#(byte_6E0182 - 0x6E0138)]
29CD94:  LDRB.W          R2, [SP,#0x188+var_A4+3]
29CD98:  STRB.W          R2, [R1,#(byte_6E0183 - 0x6E0138)]
29CD9C:  MOVS            R2, #4
29CD9E:  LDR.W           R9, [SP,#0x188+var_134]
29CDA2:  STRD.W          R0, R0, [R1,#(dword_6E0194 - 0x6E0138)]
29CDA6:  STRD.W          R0, R0, [R1,#(dword_6E01A0 - 0x6E0138)]
29CDAA:  LDRB.W          R0, [SP,#0x188+var_A0]
29CDAE:  VSTR            S0, [R1,#0x54]
29CDB2:  VSTR            S6, [R1,#0x58]
29CDB6:  STRB.W          R0, [R1,#(byte_6E019C - 0x6E0138)]
29CDBA:  LDRB.W          R0, [SP,#0x188+var_A0+1]
29CDBE:  STRB.W          R0, [R1,#(byte_6E019D - 0x6E0138)]
29CDC2:  LDRB.W          R0, [SP,#0x188+var_A0+2]
29CDC6:  STRB.W          R0, [R1,#(byte_6E019E - 0x6E0138)]
29CDCA:  LDRB.W          R0, [SP,#0x188+var_A0+3]
29CDCE:  STRB.W          R0, [R1,#(byte_6E019F - 0x6E0138)]
29CDD2:  MOVS            R0, #4
29CDD4:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
29CDD8:  MOVS            R0, #1; bool
29CDDA:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29CDDE:  CMP             R0, #1
29CDE0:  BNE             loc_29CEA0
29CDE2:  LDR             R0, =(gMobileMenu_ptr - 0x29CDE8)
29CDE4:  ADD             R0, PC; gMobileMenu_ptr
29CDE6:  LDR             R0, [R0]; gMobileMenu
29CDE8:  LDRB.W          R0, [R0,#(word_6E00C0+1 - 0x6E006C)]; this
29CDEC:  CMP             R0, #0
29CDEE:  BNE             loc_29CEA0
29CDF0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
29CDF4:  CBZ             R0, loc_29CE30
29CDF6:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
29CDFA:  CMP             R0, #2
29CDFC:  BNE             loc_29CEC8
29CDFE:  MOVS            R0, #0xFF
29CE00:  MOVS            R1, #0xE0; unsigned __int8
29CE02:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29CE04:  ADD             R0, SP, #0x188+var_120; this
29CE06:  MOVS            R2, #0xE0; unsigned __int8
29CE08:  MOVS            R3, #0xE0; unsigned __int8
29CE0A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29CE0E:  LDR             R0, =(RsGlobal_ptr - 0x29CE16)
29CE10:  LDR             R1, =(TheText_ptr - 0x29CE18)
29CE12:  ADD             R0, PC; RsGlobal_ptr
29CE14:  ADD             R1, PC; TheText_ptr
29CE16:  LDR             R0, [R0]; RsGlobal
29CE18:  LDR             R4, [R0,#(dword_9FC904 - 0x9FC8FC)]
29CE1A:  LDR             R0, [R1]; TheText ; this
29CE1C:  ADR             R1, aMobVw2; "MOB_VW2"
29CE1E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
29CE22:  VMOV            S0, R4
29CE26:  MOV             R2, R0
29CE28:  VCVT.F32.S32    S0, S0
29CE2C:  LDR             R0, [SP,#0x188+var_120]
29CE2E:  B               loc_29CE60
29CE30:  MOVS            R0, #0xFF
29CE32:  MOVS            R1, #0xE0; unsigned __int8
29CE34:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29CE36:  ADD             R0, SP, #0x188+var_11C; this
29CE38:  MOVS            R2, #0xE0; unsigned __int8
29CE3A:  MOVS            R3, #0xE0; unsigned __int8
29CE3C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29CE40:  LDR             R0, =(RsGlobal_ptr - 0x29CE48)
29CE42:  LDR             R1, =(TheText_ptr - 0x29CE4A)
29CE44:  ADD             R0, PC; RsGlobal_ptr
29CE46:  ADD             R1, PC; TheText_ptr
29CE48:  LDR             R0, [R0]; RsGlobal
29CE4A:  LDR             R4, [R0,#(dword_9FC904 - 0x9FC8FC)]
29CE4C:  LDR             R0, [R1]; TheText ; this
29CE4E:  ADR             R1, aMobVwm; "MOB_VWM"
29CE50:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
29CE54:  VMOV            S0, R4
29CE58:  MOV             R2, R0
29CE5A:  VCVT.F32.S32    S0, S0
29CE5E:  LDR             R0, [SP,#0x188+var_11C]
29CE60:  VMOV.F32        S2, #15.0
29CE64:  MOVS            R1, #0
29CE66:  VMUL.F32        S0, S0, S16
29CE6A:  MOVS            R3, #0
29CE6C:  MOVT            R1, #0x41A8
29CE70:  MOVT            R3, #0x4420
29CE74:  STR             R0, [SP,#0x188+var_108]
29CE76:  MOVS            R0, #0
29CE78:  STRD.W          R3, R1, [SP,#0x188+var_174]
29CE7C:  ADD             R3, SP, #0x188+var_108
29CE7E:  MOVS            R1, #1
29CE80:  MOVS            R6, #2
29CE82:  STRD.W          R0, R0, [SP,#0x188+var_16C]
29CE86:  VMAX.F32        D0, D0, D1
29CE8A:  STRD.W          R6, R3, [SP,#0x188+var_188]
29CE8E:  STRD.W          R1, R0, [SP,#0x188+var_180]
29CE92:  ADD             R0, SP, #0x188+var_E8
29CE94:  MOV             R1, R9
29CE96:  MOVS            R3, #1
29CE98:  VSTR            S0, [SP,#0x188+var_178]
29CE9C:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
29CEA0:  STR.W           R8, [R9,#8]
29CEA4:  LDRB.W          R0, [R9,#0xC]
29CEA8:  CBZ             R0, loc_29CEB6
29CEAA:  LDR.W           R0, [R9]
29CEAE:  MOVS            R1, #1
29CEB0:  LDR             R2, [R0,#0x28]
29CEB2:  MOV             R0, R9
29CEB4:  BLX             R2
29CEB6:  SUB.W           R4, R7, #-var_60
29CEBA:  MOV             SP, R4
29CEBC:  VPOP            {D8-D15}
29CEC0:  ADD             SP, SP, #4
29CEC2:  POP.W           {R8-R11}
29CEC6:  POP             {R4-R7,PC}
29CEC8:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
29CECC:  CMP             R0, #1
29CECE:  BNE             loc_29CEA0
29CED0:  LDR             R0, =(RsGlobal_ptr - 0x29CEDA)
29CED2:  VLDR            S28, =1.35
29CED6:  ADD             R0, PC; RsGlobal_ptr
29CED8:  LDR             R4, [R0]; RsGlobal
29CEDA:  VLDR            S2, [R4,#8]
29CEDE:  VLDR            S0, [R4,#4]
29CEE2:  VCVT.F32.S32    S24, S2
29CEE6:  VCVT.F32.S32    S26, S0
29CEEA:  VMUL.F32        S2, S24, S28
29CEEE:  VDIV.F32        S2, S2, S18
29CEF2:  VMOV            R0, S2; this
29CEF6:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
29CEFA:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
29CEFC:  VMOV            S0, R0
29CF00:  MOVS            R0, #0; this
29CF02:  VCVT.F32.S32    S0, S0
29CF06:  VMUL.F32        S2, S0, S16
29CF0A:  VSUB.F32        S22, S0, S2
29CF0E:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
29CF12:  VMOV            S0, R0
29CF16:  MOV             R10, #0x43D78000
29CF1E:  VSUB.F32        S2, S22, S0
29CF22:  VLDR            S0, [R4,#8]
29CF26:  VLDR            S22, =438.0
29CF2A:  VCVT.F32.S32    S0, S0
29CF2E:  VMUL.F32        S2, S2, S18
29CF32:  VDIV.F32        S2, S2, S0
29CF36:  VCMPE.F32       S2, S22
29CF3A:  VMRS            APSR_nzcv, FPSCR
29CF3E:  BGE             loc_29CF8A
29CF40:  VMUL.F32        S0, S0, S28
29CF44:  VDIV.F32        S0, S0, S18
29CF48:  VMOV            R0, S0; this
29CF4C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
29CF50:  LDR             R0, =(RsGlobal_ptr - 0x29CF5A)
29CF52:  VLDR            S2, =-0.0
29CF56:  ADD             R0, PC; RsGlobal_ptr
29CF58:  LDR             R4, [R0]; RsGlobal
29CF5A:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
29CF5C:  VMOV            S0, R0
29CF60:  MOVS            R0, #0; this
29CF62:  VCVT.F32.S32    S0, S0
29CF66:  VMUL.F32        S2, S0, S2
29CF6A:  VADD.F32        S22, S0, S2
29CF6E:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
29CF72:  VMOV            S0, R0
29CF76:  VLDR            S2, [R4,#8]
29CF7A:  VSUB.F32        S0, S22, S0
29CF7E:  VCVT.F32.S32    S2, S2
29CF82:  VMUL.F32        S0, S0, S18
29CF86:  VDIV.F32        S22, S0, S2
29CF8A:  MOVS            R0, #0x42 ; 'B'
29CF8C:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
29CF90:  CMP             R0, #1
29CF92:  BNE.W           loc_29D094
29CF96:  VMOV.F32        S0, #20.0
29CF9A:  ADD             R0, SP, #0x188+var_124; this
29CF9C:  VMUL.F32        S2, S26, S16
29CFA0:  MOVS            R4, #0xFF
29CFA2:  MOVS            R1, #0xF0; unsigned __int8
29CFA4:  MOVS            R2, #0xF0; unsigned __int8
29CFA6:  MOVS            R3, #0xF0; unsigned __int8
29CFA8:  STR             R4, [SP,#0x188+var_188]; unsigned __int8
29CFAA:  VMAX.F32        D0, D1, D0
29CFAE:  VLDR            S2, =-240.0
29CFB2:  VMUL.F32        S2, S26, S2
29CFB6:  VMUL.F32        S0, S0, S18
29CFBA:  VADD.F32        S0, S0, S2
29CFBE:  VDIV.F32        S0, S0, S24
29CFC2:  VADD.F32        S16, S0, S20
29CFC6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29CFCA:  LDR             R0, =(TheText_ptr - 0x29CFD2)
29CFCC:  ADR             R1, aFehMap; "FEH_MAP"
29CFCE:  ADD             R0, PC; TheText_ptr
29CFD0:  LDR             R0, [R0]; TheText ; this
29CFD2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
29CFD6:  MOV             R2, R0
29CFD8:  LDR             R0, [SP,#0x188+var_124]
29CFDA:  MOVS            R1, #0
29CFDC:  STR             R0, [SP,#0x188+var_108]
29CFDE:  MOVS            R0, #0
29CFE0:  MOVT            R1, #0x42F0
29CFE4:  MOVT            R0, #0x41D8
29CFE8:  MOVS            R6, #0
29CFEA:  STRD.W          R1, R0, [SP,#0x188+var_174]; int
29CFEE:  ADD             R1, SP, #0x188+var_108
29CFF0:  MOVS            R0, #1
29CFF2:  STRD.W          R6, R6, [SP,#0x188+var_16C]
29CFF6:  VSTR            S16, [SP,#0x188+var_17C]
29CFFA:  MOVS            R3, #0
29CFFC:  VSTR            S22, [SP,#0x188+var_178]
29D000:  STRD.W          R6, R1, [SP,#0x188+var_188]
29D004:  MOV             R1, R9
29D006:  STR             R0, [SP,#0x188+var_180]
29D008:  ADD             R0, SP, #0x188+var_E8
29D00A:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
29D00E:  MOV.W           R0, #0x3F800000
29D012:  ADD             R2, SP, #0x188+var_108
29D014:  ADD             R3, SP, #0x188+var_C8
29D016:  STRD.W          R6, R6, [SP,#0x188+var_108]
29D01A:  STRD.W          R0, R0, [SP,#0x188+var_C8]
29D01E:  MOVS            R0, #0
29D020:  MOVS            R1, #0x42 ; 'B'
29D022:  BLX             j__ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_; CHID::GetHelpSprite(char const*,HIDMapping,CVector2D *,CVector2D *)
29D026:  CMP             R0, #0
29D028:  BEQ.W           loc_29CEA0
29D02C:  ADD.W           R9, SP, #0x188+var_128
29D030:  LDR             R5, [R0]
29D032:  MOVS            R1, #0xFF; unsigned __int8
29D034:  MOVS            R2, #0xFF; unsigned __int8
29D036:  MOV             R0, R9; this
29D038:  MOVS            R3, #0xFF; unsigned __int8
29D03A:  STR             R4, [SP,#0x188+var_188]; float
29D03C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29D040:  VMOV.F32        S0, #5.0
29D044:  VLDR            S2, [SP,#0x188+var_E4]
29D048:  LDRD.W          R0, R1, [SP,#0x188+var_108]
29D04C:  ADD.W           R4, R10, #0x100000
29D050:  LDRD.W          R2, R6, [SP,#0x188+var_C8]
29D054:  STRD.W          R4, R0, [SP,#0x188+var_180]; float
29D058:  ADD             R0, SP, #0x188+var_178
29D05A:  STM             R0!, {R1,R2,R6}
29D05C:  MOV             R2, R9; int
29D05E:  MOV             R1, R5; int
29D060:  VADD.F32        S4, S2, S0
29D064:  LDR             R0, [SP,#0x188+var_134]; int
29D066:  VADD.F32        S0, S22, S0
29D06A:  LDR.W           R9, [SP,#0x188+var_134]
29D06E:  VMOV            R3, S4; int
29D072:  VMOV.F32        S4, #25.0
29D076:  VSTR            S0, [SP,#0x188+var_188]
29D07A:  VADD.F32        S2, S2, S4
29D07E:  VSTR            S2, [SP,#0x188+var_184]
29D082:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
29D086:  B               loc_29CEA0
29D088:  DCFS -320.0
29D08C:  DCFS 50.0
29D090:  DCD unk_60CBF8 - 0x29C0F2
29D094:  MOVS            R0, #0xFF
29D096:  MOVS            R1, #0xE0; unsigned __int8
29D098:  STR             R0, [SP,#0x188+var_188]; unsigned __int8
29D09A:  ADD             R0, SP, #0x188+var_12C; this
29D09C:  MOVS            R2, #0xE0; unsigned __int8
29D09E:  MOVS            R3, #0xE0; unsigned __int8
29D0A0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29D0A4:  LDR             R0, =(RsGlobal_ptr - 0x29D0AC)
29D0A6:  LDR             R1, =(TheText_ptr - 0x29D0AE)
29D0A8:  ADD             R0, PC; RsGlobal_ptr
29D0AA:  ADD             R1, PC; TheText_ptr
29D0AC:  LDR             R0, [R0]; RsGlobal
29D0AE:  LDR             R4, [R0,#(dword_9FC904 - 0x9FC8FC)]
29D0B0:  LDR             R0, [R1]; TheText ; this
29D0B2:  ADR             R1, aMobVwm; "MOB_VWM"
29D0B4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
29D0B8:  VMOV            S0, R4
29D0BC:  MOV             R2, R0
29D0BE:  VCVT.F32.S32    S0, S0
29D0C2:  LDR             R0, [SP,#0x188+var_12C]
29D0C4:  B               loc_29CE60
