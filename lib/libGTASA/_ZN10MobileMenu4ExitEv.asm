; =========================================================
; Game Engine Function: _ZN10MobileMenu4ExitEv
; Address            : 0x29ADF8 - 0x29AE44
; =========================================================

29ADF8:  PUSH            {R4,R6,R7,LR}
29ADFA:  ADD             R7, SP, #8
29ADFC:  MOV             R4, R0
29ADFE:  BLX             j__ZN10MobileMenu6UnloadEv; MobileMenu::Unload(void)
29AE02:  LDR             R1, [R4,#0x24]
29AE04:  MOVS            R0, #0
29AE06:  STR             R0, [R4,#0x2C]
29AE08:  STRB.W          R0, [R4,#0x6D]
29AE0C:  B               loc_29AE16
29AE0E:  LDR             R1, [R0]
29AE10:  LDR             R1, [R1,#4]
29AE12:  BLX             R1
29AE14:  LDR             R1, [R4,#0x24]
29AE16:  CBZ             R1, loc_29AE28
29AE18:  LDR             R0, [R4,#0x28]
29AE1A:  SUBS            R1, #1
29AE1C:  LDR.W           R0, [R0,R1,LSL#2]
29AE20:  STR             R1, [R4,#0x24]
29AE22:  CMP             R0, #0
29AE24:  BNE             loc_29AE0E
29AE26:  B               loc_29AE16
29AE28:  BLX             j__Z20Menu_SwitchOffToGamev; Menu_SwitchOffToGame(void)
29AE2C:  MOVS            R0, #1; bool
29AE2E:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29AE32:  CMP             R0, #1
29AE34:  IT NE
29AE36:  POPNE           {R4,R6,R7,PC}
29AE38:  LDR             R0, =(skipFrame_ptr - 0x29AE40)
29AE3A:  MOVS            R1, #2
29AE3C:  ADD             R0, PC; skipFrame_ptr
29AE3E:  LDR             R0, [R0]; skipFrame
29AE40:  STR             R1, [R0]
29AE42:  POP             {R4,R6,R7,PC}
