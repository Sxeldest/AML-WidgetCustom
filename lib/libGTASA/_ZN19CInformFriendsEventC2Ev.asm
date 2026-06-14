; =========================================================
; Game Engine Function: _ZN19CInformFriendsEventC2Ev
; Address            : 0x36FD78 - 0x36FD86
; =========================================================

36FD78:  MOVS            R1, #0; Alternative name is 'CInformFriendsEvent::CInformFriendsEvent(void)'
36FD7A:  MOV.W           R2, #0xFFFFFFFF
36FD7E:  STRD.W          R1, R1, [R0]
36FD82:  STR             R2, [R0,#8]
36FD84:  BX              LR
