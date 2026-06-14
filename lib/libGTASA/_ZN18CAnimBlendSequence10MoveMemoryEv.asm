; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequence10MoveMemoryEv
; Address            : 0x38BD5C - 0x38BD80
; =========================================================

38BD5C:  PUSH            {R4,R6,R7,LR}
38BD5E:  ADD             R7, SP, #8
38BD60:  MOV             R4, R0
38BD62:  LDRB            R0, [R4,#4]
38BD64:  LSLS            R0, R0, #0x1C
38BD66:  BMI             loc_38BD7C
38BD68:  LDR             R0, [R4,#8]; this
38BD6A:  CBZ             R0, loc_38BD7C
38BD6C:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
38BD70:  LDR             R1, [R4,#8]
38BD72:  CMP             R0, R1
38BD74:  ITTT NE
38BD76:  STRNE           R0, [R4,#8]
38BD78:  MOVNE           R0, #1
38BD7A:  POPNE           {R4,R6,R7,PC}
38BD7C:  MOVS            R0, #0
38BD7E:  POP             {R4,R6,R7,PC}
