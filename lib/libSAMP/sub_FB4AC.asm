; =========================================================
; Game Engine Function: sub_FB4AC
; Address            : 0xFB4AC - 0xFB4D8
; =========================================================

FB4AC:  PUSH            {R4,R5,R7,LR}
FB4AE:  ADD             R7, SP, #8
FB4B0:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJEEE - 0xFB4BC); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex> ...
FB4B2:  MOV             R4, R0
FB4B4:  LDRD.W          R5, R0, [R0,#8]
FB4B8:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex>
FB4BA:  ADDS            R1, #8
FB4BC:  STR             R1, [R4]
FB4BE:  CMP             R0, R5
FB4C0:  BEQ             loc_FB4CA
FB4C2:  SUBS            R0, #8
FB4C4:  BL              sub_100ABA
FB4C8:  B               loc_FB4BE
FB4CA:  ADD.W           R0, R4, #8
FB4CE:  STR             R5, [R4,#0xC]
FB4D0:  BL              sub_100AF0
FB4D4:  MOV             R0, R4
FB4D6:  POP             {R4,R5,R7,PC}
