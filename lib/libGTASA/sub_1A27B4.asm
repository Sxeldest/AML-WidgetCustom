; =========================================================
; Game Engine Function: sub_1A27B4
; Address            : 0x1A27B4 - 0x1A2816
; =========================================================

1A27B4:  PUSH            {R4,R6,R7,LR}
1A27B6:  ADD             R7, SP, #8
1A27B8:  LDR             R0, =(gMobileMenu_ptr - 0x1A27C6)
1A27BA:  MOVW            R1, #0x8000
1A27BE:  MOVS            R2, #0
1A27C0:  MOVS            R3, #0
1A27C2:  ADD             R0, PC; gMobileMenu_ptr
1A27C4:  VMOV.I32        Q8, #0
1A27C8:  MOVT            R1, #0x4489
1A27CC:  MOVT            R2, #0x43A0
1A27D0:  LDR             R4, [R0]; gMobileMenu
1A27D2:  MOVS            R0, #0
1A27D4:  MOVT            R3, #0x4360
1A27D8:  ADD.W           R12, R4, #0x58 ; 'X'
1A27DC:  STR             R0, [R4,#(dword_6E009C - 0x6E006C)]
1A27DE:  STRB.W          R0, [R4,#(byte_6E00B9 - 0x6E006C)]
1A27E2:  STM.W           R12, {R1-R3}
1A27E6:  STRB.W          R0, [R4,#(byte_6E00D9 - 0x6E006C)]
1A27EA:  STRH.W          R0, [R4,#(word_6E00C0 - 0x6E006C)]
1A27EE:  ADD.W           R0, R4, #0x20 ; ' '
1A27F2:  VST1.32         {D16-D17}, [R0]
1A27F6:  MOV             R0, R4; this
1A27F8:  BLX             j__ZN10MobileMenu12InitGameVarsEv; MobileMenu::InitGameVars(void)
1A27FC:  LDR             R0, =(_ZN10MobileMenuD2Ev_ptr - 0x1A2806)
1A27FE:  MOVS            R1, #1
1A2800:  LDR             R2, =(unk_67A000 - 0x1A280C)
1A2802:  ADD             R0, PC; _ZN10MobileMenuD2Ev_ptr
1A2804:  STRB.W          R1, [R4,#(byte_6E00DA - 0x6E006C)]
1A2808:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A280A:  MOV             R1, R4; obj
1A280C:  LDR             R0, [R0]; MobileMenu::~MobileMenu() ; lpfunc
1A280E:  POP.W           {R4,R6,R7,LR}
1A2812:  B.W             j___cxa_atexit
