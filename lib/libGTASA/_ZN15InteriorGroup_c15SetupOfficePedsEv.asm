; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c15SetupOfficePedsEv
; Address            : 0x44A53C - 0x44A556
; =========================================================

44A53C:  PUSH            {R4,R5,R7,LR}
44A53E:  ADD             R7, SP, #8
44A540:  MOV             R4, R0
44A542:  MOVS            R0, #(stderr+2); this
44A544:  BLX             j__ZN10CStreaming21StreamPedsForInteriorEi; CStreaming::StreamPedsForInterior(int)
44A548:  MOVS            R0, #0; this
44A54A:  MOVS            R5, #0
44A54C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
44A550:  STRB.W          R5, [R4,#0x36]
44A554:  POP             {R4,R5,R7,PC}
