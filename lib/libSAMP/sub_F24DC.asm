; =========================================================
; Game Engine Function: sub_F24DC
; Address            : 0xF24DC - 0xF2508
; =========================================================

F24DC:  PUSH            {R4,R5,R7,LR}
F24DE:  ADD             R7, SP, #8
F24E0:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tINS4_13crash_event_tEEEEEE - 0xF24EC); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<game_events::app::crash_event_t>> ...
F24E2:  MOV             R4, R0
F24E4:  LDRD.W          R5, R0, [R0,#8]
F24E8:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<game_events::app::crash_event_t>>
F24EA:  ADDS            R1, #8
F24EC:  STR             R1, [R4]
F24EE:  CMP             R0, R5
F24F0:  BEQ             loc_F24FA
F24F2:  SUBS            R0, #8
F24F4:  BL              sub_F2D2C
F24F8:  B               loc_F24EE
F24FA:  ADD.W           R0, R4, #8
F24FE:  STR             R5, [R4,#0xC]
F2500:  BL              sub_F2D62
F2504:  MOV             R0, R4
F2506:  POP             {R4,R5,R7,PC}
