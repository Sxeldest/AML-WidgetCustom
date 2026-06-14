; =========================================================
; Game Engine Function: _Z11Menu_Resumev
; Address            : 0x2A93EC - 0x2A941A
; =========================================================

2A93EC:  PUSH            {R4-R7,LR}
2A93EE:  ADD             R7, SP, #0xC
2A93F0:  PUSH.W          {R11}
2A93F4:  MOVS            R0, #byte_9; this
2A93F6:  MOVS            R1, #1; int
2A93F8:  MOVS            R5, #9
2A93FA:  MOVS            R4, #1
2A93FC:  BLX             j__ZN19CGenericGameStorage18CheckSlotDataValidEib; CGenericGameStorage::CheckSlotDataValid(int,bool)
2A9400:  CMP             R0, #1
2A9402:  BNE             loc_2A9414
2A9404:  LDR             R0, =(gMobileMenu_ptr - 0x2A940A)
2A9406:  ADD             R0, PC; gMobileMenu_ptr
2A9408:  LDR             R6, [R0]; gMobileMenu
2A940A:  STR             R5, [R6,#(dword_6E00BC - 0x6E006C)]
2A940C:  BLX             j__Z26SettingsBeforeStartingGamev; SettingsBeforeStartingGame(void)
2A9410:  STRB.W          R4, [R6,#(byte_6E00B9 - 0x6E006C)]
2A9414:  POP.W           {R11}
2A9418:  POP             {R4-R7,PC}
