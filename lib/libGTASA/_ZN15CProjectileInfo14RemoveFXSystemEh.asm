; =========================================================
; Game Engine Function: _ZN15CProjectileInfo14RemoveFXSystemEh
; Address            : 0x5D9224 - 0x5D924E
; =========================================================

5D9224:  PUSH            {R4,R6,R7,LR}
5D9226:  ADD             R7, SP, #8
5D9228:  MOV             R4, R0
5D922A:  MOV             R2, R1
5D922C:  LDR             R1, [R4,#0x20]; FxSystem_c *
5D922E:  CMP             R1, #0
5D9230:  IT EQ
5D9232:  POPEQ           {R4,R6,R7,PC}
5D9234:  CBZ             R2, loc_5D9242
5D9236:  LDR             R0, =(g_fxMan_ptr - 0x5D923C)
5D9238:  ADD             R0, PC; g_fxMan_ptr
5D923A:  LDR             R0, [R0]; g_fxMan ; this
5D923C:  BLX.W           j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
5D9240:  B               loc_5D9248
5D9242:  MOV             R0, R1; this
5D9244:  BLX.W           j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
5D9248:  MOVS            R0, #0
5D924A:  STR             R0, [R4,#0x20]
5D924C:  POP             {R4,R6,R7,PC}
