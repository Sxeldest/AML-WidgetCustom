; =========================================================
; Game Engine Function: _ZN23CTaskInteriorShopKeeperC2EP15InteriorGroup_ch
; Address            : 0x529334 - 0x529358
; =========================================================

529334:  PUSH            {R4,R5,R7,LR}
529336:  ADD             R7, SP, #8
529338:  MOV             R4, R2
52933A:  MOV             R5, R1
52933C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
529340:  LDR             R1, =(_ZTV23CTaskInteriorShopKeeper_ptr - 0x52934A)
529342:  MOVS            R2, #0
529344:  STR             R5, [R0,#0x10]
529346:  ADD             R1, PC; _ZTV23CTaskInteriorShopKeeper_ptr
529348:  STRB            R4, [R0,#0x14]
52934A:  STRD.W          R2, R2, [R0,#0x18]
52934E:  LDR             R1, [R1]; `vtable for'CTaskInteriorShopKeeper ...
529350:  STRB            R2, [R0,#0xC]
529352:  ADDS            R1, #8
529354:  STR             R1, [R0]
529356:  POP             {R4,R5,R7,PC}
