; =========================================================
; Game Engine Function: _ZN12CPostEffects23RasterCreatePostEffectsE6RwRect
; Address            : 0x5B2220 - 0x5B223A
; =========================================================

5B2220:  LDR             R0, =(Scene_ptr - 0x5B222A)
5B2222:  MOV             R1, R3; int
5B2224:  MOVS            R3, #5; int
5B2226:  ADD             R0, PC; Scene_ptr
5B2228:  LDR             R0, [R0]; Scene
5B222A:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
5B222C:  LDR             R0, [R0,#0x60]
5B222E:  LDR.W           R12, [R0,#0x14]
5B2232:  MOV             R0, R2; int
5B2234:  MOV             R2, R12; int
5B2236:  B.W             sub_18B6D0
