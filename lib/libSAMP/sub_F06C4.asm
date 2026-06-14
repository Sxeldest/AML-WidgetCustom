; =========================================================
; Game Engine Function: sub_F06C4
; Address            : 0xF06C4 - 0xF0704
; =========================================================

F06C4:  PUSH            {R7,LR}
F06C6:  MOV             R7, SP
F06C8:  LDR             R0, =(byte_23DED4 - 0xF06CE)
F06CA:  ADD             R0, PC; byte_23DED4
F06CC:  LDRB            R0, [R0]
F06CE:  DMB.W           ISH
F06D2:  LSLS            R0, R0, #0x1F
F06D4:  BEQ             loc_F06DC
F06D6:  LDR             R0, =(unk_23DED0 - 0xF06DC)
F06D8:  ADD             R0, PC; unk_23DED0
F06DA:  POP             {R7,PC}
F06DC:  LDR             R0, =(byte_23DED4 - 0xF06E2)
F06DE:  ADD             R0, PC; byte_23DED4 ; __guard *
F06E0:  BLX             j___cxa_guard_acquire
F06E4:  CMP             R0, #0
F06E6:  BEQ             loc_F06D6
F06E8:  LDR             R0, =(_ZNSt6__ndk15mutexD2Ev_ptr - 0xF06F0)
F06EA:  LDR             R1, =(unk_23DED0 - 0xF06F4)
F06EC:  ADD             R0, PC; _ZNSt6__ndk15mutexD2Ev_ptr
F06EE:  LDR             R2, =(off_22A540 - 0xF06F8)
F06F0:  ADD             R1, PC; unk_23DED0 ; obj
F06F2:  LDR             R0, [R0]; std::mutex::~mutex() ; lpfunc
F06F4:  ADD             R2, PC; off_22A540 ; lpdso_handle
F06F6:  BLX             __cxa_atexit
F06FA:  LDR             R0, =(byte_23DED4 - 0xF0700)
F06FC:  ADD             R0, PC; byte_23DED4 ; __guard *
F06FE:  BLX             j___cxa_guard_release
F0702:  B               loc_F06D6
