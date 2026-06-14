; =========================================================
; Game Engine Function: _ZN20CPedShelterAttractorD0Ev
; Address            : 0x4AC324 - 0x4AC3A2
; =========================================================

4AC324:  PUSH            {R4,R5,R7,LR}
4AC326:  ADD             R7, SP, #8
4AC328:  MOV             R4, R0
4AC32A:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4AC332)
4AC32C:  MOV             R1, R4
4AC32E:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4AC330:  LDR             R2, [R0]; `vtable for'CPedAttractor ...
4AC332:  LDR.W           R0, [R1,#8]!; CEntity **
4AC336:  ADDS            R2, #8
4AC338:  STR             R2, [R4]
4AC33A:  CMP             R0, #0
4AC33C:  IT NE
4AC33E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4AC342:  LDR             R0, [R4,#0x2C]; p
4AC344:  MOVS            R5, #0
4AC346:  STR             R5, [R4,#0x28]
4AC348:  CBZ             R0, loc_4AC350
4AC34A:  BLX             free
4AC34E:  STR             R5, [R4,#0x2C]
4AC350:  LDR             R0, [R4,#0x20]; p
4AC352:  STR             R5, [R4,#0x1C]
4AC354:  CMP             R0, #0
4AC356:  STR             R5, [R4,#0x24]
4AC358:  BEQ             loc_4AC362
4AC35A:  BLX             free
4AC35E:  MOVS            R0, #0
4AC360:  STR             R0, [R4,#0x20]
4AC362:  LDR             R0, [R4,#0x14]; p
4AC364:  MOVS            R5, #0
4AC366:  STR             R5, [R4,#0x10]
4AC368:  CMP             R0, #0
4AC36A:  STR             R5, [R4,#0x18]
4AC36C:  BEQ             loc_4AC374
4AC36E:  BLX             free
4AC372:  STR             R5, [R4,#0x14]
4AC374:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AC384)
4AC376:  MOVW            R3, #0xD8F3
4AC37A:  STR             R5, [R4,#0xC]
4AC37C:  MOVT            R3, #0xA08A
4AC380:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AC382:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AC384:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AC386:  LDRD.W          R1, R2, [R0]
4AC38A:  SUBS            R1, R4, R1
4AC38C:  ASRS            R1, R1, #2
4AC38E:  MULS            R1, R3
4AC390:  LDRB            R3, [R2,R1]
4AC392:  ORR.W           R3, R3, #0x80
4AC396:  STRB            R3, [R2,R1]
4AC398:  LDR             R2, [R0,#0xC]
4AC39A:  CMP             R1, R2
4AC39C:  IT LT
4AC39E:  STRLT           R1, [R0,#0xC]
4AC3A0:  POP             {R4,R5,R7,PC}
