; =========================================================
; Game Engine Function: _ZN24CTaskComplexPartnerGreet19StreamRequiredAnimsEv
; Address            : 0x534E78 - 0x534ED6
; =========================================================

534E78:  PUSH            {R4,R5,R7,LR}
534E7A:  ADD             R7, SP, #8
534E7C:  MOV             R4, R0
534E7E:  LDRB.W          R5, [R4,#0x6E]
534E82:  BLX             j__ZN22CTaskComplexGangLeader19ShouldLoadGangAnimsEv; CTaskComplexGangLeader::ShouldLoadGangAnims(void)
534E86:  CBZ             R5, loc_534EA2
534E88:  CMP             R0, #0
534E8A:  IT NE
534E8C:  POPNE           {R4,R5,R7,PC}
534E8E:  ADD.W           R0, R4, #0x5E ; '^'; this
534E92:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
534E96:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
534E9A:  MOVS            R0, #0
534E9C:  STRB.W          R0, [R4,#0x6E]
534EA0:  POP             {R4,R5,R7,PC}
534EA2:  CMP             R0, #0
534EA4:  BEQ             locret_534EA0
534EA6:  ADD.W           R0, R4, #0x5E ; '^'; this
534EAA:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
534EAE:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x534EB4)
534EB0:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
534EB2:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
534EB4:  ADD.W           R1, R1, R0,LSL#5
534EB8:  LDRB            R1, [R1,#0x10]; int
534EBA:  CMP             R1, #1
534EBC:  BNE             loc_534EC6
534EBE:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
534EC2:  MOVS            R0, #1
534EC4:  B               loc_534E9C
534EC6:  MOVW            R1, #0x63E7
534ECA:  ADD             R0, R1; this
534ECC:  MOVS            R1, #8; int
534ECE:  POP.W           {R4,R5,R7,LR}
534ED2:  B.W             j_j__ZN10CStreaming12RequestModelEii; j_CStreaming::RequestModel(int,int)
