; =========================================================
; Game Engine Function: _ZN19CAnimBlendClumpDataD2Ev
; Address            : 0x38A070 - 0x38A09E
; =========================================================

38A070:  PUSH            {R4,R6,R7,LR}
38A072:  ADD             R7, SP, #8
38A074:  MOV             R4, R0
38A076:  LDR             R0, [R4,#4]
38A078:  CMP             R0, #0
38A07A:  ITT NE
38A07C:  LDRNE           R1, [R4]
38A07E:  STRNE           R1, [R0]
38A080:  LDR             R0, [R4]
38A082:  CMP             R0, #0
38A084:  ITT NE
38A086:  LDRNE           R1, [R4,#4]
38A088:  STRNE           R1, [R0,#4]
38A08A:  LDR             R0, [R4,#0x10]; this
38A08C:  MOVS            R1, #0; void *
38A08E:  STRD.W          R1, R1, [R4]
38A092:  CMP             R0, #0
38A094:  IT NE
38A096:  BLXNE           j__ZN10CMemoryMgr9FreeAlignEPv; CMemoryMgr::FreeAlign(void *)
38A09A:  MOV             R0, R4
38A09C:  POP             {R4,R6,R7,PC}
