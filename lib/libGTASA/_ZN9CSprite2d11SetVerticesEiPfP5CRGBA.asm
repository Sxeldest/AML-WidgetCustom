; =========================================================
; Game Engine Function: _ZN9CSprite2d11SetVerticesEiPfP5CRGBA
; Address            : 0x5CA2EC - 0x5CA356
; =========================================================

5CA2EC:  PUSH            {R4,R5,R7,LR}
5CA2EE:  ADD             R7, SP, #8
5CA2F0:  CMP             R0, #1
5CA2F2:  IT LT
5CA2F4:  POPLT           {R4,R5,R7,PC}
5CA2F6:  LDR             R3, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5CA304)
5CA2F8:  ADDS            R1, #4
5CA2FA:  LDR.W           LR, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5CA306)
5CA2FE:  ADDS            R2, #1
5CA300:  ADD             R3, PC; _ZN9CSprite2d11NearScreenZE_ptr
5CA302:  ADD             LR, PC; _ZN9CSprite2d10maVerticesE_ptr
5CA304:  LDR             R3, [R3]; CSprite2d::NearScreenZ ...
5CA306:  LDR.W           R12, [R3]; CSprite2d::NearScreenZ
5CA30A:  LDR             R3, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5CA310)
5CA30C:  ADD             R3, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5CA30E:  LDR             R4, [R3]; CSprite2d::RecipNearClip ...
5CA310:  LDR.W           R3, [LR]; CSprite2d::maVertices ...
5CA314:  LDR.W           LR, [R4]; CSprite2d::RecipNearClip
5CA318:  MOV.W           R4, #0x3F800000
5CA31C:  LDR.W           R5, [R1,#-4]
5CA320:  SUBS            R0, #1
5CA322:  STR             R5, [R3]; CSprite2d::maVertices
5CA324:  LDR             R5, [R1]
5CA326:  ADD.W           R1, R1, #8
5CA32A:  STR.W           R12, [R3,#8]
5CA32E:  STR             R5, [R3,#4]
5CA330:  STR.W           LR, [R3,#0xC]
5CA334:  STRD.W          R4, R4, [R3,#0x14]
5CA338:  LDRB.W          R5, [R2,#-1]
5CA33C:  STRB            R5, [R3,#0x10]
5CA33E:  LDRB            R5, [R2]
5CA340:  STRB            R5, [R3,#0x11]
5CA342:  LDRB            R5, [R2,#1]
5CA344:  STRB            R5, [R3,#0x12]
5CA346:  LDRB            R5, [R2,#2]
5CA348:  ADD.W           R2, R2, #4
5CA34C:  STRB            R5, [R3,#0x13]
5CA34E:  ADD.W           R3, R3, #0x1C
5CA352:  BNE             loc_5CA31C
5CA354:  POP             {R4,R5,R7,PC}
