; =========================================================
; Game Engine Function: _ZN14FxMemoryPool_c4InitEv
; Address            : 0x36DAA8 - 0x36DAD2
; =========================================================

36DAA8:  PUSH            {R4,R5,R7,LR}
36DAAA:  ADD             R7, SP, #8
36DAAC:  MOV             R5, R0
36DAAE:  MOVS            R4, #0
36DAB0:  MOV.W           R0, #0x80000
36DAB4:  STRD.W          R0, R4, [R5,#4]
36DAB8:  MOV.W           R0, #0x80000; byte_count
36DABC:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
36DAC0:  CMP             R0, #0
36DAC2:  STR             R0, [R5]
36DAC4:  BEQ             loc_36DACE
36DAC6:  LDR             R1, [R5,#4]
36DAC8:  BLX             j___aeabi_memclr8_1
36DACC:  MOVS            R4, #1
36DACE:  MOV             R0, R4
36DAD0:  POP             {R4,R5,R7,PC}
