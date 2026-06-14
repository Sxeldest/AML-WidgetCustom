; =========================================================
; Game Engine Function: _Z12Menu_ShowNagv
; Address            : 0x2A9188 - 0x2A91A6
; =========================================================

2A9188:  LDR             R0, =(gMobileMenu_ptr - 0x2A918E)
2A918A:  ADD             R0, PC; gMobileMenu_ptr
2A918C:  LDR             R0, [R0]; gMobileMenu
2A918E:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
2A9190:  CMP             R1, #0
2A9192:  ITT EQ
2A9194:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
2A9196:  CMPEQ           R0, #0
2A9198:  BEQ             loc_2A919C
2A919A:  BX              LR
2A919C:  LDR             R0, =(gMobileMenu_ptr - 0x2A91A2)
2A919E:  ADD             R0, PC; gMobileMenu_ptr
2A91A0:  LDR             R0, [R0]; gMobileMenu ; this
2A91A2:  B.W             j_j__ZN10MobileMenu10InitForNagEv; j_MobileMenu::InitForNag(void)
