; =========================================================
; Game Engine Function: _ZN15CProjectileInfo8ShutdownEv
; Address            : 0x5D9254 - 0x5D9292
; =========================================================

5D9254:  PUSH            {R4-R7,LR}
5D9256:  ADD             R7, SP, #0xC
5D9258:  PUSH.W          {R8,R9,R11}
5D925C:  LDR             R0, =(gaProjectileInfo_ptr - 0x5D9268)
5D925E:  MOVS            R5, #0x20 ; ' '
5D9260:  MOV.W           R9, #0
5D9264:  ADD             R0, PC; gaProjectileInfo_ptr
5D9266:  LDR             R6, [R0]; gaProjectileInfo
5D9268:  LDR             R0, =(g_fxMan_ptr - 0x5D926E)
5D926A:  ADD             R0, PC; g_fxMan_ptr
5D926C:  LDR.W           R8, [R0]; g_fxMan
5D9270:  LDR             R0, =(gaProjectileInfo_ptr - 0x5D9276)
5D9272:  ADD             R0, PC; gaProjectileInfo_ptr
5D9274:  LDR             R4, [R0]; gaProjectileInfo
5D9276:  LDR             R1, [R6,R5]; FxSystem_c *
5D9278:  CBZ             R1, loc_5D9284
5D927A:  MOV             R0, R8; this
5D927C:  BLX.W           j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
5D9280:  STR.W           R9, [R4,R5]
5D9284:  ADDS            R5, #0x24 ; '$'
5D9286:  CMP.W           R5, #0x4A0
5D928A:  BNE             loc_5D9276
5D928C:  POP.W           {R8,R9,R11}
5D9290:  POP             {R4-R7,PC}
