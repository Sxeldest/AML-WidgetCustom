; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner19RemoveStreamedAnimsEv
; Address            : 0x534AFC - 0x534B24
; =========================================================

534AFC:  PUSH            {R4,R6,R7,LR}
534AFE:  ADD             R7, SP, #8
534B00:  MOV             R4, R0
534B02:  LDRB.W          R0, [R4,#0x6E]
534B06:  CMP             R0, #0
534B08:  IT EQ
534B0A:  POPEQ           {R4,R6,R7,PC}
534B0C:  MOV             R0, R4
534B0E:  LDRB.W          R1, [R0,#0x5E]!; char *
534B12:  CBZ             R1, loc_534B1C
534B14:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
534B18:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
534B1C:  MOVS            R0, #0
534B1E:  STRB.W          R0, [R4,#0x6E]
534B22:  POP             {R4,R6,R7,PC}
