; =========================================================
; Game Engine Function: _ZN10CGameLogic17IsCoopGameGoingOnEv
; Address            : 0x3091EC - 0x309208
; =========================================================

3091EC:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3091F2)
3091EE:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3091F0:  LDR             R0, [R0]; CWorld::Players ...
3091F2:  LDR             R1, [R0]; CWorld::Players
3091F4:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
3091F8:  CMP             R0, #0
3091FA:  IT NE
3091FC:  MOVNE           R0, #1
3091FE:  CMP             R1, #0
309200:  IT NE
309202:  MOVNE           R1, #1
309204:  ANDS            R0, R1
309206:  BX              LR
