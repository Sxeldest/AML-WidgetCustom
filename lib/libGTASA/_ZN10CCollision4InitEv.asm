; =========================================================
; Game Engine Function: _ZN10CCollision4InitEv
; Address            : 0x2D96B0 - 0x2D9742
; =========================================================

2D96B0:  PUSH            {R4,R6,R7,LR}
2D96B2:  ADD             R7, SP, #8
2D96B4:  MOVW            R0, #0x384; unsigned int
2D96B8:  BLX             _Znaj; operator new[](uint)
2D96BC:  LDR             R1, =(_ZN10CCollision16ms_colModelCacheE_ptr - 0x2D96CA)
2D96BE:  ADD.W           R3, R0, #0x378
2D96C2:  ADD.W           LR, R0, #0x36C
2D96C6:  ADD             R1, PC; _ZN10CCollision16ms_colModelCacheE_ptr
2D96C8:  LDR             R1, [R1]; CCollision::ms_colModelCache ...
2D96CA:  ADD.W           R2, R1, #0xC
2D96CE:  ADD.W           R12, R1, #0x18
2D96D2:  STR             R0, [R1,#(dword_793018 - 0x792FE8)]
2D96D4:  STR             R2, [R1,#(dword_792FF0 - 0x792FE8)]
2D96D6:  ADD.W           R2, R1, #0x24 ; '$'
2D96DA:  STR             R1, [R1,#(dword_792FF8 - 0x792FE8)]
2D96DC:  STR             R3, [R1,#(dword_793010 - 0x792FE8)]
2D96DE:  STRD.W          R12, R2, [R0,#0x37C]
2D96E2:  STR             R3, [R1,#(dword_793008 - 0x792FE8)]
2D96E4:  STR.W           R3, [R0,#0x374]
2D96E8:  LDR             R3, [R1,#(dword_793008 - 0x792FE8)]
2D96EA:  STR.W           LR, [R3,#4]
2D96EE:  LDR             R3, =(_ZN10CCollision16ms_colModelCacheE_ptr - 0x2D96FA)
2D96F0:  STR.W           R12, [R0,#0x370]
2D96F4:  MOVS            R0, #0x49 ; 'I'
2D96F6:  ADD             R3, PC; _ZN10CCollision16ms_colModelCacheE_ptr
2D96F8:  STR.W           LR, [R1,#(dword_793008 - 0x792FE8)]
2D96FC:  MOV.W           R1, #0x360
2D9700:  LDR.W           R12, [R3]; CCollision::ms_colModelCache ...
2D9704:  LDR.W           R4, [R12,#(dword_793018 - 0x792FE8)]
2D9708:  SUBS            R0, #1
2D970A:  ADDS            R3, R4, R1
2D970C:  SUBS            R1, #0xC
2D970E:  STR.W           LR, [R3,#8]
2D9712:  LDR.W           R2, [R12,#(dword_793008 - 0x792FE8)]
2D9716:  STR             R3, [R2,#4]
2D9718:  ADD.W           R2, R12, #0x18
2D971C:  STR             R2, [R3,#4]
2D971E:  ADD.W           R2, R0, R0,LSL#1
2D9722:  STR.W           R3, [R12,#(dword_793008 - 0x792FE8)]
2D9726:  ADD.W           LR, R4, R2,LSL#2
2D972A:  ADDS.W          R2, R1, #0xC
2D972E:  BNE             loc_2D9704
2D9730:  LDR             R0, =(_ZN10CCollision20ms_collisionInMemoryE_ptr - 0x2D9738)
2D9732:  MOVS            R1, #0
2D9734:  ADD             R0, PC; _ZN10CCollision20ms_collisionInMemoryE_ptr
2D9736:  LDR             R0, [R0]; this
2D9738:  STR             R1, [R0]; CCollision::ms_collisionInMemory
2D973A:  POP.W           {R4,R6,R7,LR}
2D973E:  B.W             j_j__ZN9CColStore10InitialiseEv; j_CColStore::Initialise(void)
