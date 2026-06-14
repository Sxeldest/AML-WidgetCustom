; =========================================================
; Game Engine Function: _Z9RightHeldv
; Address            : 0x297654 - 0x297684
; =========================================================

297654:  PUSH            {R7,LR}
297656:  MOV             R7, SP
297658:  MOVS            R0, #0x3F ; '?'
29765A:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
29765E:  CBNZ            R0, loc_29766A
297660:  MOVS            R0, #0x1E
297662:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297666:  CMP             R0, #1
297668:  BNE             loc_297680
29766A:  MOVS            R0, #0x3F ; '?'
29766C:  MOVS            R1, #0
29766E:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
297672:  CBNZ            R0, loc_29767C
297674:  MOVS            R0, #0x1E
297676:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
29767A:  CBZ             R0, loc_297680
29767C:  MOVS            R0, #1
29767E:  POP             {R7,PC}
297680:  MOVS            R0, #0
297682:  POP             {R7,PC}
