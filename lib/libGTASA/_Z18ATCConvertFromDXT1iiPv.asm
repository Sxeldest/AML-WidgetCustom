; =========================================================
; Game Engine Function: _Z18ATCConvertFromDXT1iiPv
; Address            : 0x1CB144 - 0x1CB262
; =========================================================

1CB144:  PUSH            {R4-R7,LR}
1CB146:  ADD             R7, SP, #0xC
1CB148:  PUSH.W          {R8-R11}
1CB14C:  ASRS            R3, R0, #0x1F
1CB14E:  ADD.W           R3, R0, R3,LSR#30
1CB152:  ADDS            R0, #3
1CB154:  CMP             R0, #7
1CB156:  MOV.W           R0, R1,ASR#31
1CB15A:  ADD.W           R0, R1, R0,LSR#30
1CB15E:  MOV.W           R3, R3,ASR#2
1CB162:  ADD.W           R1, R1, #3
1CB166:  IT CC
1CB168:  MOVCC           R3, #1
1CB16A:  ASRS            R0, R0, #2
1CB16C:  CMP             R1, #7
1CB16E:  IT CC
1CB170:  MOVCC           R0, #1
1CB172:  MUL.W           R8, R0, R3
1CB176:  CMP.W           R8, #1
1CB17A:  BLT             loc_1CB25C
1CB17C:  ADDS            R1, R2, #4
1CB17E:  LDR             R2, =(unk_5E87E8 - 0x1CB18C)
1CB180:  MOVW            R12, #0x7FE0
1CB184:  MOV.W           LR, #0xC
1CB188:  ADD             R2, PC; unk_5E87E8
1CB18A:  LDRB            R5, [R1]
1CB18C:  SUBS.W          R8, R8, #1
1CB190:  LDRB            R6, [R1,#1]
1CB192:  AND.W           R0, R5, #0xC
1CB196:  LDRB.W          R10, [R1,#2]
1CB19A:  LDRB            R4, [R1,#3]
1CB19C:  LDR.W           R9, [R2,R0]
1CB1A0:  LDRH.W          R0, [R1,#-4]
1CB1A4:  AND.W           R3, R12, R0,LSR#1
1CB1A8:  AND.W           R0, R0, #0x1F
1CB1AC:  ORR.W           R0, R0, R3
1CB1B0:  AND.W           R3, LR, R5,LSR#2
1CB1B4:  STRH.W          R0, [R1,#-4]
1CB1B8:  AND.W           R0, R5, #3
1CB1BC:  LDR             R3, [R2,R3]
1CB1BE:  LDR.W           R0, [R2,R0,LSL#2]
1CB1C2:  ORR.W           R0, R0, R9,LSL#2
1CB1C6:  ORR.W           R0, R0, R3,LSL#4
1CB1CA:  UBFX.W          R3, R5, #6, #2
1CB1CE:  AND.W           R5, LR, R4,LSR#2
1CB1D2:  LDR.W           R3, [R2,R3,LSL#2]
1CB1D6:  LDR             R5, [R2,R5]
1CB1D8:  ORR.W           R0, R0, R3,LSL#6
1CB1DC:  STRB            R0, [R1]
1CB1DE:  AND.W           R0, R6, #0xC
1CB1E2:  AND.W           R3, R6, #3
1CB1E6:  LDR             R0, [R2,R0]
1CB1E8:  LDR.W           R3, [R2,R3,LSL#2]
1CB1EC:  ORR.W           R0, R3, R0,LSL#2
1CB1F0:  AND.W           R3, LR, R6,LSR#2
1CB1F4:  LDR             R3, [R2,R3]
1CB1F6:  ORR.W           R0, R0, R3,LSL#4
1CB1FA:  UBFX.W          R3, R6, #6, #2
1CB1FE:  AND.W           R6, R4, #0xC
1CB202:  LDR.W           R3, [R2,R3,LSL#2]
1CB206:  LDR             R6, [R2,R6]
1CB208:  ORR.W           R0, R0, R3,LSL#6
1CB20C:  STRB            R0, [R1,#1]
1CB20E:  AND.W           R0, R10, #0xC
1CB212:  AND.W           R3, R10, #3
1CB216:  LDR             R0, [R2,R0]
1CB218:  LDR.W           R3, [R2,R3,LSL#2]
1CB21C:  ORR.W           R11, R3, R0,LSL#2
1CB220:  UBFX.W          R3, R4, #6, #2
1CB224:  AND.W           R0, LR, R10,LSR#2
1CB228:  AND.W           R4, R4, #3
1CB22C:  LDR.W           R9, [R2,R3,LSL#2]
1CB230:  UBFX.W          R3, R10, #6, #2
1CB234:  LDR             R0, [R2,R0]
1CB236:  LDR.W           R3, [R2,R3,LSL#2]
1CB23A:  LDR.W           R4, [R2,R4,LSL#2]
1CB23E:  ORR.W           R0, R11, R0,LSL#4
1CB242:  ORR.W           R0, R0, R3,LSL#6
1CB246:  STRB            R0, [R1,#2]
1CB248:  ORR.W           R0, R4, R6,LSL#2
1CB24C:  ORR.W           R0, R0, R5,LSL#4
1CB250:  ORR.W           R0, R0, R9,LSL#6
1CB254:  STRB            R0, [R1,#3]
1CB256:  ADD.W           R1, R1, #8
1CB25A:  BNE             loc_1CB18A
1CB25C:  POP.W           {R8-R11}
1CB260:  POP             {R4-R7,PC}
