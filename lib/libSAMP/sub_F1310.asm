; =========================================================
; Game Engine Function: sub_F1310
; Address            : 0xF1310 - 0xF1330
; =========================================================

F1310:  PUSH            {R4,R6,R7,LR}
F1312:  ADD             R7, SP, #8
F1314:  MOV             R4, R0
F1316:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI8ChatIconNS_9allocatorIS1_EEEE - 0xF131E); `vtable for'std::__shared_ptr_emplace<ChatIcon> ...
F1318:  MOVS            R1, #0
F131A:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<ChatIcon>
F131C:  STR             R1, [R4,#8]
F131E:  ADDS            R0, #8
F1320:  STRD.W          R0, R1, [R4]
F1324:  ADD.W           R0, R4, #0xC
F1328:  BL              sub_10B928
F132C:  MOV             R0, R4
F132E:  POP             {R4,R6,R7,PC}
