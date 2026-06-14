; =========================================================
; Game Engine Function: _Z13SelectPressedv
; Address            : 0x297298 - 0x2972B4
; =========================================================

297298:  PUSH            {R7,LR}
29729A:  MOV             R7, SP
29729C:  MOVS            R0, #0x40 ; '@'
29729E:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2972A2:  CMP             R0, #1
2972A4:  ITT NE
2972A6:  MOVNE           R0, #0
2972A8:  POPNE           {R7,PC}
2972AA:  MOVS            R0, #0x40 ; '@'
2972AC:  POP.W           {R7,LR}
2972B0:  B.W             j_j__ZN4CHID10IsReleasedE10HIDMapping; j_CHID::IsReleased(HIDMapping)
