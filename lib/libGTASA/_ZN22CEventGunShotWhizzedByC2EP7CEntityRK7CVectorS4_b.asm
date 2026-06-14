; =========================================================
; Game Engine Function: _ZN22CEventGunShotWhizzedByC2EP7CEntityRK7CVectorS4_b
; Address            : 0x3775BC - 0x377628
; =========================================================

3775BC:  PUSH            {R4-R7,LR}; Alternative name is 'CEventGunShotWhizzedBy::CEventGunShotWhizzedBy(CEntity *, CVector const&, CVector const&, bool)'
3775BE:  ADD             R7, SP, #0xC
3775C0:  PUSH.W          {R11}
3775C4:  MOV             R4, R0
3775C6:  MOVS            R6, #0
3775C8:  LDRD.W          R12, LR, [R3]
3775CC:  CMP             R1, #0
3775CE:  LDR             R3, [R3,#8]
3775D0:  LDRD.W          R0, R5, [R2]
3775D4:  LDR             R2, [R2,#8]
3775D6:  STR             R6, [R4,#4]
3775D8:  MOV             R6, #0xC80100
3775E0:  STR             R6, [R4,#8]
3775E2:  MOVW            R6, #0xFFFF
3775E6:  STRH            R6, [R4,#0xC]
3775E8:  LDR             R6, =(_ZTV13CEventGunShot_ptr - 0x3775F0)
3775EA:  STR             R0, [R4,#0x14]
3775EC:  ADD             R6, PC; _ZTV13CEventGunShot_ptr
3775EE:  STRD.W          R5, R2, [R4,#0x18]
3775F2:  LDR             R0, [R7,#arg_0]
3775F4:  MOV             R2, R4
3775F6:  LDR             R6, [R6]; `vtable for'CEventGunShot ...
3775F8:  STR             R3, [R4,#0x28]
3775FA:  STRD.W          R12, LR, [R4,#0x20]
3775FE:  STRB.W          R0, [R4,#0x2C]
377602:  ADD.W           R0, R6, #8
377606:  STR             R0, [R4]
377608:  STR.W           R1, [R2,#0x10]!
37760C:  ITTT NE
37760E:  MOVNE           R0, R1; this
377610:  MOVNE           R1, R2; CEntity **
377612:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
377616:  LDR             R0, =(_ZTV22CEventGunShotWhizzedBy_ptr - 0x37761C)
377618:  ADD             R0, PC; _ZTV22CEventGunShotWhizzedBy_ptr
37761A:  LDR             R0, [R0]; `vtable for'CEventGunShotWhizzedBy ...
37761C:  ADDS            R0, #8
37761E:  STR             R0, [R4]
377620:  MOV             R0, R4
377622:  POP.W           {R11}
377626:  POP             {R4-R7,PC}
