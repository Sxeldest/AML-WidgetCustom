; =========================================================
; Game Engine Function: _ZN10CStreaming19SetModelIsDeletableEi
; Address            : 0x2D6718 - 0x2D67AA
; =========================================================

2D6718:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D6722)
2D671A:  ADD.W           R12, R0, R0,LSL#2
2D671E:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D6720:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2D6722:  ADD.W           R1, R1, R12,LSL#2
2D6726:  LDRB            R2, [R1,#6]
2D6728:  AND.W           R3, R2, #0xFD
2D672C:  TST.W           R2, #4
2D6730:  STRB            R3, [R1,#6]
2D6732:  BNE             locret_2D67A8
2D6734:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D673A)
2D6736:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D6738:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D673A:  ADD.W           R2, R2, R12,LSL#2
2D673E:  LDRB            R2, [R2,#0x10]
2D6740:  CMP             R2, #1
2D6742:  BNE             loc_2D67A0
2D6744:  LDRH            R0, [R1]
2D6746:  MOVW            R2, #0xFFFF
2D674A:  CMP             R0, R2
2D674C:  IT NE
2D674E:  BXNE            LR
2D6750:  PUSH            {R4,R5,R7,LR}
2D6752:  ADD             R7, SP, #0x10+var_8
2D6754:  LDR             R0, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2D6764)
2D6756:  MOVW            R5, #0xCCCD
2D675A:  LDR             R2, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D676A)
2D675C:  MOVT            R5, #0xCCCC
2D6760:  ADD             R0, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2D6762:  LDR.W           LR, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D676E)
2D6766:  ADD             R2, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D6768:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList ...
2D676A:  ADD             LR, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D676C:  LDR             R2, [R2]; CStreamingInfo::ms_pArrayBase ...
2D676E:  LDR.W           LR, [LR]; CStreaming::ms_aInfoForModel ...
2D6772:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList
2D6774:  LDR             R3, [R2]; CStreamingInfo::ms_pArrayBase
2D6776:  LDRH            R4, [R0]
2D6778:  STRH            R4, [R1]
2D677A:  SUBS            R4, R1, R3
2D677C:  SUBS            R3, R0, R3
2D677E:  LSRS            R4, R4, #2
2D6780:  LSRS            R3, R3, #2
2D6782:  MULS            R4, R5
2D6784:  MULS            R3, R5
2D6786:  ADD.W           R5, LR, R12,LSL#2
2D678A:  STRH            R3, [R5,#2]
2D678C:  STRH            R4, [R0]
2D678E:  LDRSH.W         R0, [R1]
2D6792:  LDR             R1, [R2]; CStreamingInfo::ms_pArrayBase
2D6794:  ADD.W           R0, R0, R0,LSL#2
2D6798:  ADD.W           R0, R1, R0,LSL#2; this
2D679C:  STRH            R4, [R0,#2]
2D679E:  POP             {R4,R5,R7,PC}
2D67A0:  LSLS            R1, R3, #0x1C; int
2D67A2:  IT PL
2D67A4:  BPL.W           _ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D67A8:  BX              LR
