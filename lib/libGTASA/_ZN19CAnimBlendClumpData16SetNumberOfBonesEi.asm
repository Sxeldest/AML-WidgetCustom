; =========================================================
; Game Engine Function: _ZN19CAnimBlendClumpData16SetNumberOfBonesEi
; Address            : 0x38A09E - 0x38A0CA
; =========================================================

38A09E:  PUSH            {R4,R5,R7,LR}
38A0A0:  ADD             R7, SP, #8
38A0A2:  MOV             R5, R0
38A0A4:  MOV             R4, R1
38A0A6:  LDR             R0, [R5,#0x10]; this
38A0A8:  CMP             R0, #0
38A0AA:  IT NE
38A0AC:  BLXNE           j__ZN10CMemoryMgr9FreeAlignEPv; CMemoryMgr::FreeAlign(void *)
38A0B0:  ADD.W           R0, R4, R4,LSL#1
38A0B4:  MOVS            R1, #0x3F ; '?'
38A0B6:  ADD.W           R0, R1, R0,LSL#3
38A0BA:  MOVS            R1, #0x40 ; '@'; unsigned int
38A0BC:  BIC.W           R0, R0, #0x3F ; '?'; this
38A0C0:  BLX             j__ZN10CMemoryMgr11MallocAlignEjj; CMemoryMgr::MallocAlign(uint,uint)
38A0C4:  STR             R0, [R5,#0x10]
38A0C6:  STR             R4, [R5,#8]
38A0C8:  POP             {R4,R5,R7,PC}
