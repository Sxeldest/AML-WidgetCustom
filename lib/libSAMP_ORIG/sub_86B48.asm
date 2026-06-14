; =========================================================
; Game Engine Function: sub_86B48
; Address            : 0x86B48 - 0x86B7A
; =========================================================

86B48:  PUSH            {R4,R6,R7,LR}
86B4A:  ADD             R7, SP, #8
86B4C:  LDR             R0, =(_ZNSt6__ndk15mutexD2Ev_ptr - 0x86B54)
86B4E:  LDR             R1, =(unk_1ABEB0 - 0x86B58)
86B50:  ADD             R0, PC; _ZNSt6__ndk15mutexD2Ev_ptr
86B52:  LDR             R4, =(off_110560 - 0x86B5A)
86B54:  ADD             R1, PC; unk_1ABEB0 ; obj
86B56:  ADD             R4, PC; off_110560
86B58:  LDR             R0, [R0]; std::mutex::~mutex() ; lpfunc
86B5A:  MOV             R2, R4; lpdso_handle
86B5C:  BLX             __cxa_atexit
86B60:  LDR             R1, =(dword_1ABEB4 - 0x86B6A)
86B62:  MOVS            R2, #0
86B64:  LDR             R0, =(sub_86B14+1 - 0x86B6C)
86B66:  ADD             R1, PC; dword_1ABEB4
86B68:  ADD             R0, PC; sub_86B14
86B6A:  STR             R2, [R1,#(dword_1ABEBC - 0x1ABEB4)]
86B6C:  MOV             R2, R4
86B6E:  STRD.W          R1, R1, [R1]
86B72:  POP.W           {R4,R6,R7,LR}
86B76:  B.W             sub_10C188
