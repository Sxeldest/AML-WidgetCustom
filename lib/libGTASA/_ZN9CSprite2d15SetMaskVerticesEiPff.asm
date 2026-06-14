; =========================================================
; Game Engine Function: _ZN9CSprite2d15SetMaskVerticesEiPff
; Address            : 0x5CA364 - 0x5CA3AE
; =========================================================

5CA364:  PUSH            {R7,LR}
5CA366:  MOV             R7, SP
5CA368:  CMP             R0, #1
5CA36A:  IT LT
5CA36C:  POPLT           {R7,PC}
5CA36E:  VMOV            S0, R2
5CA372:  LDR             R2, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5CA37C)
5CA374:  LDR             R3, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5CA382)
5CA376:  ADDS            R1, #4
5CA378:  ADD             R2, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5CA37A:  MOV.W           R12, #0
5CA37E:  ADD             R3, PC; _ZN9CSprite2d10maVerticesE_ptr
5CA380:  LDR             R2, [R2]; CSprite2d::RecipNearClip ...
5CA382:  LDR             R3, [R3]; CSprite2d::maVertices ...
5CA384:  LDR.W           LR, [R2]; CSprite2d::RecipNearClip
5CA388:  ADDS            R3, #8
5CA38A:  LDR.W           R2, [R1,#-4]
5CA38E:  SUBS            R0, #1
5CA390:  STR.W           R2, [R3,#-8]; CSprite2d::maVertices
5CA394:  LDR             R2, [R1]
5CA396:  ADD.W           R1, R1, #8
5CA39A:  VSTR            S0, [R3]
5CA39E:  STR.W           R2, [R3,#-4]
5CA3A2:  STRD.W          LR, R12, [R3,#4]
5CA3A6:  ADD.W           R3, R3, #0x1C
5CA3AA:  BNE             loc_5CA38A
5CA3AC:  POP             {R7,PC}
