; =========================================================
; Game Engine Function: sub_F91B6
; Address            : 0xF91B6 - 0xF91D4
; =========================================================

F91B6:  CBZ             R1, loc_F91CC
F91B8:  CMP             R3, R1
F91BA:  IT CC
F91BC:  ADDCC           R1, R3, #1
F91BE:  SUBS            R0, #1
F91C0:  CBZ             R1, loc_F91CC
F91C2:  LDRB            R3, [R0,R1]
F91C4:  SUBS            R1, #1
F91C6:  CMP             R3, R2
F91C8:  BNE             loc_F91C0
F91CA:  B               loc_F91D0
F91CC:  MOV.W           R1, #0xFFFFFFFF
F91D0:  MOV             R0, R1
F91D2:  BX              LR
