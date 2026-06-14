; =========================================================
; Game Engine Function: _ZN27CAnimBlendStaticAssociationC2EP7RpClumpP19CAnimBlendHierarchy
; Address            : 0x389910 - 0x389938
; =========================================================

389910:  PUSH            {R4,R6,R7,LR}
389912:  ADD             R7, SP, #8
389914:  MOV             R4, R0
389916:  LDR             R0, =(_ZTV27CAnimBlendStaticAssociation_ptr - 0x389920)
389918:  MOV.W           R3, #0xFFFFFFFF
38991C:  ADD             R0, PC; _ZTV27CAnimBlendStaticAssociation_ptr
38991E:  STR.W           R3, [R4,#6]
389922:  MOVS            R3, #0
389924:  LDR             R0, [R0]; `vtable for'CAnimBlendStaticAssociation ...
389926:  STRH            R3, [R4,#0xA]
389928:  ADDS            R0, #8
38992A:  STR             R3, [R4,#0xC]
38992C:  STR             R0, [R4]
38992E:  MOV             R0, R4
389930:  BLX             j__ZN27CAnimBlendStaticAssociation4InitEP7RpClumpP19CAnimBlendHierarchy; CAnimBlendStaticAssociation::Init(RpClump *,CAnimBlendHierarchy *)
389934:  MOV             R0, R4
389936:  POP             {R4,R6,R7,PC}
