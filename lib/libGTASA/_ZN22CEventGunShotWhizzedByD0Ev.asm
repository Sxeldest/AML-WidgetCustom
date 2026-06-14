; =========================================================
; Game Engine Function: _ZN22CEventGunShotWhizzedByD0Ev
; Address            : 0x377630 - 0x37767A
; =========================================================

377630:  PUSH            {R4,R6,R7,LR}
377632:  ADD             R7, SP, #8
377634:  MOV             R4, R0
377636:  LDR             R0, =(_ZTV13CEventGunShot_ptr - 0x37763E)
377638:  MOV             R1, R4
37763A:  ADD             R0, PC; _ZTV13CEventGunShot_ptr
37763C:  LDR             R2, [R0]; `vtable for'CEventGunShot ...
37763E:  LDR.W           R0, [R1,#0x10]!; CEntity **
377642:  ADDS            R2, #8
377644:  STR             R2, [R4]
377646:  CMP             R0, #0
377648:  IT NE
37764A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37764E:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37765C)
377650:  MOV             R3, #0xF0F0F0F1
377658:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37765A:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37765C:  LDR             R0, [R0]; CPools::ms_pEventPool
37765E:  LDRD.W          R1, R2, [R0]
377662:  SUBS            R1, R4, R1
377664:  ASRS            R1, R1, #2
377666:  MULS            R1, R3
377668:  LDRB            R3, [R2,R1]
37766A:  ORR.W           R3, R3, #0x80
37766E:  STRB            R3, [R2,R1]
377670:  LDR             R2, [R0,#0xC]
377672:  CMP             R1, R2
377674:  IT LT
377676:  STRLT           R1, [R0,#0xC]
377678:  POP             {R4,R6,R7,PC}
