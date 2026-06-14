; =========================================================
; Game Engine Function: sub_F24AC
; Address            : 0xF24AC - 0xF24D8
; =========================================================

F24AC:  PUSH            {R4,R5,R7,LR}
F24AE:  ADD             R7, SP, #8
F24B0:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tIyEEEEE - 0xF24BC); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<ulong long>> ...
F24B2:  MOV             R4, R0
F24B4:  LDRD.W          R5, R0, [R0,#8]
F24B8:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<ulong long>>
F24BA:  ADDS            R1, #8
F24BC:  STR             R1, [R4]
F24BE:  CMP             R0, R5
F24C0:  BEQ             loc_F24CA
F24C2:  SUBS            R0, #8
F24C4:  BL              sub_F2C78
F24C8:  B               loc_F24BE
F24CA:  ADD.W           R0, R4, #8
F24CE:  STR             R5, [R4,#0xC]
F24D0:  BL              sub_F2CAE
F24D4:  MOV             R0, R4
F24D6:  POP             {R4,R5,R7,PC}
