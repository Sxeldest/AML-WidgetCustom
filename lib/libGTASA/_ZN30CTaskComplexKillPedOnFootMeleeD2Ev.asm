; =========================================================
; Game Engine Function: _ZN30CTaskComplexKillPedOnFootMeleeD2Ev
; Address            : 0x4E181C - 0x4E1844
; =========================================================

4E181C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexKillPedOnFootMelee::~CTaskComplexKillPedOnFootMelee()'
4E181E:  ADD             R7, SP, #8
4E1820:  MOV             R4, R0
4E1822:  LDR             R0, =(_ZTV30CTaskComplexKillPedOnFootMelee_ptr - 0x4E182A)
4E1824:  MOV             R1, R4
4E1826:  ADD             R0, PC; _ZTV30CTaskComplexKillPedOnFootMelee_ptr
4E1828:  LDR             R2, [R0]; `vtable for'CTaskComplexKillPedOnFootMelee ...
4E182A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4E182E:  ADDS            R2, #8
4E1830:  STR             R2, [R4]
4E1832:  CMP             R0, #0
4E1834:  IT NE
4E1836:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E183A:  MOV             R0, R4; this
4E183C:  POP.W           {R4,R6,R7,LR}
4E1840:  B.W             sub_18EDE8
