; =========================================================
; Game Engine Function: _ZN10MobileMenu12InitForTitleEv
; Address            : 0x29B130 - 0x29B172
; =========================================================

29B130:  PUSH            {R4,R5,R7,LR}
29B132:  ADD             R7, SP, #8
29B134:  MOV             R4, R0
29B136:  MOVS            R0, #0
29B138:  STRB.W          R0, [R4,#0x55]
29B13C:  MOV             R0, R4; this
29B13E:  BLX             j__ZN10MobileMenu4LoadEv; MobileMenu::Load(void)
29B142:  MOVS            R0, #0x58 ; 'X'; unsigned int
29B144:  BLX             _Znwj; operator new(uint)
29B148:  MOVS            R1, #0; bool
29B14A:  MOVS            R2, #0; bool
29B14C:  MOV             R5, R0
29B14E:  BLX             j__ZN10FlowScreenC2Ebb; FlowScreen::FlowScreen(bool,bool)
29B152:  LDR             R0, =(_ZTV14MainMenuScreen_ptr - 0x29B158)
29B154:  ADD             R0, PC; _ZTV14MainMenuScreen_ptr
29B156:  LDR             R0, [R0]; `vtable for'MainMenuScreen ...
29B158:  ADDS            R0, #8
29B15A:  STR             R0, [R5]
29B15C:  MOV             R0, R5; this
29B15E:  BLX             j__ZN14MainMenuScreen11AddAllItemsEv; MainMenuScreen::AddAllItems(void)
29B162:  LDR             R0, [R4,#0x2C]
29B164:  CMP             R0, #0
29B166:  ITT NE
29B168:  MOVNE           R0, R4; this
29B16A:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29B16E:  STR             R5, [R4,#0x2C]
29B170:  POP             {R4,R5,R7,PC}
