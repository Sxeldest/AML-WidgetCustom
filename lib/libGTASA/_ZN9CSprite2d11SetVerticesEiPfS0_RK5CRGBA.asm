; =========================================================
; Game Engine Function: _ZN9CSprite2d11SetVerticesEiPfS0_RK5CRGBA
; Address            : 0x5C9344 - 0x5C93BE
; =========================================================

5C9344:  PUSH            {R4,R5,R7,LR}
5C9346:  ADD             R7, SP, #8
5C9348:  CMP             R0, #1
5C934A:  IT LT
5C934C:  POPLT           {R4,R5,R7,PC}
5C934E:  LDR.W           R12, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5C9360)
5C9352:  VMOV.F32        S0, #1.0
5C9356:  LDR.W           LR, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5C9364)
5C935A:  ADDS            R1, #4
5C935C:  ADD             R12, PC; _ZN9CSprite2d11NearScreenZE_ptr
5C935E:  LDR             R5, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5C936A)
5C9360:  ADD             LR, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5C9362:  LDR.W           R12, [R12]; CSprite2d::NearScreenZ ...
5C9366:  ADD             R5, PC; _ZN9CSprite2d10maVerticesE_ptr
5C9368:  LDR.W           R4, [LR]; CSprite2d::RecipNearClip ...
5C936C:  VLDR            S2, [R12]
5C9370:  ADD.W           R12, R2, #4
5C9374:  LDR             R2, [R5]; CSprite2d::maVertices ...
5C9376:  VADD.F32        S0, S2, S0
5C937A:  LDR.W           LR, [R4]; CSprite2d::RecipNearClip
5C937E:  LDR.W           R4, [R1,#-4]
5C9382:  SUBS            R0, #1
5C9384:  STR             R4, [R2]; CSprite2d::maVertices
5C9386:  LDR             R4, [R1]
5C9388:  ADD.W           R1, R1, #8
5C938C:  VSTR            S0, [R2,#8]
5C9390:  STR             R4, [R2,#4]
5C9392:  STR.W           LR, [R2,#0xC]
5C9396:  LDR.W           R4, [R12,#-4]
5C939A:  STR             R4, [R2,#0x14]
5C939C:  LDR.W           R4, [R12]
5C93A0:  ADD.W           R12, R12, #8
5C93A4:  STR             R4, [R2,#0x18]
5C93A6:  LDRB            R4, [R3]
5C93A8:  STRB            R4, [R2,#0x10]
5C93AA:  LDRB            R4, [R3,#1]
5C93AC:  STRB            R4, [R2,#0x11]
5C93AE:  LDRB            R4, [R3,#2]
5C93B0:  STRB            R4, [R2,#0x12]
5C93B2:  LDRB            R4, [R3,#3]
5C93B4:  STRB            R4, [R2,#0x13]
5C93B6:  ADD.W           R2, R2, #0x1C
5C93BA:  BNE             loc_5C937E
5C93BC:  POP             {R4,R5,R7,PC}
