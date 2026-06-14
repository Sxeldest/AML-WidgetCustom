; =========================================================
; Game Engine Function: _ZN4CPed19StopNonPartialAnimsEv
; Address            : 0x4A1094 - 0x4A10B8
; =========================================================

4A1094:  PUSH            {R7,LR}
4A1096:  MOV             R7, SP
4A1098:  LDR             R0, [R0,#0x18]
4A109A:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClump; RpAnimBlendClumpGetFirstAssociation(RpClump *)
4A109E:  CMP             R0, #0
4A10A0:  IT EQ
4A10A2:  POPEQ           {R7,PC}
4A10A4:  LDRH            R1, [R0,#0x2E]
4A10A6:  TST.W           R1, #0x10
4A10AA:  ITT EQ
4A10AC:  BICEQ.W         R1, R1, #1
4A10B0:  STRHEQ          R1, [R0,#0x2E]
4A10B2:  BLX             j__Z29RpAnimBlendGetNextAssociationP21CAnimBlendAssociation; RpAnimBlendGetNextAssociation(CAnimBlendAssociation *)
4A10B6:  B               loc_4A109E
