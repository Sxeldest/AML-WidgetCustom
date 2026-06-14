; =========================================================
; Game Engine Function: sub_F1340
; Address            : 0xF1340 - 0xF1362
; =========================================================

F1340:  PUSH            {R4,R6,R7,LR}
F1342:  ADD             R7, SP, #8
F1344:  MOV             R4, R0
F1346:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI8ChatIconNS_9allocatorIS1_EEEE - 0xF134C); `vtable for'std::__shared_ptr_emplace<ChatIcon> ...
F1348:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<ChatIcon>
F134A:  ADD.W           R1, R0, #8
F134E:  MOV             R0, R4
F1350:  STR.W           R1, [R0],#0xC
F1354:  BL              sub_10BB92
F1358:  MOV             R0, R4
F135A:  POP.W           {R4,R6,R7,LR}
F135E:  B.W             sub_2242D4
