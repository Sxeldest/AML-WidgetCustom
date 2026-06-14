; =========================================================
; Game Engine Function: _ZN11CTagManager11SetupAtomicEP8RpAtomic
; Address            : 0x36230C - 0x362324
; =========================================================

36230C:  LDR             R1, [R0,#0x18]
36230E:  MOVS            R3, #0
362310:  LDR             R2, [R1,#0x20]
362312:  LDR             R2, [R2,#4]
362314:  STR             R3, [R2,#8]
362316:  LDR             R2, [R1,#8]
362318:  ORR.W           R2, R2, #0x40 ; '@'
36231C:  STR             R2, [R1,#8]
36231E:  MOVS            R1, #0
362320:  B.W             j_j__ZN18CVisibilityPlugins12SetUserValueEP8RpAtomict; j_CVisibilityPlugins::SetUserValue(RpAtomic *,ushort)
