; =========================================================
; Game Engine Function: _ZN9CIplStore10GetIplNameEi
; Address            : 0x280850 - 0x28086E
; =========================================================

280850:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280856)
280852:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
280854:  LDR             R1, [R1]; CIplStore::ms_pPool ...
280856:  LDR             R1, [R1]; CIplStore::ms_pPool
280858:  LDR             R2, [R1,#4]
28085A:  LDRSB           R2, [R2,R0]
28085C:  CMP             R2, #0
28085E:  ITEEE LT
280860:  MOVLT           R0, #0
280862:  MOVGE           R2, #0x34 ; '4'
280864:  LDRGE           R1, [R1]
280866:  MLAGE.W         R0, R0, R2, R1
28086A:  ADDS            R0, #0x10
28086C:  BX              LR
