; =========================================================
; Game Engine Function: sub_F244C
; Address            : 0xF244C - 0xF2478
; =========================================================

F244C:  PUSH            {R4,R5,R7,LR}
F244E:  ADD             R7, SP, #8
F2450:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tI7timevalEEEEE - 0xF245C); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<timeval>> ...
F2452:  MOV             R4, R0
F2454:  LDRD.W          R5, R0, [R0,#8]
F2458:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<timeval>>
F245A:  ADDS            R1, #8
F245C:  STR             R1, [R4]
F245E:  CMP             R0, R5
F2460:  BEQ             loc_F246A
F2462:  SUBS            R0, #8
F2464:  BL              sub_F2B10
F2468:  B               loc_F245E
F246A:  ADD.W           R0, R4, #8
F246E:  STR             R5, [R4,#0xC]
F2470:  BL              sub_F2B46
F2474:  MOV             R0, R4
F2476:  POP             {R4,R5,R7,PC}
