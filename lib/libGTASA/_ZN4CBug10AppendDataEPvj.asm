; =========================================================
; Game Engine Function: _ZN4CBug10AppendDataEPvj
; Address            : 0x3BDE5C - 0x3BDEB8
; =========================================================

3BDE5C:  PUSH            {R4-R7,LR}
3BDE5E:  ADD             R7, SP, #0xC
3BDE60:  PUSH.W          {R8-R11}
3BDE64:  SUB             SP, SP, #4
3BDE66:  MOV             R4, R0
3BDE68:  MOV             R8, R2
3BDE6A:  LDR             R5, [R4,#4]
3BDE6C:  MOV             R10, R1
3BDE6E:  ADD.W           R6, R5, R8
3BDE72:  MOV             R0, R6; unsigned int
3BDE74:  BLX             _Znaj; operator new[](uint)
3BDE78:  MOV             R1, R6
3BDE7A:  MOV             R11, R0
3BDE7C:  BLX             j___aeabi_memclr8_1
3BDE80:  LDR.W           R9, [R4]
3BDE84:  MOV             R0, R11; void *
3BDE86:  MOV             R2, R5; size_t
3BDE88:  MOV             R1, R9; void *
3BDE8A:  BLX             memcpy_1
3BDE8E:  ADD.W           R0, R11, R5; void *
3BDE92:  MOV             R1, R10; void *
3BDE94:  MOV             R2, R8; size_t
3BDE96:  BLX             memcpy_1
3BDE9A:  CMP.W           R9, #0
3BDE9E:  BEQ             loc_3BDEA8
3BDEA0:  MOV             R0, R9; void *
3BDEA2:  BLX             _ZdaPv; operator delete[](void *)
3BDEA6:  LDR             R5, [R4,#4]
3BDEA8:  ADD.W           R0, R5, R8
3BDEAC:  STRD.W          R11, R0, [R4]
3BDEB0:  ADD             SP, SP, #4
3BDEB2:  POP.W           {R8-R11}
3BDEB6:  POP             {R4-R7,PC}
