; =========================================================
; Game Engine Function: sub_F250C
; Address            : 0xF250C - 0xF2538
; =========================================================

F250C:  PUSH            {R4,R5,R7,LR}
F250E:  ADD             R7, SP, #8
F2510:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tIjEEEEE - 0xF251C); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<uint>> ...
F2512:  MOV             R4, R0
F2514:  LDRD.W          R5, R0, [R0,#8]
F2518:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<uint>>
F251A:  ADDS            R1, #8
F251C:  STR             R1, [R4]
F251E:  CMP             R0, R5
F2520:  BEQ             loc_F252A
F2522:  SUBS            R0, #8
F2524:  BL              sub_F2DE0
F2528:  B               loc_F251E
F252A:  ADD.W           R0, R4, #8
F252E:  STR             R5, [R4,#0xC]
F2530:  BL              sub_F2E16
F2534:  MOV             R0, R4
F2536:  POP             {R4,R5,R7,PC}
