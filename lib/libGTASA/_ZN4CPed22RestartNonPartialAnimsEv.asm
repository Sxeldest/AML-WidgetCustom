; =========================================================
; Game Engine Function: _ZN4CPed22RestartNonPartialAnimsEv
; Address            : 0x4A10B8 - 0x4A10DC
; =========================================================

4A10B8:  PUSH            {R7,LR}
4A10BA:  MOV             R7, SP
4A10BC:  LDR             R0, [R0,#0x18]
4A10BE:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClump; RpAnimBlendClumpGetFirstAssociation(RpClump *)
4A10C2:  CMP             R0, #0
4A10C4:  IT EQ
4A10C6:  POPEQ           {R7,PC}
4A10C8:  LDRH            R1, [R0,#0x2E]
4A10CA:  TST.W           R1, #0x10
4A10CE:  ITT EQ
4A10D0:  ORREQ.W         R1, R1, #1
4A10D4:  STRHEQ          R1, [R0,#0x2E]
4A10D6:  BLX             j__Z29RpAnimBlendGetNextAssociationP21CAnimBlendAssociation; RpAnimBlendGetNextAssociation(CAnimBlendAssociation *)
4A10DA:  B               loc_4A10C2
