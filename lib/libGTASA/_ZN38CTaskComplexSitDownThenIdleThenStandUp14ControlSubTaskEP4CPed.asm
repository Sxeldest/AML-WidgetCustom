; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUp14ControlSubTaskEP4CPed
; Address            : 0x4ECA30 - 0x4ECA78
; =========================================================

4ECA30:  PUSH            {R4,R6,R7,LR}
4ECA32:  ADD             R7, SP, #8
4ECA34:  MOV             R4, R0
4ECA36:  LDRB            R0, [R4,#0x12]
4ECA38:  CBZ             R0, loc_4ECA3E
4ECA3A:  LDR             R0, [R4,#8]
4ECA3C:  POP             {R4,R6,R7,PC}
4ECA3E:  LDRB            R0, [R4,#0x10]
4ECA40:  CMP             R0, #0
4ECA42:  BEQ             loc_4ECA3A
4ECA44:  LDR             R0, =(aAttractors - 0x4ECA4A); "attractors"
4ECA46:  ADD             R0, PC; "attractors"
4ECA48:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
4ECA4C:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x4ECA52)
4ECA4E:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
4ECA50:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
4ECA52:  ADD.W           R1, R1, R0,LSL#5
4ECA56:  LDRB            R1, [R1,#0x10]; int
4ECA58:  CMP             R1, #1
4ECA5A:  BNE             loc_4ECA68
4ECA5C:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
4ECA60:  MOVS            R0, #1
4ECA62:  STRB            R0, [R4,#0x12]
4ECA64:  LDR             R0, [R4,#8]
4ECA66:  POP             {R4,R6,R7,PC}
4ECA68:  MOVW            R1, #0x63E7
4ECA6C:  ADD             R0, R1; this
4ECA6E:  MOVS            R1, #8; int
4ECA70:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4ECA74:  LDR             R0, [R4,#8]
4ECA76:  POP             {R4,R6,R7,PC}
