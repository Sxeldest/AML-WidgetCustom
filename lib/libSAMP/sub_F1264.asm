; =========================================================
; Game Engine Function: sub_F1264
; Address            : 0xF1264 - 0xF128A
; =========================================================

F1264:  PUSH            {R4,R6,R7,LR}
F1266:  ADD             R7, SP, #8
F1268:  MOV             R4, R0
F126A:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI11AudioPluginNS_9allocatorIS1_EEEE - 0xF1270); `vtable for'std::__shared_ptr_emplace<AudioPlugin> ...
F126C:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<AudioPlugin>
F126E:  ADD.W           R1, R0, #8
F1272:  MOV             R0, R4
F1274:  STR.W           R1, [R0],#0x10
F1278:  BL              sub_1547C8
F127C:  MOV             R0, R4; this
F127E:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
F1282:  POP.W           {R4,R6,R7,LR}
F1286:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
