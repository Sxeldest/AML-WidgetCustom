; =========================================================
; Game Engine Function: _ZN14BreakManager_c16GetFirstFreeSlotEv
; Address            : 0x4526E2 - 0x4526FA
; =========================================================

4526E2:  MOV.W           R1, #0xFFFFFFFF
4526E6:  LDRB            R2, [R0,#1]
4526E8:  CMP             R2, #0
4526EA:  IT EQ
4526EC:  BXEQ            LR
4526EE:  ADDS            R1, #1
4526F0:  ADDS            R0, #0x20 ; ' '
4526F2:  CMP             R1, #0x3F ; '?'
4526F4:  BLT             loc_4526E6
4526F6:  MOVS            R0, #0
4526F8:  BX              LR
