; =========================================================
; Game Engine Function: _Z10SetFatStatf
; Address            : 0x4574FC - 0x457518
; =========================================================

4574FC:  PUSH            {R7,LR}
4574FE:  MOV             R7, SP
457500:  MOV             R1, R0
457502:  MOVS            R0, #0x15
457504:  NOP
457506:  NOP
457508:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x457510)
45750A:  MOVS            R1, #0; CPlayerPed *
45750C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
45750E:  LDR             R0, [R0]; CWorld::Players ...
457510:  LDR             R0, [R0]; this
457512:  POP.W           {R7,LR}
457516:  B               _ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
