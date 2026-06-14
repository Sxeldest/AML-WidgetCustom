; =========================================================
; Game Engine Function: _Z15NVCompressFlushv
; Address            : 0x276A94 - 0x276AB8
; =========================================================

276A94:  LDR             R0, =(dword_6DA0D4 - 0x276A9A)
276A96:  ADD             R0, PC; dword_6DA0D4
276A98:  LDR             R0, [R0]; void *
276A9A:  CBZ             R0, loc_276AA8
276A9C:  PUSH            {R7,LR}
276A9E:  MOV             R7, SP
276AA0:  BLX             _ZdaPv; operator delete[](void *)
276AA4:  POP.W           {R7,LR}
276AA8:  LDR             R0, =(dword_6DA0D8 - 0x276AB2)
276AAA:  MOVS            R2, #0
276AAC:  LDR             R1, =(dword_6DA0D4 - 0x276AB4)
276AAE:  ADD             R0, PC; dword_6DA0D8
276AB0:  ADD             R1, PC; dword_6DA0D4
276AB2:  STR             R2, [R0]
276AB4:  STR             R2, [R1]
276AB6:  BX              LR
