; =========================================================
; Game Engine Function: _Z8DownHeldv
; Address            : 0x2975F4 - 0x297624
; =========================================================

2975F4:  PUSH            {R7,LR}
2975F6:  MOV             R7, SP
2975F8:  MOVS            R0, #0x3C ; '<'
2975FA:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2975FE:  CBNZ            R0, loc_29760A
297600:  MOVS            R0, #0x1F
297602:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297606:  CMP             R0, #1
297608:  BNE             loc_297620
29760A:  MOVS            R0, #0x3C ; '<'
29760C:  MOVS            R1, #0
29760E:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
297612:  CBNZ            R0, loc_29761C
297614:  MOVS            R0, #0x1F
297616:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
29761A:  CBZ             R0, loc_297620
29761C:  MOVS            R0, #1
29761E:  POP             {R7,PC}
297620:  MOVS            R0, #0
297622:  POP             {R7,PC}
