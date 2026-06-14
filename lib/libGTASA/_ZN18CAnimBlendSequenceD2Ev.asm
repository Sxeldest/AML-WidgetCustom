; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequenceD2Ev
; Address            : 0x38B836 - 0x38B850
; =========================================================

38B836:  PUSH            {R4,R6,R7,LR}
38B838:  ADD             R7, SP, #8
38B83A:  MOV             R4, R0
38B83C:  LDRB            R0, [R4,#4]
38B83E:  LSLS            R0, R0, #0x1C
38B840:  BMI             loc_38B84C
38B842:  LDR             R0, [R4,#8]; this
38B844:  CMP             R0, #0
38B846:  IT NE
38B848:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
38B84C:  MOV             R0, R4
38B84E:  POP             {R4,R6,R7,PC}
