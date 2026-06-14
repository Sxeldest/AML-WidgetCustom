; =========================================================
; Game Engine Function: sub_ED484
; Address            : 0xED484 - 0xED4A4
; =========================================================

ED484:  PUSH            {R4,R6,R7,LR}
ED486:  ADD             R7, SP, #8
ED488:  LDRB            R4, [R1]
ED48A:  LDR             R3, [R1,#8]
ED48C:  LSLS            R4, R4, #0x1F
ED48E:  IT EQ
ED490:  ADDEQ           R3, R1, #1
ED492:  MOV             R1, R3
ED494:  BLX             j__ZNSt6__ndk17codecvtIwc9mbstate_tEC2EPKcj; std::codecvt<wchar_t,char,mbstate_t>::codecvt(char const*,uint)
ED498:  LDR             R1, =(_ZTVNSt6__ndk114codecvt_bynameIwc9mbstate_tEE_ptr - 0xED49E)
ED49A:  ADD             R1, PC; _ZTVNSt6__ndk114codecvt_bynameIwc9mbstate_tEE_ptr
ED49C:  LDR             R1, [R1]; `vtable for'std::codecvt_byname<wchar_t,char,mbstate_t> ...
ED49E:  ADDS            R1, #8
ED4A0:  STR             R1, [R0]
ED4A2:  POP             {R4,R6,R7,PC}
