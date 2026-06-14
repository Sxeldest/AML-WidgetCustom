; =========================================================
; Game Engine Function: sub_141154
; Address            : 0x141154 - 0x141212
; =========================================================

141154:  PUSH            {R4-R7,LR}
141156:  ADD             R7, SP, #0xC
141158:  PUSH.W          {R8}
14115C:  SUB             SP, SP, #0x138
14115E:  ADD             R0, SP, #0x148+var_128
141160:  MOV             R5, R2
141162:  MOV             R8, R1
141164:  BL              sub_17D4A8
141168:  STRH.W          R8, [R7,#var_12]
14116C:  SUB.W           R1, R7, #-var_12
141170:  MOVS            R2, #0x10
141172:  MOVS            R3, #1
141174:  BL              sub_17D628
141178:  STRB.W          R5, [R7,#var_12]
14117C:  ADD             R0, SP, #0x148+var_128
14117E:  SUB.W           R1, R7, #-var_12
141182:  MOVS            R2, #8
141184:  MOVS            R3, #1
141186:  BL              sub_17D628
14118A:  LDR             R0, =(off_23496C - 0x141192)
14118C:  MOVS            R3, #0
14118E:  ADD             R0, PC; off_23496C
141190:  LDR             R5, [R0]; dword_23DEF4
141192:  LDR             R0, [R5]
141194:  LDR.W           R0, [R0,#0x210]
141198:  LDR             R1, =(off_234C38 - 0x14119E)
14119A:  ADD             R1, PC; off_234C38
14119C:  LDR             R2, [R0]
14119E:  LDR             R1, [R1]; unk_23C758
1411A0:  LDR.W           LR, [R2,#0x6C]
1411A4:  MOV.W           R12, #0xFFFFFFFF
1411A8:  MOVS            R4, #0xA
1411AA:  ADD             R2, SP, #0x148+var_128
1411AC:  MOVW            R6, #0xFFFF
1411B0:  STRD.W          R4, R3, [SP,#0x148+var_148]
1411B4:  STRD.W          R3, R12, [SP,#0x148+var_140]
1411B8:  STR             R3, [SP,#0x148+var_130]
1411BA:  MOVS            R3, #1
1411BC:  STRD.W          R6, R6, [SP,#0x148+var_138]
1411C0:  BLX             LR
1411C2:  LDR             R0, [R5]
1411C4:  LDR.W           R0, [R0,#0x3B0]
1411C8:  LDR             R5, [R0,#4]
1411CA:  CBZ             R5, loc_141204
1411CC:  MOV.W           R0, R8,LSR#4
1411D0:  CMP             R0, #0x7C ; '|'
1411D2:  BHI             loc_141204
1411D4:  MOV             R0, R5
1411D6:  MOV             R1, R8
1411D8:  BL              sub_F2396
1411DC:  CBZ             R0, loc_141204
1411DE:  LDR.W           R4, [R5,R8,LSL#2]
1411E2:  CBZ             R4, loc_141204
1411E4:  MOV             R0, R4
1411E6:  BL              sub_109F36
1411EA:  CBZ             R0, loc_141204
1411EC:  LDR             R1, [R4,#8]
1411EE:  LDR             R0, =(unk_B94C8 - 0x1411F4)
1411F0:  ADD             R0, PC; unk_B94C8
1411F2:  MOVS            R2, #3
1411F4:  MOVS            R3, #2
1411F6:  BL              sub_107188
1411FA:  BL              sub_F0B30
1411FE:  LDR             R1, =(dword_23902C - 0x141204)
141200:  ADD             R1, PC; dword_23902C
141202:  STR             R0, [R1]
141204:  ADD             R0, SP, #0x148+var_128
141206:  BL              sub_17D542
14120A:  ADD             SP, SP, #0x138
14120C:  POP.W           {R8}
141210:  POP             {R4-R7,PC}
