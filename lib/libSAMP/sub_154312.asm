; =========================================================
; Game Engine Function: sub_154312
; Address            : 0x154312 - 0x1543CA
; =========================================================

154312:  PUSH            {R4-R7,LR}
154314:  ADD             R7, SP, #0xC
154316:  PUSH.W          {R8-R10}
15431A:  SUB             SP, SP, #0x18
15431C:  MOV             R4, R0
15431E:  LDRD.W          R5, R0, [R0]
154322:  MOVW            R9, #0x3F81
154326:  MOV             R8, R2
154328:  SUBS            R0, R0, R5
15432A:  MOVT            R9, #0xFE0
15432E:  MOV             R10, R1
154330:  MOVW            R1, #0x1FC
154334:  ASRS            R0, R0, #2
154336:  MOVT            R1, #0x7F
15433A:  MUL.W           R2, R0, R9
15433E:  ADDS            R0, R2, #1
154340:  CMP             R0, R1
154342:  BHI             loc_1543C4
154344:  MOV             R3, R4
154346:  LDR.W           R6, [R3,#8]!
15434A:  SUBS            R6, R6, R5
15434C:  MOV             R5, #0x3F80FE
154354:  ASRS            R6, R6, #2
154356:  MUL.W           R6, R6, R9
15435A:  CMP.W           R0, R6,LSL#1
15435E:  IT LS
154360:  LSLLS           R0, R6, #1
154362:  CMP             R6, R5
154364:  ADD             R5, SP, #0x30+var_2C
154366:  IT CC
154368:  MOVCC           R1, R0
15436A:  MOV             R0, R5
15436C:  BL              sub_1543D4
154370:  LDR             R6, [SP,#0x30+var_24]
154372:  MOV.W           R2, #0x200; n
154376:  LDR.W           R1, [R10]
15437A:  MOV             R0, R6
15437C:  STR.W           R1, [R0],#4; dest
154380:  MOV             R1, R8; src
154382:  BLX             j_memcpy
154386:  ADD.W           R0, R6, #0x204
15438A:  STR             R0, [SP,#0x30+var_24]
15438C:  MOV             R0, R4
15438E:  MOV             R1, R5
154390:  BL              sub_15442C
154394:  LDRD.W          R1, R0, [SP,#0x30+var_28]
154398:  CMP             R0, R1
15439A:  BEQ             loc_1543B4
15439C:  SUBS            R1, R0, R1
15439E:  SUB.W           R1, R1, #0x204
1543A2:  UMULL.W         R1, R2, R1, R9
1543A6:  MVN.W           R1, R2,LSR#5
1543AA:  ADD.W           R1, R1, R1,LSL#7
1543AE:  ADD.W           R0, R0, R1,LSL#2
1543B2:  STR             R0, [SP,#0x30+var_24]
1543B4:  LDR             R0, [SP,#0x30+var_2C]; void *
1543B6:  CBZ             R0, loc_1543BC
1543B8:  BLX             j__ZdlPv; operator delete(void *)
1543BC:  ADD             SP, SP, #0x18
1543BE:  POP.W           {R8-R10}
1543C2:  POP             {R4-R7,PC}
1543C4:  MOV             R0, R4
1543C6:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
