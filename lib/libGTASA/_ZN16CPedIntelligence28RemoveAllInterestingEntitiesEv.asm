; =========================================================
; Game Engine Function: _ZN16CPedIntelligence28RemoveAllInterestingEntitiesEv
; Address            : 0x4C18F4 - 0x4C193C
; =========================================================

4C18F4:  PUSH            {R4,R5,R7,LR}
4C18F6:  ADD             R7, SP, #8
4C18F8:  MOV             R4, R0
4C18FA:  LDR.W           R0, [R4,#0x28C]; this
4C18FE:  CMP             R0, #0
4C1900:  ITT NE
4C1902:  ADDNE.W         R1, R4, #0x28C; CEntity **
4C1906:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C190A:  MOVS            R5, #0
4C190C:  STR.W           R5, [R4,#0x28C]
4C1910:  LDR.W           R0, [R4,#0x290]; this
4C1914:  CMP             R0, #0
4C1916:  ITT NE
4C1918:  ADDNE.W         R1, R4, #0x290; CEntity **
4C191C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1920:  STR.W           R5, [R4,#0x290]
4C1924:  LDR.W           R0, [R4,#0x294]; this
4C1928:  ADD.W           R4, R4, #0x294
4C192C:  CMP             R0, #0
4C192E:  ITT NE
4C1930:  MOVNE           R1, R4; CEntity **
4C1932:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1936:  MOVS            R0, #0
4C1938:  STR             R0, [R4]
4C193A:  POP             {R4,R5,R7,PC}
