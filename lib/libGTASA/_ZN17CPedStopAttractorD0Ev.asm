; =========================================================
; Game Engine Function: _ZN17CPedStopAttractorD0Ev
; Address            : 0x4AC524 - 0x4AC5A2
; =========================================================

4AC524:  PUSH            {R4,R5,R7,LR}
4AC526:  ADD             R7, SP, #8
4AC528:  MOV             R4, R0
4AC52A:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4AC532)
4AC52C:  MOV             R1, R4
4AC52E:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4AC530:  LDR             R2, [R0]; `vtable for'CPedAttractor ...
4AC532:  LDR.W           R0, [R1,#8]!; CEntity **
4AC536:  ADDS            R2, #8
4AC538:  STR             R2, [R4]
4AC53A:  CMP             R0, #0
4AC53C:  IT NE
4AC53E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4AC542:  LDR             R0, [R4,#0x2C]; p
4AC544:  MOVS            R5, #0
4AC546:  STR             R5, [R4,#0x28]
4AC548:  CBZ             R0, loc_4AC550
4AC54A:  BLX             free
4AC54E:  STR             R5, [R4,#0x2C]
4AC550:  LDR             R0, [R4,#0x20]; p
4AC552:  STR             R5, [R4,#0x1C]
4AC554:  CMP             R0, #0
4AC556:  STR             R5, [R4,#0x24]
4AC558:  BEQ             loc_4AC562
4AC55A:  BLX             free
4AC55E:  MOVS            R0, #0
4AC560:  STR             R0, [R4,#0x20]
4AC562:  LDR             R0, [R4,#0x14]; p
4AC564:  MOVS            R5, #0
4AC566:  STR             R5, [R4,#0x10]
4AC568:  CMP             R0, #0
4AC56A:  STR             R5, [R4,#0x18]
4AC56C:  BEQ             loc_4AC574
4AC56E:  BLX             free
4AC572:  STR             R5, [R4,#0x14]
4AC574:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AC584)
4AC576:  MOVW            R3, #0xD8F3
4AC57A:  STR             R5, [R4,#0xC]
4AC57C:  MOVT            R3, #0xA08A
4AC580:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AC582:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AC584:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AC586:  LDRD.W          R1, R2, [R0]
4AC58A:  SUBS            R1, R4, R1
4AC58C:  ASRS            R1, R1, #2
4AC58E:  MULS            R1, R3
4AC590:  LDRB            R3, [R2,R1]
4AC592:  ORR.W           R3, R3, #0x80
4AC596:  STRB            R3, [R2,R1]
4AC598:  LDR             R2, [R0,#0xC]
4AC59A:  CMP             R1, R2
4AC59C:  IT LT
4AC59E:  STRLT           R1, [R0,#0xC]
4AC5A0:  POP             {R4,R5,R7,PC}
