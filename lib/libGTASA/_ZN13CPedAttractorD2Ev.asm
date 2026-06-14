; =========================================================
; Game Engine Function: _ZN13CPedAttractorD2Ev
; Address            : 0x4AC43C - 0x4AC492
; =========================================================

4AC43C:  PUSH            {R4,R5,R7,LR}
4AC43E:  ADD             R7, SP, #8
4AC440:  MOV             R4, R0
4AC442:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4AC44A)
4AC444:  MOV             R1, R4
4AC446:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4AC448:  LDR             R2, [R0]; `vtable for'CPedAttractor ...
4AC44A:  LDR.W           R0, [R1,#8]!; CEntity **
4AC44E:  ADDS            R2, #8
4AC450:  STR             R2, [R4]
4AC452:  CMP             R0, #0
4AC454:  IT NE
4AC456:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4AC45A:  LDR             R0, [R4,#0x2C]; p
4AC45C:  MOVS            R5, #0
4AC45E:  STR             R5, [R4,#0x28]
4AC460:  CBZ             R0, loc_4AC468
4AC462:  BLX             free
4AC466:  STR             R5, [R4,#0x2C]
4AC468:  LDR             R0, [R4,#0x20]; p
4AC46A:  STR             R5, [R4,#0x1C]
4AC46C:  CMP             R0, #0
4AC46E:  STR             R5, [R4,#0x24]
4AC470:  BEQ             loc_4AC47A
4AC472:  BLX             free
4AC476:  MOVS            R0, #0
4AC478:  STR             R0, [R4,#0x20]
4AC47A:  LDR             R0, [R4,#0x14]; p
4AC47C:  MOVS            R5, #0
4AC47E:  STR             R5, [R4,#0x10]
4AC480:  CMP             R0, #0
4AC482:  STR             R5, [R4,#0x18]
4AC484:  BEQ             loc_4AC48C
4AC486:  BLX             free
4AC48A:  STR             R5, [R4,#0x14]
4AC48C:  MOV             R0, R4
4AC48E:  STR             R5, [R4,#0xC]
4AC490:  POP             {R4,R5,R7,PC}
