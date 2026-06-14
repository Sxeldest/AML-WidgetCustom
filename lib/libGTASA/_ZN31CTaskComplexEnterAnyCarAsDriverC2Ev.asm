; =========================================================
; Game Engine Function: _ZN31CTaskComplexEnterAnyCarAsDriverC2Ev
; Address            : 0x4FC954 - 0x4FC968
; =========================================================

4FC954:  PUSH            {R7,LR}
4FC956:  MOV             R7, SP
4FC958:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FC95C:  LDR             R1, =(_ZTV31CTaskComplexEnterAnyCarAsDriver_ptr - 0x4FC962)
4FC95E:  ADD             R1, PC; _ZTV31CTaskComplexEnterAnyCarAsDriver_ptr
4FC960:  LDR             R1, [R1]; `vtable for'CTaskComplexEnterAnyCarAsDriver ...
4FC962:  ADDS            R1, #8
4FC964:  STR             R1, [R0]
4FC966:  POP             {R7,PC}
