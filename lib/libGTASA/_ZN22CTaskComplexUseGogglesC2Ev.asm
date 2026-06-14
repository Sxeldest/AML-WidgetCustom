; =========================================================
; Game Engine Function: _ZN22CTaskComplexUseGogglesC2Ev
; Address            : 0x4F1210 - 0x4F1224
; =========================================================

4F1210:  PUSH            {R7,LR}; Alternative name is 'CTaskComplexUseGoggles::CTaskComplexUseGoggles(void)'
4F1212:  MOV             R7, SP
4F1214:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F1218:  LDR             R1, =(_ZTV22CTaskComplexUseGoggles_ptr - 0x4F121E)
4F121A:  ADD             R1, PC; _ZTV22CTaskComplexUseGoggles_ptr
4F121C:  LDR             R1, [R1]; `vtable for'CTaskComplexUseGoggles ...
4F121E:  ADDS            R1, #8
4F1220:  STR             R1, [R0]
4F1222:  POP             {R7,PC}
