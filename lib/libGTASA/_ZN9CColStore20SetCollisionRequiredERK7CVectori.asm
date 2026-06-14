; =========================================================
; Game Engine Function: _ZN9CColStore20SetCollisionRequiredERK7CVectori
; Address            : 0x2E2838 - 0x2E2894
; =========================================================

2E2838:  PUSH            {R4,R6,R7,LR}
2E283A:  ADD             R7, SP, #8
2E283C:  SUB             SP, SP, #8
2E283E:  MOV             R4, R0
2E2840:  ADDS            R0, R1, #1
2E2842:  BNE             loc_2E285C
2E2844:  MOV.W           R0, #0xFFFFFFFF; int
2E2848:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E284C:  CBZ             R0, loc_2E2854
2E284E:  LDRB.W          R1, [R0,#0x33]
2E2852:  B               loc_2E285C
2E2854:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2E285A)
2E2856:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2E2858:  LDR             R0, [R0]; CGame::currArea ...
2E285A:  LDR             R1, [R0]; CGame::currArea
2E285C:  LDR             R0, =(_ZN9CColStore12ms_pQuadTreeE_ptr - 0x2E2864)
2E285E:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x2E2868)
2E2860:  ADD             R0, PC; _ZN9CColStore12ms_pQuadTreeE_ptr
2E2862:  LDR             R3, =(dword_796120 - 0x2E286C)
2E2864:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
2E2866:  LDR             R0, [R0]; CColStore::ms_pQuadTree ...
2E2868:  ADD             R3, PC; dword_796120
2E286A:  LDR             R2, [R2]; CGame::currArea ...
2E286C:  STR             R1, [R3]
2E286E:  LDR             R0, [R0]; CColStore::ms_pQuadTree
2E2870:  LDR             R2, [R2]; CGame::currArea
2E2872:  CMP             R1, R2
2E2874:  BNE             loc_2E287C
2E2876:  LDR             R2, =(_Z24SetIfCollisionIsRequiredRK9CVector2DPv_ptr - 0x2E287C)
2E2878:  ADD             R2, PC; _Z24SetIfCollisionIsRequiredRK9CVector2DPv_ptr
2E287A:  B               loc_2E2880
2E287C:  LDR             R2, =(_Z33SetIfCollisionIsRequiredReducedBBRK9CVector2DPv_ptr - 0x2E2882)
2E287E:  ADD             R2, PC; _Z33SetIfCollisionIsRequiredReducedBBRK9CVector2DPv_ptr
2E2880:  LDR             R2, [R2]; SetIfCollisionIsRequired(CVector2D const&,void *)
2E2882:  LDR             R1, [R4]
2E2884:  LDR             R3, [R4,#4]
2E2886:  STR             R1, [SP,#0x10+var_10]
2E2888:  MOV             R1, SP
2E288A:  STR             R3, [SP,#0x10+var_C]
2E288C:  BLX             j__ZN13CQuadTreeNode14ForAllMatchingERK9CVector2DPFvS2_PvE; CQuadTreeNode::ForAllMatching(CVector2D const&,void (*)(CVector2D const&,void *))
2E2890:  ADD             SP, SP, #8
2E2892:  POP             {R4,R6,R7,PC}
