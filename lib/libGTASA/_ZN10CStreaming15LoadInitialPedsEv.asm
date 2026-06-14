; =========================================================
; Game Engine Function: _ZN10CStreaming15LoadInitialPedsEv
; Address            : 0x2D6B68 - 0x2D6B7E
; =========================================================

2D6B68:  PUSH            {R7,LR}
2D6B6A:  MOV             R7, SP
2D6B6C:  MOVS            R0, #byte_7; this
2D6B6E:  MOVS            R1, #2; int
2D6B70:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D6B74:  MOVS            R0, #(stderr+1); this
2D6B76:  POP.W           {R7,LR}
2D6B7A:  B.W             _ZN10CStreaming15StreamCopModelsEi; CStreaming::StreamCopModels(int)
