; =========================================================
; Game Engine Function: sub_77138
; Address            : 0x77138 - 0x771B0
; =========================================================

77138:  PUSH            {R4-R7,LR}
7713A:  ADD             R7, SP, #0xC
7713C:  PUSH.W          {R8-R11}
77140:  SUB             SP, SP, #0xC
77142:  MOV             R9, R0
77144:  MOVS            R0, #0
77146:  MOV             R4, R9
77148:  MOV             R5, R9
7714A:  STR.W           R0, [R4,#8]!
7714E:  STR.W           R4, [R5,#4]!
77152:  MOV             R8, R5
77154:  MOV             R11, R5
77156:  STR             R0, [R5,#8]
77158:  MOV             R6, R5
7715A:  STR.W           R0, [R8,#0x10]!
7715E:  STR             R0, [R5,#0x14]
77160:  STR             R0, [R5,#0x20]
77162:  STR.W           R0, [R11,#0x1C]!
77166:  MOV             R0, R5
77168:  STR.W           R11, [R0,#0x18]!
7716C:  STR.W           R8, [R6,#0xC]!
77170:  LDRB            R2, [R1]
77172:  STR             R0, [SP,#0x28+var_20]
77174:  LDR             R0, [R1,#8]
77176:  LSLS            R2, R2, #0x1F
77178:  IT EQ
7717A:  ADDEQ           R0, R1, #1; filename
7717C:  LDR             R1, =(a6ar+4 - 0x77182); "r" ...
7717E:  ADD             R1, PC; "r" ; modes
77180:  BLX             fopen
77184:  CBZ             R0, loc_7719E
77186:  STR             R6, [SP,#0x28+var_24]
77188:  MOV             R10, R0
7718A:  LDR             R1, =(sub_77524+1 - 0x77190)
7718C:  ADD             R1, PC; sub_77524
7718E:  MOV             R2, R9
77190:  BL              sub_75B88
77194:  MOV             R6, R0
77196:  MOV             R0, R10; stream
77198:  BLX             fclose
7719C:  B               loc_771A2
7719E:  MOV.W           R6, #0xFFFFFFFF
771A2:  STR.W           R6, [R9]
771A6:  MOV             R0, R9
771A8:  ADD             SP, SP, #0xC
771AA:  POP.W           {R8-R11}
771AE:  POP             {R4-R7,PC}
