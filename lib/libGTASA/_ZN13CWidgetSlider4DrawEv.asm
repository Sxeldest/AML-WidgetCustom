; =========================================================
; Game Engine Function: _ZN13CWidgetSlider4DrawEv
; Address            : 0x2C6FD0 - 0x2C753E
; =========================================================

2C6FD0:  PUSH            {R4-R7,LR}
2C6FD2:  ADD             R7, SP, #0xC
2C6FD4:  PUSH.W          {R8-R10}
2C6FD8:  VPUSH           {D8-D12}
2C6FDC:  SUB.W           SP, SP, #0x338
2C6FE0:  MOV             R4, SP
2C6FE2:  BFC.W           R4, #0, #4
2C6FE6:  MOV             SP, R4
2C6FE8:  MOV             R4, R0
2C6FEA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2C6FF2)
2C6FEE:  ADD             R0, PC; __stack_chk_guard_ptr
2C6FF0:  LDR             R0, [R0]; __stack_chk_guard
2C6FF2:  LDR             R0, [R0]
2C6FF4:  STR             R0, [SP,#0x378+var_44]
2C6FF6:  LDRB.W          R0, [R4,#0x4C]; this
2C6FFA:  CMP             R0, #0
2C6FFC:  BEQ.W           loc_2C7408
2C7000:  BLX             j__ZN7CWidget14GetScreenWidthEv; CWidget::GetScreenWidth(void)
2C7004:  VLDR            S2, [R4,#0x24]
2C7008:  VMOV            S10, R0
2C700C:  VLDR            S6, [R4,#0x2C]
2C7010:  VMOV.F32        S14, #5.5
2C7014:  VLDR            S0, [R4,#0x20]
2C7018:  MOV             R6, R4
2C701A:  VSUB.F32        S8, S2, S6
2C701E:  VLDR            S4, [R4,#0x28]
2C7022:  VCVT.F32.U32    S10, S10
2C7026:  VLDR            S12, =0.0125
2C702A:  VLDR            S16, =0.2
2C702E:  ADD.W           R8, R4, #0x238
2C7032:  VABS.F32        S8, S8
2C7036:  VMUL.F32        S10, S10, S12
2C703A:  VMUL.F32        S8, S8, S16
2C703E:  VMAX.F32        D9, D5, D7
2C7042:  VADD.F32        S0, S0, S18
2C7046:  VSUB.F32        S4, S4, S18
2C704A:  VSUB.F32        S2, S2, S8
2C704E:  VSUB.F32        S6, S6, S8
2C7052:  VSTR            S0, [R4,#0x238]
2C7056:  VSTR            S2, [R4,#0x23C]
2C705A:  VSTR            S4, [R4,#0x240]
2C705E:  VSTR            S6, [R4,#0x244]
2C7062:  LDR.W           R0, [R6,#8]!
2C7066:  CMP             R0, #0
2C7068:  BEQ             loc_2C70E8
2C706A:  ADD             R5, SP, #0x378+var_144
2C706C:  LDRB.W          R0, [R4,#0x4C]
2C7070:  STR             R0, [SP,#0x378+var_378]; unsigned __int8
2C7072:  MOVS            R1, #0; unsigned __int8
2C7074:  MOV             R0, R5; this
2C7076:  MOVS            R2, #0; unsigned __int8
2C7078:  MOVS            R3, #0; unsigned __int8
2C707A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C707E:  ADR.W           R0, dword_2C7540
2C7082:  VLD1.32         {D18-D19}, [R8]
2C7086:  ADD             R1, SP, #0x378+var_368
2C7088:  MOV             R2, R5
2C708A:  VLD1.64         {D16-D17}, [R0@128]
2C708E:  MOV             R0, R6
2C7090:  VADD.F32        Q8, Q9, Q8
2C7094:  VST1.64         {D16-D17}, [R1@128]
2C7098:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C709C:  LDRB.W          R0, [R4,#0x253]
2C70A0:  ADD             R5, SP, #0x378+var_368
2C70A2:  VLDR            S2, =255.0
2C70A6:  VMOV            S0, R0
2C70AA:  VCVT.F32.U32    S0, S0
2C70AE:  LDRB.W          R0, [R4,#0x4C]
2C70B2:  LDRB.W          R1, [R4,#0x250]; unsigned __int8
2C70B6:  LDRB.W          R2, [R4,#0x251]; unsigned __int8
2C70BA:  LDRB.W          R3, [R4,#0x252]; unsigned __int8
2C70BE:  VDIV.F32        S0, S0, S2
2C70C2:  VMOV            S2, R0
2C70C6:  VCVT.F32.U32    S2, S2
2C70CA:  VMUL.F32        S0, S0, S2
2C70CE:  VCVT.U32.F32    S0, S0
2C70D2:  VMOV            R0, S0
2C70D6:  STR             R0, [SP,#0x378+var_378]; unsigned __int8
2C70D8:  MOV             R0, R5; this
2C70DA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C70DE:  MOV             R0, R6
2C70E0:  MOV             R1, R8
2C70E2:  MOV             R2, R5
2C70E4:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C70E8:  LDRB.W          R0, [R4,#0x22C]
2C70EC:  LSLS            R0, R0, #0x1F
2C70EE:  BEQ             loc_2C718C
2C70F0:  LDR.W           R0, [R4,#0x90]
2C70F4:  SUBS            R0, #1
2C70F6:  VMOV            S0, R0
2C70FA:  VCVT.F32.S32    S2, S0
2C70FE:  BLT             loc_2C718C
2C7100:  VLDR            S0, [R4,#0x238]
2C7104:  VMOV.F32        S22, #-2.5
2C7108:  VLDR            S4, [R4,#0x240]
2C710C:  VMOV.F32        S24, #2.5
2C7110:  ADD.W           R10, R4, #0x49 ; 'I'
2C7114:  ADD.W           R5, R4, #0x234
2C7118:  VSUB.F32        S4, S4, S0
2C711C:  ADD.W           R9, SP, #0x378+var_368
2C7120:  MOVS            R6, #0
2C7122:  VABS.F32        S4, S4
2C7126:  VDIV.F32        S20, S4, S2
2C712A:  B               loc_2C7130
2C712C:  VLDR            S0, [R8]
2C7130:  VLDR            S2, [R4,#0x24]
2C7134:  VMOV            S8, R6
2C7138:  VLDR            S4, [R4,#0x2C]
2C713C:  MOV             R0, R5
2C713E:  VLDR            S6, [R4,#0x244]
2C7142:  VCVT.F32.S32    S8, S8
2C7146:  VSUB.F32        S2, S2, S4
2C714A:  MOV             R1, R9
2C714C:  MOV             R2, R10
2C714E:  VMUL.F32        S4, S20, S8
2C7152:  VABS.F32        S2, S2
2C7156:  VADD.F32        S0, S4, S0
2C715A:  VMUL.F32        S2, S2, S16
2C715E:  VADD.F32        S4, S0, S22
2C7162:  VSUB.F32        S8, S6, S2
2C7166:  VADD.F32        S0, S0, S24
2C716A:  VADD.F32        S2, S6, S2
2C716E:  VSTR            S4, [SP,#0x378+var_368]
2C7172:  VSTR            S0, [SP,#0x378+var_360]
2C7176:  VSTR            S8, [SP,#0x378+var_35C]
2C717A:  VSTR            S2, [SP,#0x378+var_364]
2C717E:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C7182:  LDR.W           R0, [R4,#0x90]
2C7186:  ADDS            R6, #1
2C7188:  CMP             R6, R0
2C718A:  BLT             loc_2C712C
2C718C:  VLDR            S2, [R4,#0x238]
2C7190:  VMOV.F32        S16, #0.5
2C7194:  VLDR            S6, [R4,#0x240]
2C7198:  ADD             R5, SP, #0x378+var_15C
2C719A:  VLDR            S4, [R4,#0x23C]
2C719E:  MOVS            R1, #0; unsigned __int8
2C71A0:  VLDR            S8, [R4,#0x244]
2C71A4:  VSUB.F32        S6, S6, S2
2C71A8:  VLDR            S0, [R4,#0x224]
2C71AC:  MOVS            R2, #0; unsigned __int8
2C71AE:  VSUB.F32        S4, S4, S8
2C71B2:  MOVS            R3, #0; unsigned __int8
2C71B4:  VABS.F32        S6, S6
2C71B8:  VABS.F32        S4, S4
2C71BC:  VMUL.F32        S0, S0, S6
2C71C0:  VMUL.F32        S4, S4, S16
2C71C4:  VADD.F32        S0, S2, S0
2C71C8:  VADD.F32        S2, S18, S18
2C71CC:  VADD.F32        S4, S8, S4
2C71D0:  VSUB.F32        S6, S0, S18
2C71D4:  VADD.F32        S0, S18, S0
2C71D8:  VADD.F32        S2, S2, S4
2C71DC:  VSTR            S4, [SP,#0x378+var_14C]
2C71E0:  VSTR            S6, [SP,#0x378+var_158]
2C71E4:  VSTR            S0, [SP,#0x378+var_150]
2C71E8:  VSTR            S2, [SP,#0x378+var_154]
2C71EC:  LDRB.W          R0, [R4,#0x4C]
2C71F0:  STR             R0, [SP,#0x378+var_378]; unsigned __int8
2C71F2:  MOV             R0, R5; this
2C71F4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C71F8:  ADR             R0, dword_2C7540
2C71FA:  ADD.W           R8, SP, #0x378+var_158
2C71FE:  VLD1.64         {D16-D17}, [R0@128]
2C7202:  ADD.W           R6, R4, #0x230
2C7206:  ADD             R1, SP, #0x378+var_368
2C7208:  MOV             R2, R5
2C720A:  VLD1.64         {D18-D19}, [R8@128]
2C720E:  MOV             R0, R6
2C7210:  VADD.F32        Q8, Q9, Q8
2C7214:  VST1.64         {D16-D17}, [R1@128]
2C7218:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C721C:  LDRB.W          R0, [R4,#0x257]
2C7220:  ADD             R5, SP, #0x378+var_160
2C7222:  VLDR            S2, =255.0
2C7226:  VMOV            S0, R0
2C722A:  VCVT.F32.U32    S0, S0
2C722E:  LDRB.W          R0, [R4,#0x4C]
2C7232:  VDIV.F32        S0, S0, S2
2C7236:  VMOV            S2, R0
2C723A:  VCVT.F32.U32    S2, S2
2C723E:  LDRB.W          R3, [R4,#0x256]; unsigned __int8
2C7242:  LDRB.W          R2, [R4,#0x255]; unsigned __int8
2C7246:  LDRB.W          R1, [R4,#0x254]; unsigned __int8
2C724A:  VMUL.F32        S0, S0, S2
2C724E:  VCVT.U32.F32    S0, S0
2C7252:  VMOV            R0, S0
2C7256:  STR             R0, [SP,#0x378+var_378]; unsigned __int8
2C7258:  MOV             R0, R5; this
2C725A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C725E:  MOV             R0, R6
2C7260:  MOV             R1, R8
2C7262:  MOV             R2, R5
2C7264:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C7268:  LDRB.W          R0, [R4,#0x22C]
2C726C:  LSLS            R0, R0, #0x1A
2C726E:  BMI.W           loc_2C7408
2C7272:  MOVS            R0, #(stderr+1); this
2C7274:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2C7278:  MOVS            R0, #0; this
2C727A:  MOVS            R1, #0; unsigned __int8
2C727C:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2C7280:  LDR             R0, =(RsGlobal_ptr - 0x2C728A)
2C7282:  VLDR            S2, =448.0
2C7286:  ADD             R0, PC; RsGlobal_ptr
2C7288:  LDR             R5, [R0]; RsGlobal
2C728A:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
2C728C:  VMOV            S0, R0
2C7290:  VCVT.F32.S32    S0, S0
2C7294:  VDIV.F32        S0, S0, S2
2C7298:  VMOV            R0, S0; this
2C729C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2C72A0:  MOVS            R0, #0; this
2C72A2:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2C72A6:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
2C72A8:  VLDR            S2, =640.0
2C72AC:  VMOV            S0, R0
2C72B0:  VCVT.F32.S32    S0, S0
2C72B4:  VDIV.F32        S0, S0, S2
2C72B8:  VMUL.F32        S0, S0, S2
2C72BC:  VMOV            R0, S0; this
2C72C0:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
2C72C4:  MOVS            R0, #(stderr+1); this
2C72C6:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2C72CA:  LDRB.W          R0, [R4,#0x4C]
2C72CE:  MOVS            R1, #0xFF; unsigned __int8
2C72D0:  STR             R0, [SP,#0x378+var_378]; unsigned __int8
2C72D2:  ADD             R0, SP, #0x378+var_164; this
2C72D4:  MOVS            R2, #0xFF; unsigned __int8
2C72D6:  MOVS            R3, #0xFF; unsigned __int8
2C72D8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C72DC:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2C72E0:  LDRB.W          R0, [R4,#0x4C]
2C72E4:  MOVS            R1, #0; unsigned __int8
2C72E6:  STR             R0, [SP,#0x378+var_378]; unsigned __int8
2C72E8:  ADD             R0, SP, #0x378+var_168; this
2C72EA:  MOVS            R2, #0; unsigned __int8
2C72EC:  MOVS            R3, #0; unsigned __int8
2C72EE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C72F2:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2C72F6:  MOVS            R0, #0; this
2C72F8:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2C72FC:  LDR.W           R0, [R4,#0x22C]
2C7300:  AND.W           R1, R0, #0x10
2C7304:  TST.W           R0, #2
2C7308:  BNE             loc_2C7326
2C730A:  CBZ             R1, loc_2C7358
2C730C:  VMOV.F32        S0, #1.0
2C7310:  VLDR            S2, [R4,#0x224]
2C7314:  VCMP.F32        S2, S0
2C7318:  VMRS            APSR_nzcv, FPSCR
2C731C:  BNE             loc_2C733A
2C731E:  LDR.W           R0, [R4,#0x90]
2C7322:  SUBS            R0, #1
2C7324:  B               loc_2C733E
2C7326:  CBZ             R1, loc_2C737C
2C7328:  VMOV.F32        S18, #1.0
2C732C:  VLDR            S0, [R4,#0x224]
2C7330:  VCMP.F32        S0, S18
2C7334:  VMRS            APSR_nzcv, FPSCR
2C7338:  BNE             loc_2C742C
2C733A:  LDR.W           R0, [R4,#0x228]
2C733E:  ADD.W           R0, R4, R0,LSL#2
2C7342:  VLDR            S0, [R0,#0x94]
2C7346:  VCVT.S32.F32    S0, S0
2C734A:  ADD             R0, SP, #0x378+var_144
2C734C:  ADR             R1, aD_2; "%d%%"
2C734E:  VMOV            R2, S0
2C7352:  BL              sub_5E6BC0
2C7356:  B               loc_2C73E2
2C7358:  LSLS            R1, R0, #0x1D
2C735A:  BMI             loc_2C738C
2C735C:  LSLS            R0, R0, #0x1C
2C735E:  BPL             loc_2C7384
2C7360:  VMOV.F32        S0, #1.0
2C7364:  VLDR            S2, [R4,#0x224]
2C7368:  VCMP.F32        S2, S0
2C736C:  VMRS            APSR_nzcv, FPSCR
2C7370:  BNE.W           loc_2C748C
2C7374:  LDR.W           R0, [R4,#0x90]
2C7378:  SUBS            R0, #1
2C737A:  B               loc_2C7490
2C737C:  LSLS            R1, R0, #0x1D
2C737E:  BMI             loc_2C73B4
2C7380:  LSLS            R0, R0, #0x1C
2C7382:  BMI             loc_2C747A
2C7384:  MOVS            R0, #0
2C7386:  STRB.W          R0, [SP,#0x378+var_144]
2C738A:  B               loc_2C73E2
2C738C:  VMOV.F32        S0, #1.0
2C7390:  VLDR            S2, [R4,#0x224]
2C7394:  VCMP.F32        S2, S0
2C7398:  VMRS            APSR_nzcv, FPSCR
2C739C:  BNE             loc_2C73C6
2C739E:  LDR.W           R0, [R4,#0x90]
2C73A2:  SUBS            R0, #1
2C73A4:  B               loc_2C73CA
2C73A6:  ALIGN 4
2C73A8:  DCFS 0.0125
2C73AC:  DCFS 0.2
2C73B0:  DCFS 255.0
2C73B4:  VMOV.F32        S18, #1.0
2C73B8:  VLDR            S0, [R4,#0x224]
2C73BC:  VCMP.F32        S0, S18
2C73C0:  VMRS            APSR_nzcv, FPSCR
2C73C4:  BNE             loc_2C749A
2C73C6:  LDR.W           R0, [R4,#0x228]
2C73CA:  ADD.W           R0, R4, R0,LSL#2
2C73CE:  VLDR            S0, [R0,#0x94]
2C73D2:  VCVT.F64.F32    D16, S0
2C73D6:  ADD             R0, SP, #0x378+var_144
2C73D8:  ADR             R1, a2f; "%.2f"
2C73DA:  VMOV            R2, R3, D16
2C73DE:  BL              sub_5E6BC0
2C73E2:  ADD             R4, SP, #0x378+var_368
2C73E4:  ADD             R0, SP, #0x378+var_144; char *
2C73E6:  MOV             R1, R4; unsigned __int16 *
2C73E8:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2C73EC:  VLDR            S0, [SP,#0x378+var_158]
2C73F0:  MOV             R2, R4; CFont *
2C73F2:  VLDR            S2, [SP,#0x378+var_150]
2C73F6:  LDR             R1, [SP,#0x378+var_154]; float
2C73F8:  VADD.F32        S0, S0, S2
2C73FC:  VMUL.F32        S0, S0, S16
2C7400:  VMOV            R0, S0; this
2C7404:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2C7408:  LDR             R0, =(__stack_chk_guard_ptr - 0x2C7410)
2C740A:  LDR             R1, [SP,#0x378+var_44]
2C740C:  ADD             R0, PC; __stack_chk_guard_ptr
2C740E:  LDR             R0, [R0]; __stack_chk_guard
2C7410:  LDR             R0, [R0]
2C7412:  SUBS            R0, R0, R1
2C7414:  ITTTT EQ
2C7416:  SUBEQ.W         R4, R7, #-var_40
2C741A:  MOVEQ           SP, R4
2C741C:  VPOPEQ          {D8-D12}
2C7420:  POPEQ.W         {R8-R10}
2C7424:  IT EQ
2C7426:  POPEQ           {R4-R7,PC}
2C7428:  BLX             __stack_chk_fail
2C742C:  LDR.W           R0, [R4,#0x90]
2C7430:  VMOV.F32        S2, #-1.0
2C7434:  VMOV            S4, R0
2C7438:  VMOV            R0, S0; x
2C743C:  VCVT.F32.S32    S4, S4
2C7440:  VADD.F32        S2, S4, S2
2C7444:  VDIV.F32        S20, S18, S2
2C7448:  VMOV            R1, S20; y
2C744C:  BLX             fmodf
2C7450:  VDIV.F32        S0, S18, S20
2C7454:  LDR.W           R1, [R4,#0x228]
2C7458:  VMOV            S2, R0
2C745C:  ADD.W           R0, R4, R1,LSL#2
2C7460:  VLDR            S4, [R0,#0x94]
2C7464:  VMUL.F32        S0, S2, S0
2C7468:  VLDR            S6, [R0,#0x98]
2C746C:  VSUB.F32        S2, S6, S4
2C7470:  VMUL.F32        S0, S2, S0
2C7474:  VADD.F32        S0, S4, S0
2C7478:  B               loc_2C7346
2C747A:  VMOV.F32        S18, #1.0
2C747E:  VLDR            S0, [R4,#0x224]
2C7482:  VCMP.F32        S0, S18
2C7486:  VMRS            APSR_nzcv, FPSCR
2C748A:  BNE             loc_2C74E8
2C748C:  LDR.W           R0, [R4,#0x228]
2C7490:  ADD.W           R0, R4, R0,LSL#2
2C7494:  VLDR            S0, [R0,#0x94]
2C7498:  B               loc_2C7534
2C749A:  LDR.W           R0, [R4,#0x90]
2C749E:  VMOV.F32        S2, #-1.0
2C74A2:  VMOV            S4, R0
2C74A6:  VMOV            R0, S0; x
2C74AA:  VCVT.F32.S32    S4, S4
2C74AE:  VADD.F32        S2, S4, S2
2C74B2:  VDIV.F32        S20, S18, S2
2C74B6:  VMOV            R1, S20; y
2C74BA:  BLX             fmodf
2C74BE:  VDIV.F32        S0, S18, S20
2C74C2:  LDR.W           R1, [R4,#0x228]
2C74C6:  VMOV            S2, R0
2C74CA:  ADD.W           R0, R4, R1,LSL#2
2C74CE:  VLDR            S4, [R0,#0x94]
2C74D2:  VMUL.F32        S0, S2, S0
2C74D6:  VLDR            S6, [R0,#0x98]
2C74DA:  VSUB.F32        S2, S6, S4
2C74DE:  VMUL.F32        S0, S2, S0
2C74E2:  VADD.F32        S0, S4, S0
2C74E6:  B               loc_2C73D2
2C74E8:  LDR.W           R0, [R4,#0x90]
2C74EC:  VMOV.F32        S2, #-1.0
2C74F0:  VMOV            S4, R0
2C74F4:  VMOV            R0, S0; x
2C74F8:  VCVT.F32.S32    S4, S4
2C74FC:  VADD.F32        S2, S4, S2
2C7500:  VDIV.F32        S20, S18, S2
2C7504:  VMOV            R1, S20; y
2C7508:  BLX             fmodf
2C750C:  VDIV.F32        S0, S18, S20
2C7510:  LDR.W           R1, [R4,#0x228]
2C7514:  VMOV            S2, R0
2C7518:  ADD.W           R0, R4, R1,LSL#2
2C751C:  VLDR            S4, [R0,#0x94]
2C7520:  VMUL.F32        S0, S2, S0
2C7524:  VLDR            S6, [R0,#0x98]
2C7528:  VSUB.F32        S2, S6, S4
2C752C:  VMUL.F32        S0, S2, S0
2C7530:  VADD.F32        S0, S4, S0
2C7534:  VCVT.S32.F32    S0, S0
2C7538:  ADD             R0, SP, #0x378+var_144
2C753A:  ADR             R1, aD_3; "%d"
2C753C:  B               loc_2C734E
