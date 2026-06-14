; =========================================================
; Game Engine Function: sub_1A64CC
; Address            : 0x1A64CC - 0x1A64F2
; =========================================================

1A64CC:  PUSH            {R7,LR}
1A64CE:  MOV             R7, SP
1A64D0:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x1A64D6)
1A64D2:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
1A64D4:  LDR             R0, [R0]; this
1A64D6:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
1A64DA:  ADDS            R0, #4; this
1A64DC:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
1A64E0:  LDR             R0, =(sub_1A64AC+1 - 0x1A64EA)
1A64E2:  MOVS            R1, #0; obj
1A64E4:  LDR             R2, =(unk_67A000 - 0x1A64EC)
1A64E6:  ADD             R0, PC; sub_1A64AC ; lpfunc
1A64E8:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A64EA:  POP.W           {R7,LR}
1A64EE:  B.W             j___cxa_atexit
