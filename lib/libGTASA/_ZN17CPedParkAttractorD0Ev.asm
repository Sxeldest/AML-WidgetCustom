; =========================================================
; Game Engine Function: _ZN17CPedParkAttractorD0Ev
; Address            : 0x4AC7E8 - 0x4AC866
; =========================================================

4AC7E8:  PUSH            {R4,R5,R7,LR}
4AC7EA:  ADD             R7, SP, #8
4AC7EC:  MOV             R4, R0
4AC7EE:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4AC7F6)
4AC7F0:  MOV             R1, R4
4AC7F2:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4AC7F4:  LDR             R2, [R0]; `vtable for'CPedAttractor ...
4AC7F6:  LDR.W           R0, [R1,#8]!; CEntity **
4AC7FA:  ADDS            R2, #8
4AC7FC:  STR             R2, [R4]
4AC7FE:  CMP             R0, #0
4AC800:  IT NE
4AC802:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4AC806:  LDR             R0, [R4,#0x2C]; p
4AC808:  MOVS            R5, #0
4AC80A:  STR             R5, [R4,#0x28]
4AC80C:  CBZ             R0, loc_4AC814
4AC80E:  BLX             free
4AC812:  STR             R5, [R4,#0x2C]
4AC814:  LDR             R0, [R4,#0x20]; p
4AC816:  STR             R5, [R4,#0x1C]
4AC818:  CMP             R0, #0
4AC81A:  STR             R5, [R4,#0x24]
4AC81C:  BEQ             loc_4AC826
4AC81E:  BLX             free
4AC822:  MOVS            R0, #0
4AC824:  STR             R0, [R4,#0x20]
4AC826:  LDR             R0, [R4,#0x14]; p
4AC828:  MOVS            R5, #0
4AC82A:  STR             R5, [R4,#0x10]
4AC82C:  CMP             R0, #0
4AC82E:  STR             R5, [R4,#0x18]
4AC830:  BEQ             loc_4AC838
4AC832:  BLX             free
4AC836:  STR             R5, [R4,#0x14]
4AC838:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AC848)
4AC83A:  MOVW            R3, #0xD8F3
4AC83E:  STR             R5, [R4,#0xC]
4AC840:  MOVT            R3, #0xA08A
4AC844:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AC846:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AC848:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AC84A:  LDRD.W          R1, R2, [R0]
4AC84E:  SUBS            R1, R4, R1
4AC850:  ASRS            R1, R1, #2
4AC852:  MULS            R1, R3
4AC854:  LDRB            R3, [R2,R1]
4AC856:  ORR.W           R3, R3, #0x80
4AC85A:  STRB            R3, [R2,R1]
4AC85C:  LDR             R2, [R0,#0xC]
4AC85E:  CMP             R1, R2
4AC860:  IT LT
4AC862:  STRLT           R1, [R0,#0xC]
4AC864:  POP             {R4,R5,R7,PC}
