; =========================================================
; Game Engine Function: sub_1010F8
; Address            : 0x1010F8 - 0x1011A2
; =========================================================

1010F8:  PUSH            {R4-R7,LR}
1010FA:  ADD             R7, SP, #0xC
1010FC:  PUSH.W          {R8,R9,R11}
101100:  MOV             R4, R0
101102:  LDR             R0, =(off_234A6C - 0x10110A)
101104:  LDR             R2, =(byte_2473E0 - 0x10110E)
101106:  ADD             R0, PC; off_234A6C
101108:  LDR             R1, [R4,#4]
10110A:  ADD             R2, PC; byte_2473E0
10110C:  LDR             R5, [R0]; dword_2402D0
10110E:  MOV             R8, R2
101110:  LDR             R0, [R5]
101112:  LDRB            R0, [R0]
101114:  STRB            R0, [R2]
101116:  LDRB            R0, [R1]
101118:  BL              sub_F8224
10111C:  LDR             R1, =(off_234A70 - 0x101124)
10111E:  LDR             R2, [R5]
101120:  ADD             R1, PC; off_234A70
101122:  LDR             R3, =(word_2473E2 - 0x10112A)
101124:  LDR             R6, [R1]; dword_2402DC
101126:  ADD             R3, PC; word_2473E2
101128:  STRB            R0, [R2]
10112A:  LDR             R1, [R4,#4]
10112C:  MOV             R9, R3
10112E:  LDR             R0, [R6]
101130:  LDRH            R0, [R0]
101132:  STRH            R0, [R3]
101134:  LDRB            R0, [R1]
101136:  BL              sub_F8224
10113A:  LDR             R1, [R6]
10113C:  SUBS            R2, R0, #4
10113E:  IT NE
101140:  MOVNE           R2, R0
101142:  STRH            R2, [R1]
101144:  BL              sub_F8280
101148:  LDR             R0, [R4,#4]
10114A:  LDRB            R0, [R0]
10114C:  BL              sub_F8230
101150:  LDR             R0, =(dword_2473E4 - 0x10115A)
101152:  MOVS            R2, #4
101154:  MOVS            R3, #0
101156:  ADD             R0, PC; dword_2473E4
101158:  LDR             R0, [R0]
10115A:  LDR.W           R1, [R0,#0x464]
10115E:  STR.W           R2, [R1,#0x59C]
101162:  LDR.W           R1, [R0,#0x464]
101166:  LDRB.W          R2, [R0,#0x3A]
10116A:  STR.W           R3, [R1,#0x59C]
10116E:  LDR             R1, =(off_23494C - 0x101176)
101170:  LDR             R3, [R4,#8]
101172:  ADD             R1, PC; off_23494C
101174:  LDR             R1, [R1]; dword_23DF24
101176:  LDR             R3, [R3]
101178:  LDR             R1, [R1]
10117A:  LDR             R4, =(byte_247518 - 0x101182)
10117C:  ADD             R1, R3
10117E:  ADD             R4, PC; byte_247518
101180:  ADDS            R1, #1
101182:  STRB            R2, [R4]
101184:  BLX             R1
101186:  LDR             R0, [R5]
101188:  LDRB.W          R1, [R8]
10118C:  STRB            R1, [R0]
10118E:  LDR             R0, [R6]
101190:  LDRH.W          R1, [R9]
101194:  STRH            R1, [R0]
101196:  POP.W           {R8,R9,R11}
10119A:  POP.W           {R4-R7,LR}
10119E:  B.W             sub_F8268
