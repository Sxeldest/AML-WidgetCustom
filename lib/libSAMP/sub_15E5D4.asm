; =========================================================
; Game Engine Function: sub_15E5D4
; Address            : 0x15E5D4 - 0x15E61C
; =========================================================

15E5D4:  LDR             R1, =(off_23496C - 0x15E5DA)
15E5D6:  ADD             R1, PC; off_23496C
15E5D8:  LDR             R1, [R1]; dword_23DEF4
15E5DA:  LDR             R1, [R1]
15E5DC:  CBZ             R1, loc_15E618
15E5DE:  LDR.W           R1, [R1,#0x3B0]
15E5E2:  LDR             R1, [R1]
15E5E4:  CBZ             R1, loc_15E618
15E5E6:  ADD.W           R2, R1, #0x13A0
15E5EA:  LDRH            R3, [R2]
15E5EC:  CMP             R3, R0
15E5EE:  BNE             loc_15E5F8
15E5F0:  LDR             R0, [R2,#0x1C]
15E5F2:  ADDS            R0, #0x1C
15E5F4:  LDR             R0, [R0]
15E5F6:  BX              LR
15E5F8:  CMP.W           R0, #0x3EC
15E5FC:  BHI             loc_15E618
15E5FE:  ADDS            R2, R1, R0
15E600:  LDRB.W          R2, [R2,#0xFB4]
15E604:  CBZ             R2, loc_15E618
15E606:  ADD.W           R0, R1, R0,LSL#2
15E60A:  LDR             R0, [R0,#4]
15E60C:  CBZ             R0, loc_15E618
15E60E:  LDR             R0, [R0]
15E610:  CBZ             R0, loc_15E618
15E612:  ADD.W           R0, R0, #0x128
15E616:  B               loc_15E5F4
15E618:  MOVS            R0, #0
15E61A:  BX              LR
