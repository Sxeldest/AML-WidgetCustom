; =========================================================
; Game Engine Function: _ZN9CSprite2d12InitPerFrameEv
; Address            : 0x5C89A8 - 0x5C89EA
; =========================================================

5C89A8:  PUSH            {R4,R6,R7,LR}
5C89AA:  ADD             R7, SP, #8
5C89AC:  LDR             R0, =(Scene_ptr - 0x5C89BA)
5C89AE:  VMOV.F32        S0, #1.0
5C89B2:  LDR             R1, =(_ZN9CSprite2d15nextBufferIndexE_ptr - 0x5C89BE)
5C89B4:  MOVS            R3, #0
5C89B6:  ADD             R0, PC; Scene_ptr
5C89B8:  LDR             R2, =(_ZN9CSprite2d16nextBufferVertexE_ptr - 0x5C89C0)
5C89BA:  ADD             R1, PC; _ZN9CSprite2d15nextBufferIndexE_ptr
5C89BC:  ADD             R2, PC; _ZN9CSprite2d16nextBufferVertexE_ptr
5C89BE:  LDR             R0, [R0]; Scene
5C89C0:  LDR             R1, [R1]; CSprite2d::nextBufferIndex ...
5C89C2:  LDR             R2, [R2]; CSprite2d::nextBufferVertex ...
5C89C4:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
5C89C6:  STR             R3, [R1]; CSprite2d::nextBufferIndex
5C89C8:  STR             R3, [R2]; CSprite2d::nextBufferVertex
5C89CA:  VLDR            S2, [R0,#0x80]
5C89CE:  LDR             R0, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5C89DA)
5C89D0:  VDIV.F32        S0, S0, S2
5C89D4:  LDR             R1, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5C89DC)
5C89D6:  ADD             R0, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5C89D8:  ADD             R1, PC; _ZN9CSprite2d11NearScreenZE_ptr
5C89DA:  LDR             R0, [R0]; CSprite2d::RecipNearClip ...
5C89DC:  LDR             R4, [R1]; CSprite2d::NearScreenZ ...
5C89DE:  VSTR            S0, [R0]
5C89E2:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5C89E6:  STR             R0, [R4]; CSprite2d::NearScreenZ
5C89E8:  POP             {R4,R6,R7,PC}
