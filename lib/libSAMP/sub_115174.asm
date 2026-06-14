; =========================================================
; Game Engine Function: sub_115174
; Address            : 0x115174 - 0x1151F6
; =========================================================

115174:  PUSH            {R4-R7,LR}
115176:  ADD             R7, SP, #0xC
115178:  PUSH.W          {R8}
11517C:  MOV             R4, R0
11517E:  LDR             R0, =(off_23494C - 0x11518A)
115180:  MOV             R6, R1
115182:  MOVW            R1, #0xC34
115186:  ADD             R0, PC; off_23494C
115188:  MOVT            R1, #0x99
11518C:  MOV             R8, R3
11518E:  MOV             R5, R2
115190:  LDR             R0, [R0]; dword_23DF24
115192:  LDR             R0, [R0]
115194:  ADD             R0, R1
115196:  CMP             R0, R6
115198:  BNE             loc_1151E4
11519A:  LDRB.W          R0, [R4,#0x54]
11519E:  CBZ             R0, loc_1151CC
1151A0:  LDR             R0, [R4,#0x50]
1151A2:  CBZ             R0, loc_1151CC
1151A4:  LDR             R2, =(aSquaretick - 0x1151B2); "SquareTick" ...
1151A6:  ADDS            R0, #8
1151A8:  LDR             R1, =(aHudTicks - 0x1151B4); "hud_ticks" ...
1151AA:  LDRB.W          R3, [R4,#0x55]
1151AE:  ADD             R2, PC; "SquareTick"
1151B0:  ADD             R1, PC; "hud_ticks"
1151B2:  CMP             R3, #0
1151B4:  IT NE
1151B6:  MOVNE           R1, R2
1151B8:  BL              sub_163C24
1151BC:  LDR             R0, [R4,#0x50]
1151BE:  MOVS            R2, #0
1151C0:  LDRB.W          R1, [R4,#0x55]
1151C4:  STRB.W          R2, [R4,#0x54]
1151C8:  STRB.W          R1, [R0,#0x20]
1151CC:  LDRB.W          R0, [R4,#0x55]
1151D0:  CBZ             R0, loc_1151E4
1151D2:  MOV             R0, R4
1151D4:  MOV             R1, R5
1151D6:  MOV             R2, R8
1151D8:  POP.W           {R8}
1151DC:  POP.W           {R4-R7,LR}
1151E0:  B.W             sub_115204
1151E4:  LDR             R3, [R4,#0x40]
1151E6:  MOV             R0, R6
1151E8:  MOV             R1, R5
1151EA:  MOV             R2, R8
1151EC:  POP.W           {R8}
1151F0:  POP.W           {R4-R7,LR}
1151F4:  BX              R3
