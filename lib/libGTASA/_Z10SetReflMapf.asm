; =========================================================
; Game Engine Function: _Z10SetReflMapf
; Address            : 0x2CB014 - 0x2CB046
; =========================================================

2CB014:  MOV             R1, R0; float
2CB016:  LDR             R0, =(_ZN8CMirrors10reflBufferE_ptr - 0x2CB01C)
2CB018:  ADD             R0, PC; _ZN8CMirrors10reflBufferE_ptr
2CB01A:  LDR             R0, [R0]; CMirrors::reflBuffer ...
2CB01C:  LDR             R0, [R0]; CMirrors::reflBuffer
2CB01E:  CBZ             R0, loc_2CB03C
2CB020:  PUSH            {R7,LR}
2CB022:  MOV             R7, SP
2CB024:  LDR             R2, =(RasterExtOffset_ptr - 0x2CB02A)
2CB026:  ADD             R2, PC; RasterExtOffset_ptr
2CB028:  LDR             R2, [R2]; RasterExtOffset
2CB02A:  LDR             R2, [R2]
2CB02C:  ADD             R0, R2
2CB02E:  MOVS            R2, #1; int
2CB030:  LDR             R0, [R0,#0x18]
2CB032:  LDR             R0, [R0]; void *
2CB034:  BLX             j__Z13emu_SetEnvMapPvfi; emu_SetEnvMap(void *,float,int)
2CB038:  POP.W           {R7,LR}
2CB03C:  LDR             R0, =(byte_70BF3C - 0x2CB044)
2CB03E:  MOVS            R1, #1
2CB040:  ADD             R0, PC; byte_70BF3C
2CB042:  STRB            R1, [R0]
2CB044:  BX              LR
