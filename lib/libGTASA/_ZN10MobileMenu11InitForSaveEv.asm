; =========================================================
; Game Engine Function: _ZN10MobileMenu11InitForSaveEv
; Address            : 0x29B234 - 0x29B2E0
; =========================================================

29B234:  PUSH            {R4-R7,LR}
29B236:  ADD             R7, SP, #0xC
29B238:  PUSH.W          {R8-R11}
29B23C:  SUB             SP, SP, #4
29B23E:  MOV             R8, R0
29B240:  MOV.W           R9, #0
29B244:  STRB.W          R9, [R8,#0x55]
29B248:  BLX             j__ZN10MobileMenu4LoadEv; MobileMenu::Load(void)
29B24C:  MOVS            R0, #0x48 ; 'H'; unsigned int
29B24E:  BLX             _Znwj; operator new(uint)
29B252:  LDR             R1, =(aFetSg_0 - 0x29B25C); "FET_SG"
29B254:  MOVS            R2, #1; bool
29B256:  MOV             R5, R0
29B258:  ADD             R1, PC; "FET_SG"
29B25A:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
29B25E:  LDR             R0, =(_ZTV16SaveSelectScreen_ptr - 0x29B264)
29B260:  ADD             R0, PC; _ZTV16SaveSelectScreen_ptr
29B262:  LDR             R0, [R0]; `vtable for'SaveSelectScreen ...
29B264:  ADDS            R0, #8
29B266:  STR             R0, [R5]
29B268:  MOVS            R0, #0; bool
29B26A:  BLX             j__Z18Menu_PopulateSavesb; Menu_PopulateSaves(bool)
29B26E:  LDR             R0, =(GameToSKip_ptr - 0x29B276)
29B270:  LDR             R1, =(_ZTV10SaveScreen_ptr - 0x29B27C)
29B272:  ADD             R0, PC; GameToSKip_ptr
29B274:  STR.W           R9, [R5,#0x44]
29B278:  ADD             R1, PC; _ZTV10SaveScreen_ptr
29B27A:  LDR             R0, [R0]; GameToSKip
29B27C:  LDR             R1, [R1]; `vtable for'SaveScreen ...
29B27E:  LDR             R0, [R0]
29B280:  ADDS            R1, #8
29B282:  STR             R1, [R5]
29B284:  CMP             R0, #7
29B286:  BGT             loc_29B2C6
29B288:  LDR             R0, =(_ZTVN10SaveScreen19SaveScreenSelectionE_ptr - 0x29B294)
29B28A:  MOVS            R6, #0
29B28C:  LDR.W           R10, =(byte_61CD7E - 0x29B296)
29B290:  ADD             R0, PC; _ZTVN10SaveScreen19SaveScreenSelectionE_ptr
29B292:  ADD             R10, PC; byte_61CD7E
29B294:  LDR             R0, [R0]; `vtable for'SaveScreen::SaveScreenSelection ...
29B296:  ADD.W           R11, R0, #8
29B29A:  LDR             R0, =(GameToSKip_ptr - 0x29B2A0)
29B29C:  ADD             R0, PC; GameToSKip_ptr
29B29E:  LDR             R4, [R0]; GameToSKip
29B2A0:  MOVS            R0, #0x14; unsigned int
29B2A2:  BLX             _Znwj; operator new(uint)
29B2A6:  MOV             R1, R0; SelectScreen::MenuSelection *
29B2A8:  MOV             R0, R5; this
29B2AA:  STRB.W          R9, [R1,#0xC]
29B2AE:  STR             R5, [R1,#0x10]
29B2B0:  STRD.W          R11, R10, [R1]
29B2B4:  STR             R6, [R1,#8]
29B2B6:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29B2BA:  LDR             R0, [R4]
29B2BC:  ADDS            R6, #1
29B2BE:  RSB.W           R0, R0, #8
29B2C2:  CMP             R6, R0
29B2C4:  BLT             loc_29B2A0
29B2C6:  LDR.W           R0, [R8,#0x2C]
29B2CA:  CMP             R0, #0
29B2CC:  ITT NE
29B2CE:  MOVNE           R0, R8; this
29B2D0:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29B2D4:  STR.W           R5, [R8,#0x2C]
29B2D8:  ADD             SP, SP, #4
29B2DA:  POP.W           {R8-R11}
29B2DE:  POP             {R4-R7,PC}
