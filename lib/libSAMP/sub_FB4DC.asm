; =========================================================
; Game Engine Function: sub_FB4DC
; Address            : 0xFB4DC - 0xFB508
; =========================================================

FB4DC:  PUSH            {R4,R5,R7,LR}
FB4DE:  ADD             R7, SP, #8
FB4E0:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJRN11game_events7touch_tEEEE - 0xFB4EC); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::touch_t &> ...
FB4E2:  MOV             R4, R0
FB4E4:  LDRD.W          R5, R0, [R0,#8]
FB4E8:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::touch_t &>
FB4EA:  ADDS            R1, #8
FB4EC:  STR             R1, [R4]
FB4EE:  CMP             R0, R5
FB4F0:  BEQ             loc_FB4FA
FB4F2:  SUBS            R0, #8
FB4F4:  BL              sub_100B6E
FB4F8:  B               loc_FB4EE
FB4FA:  ADD.W           R0, R4, #8
FB4FE:  STR             R5, [R4,#0xC]
FB500:  BL              sub_100BA4
FB504:  MOV             R0, R4
FB506:  POP             {R4,R5,R7,PC}
