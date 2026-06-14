; =========================================================
; Game Engine Function: _ZN10CPlayerPed16GetPadFromPlayerEv
; Address            : 0x4C46D8 - 0x4C46F4
; =========================================================

4C46D8:  LDR.W           R0, [R0,#0x59C]
4C46DC:  CMP             R0, #1
4C46DE:  BEQ             loc_4C46EE
4C46E0:  CMP             R0, #0
4C46E2:  MOV.W           R0, #0; this
4C46E6:  IT EQ
4C46E8:  BEQ.W           sub_19F8F0
4C46EC:  BX              LR
4C46EE:  MOVS            R0, #(stderr+1); this
4C46F0:  B.W             sub_19F8F0
