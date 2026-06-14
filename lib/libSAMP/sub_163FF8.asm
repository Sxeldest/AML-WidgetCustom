; =========================================================
; Game Engine Function: sub_163FF8
; Address            : 0x163FF8 - 0x164078
; =========================================================

163FF8:  PUSH            {R4-R7,LR}
163FFA:  ADD             R7, SP, #0xC
163FFC:  PUSH.W          {R11}
164000:  SUB.W           SP, SP, #0x1100
164004:  ADD.W           R5, SP, #0x1110+var_110
164008:  MOV             R4, R0
16400A:  MOVS            R1, #0xFF; n
16400C:  MOV             R0, R5; int
16400E:  BLX             sub_22178C
164012:  MOV             R0, SP; int
164014:  MOVW            R1, #0xFFF; n
164018:  BLX             sub_22178C
16401C:  BLX             getpid
164020:  MOV             R3, R0
164022:  MOV             R0, R5
164024:  BL              sub_16407C
164028:  LDR             R1, =(aRt - 0x164030); "rt" ...
16402A:  MOV             R0, R5; filename
16402C:  ADD             R1, PC; "rt" ; modes
16402E:  BLX             fopen
164032:  CBZ             R0, loc_164060
164034:  MOV             R5, R0
164036:  MOV             R6, SP
164038:  MOV             R0, R6; s
16403A:  MOVW            R1, #0xFFF; n
16403E:  MOV             R2, R5; stream
164040:  BLX             fgets
164044:  CBZ             R0, loc_164064
164046:  MOV             R0, R6; haystack
164048:  MOV             R1, R4; needle
16404A:  BLX             strstr
16404E:  CMP             R0, #0
164050:  BEQ             loc_164038
164052:  MOV             R0, SP; nptr
164054:  MOVS            R1, #0; endptr
164056:  MOVS            R2, #0x10; base
164058:  BLX             strtoul
16405C:  MOV             R4, R0
16405E:  B               loc_164066
164060:  MOVS            R4, #0
164062:  B               loc_16406C
164064:  MOVS            R4, #0
164066:  MOV             R0, R5; stream
164068:  BLX             fclose
16406C:  MOV             R0, R4
16406E:  ADD.W           SP, SP, #0x1100
164072:  POP.W           {R11}
164076:  POP             {R4-R7,PC}
