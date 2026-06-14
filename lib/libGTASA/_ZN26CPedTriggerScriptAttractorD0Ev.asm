; =========================================================
; Game Engine Function: _ZN26CPedTriggerScriptAttractorD0Ev
; Address            : 0x4AC644 - 0x4AC6C2
; =========================================================

4AC644:  PUSH            {R4,R5,R7,LR}
4AC646:  ADD             R7, SP, #8
4AC648:  MOV             R4, R0
4AC64A:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4AC652)
4AC64C:  MOV             R1, R4
4AC64E:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4AC650:  LDR             R2, [R0]; `vtable for'CPedAttractor ...
4AC652:  LDR.W           R0, [R1,#8]!; CEntity **
4AC656:  ADDS            R2, #8
4AC658:  STR             R2, [R4]
4AC65A:  CMP             R0, #0
4AC65C:  IT NE
4AC65E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4AC662:  LDR             R0, [R4,#0x2C]; p
4AC664:  MOVS            R5, #0
4AC666:  STR             R5, [R4,#0x28]
4AC668:  CBZ             R0, loc_4AC670
4AC66A:  BLX             free
4AC66E:  STR             R5, [R4,#0x2C]
4AC670:  LDR             R0, [R4,#0x20]; p
4AC672:  STR             R5, [R4,#0x1C]
4AC674:  CMP             R0, #0
4AC676:  STR             R5, [R4,#0x24]
4AC678:  BEQ             loc_4AC682
4AC67A:  BLX             free
4AC67E:  MOVS            R0, #0
4AC680:  STR             R0, [R4,#0x20]
4AC682:  LDR             R0, [R4,#0x14]; p
4AC684:  MOVS            R5, #0
4AC686:  STR             R5, [R4,#0x10]
4AC688:  CMP             R0, #0
4AC68A:  STR             R5, [R4,#0x18]
4AC68C:  BEQ             loc_4AC694
4AC68E:  BLX             free
4AC692:  STR             R5, [R4,#0x14]
4AC694:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AC6A4)
4AC696:  MOVW            R3, #0xD8F3
4AC69A:  STR             R5, [R4,#0xC]
4AC69C:  MOVT            R3, #0xA08A
4AC6A0:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AC6A2:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AC6A4:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AC6A6:  LDRD.W          R1, R2, [R0]
4AC6AA:  SUBS            R1, R4, R1
4AC6AC:  ASRS            R1, R1, #2
4AC6AE:  MULS            R1, R3
4AC6B0:  LDRB            R3, [R2,R1]
4AC6B2:  ORR.W           R3, R3, #0x80
4AC6B6:  STRB            R3, [R2,R1]
4AC6B8:  LDR             R2, [R0,#0xC]
4AC6BA:  CMP             R1, R2
4AC6BC:  IT LT
4AC6BE:  STRLT           R1, [R0,#0xC]
4AC6C0:  POP             {R4,R5,R7,PC}
