; =========================================================
; Game Engine Function: _ZN11YesNoScreen7YesFuncEP12SelectScreeni
; Address            : 0x2A88F0 - 0x2A8932
; =========================================================

2A88F0:  PUSH            {R4,R5,R7,LR}
2A88F2:  ADD             R7, SP, #8
2A88F4:  LDR             R1, =(gMobileMenu_ptr - 0x2A88FE)
2A88F6:  LDRD.W          R5, R4, [R0,#0x48]
2A88FA:  ADD             R1, PC; gMobileMenu_ptr
2A88FC:  LDR             R1, [R1]; gMobileMenu
2A88FE:  LDR             R0, [R1,#(dword_6E0090 - 0x6E006C)]
2A8900:  CMP             R0, #2
2A8902:  BCC             loc_2A891A
2A8904:  LDR             R1, =(gMobileMenu_ptr - 0x2A890A)
2A8906:  ADD             R1, PC; gMobileMenu_ptr
2A8908:  LDR             R1, [R1]; gMobileMenu
2A890A:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A890C:  ADD.W           R1, R1, R0,LSL#2
2A8910:  LDRD.W          R0, R1, [R1,#-8]
2A8914:  LDR             R2, [R0]
2A8916:  LDR             R2, [R2,#0x14]
2A8918:  BLX             R2
2A891A:  LDR             R0, =(gMobileMenu_ptr - 0x2A8924)
2A891C:  MOVS            R1, #0; bool
2A891E:  MOVS            R2, #0; bool
2A8920:  ADD             R0, PC; gMobileMenu_ptr
2A8922:  LDR             R0, [R0]; gMobileMenu ; this
2A8924:  BLX             j__ZN10MobileMenu15RemoveTopScreenEbb; MobileMenu::RemoveTopScreen(bool,bool)
2A8928:  MOV             R0, R4
2A892A:  MOV             R1, R5
2A892C:  POP.W           {R4,R5,R7,LR}
2A8930:  BX              R1
