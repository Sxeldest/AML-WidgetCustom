; =========================================================
; Game Engine Function: sub_F247C
; Address            : 0xF247C - 0xF24A8
; =========================================================

F247C:  PUSH            {R4,R5,R7,LR}
F247E:  ADD             R7, SP, #8
F2480:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tIbEEEEE - 0xF248C); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<bool>> ...
F2482:  MOV             R4, R0
F2484:  LDRD.W          R5, R0, [R0,#8]
F2488:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<bool>>
F248A:  ADDS            R1, #8
F248C:  STR             R1, [R4]
F248E:  CMP             R0, R5
F2490:  BEQ             loc_F249A
F2492:  SUBS            R0, #8
F2494:  BL              sub_F2BC4
F2498:  B               loc_F248E
F249A:  ADD.W           R0, R4, #8
F249E:  STR             R5, [R4,#0xC]
F24A0:  BL              sub_F2BFA
F24A4:  MOV             R0, R4
F24A6:  POP             {R4,R5,R7,PC}
