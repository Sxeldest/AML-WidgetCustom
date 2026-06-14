; =========================================================
; Game Engine Function: _ZN5CFont25FilterOutTokensFromStringEPt
; Address            : 0x5AB098 - 0x5AB0E6
; =========================================================

5AB098:  SUB.W           SP, SP, #0x200
5AB09C:  LDRH            R1, [R0]
5AB09E:  CBZ             R1, loc_5AB0B2
5AB0A0:  ADDS            R3, R0, #2
5AB0A2:  MOV             R2, SP
5AB0A4:  STRH.W          R1, [R2],#2
5AB0A8:  LDRH.W          R1, [R3],#2
5AB0AC:  CMP             R1, #0
5AB0AE:  BNE             loc_5AB0A4
5AB0B0:  B               loc_5AB0B4
5AB0B2:  MOV             R2, SP
5AB0B4:  MOVS            R1, #0
5AB0B6:  STRH            R1, [R2]
5AB0B8:  MOV             R2, SP
5AB0BA:  B               loc_5AB0BE
5AB0BC:  ADDS            R2, #2
5AB0BE:  LDRH            R3, [R2]
5AB0C0:  CMP             R3, #0x7E ; '~'
5AB0C2:  BEQ             loc_5AB0D0
5AB0C4:  CBZ             R3, loc_5AB0DA
5AB0C6:  STRH.W          R3, [R0,R1,LSL#1]
5AB0CA:  ADDS            R1, #1
5AB0CC:  ADDS            R2, #2
5AB0CE:  B               loc_5AB0BE
5AB0D0:  LDRH.W          R3, [R2,#2]!
5AB0D4:  CMP             R3, #0x7E ; '~'
5AB0D6:  BNE             loc_5AB0D0
5AB0D8:  B               loc_5AB0BC
5AB0DA:  MOVS            R2, #0
5AB0DC:  STRH.W          R2, [R0,R1,LSL#1]
5AB0E0:  ADD.W           SP, SP, #0x200
5AB0E4:  BX              LR
