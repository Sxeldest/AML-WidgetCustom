; =========================================================
; Game Engine Function: _Z12NVHHDDSAllocv
; Address            : 0x274CB4 - 0x274CCE
; =========================================================

274CB4:  PUSH            {R4,R6,R7,LR}
274CB6:  ADD             R7, SP, #8
274CB8:  MOVW            R0, #0x62C; unsigned int
274CBC:  BLX             _Znwj; operator new(uint)
274CC0:  MOVW            R1, #0x62C
274CC4:  MOV             R4, R0
274CC6:  BLX             j___aeabi_memclr8_0
274CCA:  MOV             R0, R4
274CCC:  POP             {R4,R6,R7,PC}
