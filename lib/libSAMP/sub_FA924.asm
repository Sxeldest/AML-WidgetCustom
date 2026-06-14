; =========================================================
; Game Engine Function: sub_FA924
; Address            : 0xFA924 - 0xFA940
; =========================================================

FA924:  PUSH            {R4,R6,R7,LR}
FA926:  ADD             R7, SP, #8
FA928:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0xFA932); `vtable for'sigslot::connection ...
FA92A:  MOV             R4, R0
FA92C:  LDR             R0, [R0,#8]; this
FA92E:  ADD             R1, PC; `vtable for'sigslot::connection
FA930:  ADD.W           R1, R1, #8
FA934:  STR             R1, [R4]
FA936:  CBZ             R0, loc_FA93C
FA938:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
FA93C:  MOV             R0, R4
FA93E:  POP             {R4,R6,R7,PC}
