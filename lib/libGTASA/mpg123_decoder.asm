; =========================================================
; Game Engine Function: mpg123_decoder
; Address            : 0x22F0D4 - 0x22F196
; =========================================================

22F0D4:  PUSH            {R4-R7,LR}
22F0D6:  ADD             R7, SP, #0xC
22F0D8:  PUSH.W          {R8}
22F0DC:  MOV             R5, R1
22F0DE:  MOV             R4, R0
22F0E0:  MOV             R0, R5; char *
22F0E2:  BLX             j_INT123_dectype
22F0E6:  CBZ             R4, loc_22F0F4
22F0E8:  CMP             R0, #0xF
22F0EA:  BNE             loc_22F0FE
22F0EC:  MOVW            R0, #0xB468
22F0F0:  MOVS            R1, #9
22F0F2:  STR             R1, [R4,R0]
22F0F4:  MOV.W           R0, #0xFFFFFFFF
22F0F8:  POP.W           {R8}
22F0FC:  POP             {R4-R7,PC}
22F0FE:  MOVW            R1, #0x9294
22F102:  LDR             R1, [R4,R1]
22F104:  CMP             R0, R1
22F106:  BNE             loc_22F110
22F108:  MOVS            R0, #0
22F10A:  POP.W           {R8}
22F10E:  POP             {R4-R7,PC}
22F110:  MOV             R0, R4; int
22F112:  MOV             R1, R5; char *
22F114:  BLX             j_INT123_frame_cpu_opt
22F118:  MOVW            R0, #0xB2A0
22F11C:  MOVW            R8, #0xB2C0
22F120:  ADDS            R6, R4, R0
22F122:  LDR.W           R0, [R4,R8]
22F126:  CBZ             R0, loc_22F142
22F128:  LDR             R0, [R6]; p
22F12A:  CBZ             R0, loc_22F146
22F12C:  MOVW            R1, #0xB2AC
22F130:  ADDS            R5, R4, R1
22F132:  LDR             R2, [R4,R1]
22F134:  CMP.W           R2, #0x48000
22F138:  BNE             loc_22F14E
22F13A:  MOV.W           R0, #0x48000
22F13E:  STR             R0, [R5]
22F140:  B               loc_22F16A
22F142:  MOVS            R0, #0
22F144:  STR             R0, [R6]
22F146:  MOVW            R0, #0xB2AC
22F14A:  ADDS            R5, R4, R0
22F14C:  B               loc_22F156
22F14E:  BLX             free
22F152:  MOVS            R0, #0
22F154:  STR             R0, [R6]
22F156:  MOV.W           R0, #0x48000
22F15A:  STR             R0, [R5]
22F15C:  MOV.W           R0, #0x48000; byte_count
22F160:  BLX             malloc
22F164:  CMP             R0, #0
22F166:  STR             R0, [R6]
22F168:  BEQ             loc_22F186
22F16A:  ADD.W           R0, R4, R8
22F16E:  MOVS            R1, #1
22F170:  STR             R1, [R0]
22F172:  MOVW            R0, #0xB46C
22F176:  STR             R1, [R4,R0]
22F178:  MOVW            R1, #0xB2A8
22F17C:  MOVS            R0, #0
22F17E:  STR             R0, [R4,R1]
22F180:  POP.W           {R8}
22F184:  POP             {R4-R7,PC}
22F186:  MOVW            R0, #0xB468
22F18A:  MOVS            R1, #0xB
22F18C:  STR             R1, [R4,R0]
22F18E:  MOV             R0, R4
22F190:  BLX             j_INT123_frame_exit
22F194:  B               loc_22F0F4
