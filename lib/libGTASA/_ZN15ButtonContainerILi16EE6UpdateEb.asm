; =========================================================
; Game Engine Function: _ZN15ButtonContainerILi16EE6UpdateEb
; Address            : 0x27D0B0 - 0x27D276
; =========================================================

27D0B0:  PUSH            {R4-R7,LR}
27D0B2:  ADD             R7, SP, #0xC
27D0B4:  PUSH.W          {R8-R11}
27D0B8:  SUB             SP, SP, #4
27D0BA:  MOV             R4, R0
27D0BC:  MOVS            R0, #0
27D0BE:  LDR.W           R2, [R4,#0x178]
27D0C2:  STRD.W          R0, R2, [R4,#0x178]
27D0C6:  MOVS            R2, #0
27D0C8:  LDR.W           R3, [R4,R2,LSL#2]
27D0CC:  ADDS            R6, R3, #1
27D0CE:  CMP             R6, #2
27D0D0:  BCS             loc_27D0D6
27D0D2:  MOVS            R3, #1
27D0D4:  B               loc_27D0DC
27D0D6:  CMP             R3, #2
27D0D8:  BNE             loc_27D0E0
27D0DA:  MOVS            R3, #3
27D0DC:  STR.W           R3, [R4,R2,LSL#2]
27D0E0:  ADDS            R3, R4, R2
27D0E2:  ADDS            R2, #1
27D0E4:  LDRB.W          R6, [R3,#0x68]
27D0E8:  CMP             R6, #0
27D0EA:  IT NE
27D0EC:  STRBNE.W        R0, [R3,#0x68]
27D0F0:  CMP             R2, #0x10
27D0F2:  BNE             loc_27D0C8
27D0F4:  CBZ             R1, loc_27D144
27D0F6:  VMOV.I32        Q8, #1
27D0FA:  MOVS            R0, #0
27D0FC:  MOV             R1, R4
27D0FE:  STRB.W          R0, [R4,#0x68]
27D102:  STR             R0, [R4,#0x5C]
27D104:  MOVS            R2, #1
27D106:  STRB.W          R0, [R4,#0x6B]
27D10A:  STRH.W          R0, [R4,#0x69]
27D10E:  STRB.W          R0, [R4,#0x6C]
27D112:  VST1.32         {D16-D17}, [R1]!
27D116:  STRB.W          R0, [R4,#0x6D]
27D11A:  STR             R2, [R1]
27D11C:  ADD.W           R1, R4, #0x1C
27D120:  VST1.32         {D16-D17}, [R1]
27D124:  ADD.W           R1, R4, #0x2C ; ','
27D128:  VST1.32         {D16-D17}, [R1]
27D12C:  STRB.W          R0, [R4,#0x6E]
27D130:  STR.W           R0, [R4,#0x6F]
27D134:  STRD.W          R2, R2, [R4,#0x14]
27D138:  STR.W           R0, [R4,#0x73]
27D13C:  STRB.W          R0, [R4,#0x77]
27D140:  STR             R2, [R4,#0x3C]
27D142:  B               loc_27D234
27D144:  LDR.W           R11, [R4,#0x5C]
27D148:  CMP.W           R11, #0
27D14C:  BEQ             loc_27D234
27D14E:  LDR             R0, =(windowSize_ptr - 0x27D15E)
27D150:  MOVW            R12, #0x6667
27D154:  MOVS            R2, #0
27D156:  MOVT            R12, #0x6666
27D15A:  ADD             R0, PC; windowSize_ptr
27D15C:  MOV.W           R10, #0
27D160:  LDR.W           R8, [R0]; windowSize
27D164:  LDR             R0, [R4,#0x60]; dest
27D166:  ADDS            R1, R0, R2; src
27D168:  LDR.W           R9, [R0,R2]
27D16C:  LDR             R6, [R1,#4]
27D16E:  LDR.W           R5, [R4,R9,LSL#2]
27D172:  CMP             R5, R6
27D174:  BEQ             loc_27D226
27D176:  CMP             R5, #1
27D178:  IT EQ
27D17A:  CMPEQ           R6, #0
27D17C:  BEQ             loc_27D226
27D17E:  CMP             R5, #3
27D180:  BEQ             loc_27D18E
27D182:  ADDS            R3, R5, #1
27D184:  CMP             R3, #2
27D186:  BCC             loc_27D24E
27D188:  CMP             R5, #2
27D18A:  BNE             loc_27D192
27D18C:  B               loc_27D24E
27D18E:  CMP             R6, #2
27D190:  BEQ             loc_27D226
27D192:  CMP             R6, #0
27D194:  STR.W           R6, [R4,R9,LSL#2]
27D198:  BNE             loc_27D226
27D19A:  LDR             R0, [R4,#0x60]
27D19C:  ADD.W           R1, R4, R9,LSL#3
27D1A0:  VLDR            S2, [R4,#0x64]
27D1A4:  ADD.W           R11, R1, #0x78 ; 'x'
27D1A8:  ADD             R0, R2
27D1AA:  VLDR            D17, [R1,#0x78]
27D1AE:  VLDR            D16, [R0,#0x10]
27D1B2:  VSUB.F64        D17, D16, D17
27D1B6:  VCVT.F32.F64    S0, D17
27D1BA:  VCMPE.F32       S2, S0
27D1BE:  VMRS            APSR_nzcv, FPSCR
27D1C2:  BLE             loc_27D20E
27D1C4:  LDR.W           R1, [R8]
27D1C8:  ADD.W           R5, R4, R9,LSL#2
27D1CC:  LDR             R6, [R4,#0x40]
27D1CE:  SMMUL.W         R3, R1, R12
27D1D2:  MOV             R1, R5
27D1D4:  LDR.W           R0, [R1,#0xF8]!
27D1D8:  SUBS            R6, R6, R0
27D1DA:  IT MI
27D1DC:  NEGMI           R6, R6
27D1DE:  MOV.W           LR, R3,ASR#2
27D1E2:  ADD.W           R3, LR, R3,LSR#31
27D1E6:  CMP             R6, R3
27D1E8:  BGE             loc_27D214
27D1EA:  LDR             R0, [R4,#0x44]
27D1EC:  LDR.W           R6, [R5,#0x138]
27D1F0:  SUBS            R5, R0, R6
27D1F2:  IT MI
27D1F4:  NEGMI           R5, R5
27D1F6:  CMP             R5, R3
27D1F8:  BGE             loc_27D214
27D1FA:  ADD.W           R0, R4, R9
27D1FE:  MOVS            R3, #1
27D200:  STRB.W          R3, [R0,#0x68]
27D204:  LDR             R0, [R4,#0x60]
27D206:  ADD             R0, R2
27D208:  VLDR            D16, [R0,#0x10]
27D20C:  B               loc_27D214
27D20E:  ADD.W           R1, R4, R9,LSL#2
27D212:  ADDS            R1, #0xF8
27D214:  VSTR            D16, [R11]
27D218:  LDR             R0, [R4,#0x40]
27D21A:  STR             R0, [R1]
27D21C:  ADD.W           R1, R4, R9,LSL#2
27D220:  LDR             R0, [R4,#0x44]
27D222:  STR.W           R0, [R1,#0x138]
27D226:  LDR.W           R11, [R4,#0x5C]
27D22A:  ADD.W           R10, R10, #1
27D22E:  ADDS            R2, #0x20 ; ' '
27D230:  CMP             R10, R11
27D232:  BCC             loc_27D164
27D234:  ADD.W           R2, R4, #0x4C ; 'L'
27D238:  MOVS            R3, #0
27D23A:  LDM             R2, {R0-R2}
27D23C:  STR             R3, [R4,#0x5C]
27D23E:  ADD.W           R3, R4, #0x40 ; '@'
27D242:  STM             R3!, {R0-R2}
27D244:  MOVS            R0, #1
27D246:  ADD             SP, SP, #4
27D248:  POP.W           {R8-R11}
27D24C:  POP             {R4-R7,PC}
27D24E:  LDR.W           R2, [R1,#-0x18]
27D252:  STR             R2, [R4,#0x40]
27D254:  LDR.W           R2, [R1,#-0x14]
27D258:  STR             R2, [R4,#0x44]
27D25A:  LDR.W           R2, [R1,#-8]
27D25E:  STR             R2, [R4,#0x48]
27D260:  SUB.W           R2, R11, R10
27D264:  LSLS            R2, R2, #5; n
27D266:  BLX             memmove
27D26A:  LDR             R0, [R4,#0x5C]
27D26C:  SUB.W           R0, R0, R10
27D270:  STR             R0, [R4,#0x5C]
27D272:  MOVS            R0, #0
27D274:  B               loc_27D246
