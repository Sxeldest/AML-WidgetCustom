; =========================================================
; Game Engine Function: _ZN11CHoldEffectD2Ev
; Address            : 0x296368 - 0x2963A0
; =========================================================

296368:  PUSH            {R4,R6,R7,LR}
29636A:  ADD             R7, SP, #8
29636C:  MOV             R4, R0
29636E:  LDR             R0, =(_ZN11CHoldEffect12m_pChainHeadE_ptr - 0x296378)
296370:  LDRD.W          R1, R2, [R4]
296374:  ADD             R0, PC; _ZN11CHoldEffect12m_pChainHeadE_ptr
296376:  LDR.W           R12, =(_ZN11CHoldEffect12m_pChainTailE_ptr - 0x296386)
29637A:  ADDS            R3, R1, #4
29637C:  CMP             R1, #0
29637E:  IT EQ
296380:  LDREQ           R3, [R0]; CHoldEffect::m_pChainHead ...
296382:  ADD             R12, PC; _ZN11CHoldEffect12m_pChainTailE_ptr
296384:  STR             R2, [R3]; CHoldEffect::m_pChainHead
296386:  LDRD.W          R0, R1, [R4]
29638A:  CMP             R1, #0
29638C:  IT EQ
29638E:  LDREQ.W         R1, [R12]; CHoldEffect::m_pChainTail ...
296392:  STR             R0, [R1]; CHoldEffect::m_pChainTail
296394:  ADD.W           R0, R4, #8; this
296398:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
29639C:  MOV             R0, R4
29639E:  POP             {R4,R6,R7,PC}
