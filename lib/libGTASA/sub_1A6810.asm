; =========================================================
; Game Engine Function: sub_1A6810
; Address            : 0x1A6810 - 0x1A6840
; =========================================================

1A6810:  LDR             R2, =(g_breakMan_ptr - 0x1A681A)
1A6812:  MOVS            R1, #0
1A6814:  LDR             R0, =(g_breakMan_ptr - 0x1A681C)
1A6816:  ADD             R2, PC; g_breakMan_ptr
1A6818:  ADD             R0, PC; g_breakMan_ptr
1A681A:  LDR             R2, [R2]; g_breakMan
1A681C:  LDR             R0, [R0]; g_breakMan
1A681E:  ADD.W           R2, R2, #0x800
1A6822:  STR             R1, [R0,#8]
1A6824:  STRH            R1, [R0]
1A6826:  ADDS            R0, #0x20 ; ' '
1A6828:  CMP             R0, R2
1A682A:  BNE             loc_1A6822
1A682C:  LDR             R0, =(_ZN14BreakManager_cD2Ev_ptr - 0x1A6834)
1A682E:  LDR             R1, =(g_breakMan_ptr - 0x1A6838)
1A6830:  ADD             R0, PC; _ZN14BreakManager_cD2Ev_ptr
1A6832:  LDR             R2, =(unk_67A000 - 0x1A683C)
1A6834:  ADD             R1, PC; g_breakMan_ptr
1A6836:  LDR             R0, [R0]; BreakManager_c::~BreakManager_c() ; lpfunc
1A6838:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A683A:  LDR             R1, [R1]; g_breakMan ; obj
1A683C:  B.W             j___cxa_atexit
