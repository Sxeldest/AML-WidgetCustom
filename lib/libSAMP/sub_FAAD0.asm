; =========================================================
; Game Engine Function: sub_FAAD0
; Address            : 0xFAAD0 - 0xFAB0E
; =========================================================

FAAD0:  PUSH            {R4,R5,R7,LR}
FAAD2:  ADD             R7, SP, #8
FAAD4:  LDR             R1, [R0,#0x10]
FAAD6:  MOV             R4, R0
FAAD8:  CBZ             R1, loc_FAAF2
FAADA:  LDR             R0, =(off_23494C - 0xFAAE8)
FAADC:  MOV             R2, #0x670808
FAAE4:  ADD             R0, PC; off_23494C
FAAE6:  LDR             R0, [R0]; dword_23DF24
FAAE8:  LDR             R0, [R0]
FAAEA:  ADD             R0, R2
FAAEC:  MOVS            R2, #0
FAAEE:  BL              sub_164196
FAAF2:  ADDS            R0, R4, #4
FAAF4:  BL              sub_FAB24
FAAF8:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0xFAB00); `vtable for'sigslot::connection ...
FAAFA:  LDR             R0, [R4,#0xC]; this
FAAFC:  ADD             R1, PC; `vtable for'sigslot::connection
FAAFE:  ADD.W           R1, R1, #8
FAB02:  STR             R1, [R4,#4]
FAB04:  CBZ             R0, loc_FAB0A
FAB06:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
FAB0A:  MOV             R0, R4
FAB0C:  POP             {R4,R5,R7,PC}
