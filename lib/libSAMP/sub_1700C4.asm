; =========================================================
; Game Engine Function: sub_1700C4
; Address            : 0x1700C4 - 0x17014A
; =========================================================

1700C4:  PUSH            {R4-R7,LR}
1700C6:  ADD             R7, SP, #0xC
1700C8:  PUSH.W          {R8,R9,R11}
1700CC:  SUB             SP, SP, #0x10
1700CE:  LDR             R4, =(dword_381B58 - 0x1700DC)
1700D0:  MOVW            R8, #0x2CD0
1700D4:  MOV             R5, R1
1700D6:  MOV             R9, R0
1700D8:  ADD             R4, PC; dword_381B58
1700DA:  MOV             R0, SP
1700DC:  MOVS            R1, #0x10
1700DE:  LDR             R6, [R4]
1700E0:  LDR.W           R3, [R6,R8]
1700E4:  LDR             R2, =(aTooltip02d - 0x1700EA); "##Tooltip_%02d" ...
1700E6:  ADD             R2, PC; "##Tooltip_%02d"
1700E8:  BL              sub_1655A8
1700EC:  CBZ             R5, loc_17012E
1700EE:  MOV             R0, SP
1700F0:  MOVS            R1, #0
1700F2:  MOVS            R2, #0
1700F4:  BL              sub_16560C
1700F8:  MOV             R1, R0
1700FA:  LDR             R0, [R4]
1700FC:  MOVW            R2, #0x199C
170100:  ADD             R0, R2
170102:  BL              sub_1658B8
170106:  CBZ             R0, loc_17012E
170108:  LDRB.W          R1, [R0,#0x7A]
17010C:  CBZ             R1, loc_17012E
17010E:  ADD.W           R1, R6, R8
170112:  LDR             R2, =(aTooltip02d - 0x17011C); "##Tooltip_%02d" ...
170114:  MOVS            R3, #1
170116:  LDR             R6, [R1]
170118:  ADD             R2, PC; "##Tooltip_%02d"
17011A:  STR.W           R3, [R0,#0xA4]
17011E:  STRB.W          R3, [R0,#0x81]
170122:  ADDS            R3, R6, #1
170124:  STR             R3, [R1]
170126:  MOV             R0, SP
170128:  MOVS            R1, #0x10
17012A:  BL              sub_1655A8
17012E:  MOVW            R0, #0x347
170132:  MOVS            R1, #0
170134:  MOVT            R0, #0x20C
170138:  ORR.W           R2, R9, R0
17013C:  MOV             R0, SP
17013E:  BL              sub_16A980
170142:  ADD             SP, SP, #0x10
170144:  POP.W           {R8,R9,R11}
170148:  POP             {R4-R7,PC}
