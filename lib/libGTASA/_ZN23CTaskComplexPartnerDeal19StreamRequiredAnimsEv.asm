; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerDeal19StreamRequiredAnimsEv
; Address            : 0x534C58 - 0x534CB6
; =========================================================

534C58:  PUSH            {R4,R5,R7,LR}
534C5A:  ADD             R7, SP, #8
534C5C:  MOV             R4, R0
534C5E:  LDRB.W          R5, [R4,#0x6E]
534C62:  BLX             j__ZN22CTaskComplexGangLeader19ShouldLoadGangAnimsEv; CTaskComplexGangLeader::ShouldLoadGangAnims(void)
534C66:  CBZ             R5, loc_534C82
534C68:  CMP             R0, #0
534C6A:  IT NE
534C6C:  POPNE           {R4,R5,R7,PC}
534C6E:  ADD.W           R0, R4, #0x5E ; '^'; this
534C72:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
534C76:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
534C7A:  MOVS            R0, #0
534C7C:  STRB.W          R0, [R4,#0x6E]
534C80:  POP             {R4,R5,R7,PC}
534C82:  CMP             R0, #0
534C84:  BEQ             locret_534C80
534C86:  ADD.W           R0, R4, #0x5E ; '^'; this
534C8A:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
534C8E:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x534C94)
534C90:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
534C92:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
534C94:  ADD.W           R1, R1, R0,LSL#5
534C98:  LDRB            R1, [R1,#0x10]; int
534C9A:  CMP             R1, #1
534C9C:  BNE             loc_534CA6
534C9E:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
534CA2:  MOVS            R0, #1
534CA4:  B               loc_534C7C
534CA6:  MOVW            R1, #0x63E7
534CAA:  ADD             R0, R1; this
534CAC:  MOVS            R1, #8; int
534CAE:  POP.W           {R4,R5,R7,LR}
534CB2:  B.W             j_j__ZN10CStreaming12RequestModelEii; j_CStreaming::RequestModel(int,int)
