; =========================================================
; Game Engine Function: _ZN10MobileMenu15InitForDownloadEv
; Address            : 0x29B178 - 0x29B1A6
; =========================================================

29B178:  PUSH            {R4,R5,R7,LR}
29B17A:  ADD             R7, SP, #8
29B17C:  MOV             R4, R0
29B17E:  MOVS            R0, #0
29B180:  STRB.W          R0, [R4,#0x55]
29B184:  MOV             R0, R4; this
29B186:  BLX             j__ZN10MobileMenu4LoadEv; MobileMenu::Load(void)
29B18A:  MOVS            R0, #0x4C ; 'L'; unsigned int
29B18C:  BLX             _Znwj; operator new(uint)
29B190:  MOV             R5, R0
29B192:  BLX             j__ZN14DownloadScreenC2Ev; DownloadScreen::DownloadScreen(void)
29B196:  LDR             R0, [R4,#0x2C]
29B198:  CMP             R0, #0
29B19A:  ITT NE
29B19C:  MOVNE           R0, R4; this
29B19E:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29B1A2:  STR             R5, [R4,#0x2C]
29B1A4:  POP             {R4,R5,R7,PC}
