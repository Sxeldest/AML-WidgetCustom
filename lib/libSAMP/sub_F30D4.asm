; =========================================================
; Game Engine Function: sub_F30D4
; Address            : 0xF30D4 - 0xF323A
; =========================================================

F30D4:  PUSH            {R4-R7,LR}
F30D6:  ADD             R7, SP, #0xC
F30D8:  PUSH.W          {R8}
F30DC:  LDR             R5, =(unk_23FBBC - 0xF30E6)
F30DE:  MOVS            R1, #0
F30E0:  MOVS            R6, #0
F30E2:  ADD             R5, PC; unk_23FBBC
F30E4:  MOV             R0, R5
F30E6:  BL              sub_F23DC
F30EA:  LDR             R0, =(sub_F2404+1 - 0xF30F4)
F30EC:  MOV             R1, R5; obj
F30EE:  LDR             R4, =(off_22A540 - 0xF30F6)
F30F0:  ADD             R0, PC; sub_F2404 ; lpfunc
F30F2:  ADD             R4, PC; off_22A540
F30F4:  MOV             R2, R4; lpdso_handle
F30F6:  BLX             __cxa_atexit
F30FA:  LDR             R1, =(dword_23FBC8 - 0xF3104)
F30FC:  LDR             R2, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tIvEEEEE - 0xF3106); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<void>> ...
F30FE:  LDR             R0, =(sub_F241C+1 - 0xF3108)
F3100:  ADD             R1, PC; dword_23FBC8 ; obj
F3102:  ADD             R2, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<void>>
F3104:  ADD             R0, PC; sub_F241C ; lpfunc
F3106:  ADD.W           R5, R2, #8
F310A:  MOV             R2, R4; lpdso_handle
F310C:  STRD.W          R6, R6, [R1,#(dword_23FBD0 - 0x23FBC8)]
F3110:  STR             R5, [R1]
F3112:  MOV             R8, R0
F3114:  STR.W           R6, [R1,#(dword_23FBD9 - 0x23FBC8)]
F3118:  STR.W           R6, [R1,#(dword_23FBD5 - 0x23FBC8)]
F311C:  BLX             __cxa_atexit
F3120:  LDR             R1, =(dword_23FBE0 - 0xF312A)
F3122:  LDR             R2, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tI7timevalEEEEE - 0xF312C); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<timeval>> ...
F3124:  LDR             R0, =(sub_F244C+1 - 0xF3130)
F3126:  ADD             R1, PC; dword_23FBE0 ; obj
F3128:  ADD             R2, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<timeval>>
F312A:  ADDS            R2, #8
F312C:  ADD             R0, PC; sub_F244C ; lpfunc
F312E:  STR             R2, [R1]
F3130:  MOV             R2, R4; lpdso_handle
F3132:  STRD.W          R6, R6, [R1,#(dword_23FBE8 - 0x23FBE0)]
F3136:  STR.W           R6, [R1,#(dword_23FBF1 - 0x23FBE0)]
F313A:  STR.W           R6, [R1,#(dword_23FBED - 0x23FBE0)]
F313E:  BLX             __cxa_atexit
F3142:  LDR             R1, =(dword_23FBF8 - 0xF314C)
F3144:  MOV             R0, R8; lpfunc
F3146:  MOV             R2, R4; lpdso_handle
F3148:  ADD             R1, PC; dword_23FBF8 ; obj
F314A:  STRD.W          R6, R6, [R1,#(dword_23FC00 - 0x23FBF8)]
F314E:  STR             R5, [R1]
F3150:  STR.W           R6, [R1,#(dword_23FC09 - 0x23FBF8)]
F3154:  STR.W           R6, [R1,#(dword_23FC05 - 0x23FBF8)]
F3158:  BLX             __cxa_atexit
F315C:  LDR             R1, =(dword_23FC10 - 0xF3166)
F315E:  MOV             R0, R8; lpfunc
F3160:  MOV             R2, R4; lpdso_handle
F3162:  ADD             R1, PC; dword_23FC10 ; obj
F3164:  STRD.W          R6, R6, [R1,#(dword_23FC18 - 0x23FC10)]
F3168:  STR             R5, [R1]
F316A:  STR.W           R6, [R1,#(dword_23FC21 - 0x23FC10)]
F316E:  STR.W           R6, [R1,#(dword_23FC1D - 0x23FC10)]
F3172:  BLX             __cxa_atexit
F3176:  LDR             R1, =(dword_23FC28 - 0xF3180)
F3178:  MOV             R0, R8; lpfunc
F317A:  MOV             R2, R4; lpdso_handle
F317C:  ADD             R1, PC; dword_23FC28 ; obj
F317E:  STRD.W          R6, R6, [R1,#(dword_23FC30 - 0x23FC28)]
F3182:  STR             R5, [R1]
F3184:  STR.W           R6, [R1,#(dword_23FC39 - 0x23FC28)]
F3188:  STR.W           R6, [R1,#(dword_23FC35 - 0x23FC28)]
F318C:  BLX             __cxa_atexit
F3190:  LDR             R1, =(dword_23FC40 - 0xF319A)
F3192:  LDR             R2, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tIbEEEEE - 0xF319C); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<bool>> ...
F3194:  LDR             R0, =(sub_F247C+1 - 0xF31A0)
F3196:  ADD             R1, PC; dword_23FC40 ; obj
F3198:  ADD             R2, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<bool>>
F319A:  ADDS            R2, #8
F319C:  ADD             R0, PC; sub_F247C ; lpfunc
F319E:  STR             R2, [R1]
F31A0:  MOV             R2, R4; lpdso_handle
F31A2:  STRD.W          R6, R6, [R1,#(dword_23FC48 - 0x23FC40)]
F31A6:  STR.W           R6, [R1,#(dword_23FC51 - 0x23FC40)]
F31AA:  STR.W           R6, [R1,#(dword_23FC4D - 0x23FC40)]
F31AE:  BLX             __cxa_atexit
F31B2:  LDR             R1, =(dword_23FC58 - 0xF31BC)
F31B4:  LDR             R2, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tIyEEEEE - 0xF31BE); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<ulong long>> ...
F31B6:  LDR             R0, =(sub_F24AC+1 - 0xF31C2)
F31B8:  ADD             R1, PC; dword_23FC58 ; obj
F31BA:  ADD             R2, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<ulong long>>
F31BC:  ADDS            R2, #8
F31BE:  ADD             R0, PC; sub_F24AC ; lpfunc
F31C0:  STR             R2, [R1]
F31C2:  MOV             R2, R4; lpdso_handle
F31C4:  STRD.W          R6, R6, [R1,#(dword_23FC60 - 0x23FC58)]
F31C8:  STR.W           R6, [R1,#(dword_23FC69 - 0x23FC58)]
F31CC:  STR.W           R6, [R1,#(dword_23FC65 - 0x23FC58)]
F31D0:  BLX             __cxa_atexit
F31D4:  LDR             R1, =(dword_23FC70 - 0xF31DE)
F31D6:  MOV             R0, R8; lpfunc
F31D8:  MOV             R2, R4; lpdso_handle
F31DA:  ADD             R1, PC; dword_23FC70 ; obj
F31DC:  STRD.W          R6, R6, [R1,#(dword_23FC78 - 0x23FC70)]
F31E0:  STR             R5, [R1]
F31E2:  STR.W           R6, [R1,#(dword_23FC81 - 0x23FC70)]
F31E6:  STR.W           R6, [R1,#(dword_23FC7D - 0x23FC70)]
F31EA:  BLX             __cxa_atexit
F31EE:  LDR             R1, =(dword_23FC88 - 0xF31F8)
F31F0:  LDR             R2, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tINS4_13crash_event_tEEEEEE - 0xF31FA); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<game_events::app::crash_event_t>> ...
F31F2:  LDR             R0, =(sub_F24DC+1 - 0xF31FE)
F31F4:  ADD             R1, PC; dword_23FC88 ; obj
F31F6:  ADD             R2, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<game_events::app::crash_event_t>>
F31F8:  ADDS            R2, #8
F31FA:  ADD             R0, PC; sub_F24DC ; lpfunc
F31FC:  STR             R2, [R1]
F31FE:  MOV             R2, R4; lpdso_handle
F3200:  STRD.W          R6, R6, [R1,#(dword_23FC90 - 0x23FC88)]
F3204:  STR.W           R6, [R1,#(dword_23FC99 - 0x23FC88)]
F3208:  STR.W           R6, [R1,#(dword_23FC95 - 0x23FC88)]
F320C:  BLX             __cxa_atexit
F3210:  LDR             R1, =(dword_23FCA0 - 0xF321A)
F3212:  LDR             R2, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJN11game_events3app6data_tIjEEEEE - 0xF321C); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<uint>> ...
F3214:  LDR             R0, =(sub_F250C+1 - 0xF3226)
F3216:  ADD             R1, PC; dword_23FCA0
F3218:  ADD             R2, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::app::data_t<uint>>
F321A:  ADDS            R2, #8
F321C:  STRD.W          R6, R6, [R1,#(dword_23FCA8 - 0x23FCA0)]
F3220:  STR             R2, [R1]
F3222:  ADD             R0, PC; sub_F250C
F3224:  STR.W           R6, [R1,#(dword_23FCB1 - 0x23FCA0)]
F3228:  MOV             R2, R4
F322A:  STR.W           R6, [R1,#(dword_23FCAD - 0x23FCA0)]
F322E:  POP.W           {R8}
F3232:  POP.W           {R4-R7,LR}
F3236:  B.W             sub_224250
