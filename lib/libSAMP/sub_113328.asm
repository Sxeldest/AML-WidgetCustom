; =========================================================
; Game Engine Function: sub_113328
; Address            : 0x113328 - 0x113354
; =========================================================

113328:  PUSH            {R4,R5,R7,LR}
11332A:  ADD             R7, SP, #8
11332C:  LDR             R1, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJRN6RakNet9BitStreamEEEE - 0x113338); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,RakNet::BitStream &> ...
11332E:  MOV             R4, R0
113330:  LDRD.W          R5, R0, [R0,#8]
113334:  ADD             R1, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,RakNet::BitStream &>
113336:  ADDS            R1, #8
113338:  STR             R1, [R4]
11333A:  CMP             R0, R5
11333C:  BEQ             loc_113346
11333E:  SUBS            R0, #8
113340:  BL              sub_1133AC
113344:  B               loc_11333A
113346:  ADD.W           R0, R4, #8
11334A:  STR             R5, [R4,#0xC]
11334C:  BL              sub_1133E2
113350:  MOV             R0, R4
113352:  POP             {R4,R5,R7,PC}
