; =========================================================
; Game Engine Function: _ZN13CEventGunShotD0Ev
; Address            : 0x370BBC - 0x370C06
; =========================================================

370BBC:  PUSH            {R4,R6,R7,LR}
370BBE:  ADD             R7, SP, #8
370BC0:  MOV             R4, R0
370BC2:  LDR             R0, =(_ZTV13CEventGunShot_ptr - 0x370BCA)
370BC4:  MOV             R1, R4
370BC6:  ADD             R0, PC; _ZTV13CEventGunShot_ptr
370BC8:  LDR             R2, [R0]; `vtable for'CEventGunShot ...
370BCA:  LDR.W           R0, [R1,#0x10]!; CEntity **
370BCE:  ADDS            R2, #8
370BD0:  STR             R2, [R4]
370BD2:  CMP             R0, #0
370BD4:  IT NE
370BD6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
370BDA:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x370BE8)
370BDC:  MOV             R3, #0xF0F0F0F1
370BE4:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
370BE6:  LDR             R0, [R0]; CPools::ms_pEventPool ...
370BE8:  LDR             R0, [R0]; CPools::ms_pEventPool
370BEA:  LDRD.W          R1, R2, [R0]
370BEE:  SUBS            R1, R4, R1
370BF0:  ASRS            R1, R1, #2
370BF2:  MULS            R1, R3
370BF4:  LDRB            R3, [R2,R1]
370BF6:  ORR.W           R3, R3, #0x80
370BFA:  STRB            R3, [R2,R1]
370BFC:  LDR             R2, [R0,#0xC]
370BFE:  CMP             R1, R2
370C00:  IT LT
370C02:  STRLT           R1, [R0,#0xC]
370C04:  POP             {R4,R6,R7,PC}
