; =========================================================
; Game Engine Function: _ZN21CModelInfoAccelerator17AllocModelInfoIdsEv
; Address            : 0x3864C8 - 0x3864E2
; =========================================================

3864C8:  PUSH            {R4,R6,R7,LR}
3864CA:  ADD             R7, SP, #8
3864CC:  MOV             R4, R0
3864CE:  MOVW            R0, #0xA08C; unsigned int
3864D2:  BLX             _Znaj; operator new[](uint)
3864D6:  MOVW            R1, #0xA08C
3864DA:  STR             R0, [R4]
3864DC:  BLX             j___aeabi_memclr8_1
3864E0:  POP             {R4,R6,R7,PC}
