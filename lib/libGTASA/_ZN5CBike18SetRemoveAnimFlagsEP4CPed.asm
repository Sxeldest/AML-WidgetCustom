; =========================================================
; Game Engine Function: _ZN5CBike18SetRemoveAnimFlagsEP4CPed
; Address            : 0x5614B8 - 0x5614EC
; =========================================================

5614B8:  PUSH            {R7,LR}
5614BA:  MOV             R7, SP
5614BC:  LDRB.W          R0, [R1,#0x3A]
5614C0:  AND.W           R0, R0, #7
5614C4:  CMP             R0, #3
5614C6:  IT NE
5614C8:  POPNE           {R7,PC}
5614CA:  LDR             R0, [R1,#0x18]
5614CC:  MOV.W           R1, #0x1000
5614D0:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
5614D4:  CBZ             R0, locret_5614EA
5614D6:  LDRH            R1, [R0,#0x2E]
5614D8:  ORR.W           R1, R1, #4
5614DC:  STRH            R1, [R0,#0x2E]
5614DE:  MOV.W           R1, #0x1000; unsigned int
5614E2:  BLX             j__Z29RpAnimBlendGetNextAssociationP21CAnimBlendAssociationj; RpAnimBlendGetNextAssociation(CAnimBlendAssociation *,uint)
5614E6:  CMP             R0, #0
5614E8:  BNE             loc_5614D6
5614EA:  POP             {R7,PC}
