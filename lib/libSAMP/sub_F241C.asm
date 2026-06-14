; =========================================================
; Game Engine Function: sub_F241C
; Address            : 0xF241C - 0xF2448
; =========================================================

F241C:  PUSH            {R4,R5,R7,LR}
F241E:  ADD             R7, SP, #8
F2420:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tIvEEEEE - 0xF242C); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<void>> ...
F2422:  MOV             R4, R0
F2424:  LDRD.W          R5, R0, [R0,#8]
F2428:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<void>>
F242A:  ADDS            R1, #8
F242C:  STR             R1, [R4]
F242E:  CMP             R0, R5
F2430:  BEQ             loc_F243A
F2432:  SUBS            R0, #8
F2434:  BL              sub_F2A5C
F2438:  B               loc_F242E
F243A:  ADD.W           R0, R4, #8
F243E:  STR             R5, [R4,#0xC]
F2440:  BL              sub_F2A92
F2444:  MOV             R0, R4
F2446:  POP             {R4,R5,R7,PC}
