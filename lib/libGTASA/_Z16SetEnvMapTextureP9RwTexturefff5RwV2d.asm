; =========================================================
; Game Engine Function: _Z16SetEnvMapTextureP9RwTexturefff5RwV2d
; Address            : 0x2CAA1C - 0x2CAA6A
; =========================================================

2CAA1C:  PUSH            {R4-R7,LR}
2CAA1E:  ADD             R7, SP, #0xC
2CAA20:  PUSH.W          {R11}
2CAA24:  VMOV.F32        S0, #1.5
2CAA28:  MOV             R5, R2
2CAA2A:  VMOV            S2, R1
2CAA2E:  LDR             R2, =(RasterExtOffset_ptr - 0x2CAA38)
2CAA30:  MOVS            R4, #0x11
2CAA32:  MOV             R6, R3
2CAA34:  ADD             R2, PC; RasterExtOffset_ptr
2CAA36:  LDR             R3, [R0]
2CAA38:  STRB.W          R4, [R0,#0x51]
2CAA3C:  MOVS            R4, #0
2CAA3E:  LDR             R2, [R2]; RasterExtOffset
2CAA40:  VMUL.F32        S0, S2, S0
2CAA44:  LDR             R0, [R2]
2CAA46:  MOVS            R2, #0; int
2CAA48:  LDR             R0, [R3,R0]; void *
2CAA4A:  VMOV            R1, S0; float
2CAA4E:  BLX             j__Z13emu_SetEnvMapPvfi; emu_SetEnvMap(void *,float,int)
2CAA52:  LDRD.W          R2, R3, [R7,#arg_0]
2CAA56:  MOV             R0, R5
2CAA58:  MOV             R1, R6
2CAA5A:  BLX             j__Z15SetNormalMatrixff5RwV2d; SetNormalMatrix(float,float,RwV2d)
2CAA5E:  LDR             R0, =(byte_70BF3C - 0x2CAA64)
2CAA60:  ADD             R0, PC; byte_70BF3C
2CAA62:  STRB            R4, [R0]
2CAA64:  POP.W           {R11}
2CAA68:  POP             {R4-R7,PC}
