; =========================================================
; Game Engine Function: sub_FADD8
; Address            : 0xFADD8 - 0xFADFA
; =========================================================

FADD8:  PUSH            {R4,R6,R7,LR}
FADDA:  ADD             R7, SP, #8
FADDC:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0xFADE6); `vtable for'sigslot::connection ...
FADDE:  MOV             R4, R0
FADE0:  LDR             R0, [R0,#8]; this
FADE2:  ADD             R1, PC; `vtable for'sigslot::connection
FADE4:  ADD.W           R1, R1, #8
FADE8:  STR             R1, [R4]
FADEA:  CBZ             R0, loc_FADF0
FADEC:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
FADF0:  MOV             R0, R4; void *
FADF2:  POP.W           {R4,R6,R7,LR}
FADF6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
