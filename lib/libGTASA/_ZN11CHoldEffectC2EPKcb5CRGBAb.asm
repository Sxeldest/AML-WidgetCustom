; =========================================================
; Game Engine Function: _ZN11CHoldEffectC2EPKcb5CRGBAb
; Address            : 0x2962D0 - 0x296350
; =========================================================

2962D0:  PUSH            {R4-R7,LR}
2962D2:  ADD             R7, SP, #0xC
2962D4:  PUSH.W          {R8,R9,R11}
2962D8:  MOV             R4, R0
2962DA:  ADD.W           R0, R4, #8; this
2962DE:  MOV             R6, R3
2962E0:  MOV             R9, R2
2962E2:  MOV             R8, R1
2962E4:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2962E8:  LDR             R1, =(_ZN11CHoldEffect12m_pChainTailE_ptr - 0x2962F8)
2962EA:  ADR             R3, dword_296350
2962EC:  VLD1.64         {D16-D17}, [R3@128]
2962F0:  ADD.W           R3, R4, #0xC
2962F4:  ADD             R1, PC; _ZN11CHoldEffect12m_pChainTailE_ptr
2962F6:  MOVS            R2, #0
2962F8:  LDR.W           R12, =(_ZN11CHoldEffect12m_pChainHeadE_ptr - 0x296306)
2962FC:  LDR             R1, [R1]; CHoldEffect::m_pChainTail ...
2962FE:  VST1.32         {D16-D17}, [R3]
296302:  ADD             R12, PC; _ZN11CHoldEffect12m_pChainHeadE_ptr
296304:  LDR             R3, [R1]; CHoldEffect::m_pChainTail
296306:  STRD.W          R3, R2, [R4]
29630A:  ADDS            R5, R3, #4
29630C:  CMP             R3, #0
29630E:  IT EQ
296310:  LDREQ.W         R5, [R12]; CHoldEffect::m_pChainHead ...
296314:  CMP.W           R8, #0
296318:  STR             R4, [R5]; CHoldEffect::m_pChainHead
29631A:  STR             R4, [R1]; CHoldEffect::m_pChainTail
29631C:  STRB.W          R9, [R4,#0x20]
296320:  STR             R2, [R4,#0x1C]
296322:  LDRB            R1, [R6]
296324:  STRB.W          R1, [R4,#0x21]
296328:  LDRB            R1, [R6,#1]
29632A:  STRB.W          R1, [R4,#0x22]
29632E:  LDRB            R1, [R6,#2]
296330:  STRB.W          R1, [R4,#0x23]
296334:  LDR             R2, [R7,#arg_0]; char *
296336:  LDRB            R1, [R6,#3]
296338:  STRB.W          R2, [R4,#0x25]
29633C:  STRB.W          R1, [R4,#0x24]
296340:  ITT NE
296342:  MOVNE           R1, R8; CSprite2d *
296344:  BLXNE           j__ZN7CWidget16SetTextureStaticER9CSprite2dPc; CWidget::SetTextureStatic(CSprite2d &,char *)
296348:  MOV             R0, R4
29634A:  POP.W           {R8,R9,R11}
29634E:  POP             {R4-R7,PC}
