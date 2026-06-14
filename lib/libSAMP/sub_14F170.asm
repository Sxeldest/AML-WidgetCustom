; =========================================================
; Game Engine Function: sub_14F170
; Address            : 0x14F170 - 0x14F1E6
; =========================================================

14F170:  PUSH            {R4-R7,LR}
14F172:  ADD             R7, SP, #0xC
14F174:  PUSH.W          {R11}
14F178:  SUB             SP, SP, #0x18
14F17A:  MOV             R4, R0
14F17C:  MOV             R5, R1
14F17E:  LDR             R0, [R0]
14F180:  LDR             R1, [R4,#8]
14F182:  SUBS            R1, R1, R0
14F184:  CMP.W           R5, R1,ASR#1
14F188:  BLS             loc_14F1D6
14F18A:  LDR             R1, [R4,#4]
14F18C:  CMP.W           R5, #0xFFFFFFFF
14F190:  ADD.W           R2, R4, #8
14F194:  STR             R2, [SP,#0x28+var_14]
14F196:  BLE             loc_14F1DE
14F198:  SUBS            R6, R1, R0
14F19A:  LSLS            R0, R5, #1; unsigned int
14F19C:  BLX             j__Znwj; operator new(uint)
14F1A0:  ADDS            R1, R0, R6
14F1A2:  STR             R0, [SP,#0x28+var_24]
14F1A4:  ADD.W           R0, R0, R5,LSL#1
14F1A8:  STR             R1, [SP,#0x28+var_1C]
14F1AA:  STR             R0, [SP,#0x28+var_18]
14F1AC:  STR             R1, [SP,#0x28+var_20]
14F1AE:  ADD             R1, SP, #0x28+var_24
14F1B0:  MOV             R0, R4
14F1B2:  BL              sub_14F62C
14F1B6:  LDRD.W          R1, R0, [SP,#0x28+var_20]
14F1BA:  CMP             R0, R1
14F1BC:  ITTTT NE
14F1BE:  SUBNE           R1, R0, R1
14F1C0:  SUBNE           R1, #2
14F1C2:  MVNNE.W         R1, R1,LSR#1
14F1C6:  ADDNE.W         R0, R0, R1,LSL#1
14F1CA:  IT NE
14F1CC:  STRNE           R0, [SP,#0x28+var_1C]
14F1CE:  LDR             R0, [SP,#0x28+var_24]; void *
14F1D0:  CBZ             R0, loc_14F1D6
14F1D2:  BLX             j__ZdlPv; operator delete(void *)
14F1D6:  ADD             SP, SP, #0x18
14F1D8:  POP.W           {R11}
14F1DC:  POP             {R4-R7,PC}
14F1DE:  LDR             R0, =(aAllocatorTAllo - 0x14F1E4); "allocator<T>::allocate(size_t n) 'n' ex"... ...
14F1E0:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
14F1E2:  BL              sub_DC8D4
