; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy18AllocSequenceBlockEb
; Address            : 0x38A49C - 0x38A4E2
; =========================================================

38A49C:  PUSH            {R4-R7,LR}
38A49E:  ADD             R7, SP, #0xC
38A4A0:  PUSH.W          {R8,R9,R11}
38A4A4:  MOV             R9, R0
38A4A6:  MOV             R8, R1
38A4A8:  LDRSH.W         R0, [R9,#8]
38A4AC:  CMP             R0, #1
38A4AE:  BLT             loc_38A4D2
38A4B0:  MOVS            R4, #0
38A4B2:  MOVS            R6, #0
38A4B4:  MOVS            R5, #0
38A4B6:  LDR.W           R0, [R9,#4]
38A4BA:  MOV             R1, R8; bool
38A4BC:  ADD             R0, R4; this
38A4BE:  BLX             j__ZN18CAnimBlendSequence11GetDataSizeEb; CAnimBlendSequence::GetDataSize(bool)
38A4C2:  ADD             R6, R0
38A4C4:  LDRSH.W         R0, [R9,#8]
38A4C8:  ADDS            R5, #1
38A4CA:  ADDS            R4, #0xC
38A4CC:  CMP             R5, R0
38A4CE:  BLT             loc_38A4B6
38A4D0:  B               loc_38A4D4
38A4D2:  MOVS            R6, #0
38A4D4:  MOV             R0, R6; byte_count
38A4D6:  POP.W           {R8,R9,R11}
38A4DA:  POP.W           {R4-R7,LR}
38A4DE:  B.W             sub_19CF58
