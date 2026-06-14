; =========================================================
; Game Engine Function: _ZN17CPedStepAttractorD0Ev
; Address            : 0x4AC874 - 0x4AC8F2
; =========================================================

4AC874:  PUSH            {R4,R5,R7,LR}
4AC876:  ADD             R7, SP, #8
4AC878:  MOV             R4, R0
4AC87A:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4AC882)
4AC87C:  MOV             R1, R4
4AC87E:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4AC880:  LDR             R2, [R0]; `vtable for'CPedAttractor ...
4AC882:  LDR.W           R0, [R1,#8]!; CEntity **
4AC886:  ADDS            R2, #8
4AC888:  STR             R2, [R4]
4AC88A:  CMP             R0, #0
4AC88C:  IT NE
4AC88E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4AC892:  LDR             R0, [R4,#0x2C]; p
4AC894:  MOVS            R5, #0
4AC896:  STR             R5, [R4,#0x28]
4AC898:  CBZ             R0, loc_4AC8A0
4AC89A:  BLX             free
4AC89E:  STR             R5, [R4,#0x2C]
4AC8A0:  LDR             R0, [R4,#0x20]; p
4AC8A2:  STR             R5, [R4,#0x1C]
4AC8A4:  CMP             R0, #0
4AC8A6:  STR             R5, [R4,#0x24]
4AC8A8:  BEQ             loc_4AC8B2
4AC8AA:  BLX             free
4AC8AE:  MOVS            R0, #0
4AC8B0:  STR             R0, [R4,#0x20]
4AC8B2:  LDR             R0, [R4,#0x14]; p
4AC8B4:  MOVS            R5, #0
4AC8B6:  STR             R5, [R4,#0x10]
4AC8B8:  CMP             R0, #0
4AC8BA:  STR             R5, [R4,#0x18]
4AC8BC:  BEQ             loc_4AC8C4
4AC8BE:  BLX             free
4AC8C2:  STR             R5, [R4,#0x14]
4AC8C4:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AC8D4)
4AC8C6:  MOVW            R3, #0xD8F3
4AC8CA:  STR             R5, [R4,#0xC]
4AC8CC:  MOVT            R3, #0xA08A
4AC8D0:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AC8D2:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AC8D4:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AC8D6:  LDRD.W          R1, R2, [R0]
4AC8DA:  SUBS            R1, R4, R1
4AC8DC:  ASRS            R1, R1, #2
4AC8DE:  MULS            R1, R3
4AC8E0:  LDRB            R3, [R2,R1]
4AC8E2:  ORR.W           R3, R3, #0x80
4AC8E6:  STRB            R3, [R2,R1]
4AC8E8:  LDR             R2, [R0,#0xC]
4AC8EA:  CMP             R1, R2
4AC8EC:  IT LT
4AC8EE:  STRLT           R1, [R0,#0xC]
4AC8F0:  POP             {R4,R5,R7,PC}
