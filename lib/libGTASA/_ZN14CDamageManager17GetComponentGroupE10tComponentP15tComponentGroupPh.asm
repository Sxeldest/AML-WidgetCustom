; =========================================================
; Game Engine Function: _ZN14CDamageManager17GetComponentGroupE10tComponentP15tComponentGroupPh
; Address            : 0x56E674 - 0x56E6C8
; =========================================================

56E674:  MOVS            R0, #0xFE
56E676:  CMP             R1, #0xB
56E678:  STRB            R0, [R3]
56E67A:  BLT             loc_56E68C
56E67C:  MOVS            R0, #5
56E67E:  CMP             R1, #0xF
56E680:  IT GT
56E682:  MOVGT           R0, #0
56E684:  STR             R0, [R2]
56E686:  ADD.W           R0, R1, #0xF5
56E68A:  B               loc_56E6C2
56E68C:  CMP             R1, #5
56E68E:  BLT             loc_56E6A6
56E690:  MOVS            R0, #2
56E692:  CMP             R1, #6
56E694:  IT EQ
56E696:  MOVEQ           R0, #4
56E698:  CMP             R1, #5
56E69A:  IT EQ
56E69C:  MOVEQ           R0, #3
56E69E:  STR             R0, [R2]
56E6A0:  ADD.W           R0, R1, #0xFB
56E6A4:  B               loc_56E6C2
56E6A6:  CMP             R1, #1
56E6A8:  BLT             loc_56E6B4
56E6AA:  MOVS            R0, #1
56E6AC:  STR             R0, [R2]
56E6AE:  ADD.W           R0, R1, #0xFF
56E6B2:  B               loc_56E6C2
56E6B4:  CMP             R1, #0
56E6B6:  ITT LT
56E6B8:  MOVLT           R0, #0
56E6BA:  BXLT            LR
56E6BC:  MOVS            R0, #6
56E6BE:  STR             R0, [R2]
56E6C0:  MOVS            R0, #0
56E6C2:  STRB            R0, [R3]
56E6C4:  MOVS            R0, #1
56E6C6:  BX              LR
