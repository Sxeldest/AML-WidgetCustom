; =========================================================
; Game Engine Function: _ZN15CClothesBuilder15ReleaseGeometryEi
; Address            : 0x4596B2 - 0x4596CC
; =========================================================

4596B2:  PUSH            {R4,R6,R7,LR}
4596B4:  ADD             R7, SP, #8
4596B6:  MOV             R4, R0
4596B8:  CMP             R4, #0
4596BA:  IT EQ
4596BC:  POPEQ           {R4,R6,R7,PC}
4596BE:  ADDW            R0, R4, #0x17F; this
4596C2:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
4596C6:  SUBS            R4, #1
4596C8:  BNE             loc_4596BE
4596CA:  POP             {R4,R6,R7,PC}
