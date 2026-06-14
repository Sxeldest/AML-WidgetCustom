; =========================================================
; Game Engine Function: _Z6UpHeldv
; Address            : 0x2975C4 - 0x2975F4
; =========================================================

2975C4:  PUSH            {R7,LR}
2975C6:  MOV             R7, SP
2975C8:  MOVS            R0, #0x3D ; '='
2975CA:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2975CE:  CBNZ            R0, loc_2975DA
2975D0:  MOVS            R0, #0x1F
2975D2:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2975D6:  CMP             R0, #1
2975D8:  BNE             loc_2975F0
2975DA:  MOVS            R0, #0x3D ; '='
2975DC:  MOVS            R1, #0
2975DE:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2975E2:  CBNZ            R0, loc_2975EC
2975E4:  MOVS            R0, #0x1F
2975E6:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
2975EA:  CBZ             R0, loc_2975F0
2975EC:  MOVS            R0, #1
2975EE:  POP             {R7,PC}
2975F0:  MOVS            R0, #0
2975F2:  POP             {R7,PC}
