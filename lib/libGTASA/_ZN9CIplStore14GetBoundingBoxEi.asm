; =========================================================
; Game Engine Function: _ZN9CIplStore14GetBoundingBoxEi
; Address            : 0x281164 - 0x281180
; =========================================================

281164:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28116A)
281166:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
281168:  LDR             R1, [R1]; CIplStore::ms_pPool ...
28116A:  LDR             R1, [R1]; CIplStore::ms_pPool
28116C:  LDR             R2, [R1,#4]
28116E:  LDRSB           R2, [R2,R0]
281170:  CMP             R2, #0
281172:  ITEEE LT
281174:  MOVLT           R0, #0
281176:  MOVGE           R2, #0x34 ; '4'
281178:  LDRGE           R1, [R1]
28117A:  MLAGE.W         R0, R0, R2, R1
28117E:  BX              LR
