; =========================================================
; Game Engine Function: _Z13SetMuscleStatf
; Address            : 0x4575B4 - 0x4575D0
; =========================================================

4575B4:  PUSH            {R7,LR}
4575B6:  MOV             R7, SP
4575B8:  MOV             R1, R0
4575BA:  MOVS            R0, #0x17
4575BC:  NOP
4575BE:  NOP
4575C0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4575C8)
4575C2:  MOVS            R1, #0; CPlayerPed *
4575C4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4575C6:  LDR             R0, [R0]; CWorld::Players ...
4575C8:  LDR             R0, [R0]; this
4575CA:  POP.W           {R7,LR}
4575CE:  B               _ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
