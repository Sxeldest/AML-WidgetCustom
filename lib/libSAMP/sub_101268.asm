; =========================================================
; Game Engine Function: sub_101268
; Address            : 0x101268 - 0x10133C
; =========================================================

101268:  PUSH            {R4-R7,LR}
10126A:  ADD             R7, SP, #0xC
10126C:  PUSH.W          {R8}
101270:  LDR             R1, =(dword_247398 - 0x10127C)
101272:  MOVS            R6, #0
101274:  LDR             R0, =(sub_FB4AC+1 - 0x101280)
101276:  LDR             R4, =(off_22A540 - 0x101282)
101278:  ADD             R1, PC; dword_247398 ; obj
10127A:  LDR             R2, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJEEE - 0x101288); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex> ...
10127C:  ADD             R0, PC; sub_FB4AC ; lpfunc
10127E:  ADD             R4, PC; off_22A540
101280:  STRD.W          R6, R6, [R1,#(dword_2473A0 - 0x247398)]
101284:  ADD             R2, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex>
101286:  STR.W           R6, [R1,#(dword_2473A9 - 0x247398)]
10128A:  ADD.W           R5, R2, #8
10128E:  MOV             R2, R4; lpdso_handle
101290:  STR             R5, [R1]
101292:  MOV             R8, R0
101294:  STR.W           R6, [R1,#(dword_2473A5 - 0x247398)]
101298:  BLX             __cxa_atexit
10129C:  LDR             R1, =(dword_2473B0 - 0x1012A6)
10129E:  MOV             R0, R8; lpfunc
1012A0:  MOV             R2, R4; lpdso_handle
1012A2:  ADD             R1, PC; dword_2473B0 ; obj
1012A4:  STRD.W          R6, R6, [R1,#(dword_2473B8 - 0x2473B0)]
1012A8:  STR             R5, [R1]
1012AA:  STR.W           R6, [R1,#(dword_2473C1 - 0x2473B0)]
1012AE:  STR.W           R6, [R1,#(dword_2473BD - 0x2473B0)]
1012B2:  BLX             __cxa_atexit
1012B6:  LDR             R1, =(dword_2473C8 - 0x1012C0)
1012B8:  LDR             R2, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJRN11game_events7touch_tEEEE - 0x1012C2); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::touch_t &> ...
1012BA:  LDR             R0, =(sub_FB4DC+1 - 0x1012C6)
1012BC:  ADD             R1, PC; dword_2473C8 ; obj
1012BE:  ADD             R2, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,game_events::touch_t &>
1012C0:  ADDS            R2, #8
1012C2:  ADD             R0, PC; sub_FB4DC ; lpfunc
1012C4:  STR             R2, [R1]
1012C6:  MOV             R2, R4; lpdso_handle
1012C8:  STRD.W          R6, R6, [R1,#(dword_2473D0 - 0x2473C8)]
1012CC:  STR.W           R6, [R1,#(dword_2473D9 - 0x2473C8)]
1012D0:  STR.W           R6, [R1,#(dword_2473D5 - 0x2473C8)]
1012D4:  BLX             __cxa_atexit
1012D8:  LDR             R5, =(unk_2473EC - 0x1012DE)
1012DA:  ADD             R5, PC; unk_2473EC
1012DC:  MOV             R0, R5
1012DE:  BL              sub_1236B4
1012E2:  LDR             R0, =(off_234AE0 - 0x1012EC)
1012E4:  MOV             R1, R5; obj
1012E6:  MOV             R2, R4; lpdso_handle
1012E8:  ADD             R0, PC; off_234AE0
1012EA:  LDR             R0, [R0]; sub_1237F8 ; lpfunc
1012EC:  BLX             __cxa_atexit
1012F0:  LDR             R5, =(unk_2473ED - 0x1012F6)
1012F2:  ADD             R5, PC; unk_2473ED
1012F4:  MOV             R0, R5
1012F6:  BL              sub_128338
1012FA:  LDR             R0, =(off_234AE4 - 0x101304)
1012FC:  MOV             R1, R5; obj
1012FE:  MOV             R2, R4; lpdso_handle
101300:  ADD             R0, PC; off_234AE4
101302:  LDR             R0, [R0]; sub_128404 ; lpfunc
101304:  BLX             __cxa_atexit
101308:  LDR             R5, =(unk_2475D4 - 0x10130E)
10130A:  ADD             R5, PC; unk_2475D4
10130C:  MOV             R0, R5
10130E:  BL              sub_FE2B4
101312:  LDR             R0, =(sub_FE30C+1 - 0x10131C)
101314:  MOV             R1, R5; obj
101316:  MOV             R2, R4; lpdso_handle
101318:  ADD             R0, PC; sub_FE30C ; lpfunc
10131A:  BLX             __cxa_atexit
10131E:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x101328)
101320:  MOV             R2, R4
101322:  LDR             R1, =(dword_25AE80 - 0x10132A)
101324:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
101326:  ADD             R1, PC; dword_25AE80
101328:  LDR             R0, [R0]; std::string::~string()
10132A:  STRD.W          R6, R6, [R1]
10132E:  STR             R6, [R1,#(dword_25AE88 - 0x25AE80)]
101330:  POP.W           {R8}
101334:  POP.W           {R4-R7,LR}
101338:  B.W             sub_224250
