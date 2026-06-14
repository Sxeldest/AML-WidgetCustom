; =========================================================
; Game Engine Function: sub_1A3688
; Address            : 0x1A3688 - 0x1A369C
; =========================================================

1A3688:  LDR             R0, =(_ZN10CPhoneInfoD2Ev_ptr - 0x1A3690)
1A368A:  LDR             R1, =(gPhoneInfo_ptr - 0x1A3694)
1A368C:  ADD             R0, PC; _ZN10CPhoneInfoD2Ev_ptr
1A368E:  LDR             R2, =(unk_67A000 - 0x1A3698)
1A3690:  ADD             R1, PC; gPhoneInfo_ptr
1A3692:  LDR             R0, [R0]; CPhoneInfo::~CPhoneInfo() ; lpfunc
1A3694:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A3696:  LDR             R1, [R1]; gPhoneInfo ; obj
1A3698:  B.W             j___cxa_atexit
