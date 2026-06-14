; =========================================================
; Game Engine Function: _ZN5CFont16RenderFontBufferEv
; Address            : 0x5A90B0 - 0x5A960C
; =========================================================

5A90B0:  LDR.W           R0, =(dword_A3EFC0 - 0x5A90BC)
5A90B4:  LDR.W           R1, =(unk_A3EBC0 - 0x5A90BE)
5A90B8:  ADD             R0, PC; dword_A3EFC0
5A90BA:  ADD             R1, PC; unk_A3EBC0
5A90BC:  LDR             R0, [R0]
5A90BE:  CMP             R0, R1
5A90C0:  IT EQ
5A90C2:  BXEQ            LR
5A90C4:  PUSH            {R4-R7,LR}
5A90C6:  ADD             R7, SP, #0x14+var_8
5A90C8:  PUSH.W          {R8-R11}
5A90CC:  SUB             SP, SP, #4
5A90CE:  VPUSH           {D8-D11}
5A90D2:  SUB             SP, SP, #0x80
5A90D4:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A90E0)
5A90D8:  LDR.W           R1, =(_ZN5CFont6SpriteE_ptr - 0x5A90E2)
5A90DC:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A90DE:  ADD             R1, PC; _ZN5CFont6SpriteE_ptr
5A90E0:  LDR             R4, [R0]; CFont::RenderState ...
5A90E2:  LDR             R1, [R1]; CFont::Sprite ...
5A90E4:  LDRSH.W         R0, [R4,#(word_A29820 - 0xA297F4)]
5A90E8:  ADD.W           R0, R1, R0,LSL#2; this
5A90EC:  BLX.W           j__ZN9CSprite2d14SetRenderStateEv; CSprite2d::SetRenderState(void)
5A90F0:  MOVS            R0, #0xC
5A90F2:  MOVS            R1, #1
5A90F4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A90F8:  LDR.W           R0, =(unk_A3EBC0 - 0x5A9104)
5A90FC:  LDR.W           LR, =(dword_A3EFC0 - 0x5A910A)
5A9100:  ADD             R0, PC; unk_A3EBC0
5A9102:  ADD.W           R2, R0, #0x27 ; '''
5A9106:  ADD             LR, PC; dword_A3EFC0
5A9108:  MOV             R1, R0
5A910A:  LDRB            R3, [R0,#(byte_A3EBD4 - 0xA3EBC0)]
5A910C:  VLD1.32         {D16-D17}, [R1]!
5A9110:  VLD1.8          {D18}, [R2]
5A9114:  ADD.W           R2, R0, #0x18
5A9118:  VLD1.64         {D20-D21}, [R2]
5A911C:  MOV             R2, R4
5A911E:  VST1.32         {D16-D17}, [R2]!
5A9122:  LDR             R1, [R1]
5A9124:  LDRB            R6, [R0,#(byte_A3EBD5 - 0xA3EBC0)]
5A9126:  LDRB            R5, [R0,#(byte_A3EBD6 - 0xA3EBC0)]
5A9128:  STRB            R3, [R4,#(word_A29808 - 0xA297F4)]
5A912A:  STRB            R6, [R4,#(word_A29808+1 - 0xA297F4)]
5A912C:  STRB            R5, [R4,#(byte_A2980A - 0xA297F4)]
5A912E:  STR             R1, [R2]
5A9130:  ADD.W           R1, R4, #0x27 ; '''
5A9134:  LDRB.W          R12, [R0,#(byte_A3EBD7 - 0xA3EBC0)]
5A9138:  ADDS            R0, #0x30 ; '0'
5A913A:  VST1.8          {D18}, [R1]
5A913E:  ADD.W           R1, R4, #0x18
5A9142:  STRB.W          R12, [R4,#(byte_A2980B - 0xA297F4)]
5A9146:  VLDR            S20, [R4,#4]
5A914A:  VLDR            S22, [R4,#8]
5A914E:  VST1.32         {D20-D21}, [R1]
5A9152:  LDR.W           R1, [LR]
5A9156:  STRB.W          R3, [SP,#0xC8+var_4C]
5A915A:  CMP             R1, R0
5A915C:  STRB.W          R6, [SP,#0xC8+var_4C+1]
5A9160:  STRB.W          R5, [SP,#0xC8+var_4A]
5A9164:  STRB.W          R12, [SP,#0xC8+var_49]
5A9168:  BLS.W           loc_5A95E8
5A916C:  LDR.W           R0, =(unk_A3EBC0 - 0x5A917C)
5A9170:  VMOV.F32        S18, #0.5
5A9174:  LDR.W           R2, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5A918A)
5A9178:  ADD             R0, PC; unk_A3EBC0
5A917A:  LDR.W           R3, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5A918C)
5A917E:  ADD.W           R6, R0, #0x30 ; '0'
5A9182:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A918E)
5A9186:  ADD             R2, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5A9188:  ADD             R3, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5A918A:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A918C:  VLDR            S16, =32.0
5A9190:  LDR.W           R9, [R0]; CFont::RenderState ...
5A9194:  LDR.W           R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A919C)
5A9198:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A919A:  LDR             R4, [R0]; CFont::PS2Symbol ...
5A919C:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A91A6)
5A91A0:  STR             R4, [SP,#0xC8+var_54]
5A91A2:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A91A4:  LDR             R0, [R0]; CFont::RenderState ...
5A91A6:  STR             R0, [SP,#0xC8+var_64]
5A91A8:  LDR.W           R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A91B0)
5A91AC:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A91AE:  LDR             R0, [R0]; CFont::PS2Symbol ...
5A91B0:  STR             R0, [SP,#0xC8+var_68]
5A91B2:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A91BA)
5A91B6:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A91B8:  LDR             R0, [R0]; CFont::RenderState ...
5A91BA:  STR             R0, [SP,#0xC8+var_6C]
5A91BC:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A91C4)
5A91C0:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A91C2:  LDR             R0, [R0]; CFont::RenderState ...
5A91C4:  STR             R0, [SP,#0xC8+var_A0]
5A91C6:  LDR.W           R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A91CE)
5A91CA:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A91CC:  LDR             R0, [R0]; CFont::PS2Symbol ...
5A91CE:  STR             R0, [SP,#0xC8+var_70]
5A91D0:  LDR.W           R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A91D8)
5A91D4:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A91D6:  LDR             R0, [R0]; CFont::PS2Symbol ...
5A91D8:  STR             R0, [SP,#0xC8+var_74]
5A91DA:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A91E2)
5A91DE:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A91E0:  LDR.W           R10, [R0]; CFont::RenderState ...
5A91E4:  LDR.W           R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A91EC)
5A91E8:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A91EA:  LDR.W           R8, [R0]; CFont::PS2Symbol ...
5A91EE:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A91F6)
5A91F2:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A91F4:  LDR             R0, [R0]; CFont::RenderState ...
5A91F6:  STR             R0, [SP,#0xC8+var_50]
5A91F8:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A9200)
5A91FC:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A91FE:  LDR             R0, [R0]; CFont::RenderState ...
5A9200:  STR             R0, [SP,#0xC8+var_58]
5A9202:  LDR.W           R0, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5A920A)
5A9206:  ADD             R0, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5A9208:  LDR             R0, [R0]; CFont::UsingJapaneseLanguage ...
5A920A:  STR             R0, [SP,#0xC8+var_90]
5A920C:  LDR             R0, [R2]; CFont::UsingKoreanLanguage ...
5A920E:  STR             R0, [SP,#0xC8+var_94]
5A9210:  LDR             R0, [R3]; CFont::UsingRussianLanguage ...
5A9212:  STR             R0, [SP,#0xC8+var_98]
5A9214:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A9220)
5A9218:  LDR.W           R2, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A9226)
5A921C:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A921E:  LDR.W           R3, =(_ZN5CFont6SpriteE_ptr - 0x5A922A)
5A9222:  ADD             R2, PC; _ZN5CFont9PS2SymbolE_ptr
5A9224:  LDR             R0, [R0]; CFont::RenderState ...
5A9226:  ADD             R3, PC; _ZN5CFont6SpriteE_ptr
5A9228:  STR             R0, [SP,#0xC8+var_7C]
5A922A:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A9232)
5A922E:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A9230:  LDR             R0, [R0]; CFont::RenderState ...
5A9232:  STR             R0, [SP,#0xC8+var_5C]
5A9234:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A923C)
5A9238:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A923A:  LDR             R0, [R0]; CFont::RenderState ...
5A923C:  STR             R0, [SP,#0xC8+var_80]
5A923E:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A9246)
5A9242:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A9244:  LDR             R0, [R0]; CFont::RenderState ...
5A9246:  STR             R0, [SP,#0xC8+var_78]
5A9248:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A9250)
5A924C:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A924E:  LDR             R0, [R0]; CFont::RenderState ...
5A9250:  STR             R0, [SP,#0xC8+var_60]
5A9252:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A925A)
5A9256:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A9258:  LDR             R0, [R0]; CFont::RenderState ...
5A925A:  STR             R0, [SP,#0xC8+var_84]
5A925C:  LDR             R0, [R2]; CFont::PS2Symbol ...
5A925E:  STR             R0, [SP,#0xC8+var_88]
5A9260:  LDR             R0, [R3]; CFont::Sprite ...
5A9262:  STR             R0, [SP,#0xC8+var_8C]
5A9264:  LDR.W           R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A9270)
5A9268:  LDR.W           R2, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5A9276)
5A926C:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A926E:  LDR.W           R3, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5A927A)
5A9272:  ADD             R2, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5A9274:  LDR             R0, [R0]; CFont::PS2Symbol ...
5A9276:  ADD             R3, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5A9278:  STR             R0, [SP,#0xC8+var_9C]
5A927A:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A9282)
5A927E:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A9280:  LDR             R0, [R0]; CFont::RenderState ...
5A9282:  STR             R0, [SP,#0xC8+var_A4]
5A9284:  LDR.W           R0, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5A928C)
5A9288:  ADD             R0, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5A928A:  LDR             R0, [R0]; CFont::UsingRussianLanguage ...
5A928C:  STR             R0, [SP,#0xC8+var_B0]
5A928E:  LDR             R0, [R2]; CFont::UsingJapaneseLanguage ...
5A9290:  STR             R0, [SP,#0xC8+var_B4]
5A9292:  LDR             R0, [R3]; CFont::UsingKoreanLanguage ...
5A9294:  STR             R0, [SP,#0xC8+var_B8]
5A9296:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A929E)
5A929A:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A929C:  LDR             R0, [R0]; CFont::RenderState ...
5A929E:  STR             R0, [SP,#0xC8+var_AC]
5A92A0:  LDR.W           R0, =(_ZN5CFont4SizeE_ptr - 0x5A92A8)
5A92A4:  ADD             R0, PC; _ZN5CFont4SizeE_ptr
5A92A6:  LDR             R0, [R0]; CFont::Size ...
5A92A8:  STR             R0, [SP,#0xC8+var_BC]
5A92AA:  LDR.W           R0, =(_ZN5CFont4SizeE_ptr - 0x5A92B2)
5A92AE:  ADD             R0, PC; _ZN5CFont4SizeE_ptr
5A92B0:  LDR             R0, [R0]; CFont::Size ...
5A92B2:  STR             R0, [SP,#0xC8+var_C0]
5A92B4:  LDR.W           R0, =(_ZN5CFont11RenderStateE_ptr - 0x5A92BC)
5A92B8:  ADD             R0, PC; _ZN5CFont11RenderStateE_ptr
5A92BA:  LDR             R0, [R0]; CFont::RenderState ...
5A92BC:  STR             R0, [SP,#0xC8+var_A8]
5A92BE:  LDRH            R0, [R6]
5A92C0:  CMP             R0, #0
5A92C2:  BNE             loc_5A9344
5A92C4:  ADD.W           R0, R6, #0x18
5A92C8:  ADDS            R6, R0, #2
5A92CA:  SUBS            R0, #0x16
5A92CC:  LSLS            R0, R0, #0x1E
5A92CE:  MOV             R0, R6
5A92D0:  BNE             loc_5A92C8
5A92D2:  SUB.W           R0, R6, #0x18
5A92D6:  CMP             R0, R1
5A92D8:  BCS.W           loc_5A95E8
5A92DC:  VLD1.32         {D16-D17}, [R0]
5A92E0:  MOV             R1, R9
5A92E2:  ADD.W           R5, R6, #0xF
5A92E6:  LDR.W           R0, [R6,#-8]
5A92EA:  VST1.32         {D16-D17}, [R1]!
5A92EE:  STR             R0, [R1]
5A92F0:  LDRB.W          R0, [R6,#-4]
5A92F4:  STRB.W          R0, [R9,#(word_A29808 - 0xA297F4)]
5A92F8:  LDRB.W          R1, [R6,#-3]
5A92FC:  STRB.W          R1, [R9,#(word_A29808+1 - 0xA297F4)]
5A9300:  LDRB.W          R2, [R6,#-2]
5A9304:  STRB.W          R2, [R9,#(byte_A2980A - 0xA297F4)]
5A9308:  LDRB.W          R3, [R6,#-1]; unsigned __int16
5A930C:  STRB.W          R3, [R9,#(byte_A2980B - 0xA297F4)]
5A9310:  VLD1.8          {D16}, [R5]
5A9314:  ADD.W           R5, R9, #0x27 ; '''
5A9318:  VLD1.32         {D18-D19}, [R6]
5A931C:  VLDR            S20, [R9,#4]
5A9320:  VLDR            S22, [R9,#8]
5A9324:  VST1.8          {D16}, [R5]
5A9328:  ADD.W           R5, R9, #0x18
5A932C:  STRB.W          R0, [SP,#0xC8+var_4C]
5A9330:  STRB.W          R1, [SP,#0xC8+var_4C+1]
5A9334:  STRB.W          R2, [SP,#0xC8+var_4A]
5A9338:  VST1.32         {D18-D19}, [R5]
5A933C:  STRB.W          R3, [SP,#0xC8+var_49]
5A9340:  LDRH.W          R0, [R6,#0x18]!
5A9344:  MOV.W           R11, #0
5A9348:  CMP             R0, #0x7E ; '~'
5A934A:  STRB.W          R11, [R4]; CFont::PS2Symbol
5A934E:  BNE.W           loc_5A9460
5A9352:  LDRH            R0, [R6,#2]
5A9354:  CMP             R0, #0x6D ; 'm'
5A9356:  BNE             loc_5A9456
5A9358:  MOV             R0, R6; unsigned __int16 *
5A935A:  MOVS            R1, #0; unsigned __int8
5A935C:  BLX.W           j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
5A9360:  MOV             R11, R4
5A9362:  LDR             R4, [SP,#0xC8+var_64]
5A9364:  VMOV            R1, S20; char *
5A9368:  VMOV            R2, S22; float
5A936C:  VLDR            S0, [R4,#0x10]
5A9370:  LDRB            R5, [R4,#0x17]
5A9372:  VMUL.F32        S2, S0, S16
5A9376:  STR             R5, [SP,#0xC8+var_C8]; char *
5A9378:  VADD.F32        S0, S0, S0
5A937C:  VMUL.F32        S2, S2, S18
5A9380:  VADD.F32        S0, S0, S2
5A9384:  VMOV            R3, S0; float
5A9388:  BLX.W           j__ZN15CTouchInterface12DrawHelpIconEPKcfffi; CTouchInterface::DrawHelpIcon(char const*,float,float,float,int)
5A938C:  VLDR            S0, [R4,#0x10]
5A9390:  MOV             R4, R11
5A9392:  LDR             R0, [SP,#0xC8+var_68]
5A9394:  VMUL.F32        S2, S0, S16
5A9398:  VADD.F32        S0, S0, S0
5A939C:  LDRB.W          R11, [R0]
5A93A0:  LDRH            R0, [R6]
5A93A2:  VMUL.F32        S2, S2, S18
5A93A6:  VADD.F32        S0, S0, S2
5A93AA:  VADD.F32        S20, S20, S0
5A93AE:  CMP             R0, #0x7E ; '~'
5A93B0:  BNE             loc_5A9460
5A93B2:  CMP.W           R11, #0
5A93B6:  BNE             loc_5A9460
5A93B8:  LDR             R4, [SP,#0xC8+var_6C]
5A93BA:  MOV             R0, R6; this
5A93BC:  ADD             R6, SP, #0xC8+var_4C
5A93BE:  MOVS            R3, #0; unsigned __int8
5A93C0:  LDRB.W          R2, [R4,#0x28]; CRGBA *
5A93C4:  MOV             R1, R6; unsigned __int16 *
5A93C6:  BLX.W           j__ZN5CFont10ParseTokenEPtR5CRGBAhPc; CFont::ParseToken(ushort *,CRGBA &,uchar,char *)
5A93CA:  LDRB.W          R1, [R4,#0x28]
5A93CE:  MOV             R5, R0
5A93D0:  CBNZ            R1, loc_5A93EC
5A93D2:  LDR             R3, [SP,#0xC8+var_A0]
5A93D4:  LDRB.W          R0, [SP,#0xC8+var_4C]
5A93D8:  LDRB.W          R2, [SP,#0xC8+var_4C+1]
5A93DC:  STRB            R0, [R3,#0x14]
5A93DE:  LDRB.W          R0, [SP,#0xC8+var_4A]
5A93E2:  STRB            R2, [R3,#0x15]
5A93E4:  STRB            R0, [R3,#0x16]
5A93E6:  LDRB.W          R0, [SP,#0xC8+var_49]
5A93EA:  STRB            R0, [R3,#0x17]
5A93EC:  LDR             R2, [SP,#0xC8+var_70]
5A93EE:  LDRH            R0, [R5]
5A93F0:  LDR             R4, [SP,#0xC8+var_74]
5A93F2:  LDRB.W          R11, [R2]
5A93F6:  CMP             R0, #0x7E ; '~'
5A93F8:  BNE             loc_5A9452
5A93FA:  CMP.W           R11, #0
5A93FE:  BNE             loc_5A9452
5A9400:  LDRH            R0, [R5,#2]
5A9402:  CMP             R0, #0x6D ; 'm'
5A9404:  BNE             loc_5A9410
5A9406:  MOVS            R0, #0xA
5A9408:  STRB            R0, [R4]
5A940A:  LSLS            R0, R1, #0x18
5A940C:  BNE             loc_5A9448
5A940E:  B               loc_5A9428
5A9410:  UXTB            R2, R1; CRGBA *
5A9412:  MOV             R0, R5; this
5A9414:  MOV             R1, R6; unsigned __int16 *
5A9416:  MOVS            R3, #0; unsigned __int8
5A9418:  BLX.W           j__ZN5CFont10ParseTokenEPtR5CRGBAhPc; CFont::ParseToken(ushort *,CRGBA &,uchar,char *)
5A941C:  MOV             R5, R0
5A941E:  LDR             R0, [SP,#0xC8+var_50]
5A9420:  LDRB.W          R1, [R0,#0x28]
5A9424:  LSLS            R0, R1, #0x18
5A9426:  BNE             loc_5A9448
5A9428:  LDRB.W          R0, [SP,#0xC8+var_4C]
5A942C:  STRB.W          R0, [R10,#(word_A29808 - 0xA297F4)]
5A9430:  LDRB.W          R2, [SP,#0xC8+var_4C+1]
5A9434:  LDRB.W          R0, [SP,#0xC8+var_4A]
5A9438:  STRB.W          R2, [R10,#(word_A29808+1 - 0xA297F4)]
5A943C:  STRB.W          R0, [R10,#(byte_A2980A - 0xA297F4)]
5A9440:  LDRB.W          R0, [SP,#0xC8+var_49]
5A9444:  STRB.W          R0, [R10,#(byte_A2980B - 0xA297F4)]
5A9448:  LDRH            R0, [R5]
5A944A:  LDRB.W          R11, [R8]; CFont::PS2Symbol
5A944E:  CMP             R0, #0x7E ; '~'
5A9450:  BEQ             loc_5A93FA
5A9452:  LDR             R4, [SP,#0xC8+var_54]
5A9454:  B               loc_5A9462
5A9456:  MOVS            R0, #0x7E ; '~'
5A9458:  MOV.W           R11, #0
5A945C:  CMP             R0, #0x7E ; '~'
5A945E:  BEQ             loc_5A93B2
5A9460:  MOV             R5, R6
5A9462:  SUBS            R1, R0, #1
5A9464:  UXTH            R1, R1
5A9466:  CMP             R1, #0x1E
5A9468:  BHI             loc_5A946E
5A946A:  ADDS            R6, R5, #2
5A946C:  B               loc_5A95DC
5A946E:  CBZ             R0, loc_5A94A4
5A9470:  LDR             R1, [SP,#0xC8+var_58]
5A9472:  MOVW            R2, #0xFFE0
5A9476:  ADDS            R4, R0, R2
5A9478:  LDRH            R1, [R1,#0x2C]
5A947A:  CMP             R1, #2
5A947C:  BNE             loc_5A9492
5A947E:  LDR             R0, [SP,#0xC8+var_90]
5A9480:  LDR             R1, [SP,#0xC8+var_94]
5A9482:  LDR             R2, [SP,#0xC8+var_98]
5A9484:  LDRB            R0, [R0]
5A9486:  LDRB            R1, [R1]
5A9488:  LDRB            R2, [R2]; unsigned __int8
5A948A:  ORRS            R0, R1
5A948C:  ORRS            R0, R2
5A948E:  LSLS            R0, R0, #0x18
5A9490:  BNE             loc_5A94B8
5A9492:  LDR             R0, [SP,#0xC8+var_7C]
5A9494:  LDRB.W          R1, [R0,#0x29]; unsigned __int16
5A9498:  CBZ             R1, loc_5A94A8
5A949A:  UXTH            R0, R4; this
5A949C:  BLX.W           j__ZN5CFont20FindSubFontCharacterEth; CFont::FindSubFontCharacter(ushort,uchar)
5A94A0:  MOV             R4, R0
5A94A2:  B               loc_5A94B8
5A94A4:  MOV             R6, R5
5A94A6:  B               loc_5A95DC
5A94A8:  UXTH            R0, R4
5A94AA:  CMP             R0, #0x91
5A94AC:  BNE             loc_5A94B2
5A94AE:  MOVS            R4, #0x40 ; '@'
5A94B0:  B               loc_5A94B8
5A94B2:  CMP             R0, #0x9B
5A94B4:  IT HI
5A94B6:  MOVHI           R4, #0
5A94B8:  LDR             R0, [SP,#0xC8+var_5C]
5A94BA:  VLDR            S0, [R0,#0x1C]
5A94BE:  VCMP.F32        S0, #0.0
5A94C2:  VMRS            APSR_nzcv, FPSCR
5A94C6:  ITTTT NE
5A94C8:  LDRNE           R0, [SP,#0xC8+var_80]
5A94CA:  VLDRNE          S2, [R0,#0x20]
5A94CE:  VLDRNE          S4, [R0,#0x24]
5A94D2:  VSUBNE.F32      S2, S2, S20
5A94D6:  ITT NE
5A94D8:  VMULNE.F32      S0, S0, S2
5A94DC:  VADDNE.F32      S22, S4, S0
5A94E0:  CMP.W           R11, #0
5A94E4:  ITTT NE
5A94E6:  LDRNE           R0, [SP,#0xC8+var_78]
5A94E8:  LDRBNE.W        R0, [R0,#0x28]
5A94EC:  CMPNE           R0, #0
5A94EE:  BNE             loc_5A9598
5A94F0:  VMOV            R0, S20; this
5A94F4:  UXTH            R6, R4
5A94F6:  VMOV            R1, S22; float
5A94FA:  MOV             R2, R6; CFont *
5A94FC:  BLX.W           j__ZN5CFont9PrintCharEfft; CFont::PrintChar(float,float,ushort)
5A9500:  LDR             R0, [SP,#0xC8+var_9C]
5A9502:  LDRB.W          R11, [R0]
5A9506:  CMP.W           R11, #0
5A950A:  BNE             loc_5A9598
5A950C:  LDR             R0, [SP,#0xC8+var_A4]
5A950E:  LDRSH.W         R0, [R0,#0x2C]
5A9512:  CMP             R0, #2
5A9514:  BNE             loc_5A9544
5A9516:  LDR             R1, [SP,#0xC8+var_B0]
5A9518:  LDR             R3, [SP,#0xC8+var_B8]
5A951A:  LDRB            R2, [R1]
5A951C:  LDR             R1, [SP,#0xC8+var_B4]
5A951E:  LDRB            R3, [R3]
5A9520:  LDRB            R1, [R1]
5A9522:  ORRS            R2, R1
5A9524:  ORRS            R2, R3
5A9526:  LSLS            R2, R2, #0x18
5A9528:  BEQ             loc_5A9544
5A952A:  ADD.W           R0, R4, #0x20 ; ' '
5A952E:  CMP             R1, #0
5A9530:  IT NE
5A9532:  MOVNE           R1, #1; bool
5A9534:  UXTH            R0, R0; unsigned __int16
5A9536:  BLX.W           j__Z16GetJapaneseWidthtb; GetJapaneseWidth(ushort,bool)
5A953A:  VMOV            S0, R0
5A953E:  B               loc_5A9576
5A9540:  DCFS 32.0
5A9544:  LDR             R1, [SP,#0xC8+var_AC]
5A9546:  LDRB.W          R1, [R1,#0x2A]
5A954A:  CMP             R1, #1
5A954C:  BNE             loc_5A9562
5A954E:  LDR             R2, [SP,#0xC8+var_BC]
5A9550:  MOVS            R1, #0xD2
5A9552:  CMP             R6, #0x3F ; '?'
5A9554:  SMLABB.W        R0, R0, R1, R2
5A9558:  IT NE
5A955A:  UXTAHNE.W       R0, R0, R4
5A955E:  LDRB            R0, [R0]
5A9560:  B               loc_5A956E
5A9562:  LDR             R2, [SP,#0xC8+var_C0]
5A9564:  MOVS            R1, #0xD2
5A9566:  SMLABB.W        R0, R0, R1, R2
5A956A:  LDRB.W          R0, [R0,#0xD1]
5A956E:  VMOV            S0, R0
5A9572:  VCVT.F32.U32    S0, S0
5A9576:  LDR             R1, [SP,#0xC8+var_A8]
5A9578:  MOV.W           R11, #0
5A957C:  LDRSB.W         R0, [R1,#0x2E]
5A9580:  VMOV            S2, R0
5A9584:  VCVT.F32.S32    S2, S2
5A9588:  VADD.F32        S0, S0, S2
5A958C:  VLDR            S2, [R1,#0xC]
5A9590:  VMUL.F32        S0, S2, S0
5A9594:  VADD.F32        S20, S20, S0
5A9598:  LDR             R0, [SP,#0xC8+var_60]
5A959A:  MOV             R6, R5
5A959C:  LSLS            R1, R4, #0x10
5A959E:  VLDR            S0, [R0,#0x18]
5A95A2:  LDRH.W          R0, [R6],#2
5A95A6:  VADD.F32        S0, S20, S0
5A95AA:  IT EQ
5A95AC:  VMOVEQ.F32      S20, S0
5A95B0:  CMP.W           R11, #0
5A95B4:  IT NE
5A95B6:  MOVNE           R6, R5
5A95B8:  CMP             R0, #0
5A95BA:  IT EQ
5A95BC:  MOVEQ           R6, R5
5A95BE:  CMP.W           R11, #0
5A95C2:  BEQ             loc_5A95DA
5A95C4:  LDR             R0, [SP,#0xC8+var_84]
5A95C6:  MOVS            R1, #0
5A95C8:  LDR             R2, [SP,#0xC8+var_88]
5A95CA:  LDRSH.W         R0, [R0,#0x2C]
5A95CE:  STRB            R1, [R2]
5A95D0:  LDR             R1, [SP,#0xC8+var_8C]
5A95D2:  ADD.W           R0, R1, R0,LSL#2; this
5A95D6:  BLX.W           j__ZN9CSprite2d14SetRenderStateEv; CSprite2d::SetRenderState(void)
5A95DA:  LDR             R4, [SP,#0xC8+var_54]
5A95DC:  LDR             R0, =(dword_A3EFC0 - 0x5A95E2)
5A95DE:  ADD             R0, PC; dword_A3EFC0 ; this
5A95E0:  LDR             R1, [R0]
5A95E2:  CMP             R6, R1
5A95E4:  BCC.W           loc_5A92BE
5A95E8:  BLX.W           j__ZN7CSprite17FlushSpriteBufferEv; CSprite::FlushSpriteBuffer(void)
5A95EC:  BLX.W           j__ZN9CSprite2d18RenderVertexBufferEv; CSprite2d::RenderVertexBuffer(void)
5A95F0:  LDR             R0, =(dword_A3EFC0 - 0x5A95F8)
5A95F2:  LDR             R1, =(unk_A3EBC0 - 0x5A95FA)
5A95F4:  ADD             R0, PC; dword_A3EFC0
5A95F6:  ADD             R1, PC; unk_A3EBC0
5A95F8:  STR             R1, [R0]
5A95FA:  ADD             SP, SP, #0x80
5A95FC:  VPOP            {D8-D11}
5A9600:  ADD             SP, SP, #4
5A9602:  POP.W           {R8-R11}
5A9606:  POP.W           {R4-R7,LR}
5A960A:  BX              LR
