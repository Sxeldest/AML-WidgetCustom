; =========================================================
; Game Engine Function: _ZN10MenuScreen10DrawSpriteEP9RwTextureP9CVector2DS3_P5CRGBAb
; Address            : 0x2981B0 - 0x298338
; =========================================================

2981B0:  PUSH            {R4-R7,LR}
2981B2:  ADD             R7, SP, #0xC
2981B4:  PUSH.W          {R11}
2981B8:  LDRD.W          R12, LR, [R7,#arg_0]
2981BC:  CMP.W           LR, #0
2981C0:  BNE             loc_298242
2981C2:  LDRB.W          LR, [R12,#3]
2981C6:  LDRB.W          R4, [R12,#7]
2981CA:  LDRB.W          R5, [R12,#0xB]
2981CE:  VMOV            S0, LR
2981D2:  LDRB.W          R6, [R12,#0xF]
2981D6:  VCVT.F32.U32    S0, S0
2981DA:  VLDR            S2, [R0,#8]
2981DE:  VMUL.F32        S0, S2, S0
2981E2:  VMOV            S2, R4
2981E6:  VCVT.F32.U32    S2, S2
2981EA:  VCVT.U32.F32    S0, S0
2981EE:  VMOV            R4, S0
2981F2:  STRB.W          R4, [R12,#3]
2981F6:  VLDR            S0, [R0,#8]
2981FA:  VMUL.F32        S0, S0, S2
2981FE:  VMOV            S2, R5
298202:  VCVT.F32.U32    S2, S2
298206:  VCVT.U32.F32    S0, S0
29820A:  VMOV            R5, S0
29820E:  STRB.W          R5, [R12,#7]
298212:  VLDR            S0, [R0,#8]
298216:  VMUL.F32        S0, S0, S2
29821A:  VMOV            S2, R6
29821E:  VCVT.F32.U32    S2, S2
298222:  VCVT.U32.F32    S0, S0
298226:  VMOV            R6, S0
29822A:  STRB.W          R6, [R12,#0xB]
29822E:  VLDR            S0, [R0,#8]
298232:  VMUL.F32        S0, S0, S2
298236:  VCVT.U32.F32    S0, S0
29823A:  VMOV            R0, S0
29823E:  STRB.W          R0, [R12,#0xF]
298242:  LDR             R0, =(RsGlobal_ptr - 0x29824C)
298244:  VLDR            S0, =-320.0
298248:  ADD             R0, PC; RsGlobal_ptr
29824A:  VLDR            S2, [R2]
29824E:  VLDR            S6, [R2,#8]
298252:  LDR             R0, [R0]; RsGlobal
298254:  VADD.F32        S2, S2, S0
298258:  VLDR            S4, [R2,#4]
29825C:  VADD.F32        S6, S6, S0
298260:  VLDR            S8, [R2,#0xC]
298264:  VLDR            S12, [R0,#8]
298268:  VLDR            S10, [R0,#4]
29826C:  VCVT.F32.S32    S12, S12
298270:  VLDR            S14, =480.0
298274:  VCVT.F32.S32    S10, S10
298278:  VMUL.F32        S2, S2, S12
29827C:  VMUL.F32        S4, S4, S12
298280:  VMOV.F32        S12, #0.5
298284:  VDIV.F32        S2, S2, S14
298288:  VDIV.F32        S4, S4, S14
29828C:  VMUL.F32        S10, S10, S12
298290:  VADD.F32        S2, S10, S2
298294:  VSTR            S2, [R2]
298298:  VSTR            S4, [R2,#4]
29829C:  VLDR            S4, [R0,#8]
2982A0:  VLDR            S2, [R0,#4]
2982A4:  VCVT.F32.S32    S4, S4
2982A8:  VCVT.F32.S32    S2, S2
2982AC:  VMUL.F32        S6, S6, S4
2982B0:  VMUL.F32        S4, S8, S4
2982B4:  VLDR            S8, [R2,#0x10]
2982B8:  VMUL.F32        S2, S2, S12
2982BC:  VDIV.F32        S6, S6, S14
2982C0:  VDIV.F32        S4, S4, S14
2982C4:  VADD.F32        S6, S2, S6
2982C8:  VSTR            S6, [R2,#8]
2982CC:  VADD.F32        S6, S8, S0
2982D0:  VSTR            S4, [R2,#0xC]
2982D4:  VLDR            S4, [R0,#8]
2982D8:  MOV             R0, R1
2982DA:  MOV             R1, R2
2982DC:  VCVT.F32.S32    S4, S4
2982E0:  VLDR            S10, [R2,#0x18]
2982E4:  VLDR            S8, [R2,#0x14]
2982E8:  VADD.F32        S0, S10, S0
2982EC:  VLDR            S12, [R2,#0x1C]
2982F0:  VMUL.F32        S6, S6, S4
2982F4:  VMUL.F32        S8, S8, S4
2982F8:  VMUL.F32        S0, S0, S4
2982FC:  VMUL.F32        S4, S12, S4
298300:  VDIV.F32        S6, S6, S14
298304:  VDIV.F32        S0, S0, S14
298308:  VDIV.F32        S8, S8, S14
29830C:  VDIV.F32        S4, S4, S14
298310:  VADD.F32        S6, S2, S6
298314:  VADD.F32        S0, S2, S0
298318:  VSTR            S6, [R2,#0x10]
29831C:  VSTR            S8, [R2,#0x14]
298320:  VSTR            S0, [R2,#0x18]
298324:  VSTR            S4, [R2,#0x1C]
298328:  MOV             R2, R3
29832A:  MOV             R3, R12
29832C:  POP.W           {R11}
298330:  POP.W           {R4-R7,LR}
298334:  B.W             _ZN10MobileMenu10DrawSpriteEP9RwTextureP9CVector2DS3_P5CRGBA; MobileMenu::DrawSprite(RwTexture *,CVector2D *,CVector2D *,CRGBA *)
