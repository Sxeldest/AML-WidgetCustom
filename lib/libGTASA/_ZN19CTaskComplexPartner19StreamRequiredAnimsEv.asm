; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner19StreamRequiredAnimsEv
; Address            : 0x534AB0 - 0x534AF8
; =========================================================

534AB0:  PUSH            {R4,R6,R7,LR}
534AB2:  ADD             R7, SP, #8
534AB4:  MOV             R4, R0
534AB6:  LDRB.W          R0, [R4,#0x6E]
534ABA:  CMP             R0, #0
534ABC:  IT NE
534ABE:  POPNE           {R4,R6,R7,PC}
534AC0:  MOV             R0, R4
534AC2:  LDRB.W          R1, [R0,#0x5E]!; char *
534AC6:  CBZ             R1, loc_534AE0
534AC8:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
534ACC:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x534AD2)
534ACE:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
534AD0:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
534AD2:  ADD.W           R1, R1, R0,LSL#5
534AD6:  LDRB            R1, [R1,#0x10]; int
534AD8:  CMP             R1, #1
534ADA:  BNE             loc_534AE8
534ADC:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
534AE0:  MOVS            R0, #1
534AE2:  STRB.W          R0, [R4,#0x6E]
534AE6:  POP             {R4,R6,R7,PC}
534AE8:  MOVW            R1, #0x63E7
534AEC:  ADD             R0, R1; this
534AEE:  MOVS            R1, #8; int
534AF0:  POP.W           {R4,R6,R7,LR}
534AF4:  B.W             j_j__ZN10CStreaming12RequestModelEii; j_CStreaming::RequestModel(int,int)
