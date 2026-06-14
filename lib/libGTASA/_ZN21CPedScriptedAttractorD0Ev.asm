; =========================================================
; Game Engine Function: _ZN21CPedScriptedAttractorD0Ev
; Address            : 0x4AC75C - 0x4AC7DA
; =========================================================

4AC75C:  PUSH            {R4,R5,R7,LR}
4AC75E:  ADD             R7, SP, #8
4AC760:  MOV             R4, R0
4AC762:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4AC76A)
4AC764:  MOV             R1, R4
4AC766:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4AC768:  LDR             R2, [R0]; `vtable for'CPedAttractor ...
4AC76A:  LDR.W           R0, [R1,#8]!; CEntity **
4AC76E:  ADDS            R2, #8
4AC770:  STR             R2, [R4]
4AC772:  CMP             R0, #0
4AC774:  IT NE
4AC776:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4AC77A:  LDR             R0, [R4,#0x2C]; p
4AC77C:  MOVS            R5, #0
4AC77E:  STR             R5, [R4,#0x28]
4AC780:  CBZ             R0, loc_4AC788
4AC782:  BLX             free
4AC786:  STR             R5, [R4,#0x2C]
4AC788:  LDR             R0, [R4,#0x20]; p
4AC78A:  STR             R5, [R4,#0x1C]
4AC78C:  CMP             R0, #0
4AC78E:  STR             R5, [R4,#0x24]
4AC790:  BEQ             loc_4AC79A
4AC792:  BLX             free
4AC796:  MOVS            R0, #0
4AC798:  STR             R0, [R4,#0x20]
4AC79A:  LDR             R0, [R4,#0x14]; p
4AC79C:  MOVS            R5, #0
4AC79E:  STR             R5, [R4,#0x10]
4AC7A0:  CMP             R0, #0
4AC7A2:  STR             R5, [R4,#0x18]
4AC7A4:  BEQ             loc_4AC7AC
4AC7A6:  BLX             free
4AC7AA:  STR             R5, [R4,#0x14]
4AC7AC:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AC7BC)
4AC7AE:  MOVW            R3, #0xD8F3
4AC7B2:  STR             R5, [R4,#0xC]
4AC7B4:  MOVT            R3, #0xA08A
4AC7B8:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AC7BA:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AC7BC:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AC7BE:  LDRD.W          R1, R2, [R0]
4AC7C2:  SUBS            R1, R4, R1
4AC7C4:  ASRS            R1, R1, #2
4AC7C6:  MULS            R1, R3
4AC7C8:  LDRB            R3, [R2,R1]
4AC7CA:  ORR.W           R3, R3, #0x80
4AC7CE:  STRB            R3, [R2,R1]
4AC7D0:  LDR             R2, [R0,#0xC]
4AC7D2:  CMP             R1, R2
4AC7D4:  IT LT
4AC7D6:  STRLT           R1, [R0,#0xC]
4AC7D8:  POP             {R4,R5,R7,PC}
