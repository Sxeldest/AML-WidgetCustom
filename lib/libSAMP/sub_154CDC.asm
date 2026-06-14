; =========================================================
; Game Engine Function: sub_154CDC
; Address            : 0x154CDC - 0x154D3C
; =========================================================

154CDC:  PUSH            {R4-R7,LR}
154CDE:  ADD             R7, SP, #0xC
154CE0:  PUSH.W          {R11}
154CE4:  MOV             R4, R0
154CE6:  LDR             R0, [R0,#0x5C]
154CE8:  LDR             R6, [R0]
154CEA:  BL              sub_157B34
154CEE:  CBZ             R0, loc_154D1E
154CF0:  MOVS            R5, #1
154CF2:  CBNZ            R6, loc_154D34
154CF4:  LDR             R0, [R4,#0x58]
154CF6:  CBZ             R0, loc_154D34
154CF8:  MOVS            R5, #1
154CFA:  MOV             R0, R4
154CFC:  MOVS            R1, #1
154CFE:  BL              sub_154D48
154D02:  B               loc_154D34
154D04:  CMP             R1, #1
154D06:  BNE             loc_154D40
154D08:  BLX             j___cxa_begin_catch
154D0C:  LDR             R1, [R0]
154D0E:  LDR             R1, [R1,#8]
154D10:  BLX             R1
154D12:  MOV             R1, R0; s
154D14:  MOVS            R0, #3; int
154D16:  BL              sub_159B70
154D1A:  BLX             j___cxa_end_catch
154D1E:  LDR             R0, [R4,#0x58]
154D20:  MOVS            R5, #0
154D22:  STRB.W          R5, [R4,#0x7C]
154D26:  CBZ             R6, loc_154D34
154D28:  CBZ             R0, loc_154D34
154D2A:  MOV             R0, R4
154D2C:  MOVS            R1, #0
154D2E:  MOVS            R5, #0
154D30:  BL              sub_154D48
154D34:  MOV             R0, R5
154D36:  POP.W           {R11}
154D3A:  POP             {R4-R7,PC}
