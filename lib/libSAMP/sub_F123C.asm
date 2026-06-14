; =========================================================
; Game Engine Function: sub_F123C
; Address            : 0xF123C - 0xF125E
; =========================================================

F123C:  PUSH            {R4,R6,R7,LR}
F123E:  ADD             R7, SP, #8
F1240:  MOV             R4, R0
F1242:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI11AudioPluginNS_9allocatorIS1_EEEE - 0xF1248); `vtable for'std::__shared_ptr_emplace<AudioPlugin> ...
F1244:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<AudioPlugin>
F1246:  ADD.W           R1, R0, #8
F124A:  MOV             R0, R4
F124C:  STR.W           R1, [R0],#0x10
F1250:  BL              sub_1547C8
F1254:  MOV             R0, R4
F1256:  POP.W           {R4,R6,R7,LR}
F125A:  B.W             sub_2242D4
