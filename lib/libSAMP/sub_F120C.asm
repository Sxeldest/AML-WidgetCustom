; =========================================================
; Game Engine Function: sub_F120C
; Address            : 0xF120C - 0xF122C
; =========================================================

F120C:  PUSH            {R4,R6,R7,LR}
F120E:  ADD             R7, SP, #8
F1210:  MOV             R4, R0
F1212:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI11AudioPluginNS_9allocatorIS1_EEEE - 0xF121A); `vtable for'std::__shared_ptr_emplace<AudioPlugin> ...
F1214:  MOVS            R1, #0
F1216:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<AudioPlugin>
F1218:  STR             R1, [R4,#8]
F121A:  ADDS            R0, #8
F121C:  STRD.W          R0, R1, [R4]
F1220:  ADD.W           R0, R4, #0x10
F1224:  BL              sub_15474C
F1228:  MOV             R0, R4
F122A:  POP             {R4,R6,R7,PC}
