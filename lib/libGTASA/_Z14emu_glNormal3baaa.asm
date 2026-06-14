; =========================================================
; Game Engine Function: _Z14emu_glNormal3baaa
; Address            : 0x1B932C - 0x1B93CE
; =========================================================

1B932C:  PUSH            {R4-R7,LR}
1B932E:  ADD             R7, SP, #0xC
1B9330:  PUSH.W          {R8-R11}
1B9334:  SUB             SP, SP, #4
1B9336:  MOV             R10, R0
1B9338:  LDR             R0, =(Imm_ptr - 0x1B9342)
1B933A:  MOV             R8, R2
1B933C:  MOV             R9, R1
1B933E:  ADD             R0, PC; Imm_ptr
1B9340:  LDR             R0, [R0]; Imm
1B9342:  LDR             R0, [R0,#(dword_6B32E4 - 0x6B32A4)]
1B9344:  CBNZ            R0, loc_1B9356
1B9346:  LDR             R0, =(Imm_ptr - 0x1B934E)
1B9348:  MOVS            R2, #1
1B934A:  ADD             R0, PC; Imm_ptr
1B934C:  LDR             R1, [R0]; Imm
1B934E:  MOVS            R0, #3
1B9350:  STRD.W          R0, R0, [R1,#(dword_6B32E0 - 0x6B32A4)]
1B9354:  STR             R2, [R1,#(dword_6B32E8 - 0x6B32A4)]
1B9356:  LDR             R1, =(Imm_ptr - 0x1B935C)
1B9358:  ADD             R1, PC; Imm_ptr
1B935A:  LDR             R1, [R1]; Imm
1B935C:  LDRD.W          R2, R4, [R1,#(dword_6B32D8 - 0x6B32A4)]
1B9360:  ADD.W           R11, R4, R0
1B9364:  CMP             R2, R11
1B9366:  BGE             loc_1B93A6
1B9368:  LDR             R0, =(Imm_ptr - 0x1B9372)
1B936A:  ADD.W           R1, R11, R11,LSL#1
1B936E:  ADD             R0, PC; Imm_ptr
1B9370:  LDR             R6, [R0]; Imm
1B9372:  ADD.W           R0, R1, R1,LSR#31
1B9376:  ASRS            R0, R0, #1; byte_count
1B9378:  STR             R0, [R6,#(dword_6B32D8 - 0x6B32A4)]
1B937A:  BLX             malloc
1B937E:  LDR             R6, [R6,#(dword_6B32D4 - 0x6B32A4)]
1B9380:  MOV             R5, R0
1B9382:  CBZ             R6, loc_1B939C
1B9384:  MOV             R0, R5; void *
1B9386:  MOV             R1, R6; void *
1B9388:  MOV             R2, R4; size_t
1B938A:  BLX             memcpy_1
1B938E:  MOV             R0, R6; p
1B9390:  BLX             free
1B9394:  LDR             R0, =(Imm_ptr - 0x1B939A)
1B9396:  ADD             R0, PC; Imm_ptr
1B9398:  LDR             R0, [R0]; Imm
1B939A:  LDR             R4, [R0,#(dword_6B32DC - 0x6B32A4)]
1B939C:  LDR             R0, =(Imm_ptr - 0x1B93A2)
1B939E:  ADD             R0, PC; Imm_ptr
1B93A0:  LDR             R0, [R0]; Imm
1B93A2:  STR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B93A4:  B               loc_1B93AE
1B93A6:  LDR             R0, =(Imm_ptr - 0x1B93AC)
1B93A8:  ADD             R0, PC; Imm_ptr
1B93AA:  LDR             R0, [R0]; Imm
1B93AC:  LDR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B93AE:  LDR             R0, =(Imm_ptr - 0x1B93B4)
1B93B0:  ADD             R0, PC; Imm_ptr
1B93B2:  LDR             R0, [R0]; Imm
1B93B4:  STR.W           R11, [R0,#(dword_6B32DC - 0x6B32A4)]
1B93B8:  ADDS            R0, R5, R4
1B93BA:  STRB.W          R10, [R5,R4]
1B93BE:  STRB.W          R9, [R0,#1]
1B93C2:  STRB.W          R8, [R0,#2]
1B93C6:  ADD             SP, SP, #4
1B93C8:  POP.W           {R8-R11}
1B93CC:  POP             {R4-R7,PC}
