; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons
; Address            : 0x29543A - 0x2954DA
; =========================================================

29543A:  PUSH            {R4-R7,LR}
29543C:  ADD             R7, SP, #0xC
29543E:  PUSH.W          {R8-R11}
295442:  SUB             SP, SP, #0xC
295444:  MOV             R4, R0
295446:  MOV             R10, R1
295448:  LDRD.W          R1, R11, [R4,#4]
29544C:  ADD.W           R0, R11, #1
295450:  LDR             R5, [R7,#arg_0]
295452:  MOV             R9, R2
295454:  CMP             R1, R0
295456:  BCS             loc_2954A4
295458:  MOVW            R1, #0xAAAB
29545C:  LSLS            R0, R0, #2
29545E:  MOVT            R1, #0xAAAA
295462:  STR             R3, [SP,#0x28+var_24]
295464:  UMULL.W         R0, R1, R0, R1
295468:  MOVS            R0, #3
29546A:  ADD.W           R8, R0, R1,LSR#1
29546E:  ADD.W           R0, R8, R8,LSL#2
295472:  LSLS            R0, R0, #2; byte_count
295474:  BLX             malloc
295478:  LDR             R5, [R4,#0xC]
29547A:  MOV             R6, R0
29547C:  CMP             R5, #0
29547E:  BEQ             loc_295498
295480:  ADD.W           R0, R11, R11,LSL#2
295484:  MOV             R1, R5; void *
295486:  LSLS            R2, R0, #2; size_t
295488:  MOV             R0, R6; void *
29548A:  BLX             memcpy_0
29548E:  MOV             R0, R5; p
295490:  BLX             free
295494:  LDR.W           R11, [R4,#8]
295498:  STR             R6, [R4,#0xC]
29549A:  STR.W           R8, [R4,#4]
29549E:  LDR             R3, [SP,#0x28+var_24]
2954A0:  LDR             R5, [R7,#arg_0]
2954A2:  B               loc_2954A6
2954A4:  LDR             R6, [R4,#0xC]
2954A6:  ADD.W           R0, R11, R11,LSL#2
2954AA:  STR.W           R10, [R6,R0,LSL#2]
2954AE:  ADD.W           R0, R6, R0,LSL#2
2954B2:  STRB            R3, [R0,#8]
2954B4:  STR.W           R9, [R0,#4]
2954B8:  LDRB.W          R2, [R7,#var_1D]
2954BC:  LDRH.W          R1, [R7,#var_1F]
2954C0:  STRB            R2, [R0,#0xB]
2954C2:  MOVS            R2, #0
2954C4:  STRD.W          R5, R2, [R0,#0xC]
2954C8:  STRH.W          R1, [R0,#9]
2954CC:  LDR             R0, [R4,#8]
2954CE:  ADDS            R0, #1
2954D0:  STR             R0, [R4,#8]
2954D2:  ADD             SP, SP, #0xC
2954D4:  POP.W           {R8-R11}
2954D8:  POP             {R4-R7,PC}
