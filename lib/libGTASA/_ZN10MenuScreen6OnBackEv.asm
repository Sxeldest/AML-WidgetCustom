; =========================================================
; Game Engine Function: _ZN10MenuScreen6OnBackEv
; Address            : 0x299854 - 0x29988C
; =========================================================

299854:  LDR             R0, =(gMobileMenu_ptr - 0x29985A)
299856:  ADD             R0, PC; gMobileMenu_ptr
299858:  LDR             R0, [R0]; gMobileMenu
29985A:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
29985C:  CMP             R0, #2
29985E:  BCC             loc_29987E
299860:  PUSH            {R7,LR}
299862:  MOV             R7, SP
299864:  LDR             R1, =(gMobileMenu_ptr - 0x29986A)
299866:  ADD             R1, PC; gMobileMenu_ptr
299868:  LDR             R1, [R1]; gMobileMenu
29986A:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29986C:  ADD.W           R1, R1, R0,LSL#2
299870:  LDRD.W          R0, R1, [R1,#-8]
299874:  LDR             R2, [R0]
299876:  LDR             R2, [R2,#0x14]
299878:  BLX             R2
29987A:  POP.W           {R7,LR}
29987E:  LDR             R0, =(gMobileMenu_ptr - 0x299888)
299880:  MOVS            R1, #0; bool
299882:  MOVS            R2, #0; bool
299884:  ADD             R0, PC; gMobileMenu_ptr
299886:  LDR             R0, [R0]; gMobileMenu ; this
299888:  B.W             _ZN10MobileMenu15RemoveTopScreenEbb; MobileMenu::RemoveTopScreen(bool,bool)
