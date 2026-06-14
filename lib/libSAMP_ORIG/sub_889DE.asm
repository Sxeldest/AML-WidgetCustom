; =========================================================
; Game Engine Function: sub_889DE
; Address            : 0x889DE - 0x88A32
; =========================================================

889DE:  CBZ             R1, loc_889E8
889E0:  CMP             R0, R1
889E2:  ITT CS
889E4:  MOVCS           R0, #0
889E6:  BXCS            LR
889E8:  ADDS            R3, R0, #2
889EA:  MOVS            R0, #0
889EC:  MOV             R2, R3
889EE:  LDRH.W          R3, [R3,#-2]
889F2:  CMP             R3, #0
889F4:  IT EQ
889F6:  BXEQ            LR
889F8:  CMP             R3, #0x7F
889FA:  BHI             loc_88A00
889FC:  ADDS            R0, #1
889FE:  B               loc_88A26
88A00:  CMP.W           R3, #0x800
88A04:  BCS             loc_88A0A
88A06:  MOVS            R3, #2
88A08:  B               loc_88A24
88A0A:  AND.W           R3, R3, #0xFC00
88A0E:  CMP.W           R3, #0xDC00
88A12:  BNE             loc_88A18
88A14:  MOVS            R3, #0
88A16:  B               loc_88A24
88A18:  CMP.W           R3, #0xD800
88A1C:  MOV.W           R3, #3
88A20:  IT EQ
88A22:  MOVEQ           R3, #4
88A24:  ADD             R0, R3
88A26:  ADDS            R3, R2, #2
88A28:  CMP             R1, #0
88A2A:  BEQ             loc_889EC
88A2C:  CMP             R2, R1
88A2E:  BCC             loc_889EC
88A30:  BX              LR
