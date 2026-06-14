; =========================================================
; Game Engine Function: _ZN10CCollision20RemoveTrianglePlanesEP14CCollisionData
; Address            : 0x2D991C - 0x2D995C
; =========================================================

2D991C:  PUSH            {R4,R6,R7,LR}
2D991E:  ADD             R7, SP, #8
2D9920:  MOV             R4, R0
2D9922:  LDR             R0, [R4,#0x1C]
2D9924:  CMP             R0, #0
2D9926:  IT EQ
2D9928:  POPEQ           {R4,R6,R7,PC}
2D992A:  MOV             R0, R4; this
2D992C:  BLX             j__ZN14CCollisionData10GetLinkPtrEv; CCollisionData::GetLinkPtr(void)
2D9930:  LDR             R3, =(_ZN10CCollision16ms_colModelCacheE_ptr - 0x2D993C)
2D9932:  LDRD.W          R1, R2, [R0,#4]
2D9936:  STR             R1, [R2,#4]
2D9938:  ADD             R3, PC; _ZN10CCollision16ms_colModelCacheE_ptr
2D993A:  LDRD.W          R1, R2, [R0,#4]
2D993E:  LDR             R3, [R3]; CCollision::ms_colModelCache ...
2D9940:  STR             R2, [R1,#8]
2D9942:  LDR             R1, [R3,#(dword_793008 - 0x792FE8)]
2D9944:  STR             R1, [R0,#8]
2D9946:  LDR             R1, [R3,#(dword_793008 - 0x792FE8)]
2D9948:  STR             R0, [R1,#4]
2D994A:  ADD.W           R1, R3, #0x18
2D994E:  STR             R1, [R0,#4]
2D9950:  STR             R0, [R3,#(dword_793008 - 0x792FE8)]
2D9952:  MOV             R0, R4; this
2D9954:  POP.W           {R4,R6,R7,LR}
2D9958:  B.W             j_j__ZN14CCollisionData20RemoveTrianglePlanesEv; j_CCollisionData::RemoveTrianglePlanes(void)
