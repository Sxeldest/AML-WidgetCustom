; =========================================================
; Game Engine Function: sub_1A278C
; Address            : 0x1A278C - 0x1A27A8
; =========================================================

1A278C:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x1A2794)
1A278E:  LDR             R3, =(_ZN7OSArrayI7KeyPairED2Ev_ptr - 0x1A2798)
1A2790:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
1A2792:  LDR             R2, =(unk_67A000 - 0x1A279C)
1A2794:  ADD             R3, PC; _ZN7OSArrayI7KeyPairED2Ev_ptr
1A2796:  LDR             R1, [R0]; obj
1A2798:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A279A:  LDR             R0, [R3]; OSArray<KeyPair>::~OSArray() ; lpfunc
1A279C:  MOVS            R3, #0
1A279E:  STRD.W          R3, R3, [R1]; CHIDKeyboard::m_KeyPairs
1A27A2:  STR             R3, [R1,#(dword_6E0034 - 0x6E002C)]
1A27A4:  B.W             j___cxa_atexit
