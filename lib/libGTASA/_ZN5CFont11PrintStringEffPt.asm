; =========================================================
; Game Engine Function: _ZN5CFont11PrintStringEffPt
; Address            : 0x5AA190 - 0x5AA342
; =========================================================

5AA190:  PUSH            {R4-R7,LR}
5AA192:  ADD             R7, SP, #0xC
5AA194:  PUSH.W          {R8}
5AA198:  VPUSH           {D8-D9}
5AA19C:  SUB             SP, SP, #0x28; unsigned __int16 *
5AA19E:  MOV             R4, SP
5AA1A0:  BFC.W           R4, #0, #4
5AA1A4:  MOV             SP, R4
5AA1A6:  MOV             R4, R2
5AA1A8:  MOV             R6, R0
5AA1AA:  LDRH            R0, [R4]
5AA1AC:  MOV             R8, R1
5AA1AE:  CMP             R0, #0
5AA1B0:  IT NE
5AA1B2:  CMPNE           R0, #0x2A ; '*'
5AA1B4:  BEQ.W           loc_5AA332
5AA1B8:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AA1C6)
5AA1BA:  VMOV            S16, R8
5AA1BE:  VMOV            S18, R6
5AA1C2:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AA1C4:  LDR             R0, [R0]; CFont::Details ...
5AA1C6:  LDRB            R0, [R0,#(byte_A297CF - 0xA297B4)]
5AA1C8:  CMP             R0, #0
5AA1CA:  BEQ.W           loc_5AA326
5AA1CE:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AA1D8)
5AA1D0:  ADR             R3, dword_5AA350
5AA1D2:  LDR             R1, =(_ZN5CFont11RenderStateE_ptr - 0x5AA1DE)
5AA1D4:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AA1D6:  VLD1.64         {D16-D17}, [R3@128]
5AA1DA:  ADD             R1, PC; _ZN5CFont11RenderStateE_ptr
5AA1DC:  MOV             R3, R4; CFont *
5AA1DE:  LDR             R5, [R0]; CFont::Details ...
5AA1E0:  LDR             R0, [R1]; CFont::RenderState ...
5AA1E2:  LDRH            R2, [R5]; CFont::Details
5AA1E4:  LDRB            R1, [R5,#(_ZN5CFont7DetailsE+2 - 0xA297B4)]; CFont::Details
5AA1E6:  STRH            R2, [R0,#(word_A29808 - 0xA297F4)]
5AA1E8:  MOV             R2, R8; float
5AA1EA:  STRB            R1, [R0,#(byte_A2980A - 0xA297F4)]
5AA1EC:  ADD             R0, SP, #0x48+var_38
5AA1EE:  MOV             R1, R6; unsigned __int8
5AA1F0:  VST1.64         {D16-D17}, [R0@128]
5AA1F4:  MOVS            R0, #0; this
5AA1F6:  BLX.W           j__ZN5CFont20ProcessCurrentStringEhffPt; CFont::ProcessCurrentString(uchar,float,float,ushort *)
5AA1FA:  LDRB            R1, [R5,#(byte_A297CD - 0xA297B4)]
5AA1FC:  CBZ             R1, loc_5AA222
5AA1FE:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA20C)
5AA200:  VMOV.F32        S0, #0.5
5AA204:  VMOV.F32        S4, #4.0
5AA208:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA20A:  LDR             R1, [R1]; CFont::Details ...
5AA20C:  VLDR            S2, [R1,#0x2C]
5AA210:  VMUL.F32        S0, S2, S0
5AA214:  VADD.F32        S0, S0, S4
5AA218:  VSUB.F32        S2, S18, S0
5AA21C:  VADD.F32        S0, S0, S18
5AA220:  B               loc_5AA262
5AA222:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA228)
5AA224:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA226:  LDR             R1, [R1]; CFont::Details ...
5AA228:  LDRB            R1, [R1,#(byte_A297CE - 0xA297B4)]
5AA22A:  CBZ             R1, loc_5AA248
5AA22C:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA23A)
5AA22E:  VMOV.F32        S0, #-4.0
5AA232:  VMOV.F32        S4, #4.0
5AA236:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA238:  LDR             R1, [R1]; CFont::Details ...
5AA23A:  VLDR            S2, [R1,#0x30]
5AA23E:  VADD.F32        S2, S2, S0
5AA242:  VADD.F32        S0, S18, S4
5AA246:  B               loc_5AA262
5AA248:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA256)
5AA24A:  VMOV.F32        S0, #-4.0
5AA24E:  VMOV.F32        S4, #4.0
5AA252:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA254:  LDR             R1, [R1]; CFont::Details ...
5AA256:  VADD.F32        S2, S18, S0
5AA25A:  VLDR            S0, [R1,#0x28]
5AA25E:  VADD.F32        S0, S0, S4
5AA262:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA272)
5AA264:  VMOV.F32        S8, #0.5
5AA268:  VLDR            S4, =32.0
5AA26C:  UXTB            R0, R0
5AA26E:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA270:  VSTR            S2, [SP,#0x48+var_38]
5AA274:  LDR             R1, [R1]; CFont::Details ...
5AA276:  VLDR            S6, [R1,#8]
5AA27A:  VMUL.F32        S4, S6, S4
5AA27E:  VADD.F32        S6, S6, S6
5AA282:  VMUL.F32        S4, S4, S8
5AA286:  VMOV            S8, R0
5AA28A:  VCVT.F32.U32    S8, S8
5AA28E:  LDRB            R0, [R1,#(byte_A297D0 - 0xA297B4)]
5AA290:  VSTR            S0, [SP,#0x48+var_30]
5AA294:  CMP             R0, #0
5AA296:  VADD.F32        S4, S6, S4
5AA29A:  VMOV.F32        S6, #-4.0
5AA29E:  VMUL.F32        S4, S4, S8
5AA2A2:  VMOV.F32        S8, #4.0
5AA2A6:  VADD.F32        S10, S4, S16
5AA2AA:  VADD.F32        S4, S16, S6
5AA2AE:  VADD.F32        S6, S10, S8
5AA2B2:  VSTR            S4, [SP,#0x48+var_34]
5AA2B6:  VSTR            S6, [SP,#0x48+var_2C]
5AA2BA:  BEQ             loc_5AA30C
5AA2BC:  VMOV.F32        S8, #-1.0
5AA2C0:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AA2CC)
5AA2C2:  VMOV.F32        S10, #1.0
5AA2C6:  LDR             R1, =(FrontEndMenuManager_ptr - 0x5AA2D0)
5AA2C8:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AA2CA:  ADD             R3, SP, #0x48+var_3C
5AA2CC:  ADD             R1, PC; FrontEndMenuManager_ptr
5AA2CE:  LDR             R0, [R0]; CFont::Details ...
5AA2D0:  VADD.F32        S2, S2, S8
5AA2D4:  LDR             R2, [R0,#(dword_A297D8 - 0xA297B4)]
5AA2D6:  VADD.F32        S6, S6, S10
5AA2DA:  LDR             R0, [R1]; FrontEndMenuManager
5AA2DC:  VADD.F32        S4, S4, S8
5AA2E0:  STR             R2, [SP,#0x48+var_3C]
5AA2E2:  VADD.F32        S0, S0, S10
5AA2E6:  MOVS            R1, #1
5AA2E8:  MOVS            R2, #0
5AA2EA:  VSTR            S2, [SP,#0x48+var_38]
5AA2EE:  VSTR            S6, [SP,#0x48+var_2C]
5AA2F2:  VSTR            S4, [SP,#0x48+var_34]
5AA2F6:  VSTR            S0, [SP,#0x48+var_30]
5AA2FA:  STRD.W          R3, R2, [SP,#0x48+var_48]
5AA2FE:  MOVS            R2, #0
5AA300:  STR             R1, [SP,#0x48+var_40]
5AA302:  ADD             R1, SP, #0x48+var_38
5AA304:  MOVS            R3, #0
5AA306:  BLX.W           j__ZN12CMenuManager10DrawWindowERK5CRectPch5CRGBAhh; CMenuManager::DrawWindow(CRect const&,char *,uchar,CRGBA,uchar,uchar)
5AA30A:  B               loc_5AA31C
5AA30C:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AA312)
5AA30E:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AA310:  LDR             R0, [R0]; CFont::Details ...
5AA312:  ADD.W           R1, R0, #0x24 ; '$'
5AA316:  ADD             R0, SP, #0x48+var_38
5AA318:  BLX.W           j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
5AA31C:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AA324)
5AA31E:  MOVS            R1, #0
5AA320:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AA322:  LDR             R0, [R0]; CFont::Details ...
5AA324:  STRB            R1, [R0,#(byte_A297CF - 0xA297B4)]
5AA326:  MOVS            R0, #(stderr+1); this
5AA328:  MOV             R1, R6; unsigned __int8
5AA32A:  MOV             R2, R8; float
5AA32C:  MOV             R3, R4; CFont *
5AA32E:  BLX.W           j__ZN5CFont20ProcessCurrentStringEhffPt; CFont::ProcessCurrentString(uchar,float,float,ushort *)
5AA332:  SUB.W           R4, R7, #-var_20
5AA336:  MOV             SP, R4
5AA338:  VPOP            {D8-D9}
5AA33C:  POP.W           {R8}
5AA340:  POP             {R4-R7,PC}
