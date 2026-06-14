; =========================================================
; Game Engine Function: _ZN10CCollision20RemoveTrianglePlanesEP9CColModel
; Address            : 0x2D98D4 - 0x2D9918
; =========================================================

2D98D4:  PUSH            {R4,R6,R7,LR}
2D98D6:  ADD             R7, SP, #8
2D98D8:  LDR             R4, [R0,#0x2C]
2D98DA:  CMP             R4, #0
2D98DC:  ITT NE
2D98DE:  LDRNE           R0, [R4,#0x1C]
2D98E0:  CMPNE           R0, #0
2D98E2:  BNE             loc_2D98E6
2D98E4:  POP             {R4,R6,R7,PC}
2D98E6:  MOV             R0, R4; this
2D98E8:  BLX             j__ZN14CCollisionData10GetLinkPtrEv; CCollisionData::GetLinkPtr(void)
2D98EC:  LDR             R3, =(_ZN10CCollision16ms_colModelCacheE_ptr - 0x2D98F8)
2D98EE:  LDRD.W          R1, R2, [R0,#4]
2D98F2:  STR             R1, [R2,#4]
2D98F4:  ADD             R3, PC; _ZN10CCollision16ms_colModelCacheE_ptr
2D98F6:  LDRD.W          R1, R2, [R0,#4]
2D98FA:  LDR             R3, [R3]; CCollision::ms_colModelCache ...
2D98FC:  STR             R2, [R1,#8]
2D98FE:  LDR             R1, [R3,#(dword_793008 - 0x792FE8)]
2D9900:  STR             R1, [R0,#8]
2D9902:  LDR             R1, [R3,#(dword_793008 - 0x792FE8)]
2D9904:  STR             R0, [R1,#4]
2D9906:  ADD.W           R1, R3, #0x18
2D990A:  STR             R1, [R0,#4]
2D990C:  STR             R0, [R3,#(dword_793008 - 0x792FE8)]
2D990E:  MOV             R0, R4; this
2D9910:  POP.W           {R4,R6,R7,LR}
2D9914:  B.W             j_j__ZN14CCollisionData20RemoveTrianglePlanesEv; j_CCollisionData::RemoveTrianglePlanes(void)
