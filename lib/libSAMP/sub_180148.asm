; =========================================================
; Game Engine Function: sub_180148
; Address            : 0x180148 - 0x1801CA
; =========================================================

180148:  PUSH            {R4-R7,LR}
18014A:  ADD             R7, SP, #0xC
18014C:  PUSH.W          {R8,R9,R11}
180150:  SUB             SP, SP, #8
180152:  CBZ             R1, loc_1801B0
180154:  MOV             R6, R0
180156:  MOV             R5, R1
180158:  LDR.W           R0, [R0,#0x7EC]
18015C:  LDRB            R1, [R6,#4]
18015E:  CBNZ            R1, loc_1801B0
180160:  ADDS            R0, #1
180162:  BEQ             loc_1801B0
180164:  LDR             R4, [R7,#arg_0]
180166:  MOV             R9, R3
180168:  MOV             R8, R2
18016A:  CMP             R4, #0xFF
18016C:  IT GE
18016E:  MOVGE           R4, #0xFF
180170:  LDRB            R0, [R5]
180172:  CMP             R3, #0
180174:  IT EQ
180176:  MOVEQ           R4, R3
180178:  SUBS            R0, #0x33 ; '3'
18017A:  CMN.W           R0, #4
18017E:  BHI             loc_180190
180180:  LDR             R0, =(off_234E88 - 0x180188)
180182:  MOV             R1, R5; name
180184:  ADD             R0, PC; off_234E88
180186:  LDR             R0, [R0]; unk_382751 ; int
180188:  BL              sub_18CC56
18018C:  MOV             R5, R0
18018E:  CBZ             R0, loc_1801B0
180190:  LDR             R1, =(a127001 - 0x180198); "127.0.0.1" ...
180192:  MOV             R0, R5; s1
180194:  ADD             R1, PC; "127.0.0.1"
180196:  BLX             strcmp
18019A:  CBZ             R0, loc_1801A8
18019C:  LDR             R1, =(a0000 - 0x1801A4); "0.0.0.0" ...
18019E:  MOV             R0, R5; s1
1801A0:  ADD             R1, PC; "0.0.0.0"
1801A2:  BLX             strcmp
1801A6:  CBNZ            R0, loc_1801BA
1801A8:  LDRH.W          R0, [R6,#0x238]
1801AC:  CMP             R0, R8
1801AE:  BNE             loc_1801BA
1801B0:  MOVS            R0, #0
1801B2:  ADD             SP, SP, #8
1801B4:  POP.W           {R8,R9,R11}
1801B8:  POP             {R4-R7,PC}
1801BA:  MOV             R0, R6
1801BC:  MOV             R1, R5
1801BE:  MOV             R2, R8
1801C0:  MOV             R3, R9
1801C2:  STR             R4, [SP,#0x20+var_20]
1801C4:  BL              sub_1801D8
1801C8:  B               loc_1801B2
