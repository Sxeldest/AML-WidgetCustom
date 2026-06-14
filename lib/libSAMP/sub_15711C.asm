; =========================================================
; Game Engine Function: sub_15711C
; Address            : 0x15711C - 0x1572FC
; =========================================================

15711C:  PUSH            {R4-R7,LR}
15711E:  ADD             R7, SP, #0xC
157120:  PUSH.W          {R8-R11}
157124:  SUB             SP, SP, #0xC
157126:  MOV             R10, R0
157128:  ORRS.W          R0, R2, R3
15712C:  BEQ             loc_157150
15712E:  ADD.W           R1, R10, #8
157132:  MOV             R11, R3
157134:  MOV             R4, R2
157136:  CMP.W           R3, #0xFFFFFFFF
15713A:  BLE             loc_157166
15713C:  SUBS.W          R0, R4, #0xA
157140:  SBCS.W          R0, R11, #0
157144:  BCS             loc_157188
157146:  ADD.W           R2, R10, #9
15714A:  MOV.W           R8, #1
15714E:  B               loc_1572DE
157150:  LDR.W           R0, [R10]
157154:  LDR             R1, [R0]
157156:  LDR             R2, [R1]
157158:  MOVS            R1, #0x30 ; '0'
15715A:  ADD             SP, SP, #0xC
15715C:  POP.W           {R8-R11}
157160:  POP.W           {R4-R7,LR}
157164:  BX              R2
157166:  MOVS            R0, #0x2D ; '-'
157168:  NEGS            R4, R4
15716A:  MOV.W           R8, #0
15716E:  STRB            R0, [R1]
157170:  SBC.W           R11, R8, R11
157174:  SUBS.W          R0, R4, #0xA
157178:  SBCS.W          R0, R11, #0
15717C:  STR.W           R10, [SP,#0x28+var_24]
157180:  BCS             loc_1571E8
157182:  MOV.W           R10, #1
157186:  B               loc_157260
157188:  MOV.W           R8, #4
15718C:  MOV.W           R9, #0
157190:  MOV             R6, R4
157192:  MOV             R5, R11
157194:  STR             R1, [SP,#0x28+var_20]
157196:  RSBS.W          R0, R6, #0x63 ; 'c'
15719A:  SBCS.W          R0, R9, R5
15719E:  BCS             loc_157246
1571A0:  LSRS            R0, R6, #3
1571A2:  ORR.W           R0, R0, R5,LSL#29
1571A6:  RSBS.W          R0, R0, #0x7C ; '|'
1571AA:  SBCS.W          R0, R9, R5,LSR#3
1571AE:  BCS             loc_15724C
1571B0:  MOVW            R0, #0x2710
1571B4:  SUBS            R0, R6, R0
1571B6:  SBCS.W          R0, R5, #0
1571BA:  BCC             loc_157250
1571BC:  MOV             R0, R6
1571BE:  MOV             R1, R5
1571C0:  MOVW            R2, #0x2710
1571C4:  MOVS            R3, #0
1571C6:  BLX             sub_2217B4
1571CA:  MOVW            R2, #:lower16:(elf_hash_chain+0x11E0)
1571CE:  ADD.W           R8, R8, #4
1571D2:  MOVT            R2, #:upper16:(elf_hash_chain+0x11E0)
1571D6:  SUBS            R2, R6, R2
1571D8:  MOV             R6, R0
1571DA:  SBCS.W          R2, R5, #0
1571DE:  MOV             R5, R1
1571E0:  BCS             loc_157196
1571E2:  SUB.W           R8, R8, #3
1571E6:  B               loc_157250
1571E8:  MOV.W           R10, #4
1571EC:  MOVW            R9, #0x2710
1571F0:  MOV             R6, R4
1571F2:  MOV             R5, R11
1571F4:  STR             R1, [SP,#0x28+var_20]
1571F6:  RSBS.W          R0, R6, #0x63 ; 'c'
1571FA:  SBCS.W          R0, R8, R5
1571FE:  BCS             loc_157254
157200:  LSRS            R0, R6, #3
157202:  ORR.W           R0, R0, R5,LSL#29
157206:  RSBS.W          R0, R0, #0x7C ; '|'
15720A:  SBCS.W          R0, R8, R5,LSR#3
15720E:  BCS             loc_15725A
157210:  SUBS.W          R0, R6, R9
157214:  SBCS.W          R0, R5, #0
157218:  BCC             loc_15725E
15721A:  MOV             R0, R6
15721C:  MOV             R1, R5
15721E:  MOVW            R2, #0x2710
157222:  MOVS            R3, #0
157224:  BLX             sub_2217B4
157228:  MOVW            R2, #:lower16:(elf_hash_chain+0x11E0)
15722C:  ADD.W           R10, R10, #4
157230:  MOVT            R2, #:upper16:(elf_hash_chain+0x11E0)
157234:  SUBS            R2, R6, R2
157236:  MOV             R6, R0
157238:  SBCS.W          R2, R5, #0
15723C:  MOV             R5, R1
15723E:  BCS             loc_1571F6
157240:  SUB.W           R10, R10, #3
157244:  B               loc_15725E
157246:  SUB.W           R8, R8, #2
15724A:  B               loc_157250
15724C:  SUB.W           R8, R8, #1
157250:  LDR             R1, [SP,#0x28+var_20]
157252:  B               loc_157268
157254:  SUB.W           R10, R10, #2
157258:  B               loc_15725E
15725A:  SUB.W           R10, R10, #1
15725E:  LDR             R1, [SP,#0x28+var_20]
157260:  ADD.W           R8, R10, #1
157264:  LDR.W           R10, [SP,#0x28+var_24]
157268:  SUBS.W          R2, R4, #0x64 ; 'd'
15726C:  ADD.W           R0, R10, R8
157270:  SBCS.W          R2, R11, #0
157274:  BCC             loc_1572C2
157276:  STR             R1, [SP,#0x28+var_20]
157278:  ADDS            R5, R0, #6
15727A:  STRD.W          R8, R10, [SP,#0x28+var_28]
15727E:  MOV.W           R8, #0x64 ; 'd'
157282:  LDR             R6, =(a00010203040506_0+0x190 - 0x157290); "000102030405060708091011121314151617181"... ...
157284:  MOV.W           R9, #0
157288:  MOVW            R10, #0x270F
15728C:  ADD             R6, PC; "000102030405060708091011121314151617181"...
15728E:  MOV             R0, R4
157290:  MOV             R1, R11
157292:  MOVS            R2, #0x64 ; 'd'
157294:  MOVS            R3, #0
157296:  BLX             sub_2217B4
15729A:  MLS.W           R2, R0, R8, R4
15729E:  LDRH.W          R2, [R6,R2,LSL#1]
1572A2:  STRH.W          R2, [R5],#-2
1572A6:  SUBS.W          R2, R10, R4
1572AA:  SBCS.W          R2, R9, R11
1572AE:  MOV             R4, R0
1572B0:  MOV             R11, R1
1572B2:  BCC             loc_15728E
1572B4:  MOV             R11, R1
1572B6:  LDR             R1, [SP,#0x28+var_20]
1572B8:  LDRD.W          R8, R10, [SP,#0x28+var_28]
1572BC:  ADDS            R2, R5, #2
1572BE:  MOV             R4, R0
1572C0:  B               loc_1572C6
1572C2:  ADD.W           R2, R0, #8
1572C6:  SUBS.W          R0, R4, #0xA
1572CA:  SBCS.W          R0, R11, #0
1572CE:  BCC             loc_1572DE
1572D0:  LDR             R0, =(a00010203040506_0+0x190 - 0x1572D6); "000102030405060708091011121314151617181"... ...
1572D2:  ADD             R0, PC; "000102030405060708091011121314151617181"...
1572D4:  LDRH.W          R0, [R0,R4,LSL#1]
1572D8:  STRH.W          R0, [R2,#-2]
1572DC:  B               loc_1572E6
1572DE:  ADD.W           R0, R4, #0x30 ; '0'
1572E2:  STRB.W          R0, [R2,#-1]
1572E6:  LDR.W           R0, [R10]
1572EA:  LDR             R2, [R0]
1572EC:  LDR             R3, [R2,#4]
1572EE:  MOV             R2, R8
1572F0:  ADD             SP, SP, #0xC
1572F2:  POP.W           {R8-R11}
1572F6:  POP.W           {R4-R7,LR}
1572FA:  BX              R3
