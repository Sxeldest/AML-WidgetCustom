; =========================================================
; Game Engine Function: _Z15RpUVAnimDestroyP15RtAnimAnimation
; Address            : 0x1CA2D8 - 0x1CA30C
; =========================================================

1CA2D8:  PUSH            {R4,R6,R7,LR}
1CA2DA:  ADD             R7, SP, #8
1CA2DC:  MOV             R4, R0
1CA2DE:  LDR             R0, [R4,#0x14]
1CA2E0:  LDR             R1, [R0,#0x40]
1CA2E2:  SUBS            R1, #1
1CA2E4:  STR             R1, [R0,#0x40]
1CA2E6:  BEQ             loc_1CA2EC
1CA2E8:  MOVS            R0, #1
1CA2EA:  POP             {R4,R6,R7,PC}
1CA2EC:  LDR             R0, =(RwEngineInstance_ptr - 0x1CA2F4)
1CA2EE:  LDR             R2, =(dword_6B8AE8 - 0x1CA2F8)
1CA2F0:  ADD             R0, PC; RwEngineInstance_ptr
1CA2F2:  LDR             R1, [R4,#0x14]
1CA2F4:  ADD             R2, PC; dword_6B8AE8
1CA2F6:  LDR             R0, [R0]; RwEngineInstance
1CA2F8:  LDR             R3, [R0]
1CA2FA:  LDR             R0, [R2]
1CA2FC:  LDR.W           R2, [R3,#0x140]
1CA300:  BLX             R2
1CA302:  MOV             R0, R4
1CA304:  BLX             j__Z22RtAnimAnimationDestroyP15RtAnimAnimation; RtAnimAnimationDestroy(RtAnimAnimation *)
1CA308:  MOVS            R0, #1
1CA30A:  POP             {R4,R6,R7,PC}
