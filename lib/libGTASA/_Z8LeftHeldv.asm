; =========================================================
; Game Engine Function: _Z8LeftHeldv
; Address            : 0x297624 - 0x297654
; =========================================================

297624:  PUSH            {R7,LR}
297626:  MOV             R7, SP
297628:  MOVS            R0, #0x3E ; '>'
29762A:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
29762E:  CBNZ            R0, loc_29763A
297630:  MOVS            R0, #0x1E
297632:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297636:  CMP             R0, #1
297638:  BNE             loc_297650
29763A:  MOVS            R0, #0x3E ; '>'
29763C:  MOVS            R1, #0
29763E:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
297642:  CBNZ            R0, loc_29764C
297644:  MOVS            R0, #0x1E
297646:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
29764A:  CBZ             R0, loc_297650
29764C:  MOVS            R0, #1
29764E:  POP             {R7,PC}
297650:  MOVS            R0, #0
297652:  POP             {R7,PC}
