; =========================================================
; Game Engine Function: _ZN13CShadowCamera13ReInitRastersEv
; Address            : 0x5B6FB8 - 0x5B6FE8
; =========================================================

5B6FB8:  PUSH            {R4,R5,R7,LR}
5B6FBA:  ADD             R7, SP, #8
5B6FBC:  MOV             R4, R0
5B6FBE:  MOVS            R2, #0
5B6FC0:  LDR             R1, [R4]
5B6FC2:  LDR             R0, [R1,#0x60]
5B6FC4:  LDR             R5, [R0,#0xC]
5B6FC6:  STR             R2, [R1,#0x60]
5B6FC8:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5B6FCC:  MOV             R0, R5; int
5B6FCE:  MOV             R1, R5; int
5B6FD0:  MOVS            R2, #0; int
5B6FD2:  MOVS            R3, #5; int
5B6FD4:  BLX.W           j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
5B6FD8:  MOV             R1, R0
5B6FDA:  LDR             R0, [R4]
5B6FDC:  STR             R1, [R0,#0x60]
5B6FDE:  LDR             R0, [R4,#4]
5B6FE0:  POP.W           {R4,R5,R7,LR}
5B6FE4:  B.W             sub_19DA68
