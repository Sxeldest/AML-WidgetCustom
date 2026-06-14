; =========================================================
; Game Engine Function: sub_15F12C
; Address            : 0x15F12C - 0x15F260
; =========================================================

15F12C:  PUSH            {R4-R7,LR}
15F12E:  ADD             R7, SP, #0xC
15F130:  PUSH.W          {R8-R11}
15F134:  SUB             SP, SP, #4
15F136:  MOV             R4, R0
15F138:  CMP             R1, #0
15F13A:  BEQ             loc_15F1BA
15F13C:  MOV             R10, R1
15F13E:  CMP.W           R1, #0x40000000
15F142:  BCS.W           loc_15F258
15F146:  MOV.W           R0, R10,LSL#2; unsigned int
15F14A:  BLX             j__Znwj; operator new(uint)
15F14E:  MOV             R1, R0
15F150:  LDR             R0, [R4]; void *
15F152:  STR             R1, [R4]
15F154:  CBZ             R0, loc_15F15A
15F156:  BLX             j__ZdlPv; operator delete(void *)
15F15A:  MOVS            R0, #0
15F15C:  MOVS            R1, #0
15F15E:  STR.W           R10, [R4,#4]
15F162:  LDR             R2, [R4]
15F164:  STR.W           R0, [R2,R1,LSL#2]
15F168:  ADDS            R1, #1
15F16A:  CMP             R10, R1
15F16C:  BNE             loc_15F162
15F16E:  MOV             R6, R4
15F170:  LDR.W           R11, [R6,#8]!
15F174:  CMP.W           R11, #0
15F178:  BEQ             loc_15F250
15F17A:  MOV.W           R0, #0x55555555
15F17E:  MOV.W           R1, #0x33333333
15F182:  AND.W           R0, R0, R10,LSR#1
15F186:  LDR.W           R8, [R11,#4]
15F18A:  SUB.W           R0, R10, R0
15F18E:  AND.W           R1, R1, R0,LSR#2
15F192:  BIC.W           R0, R0, #0xCCCCCCCC
15F196:  ADD             R0, R1
15F198:  MOV.W           R1, #0x1010101
15F19C:  ADD.W           R0, R0, R0,LSR#4
15F1A0:  BIC.W           R0, R0, #0xF0F0F0F0
15F1A4:  MULS            R0, R1
15F1A6:  MOV.W           R9, R0,LSR#24
15F1AA:  CMP.W           R9, #1
15F1AE:  BHI             loc_15F1CA
15F1B0:  SUB.W           R0, R10, #1
15F1B4:  AND.W           R8, R8, R0
15F1B8:  B               loc_15F1D8
15F1BA:  LDR             R0, [R4]; void *
15F1BC:  MOVS            R5, #0
15F1BE:  STR             R5, [R4]
15F1C0:  CBZ             R0, loc_15F1C6
15F1C2:  BLX             j__ZdlPv; operator delete(void *)
15F1C6:  STR             R5, [R4,#4]
15F1C8:  B               loc_15F250
15F1CA:  CMP             R8, R10
15F1CC:  BCC             loc_15F1D8
15F1CE:  MOV             R0, R8
15F1D0:  MOV             R1, R10
15F1D2:  BLX             sub_221798
15F1D6:  MOV             R8, R1
15F1D8:  LDR             R0, [R4]
15F1DA:  STR.W           R6, [R0,R8,LSL#2]
15F1DE:  LDR.W           R6, [R11]
15F1E2:  CBZ             R6, loc_15F250
15F1E4:  SUB.W           R12, R10, #1
15F1E8:  LDR             R0, [R6,#4]
15F1EA:  CMP.W           R9, #1
15F1EE:  BHI             loc_15F1F6
15F1F0:  AND.W           R0, R0, R12
15F1F4:  B               loc_15F206
15F1F6:  CMP             R0, R10
15F1F8:  BCC             loc_15F206
15F1FA:  MOV             R1, R10
15F1FC:  MOV             R5, R12
15F1FE:  BLX             sub_221798
15F202:  MOV             R12, R5
15F204:  MOV             R0, R1
15F206:  CMP             R0, R8
15F208:  BNE             loc_15F20E
15F20A:  MOV             R11, R6
15F20C:  B               loc_15F248
15F20E:  LDR             R1, [R4]
15F210:  LDR.W           R2, [R1,R0,LSL#2]
15F214:  CMP             R2, #0
15F216:  MOV             R2, R6
15F218:  BEQ             loc_15F240
15F21A:  MOV             R1, R2
15F21C:  LDR             R2, [R2]
15F21E:  CBZ             R2, loc_15F228
15F220:  LDR             R3, [R2,#8]
15F222:  LDR             R5, [R6,#8]
15F224:  CMP             R5, R3
15F226:  BEQ             loc_15F21A
15F228:  STR.W           R2, [R11]
15F22C:  LDR             R2, [R4]
15F22E:  LDR.W           R2, [R2,R0,LSL#2]
15F232:  LDR             R2, [R2]
15F234:  STR             R2, [R1]
15F236:  LDR             R1, [R4]
15F238:  LDR.W           R0, [R1,R0,LSL#2]
15F23C:  STR             R6, [R0]
15F23E:  B               loc_15F248
15F240:  STR.W           R11, [R1,R0,LSL#2]
15F244:  MOV             R11, R6
15F246:  MOV             R8, R0
15F248:  LDR.W           R6, [R11]
15F24C:  CMP             R6, #0
15F24E:  BNE             loc_15F1E8
15F250:  ADD             SP, SP, #4
15F252:  POP.W           {R8-R11}
15F256:  POP             {R4-R7,PC}
15F258:  LDR             R0, =(aAllocatorTAllo - 0x15F25E); "allocator<T>::allocate(size_t n) 'n' ex"... ...
15F25A:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
15F25C:  BL              sub_DC8D4
