; =========================================================
; Game Engine Function: _ZN22CTaskSimpleClearLookAtC2Ev
; Address            : 0x4F0998 - 0x4F09AC
; =========================================================

4F0998:  PUSH            {R7,LR}
4F099A:  MOV             R7, SP
4F099C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F09A0:  LDR             R1, =(_ZTV22CTaskSimpleClearLookAt_ptr - 0x4F09A6)
4F09A2:  ADD             R1, PC; _ZTV22CTaskSimpleClearLookAt_ptr
4F09A4:  LDR             R1, [R1]; `vtable for'CTaskSimpleClearLookAt ...
4F09A6:  ADDS            R1, #8
4F09A8:  STR             R1, [R0]
4F09AA:  POP             {R7,PC}
