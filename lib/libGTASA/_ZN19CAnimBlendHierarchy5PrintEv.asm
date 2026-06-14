; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy5PrintEv
; Address            : 0x38A89E - 0x38A8D2
; =========================================================

38A89E:  PUSH            {R4-R7,LR}
38A8A0:  ADD             R7, SP, #0xC
38A8A2:  PUSH.W          {R11}
38A8A6:  MOV             R4, R0
38A8A8:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
38A8AC:  LDRSH.W         R0, [R4,#8]
38A8B0:  CMP             R0, #1
38A8B2:  BLT             loc_38A8CC
38A8B4:  MOVS            R5, #0
38A8B6:  MOVS            R6, #0
38A8B8:  LDR             R0, [R4,#4]
38A8BA:  ADD             R0, R5; this
38A8BC:  BLX             j__ZN18CAnimBlendSequence5PrintEv; CAnimBlendSequence::Print(void)
38A8C0:  LDRSH.W         R0, [R4,#8]
38A8C4:  ADDS            R6, #1
38A8C6:  ADDS            R5, #0xC
38A8C8:  CMP             R6, R0
38A8CA:  BLT             loc_38A8B8
38A8CC:  POP.W           {R11}
38A8D0:  POP             {R4-R7,PC}
