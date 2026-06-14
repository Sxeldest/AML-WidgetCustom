; =========================================================
; Game Engine Function: _Z15emu_glNormal3bvPKa
; Address            : 0x1B93F0 - 0x1B9498
; =========================================================

1B93F0:  PUSH            {R4-R7,LR}
1B93F2:  ADD             R7, SP, #0xC
1B93F4:  PUSH.W          {R8-R11}
1B93F8:  SUB             SP, SP, #4
1B93FA:  LDR             R1, =(Imm_ptr - 0x1B9404)
1B93FC:  LDRB.W          R10, [R0]
1B9400:  ADD             R1, PC; Imm_ptr
1B9402:  LDRB.W          R8, [R0,#1]
1B9406:  LDRB.W          R9, [R0,#2]
1B940A:  LDR             R1, [R1]; Imm
1B940C:  LDR             R0, [R1,#(dword_6B32E4 - 0x6B32A4)]
1B940E:  CBNZ            R0, loc_1B9420
1B9410:  LDR             R0, =(Imm_ptr - 0x1B9418)
1B9412:  MOVS            R2, #1
1B9414:  ADD             R0, PC; Imm_ptr
1B9416:  LDR             R1, [R0]; Imm
1B9418:  MOVS            R0, #3
1B941A:  STRD.W          R0, R0, [R1,#(dword_6B32E0 - 0x6B32A4)]
1B941E:  STR             R2, [R1,#(dword_6B32E8 - 0x6B32A4)]
1B9420:  LDR             R1, =(Imm_ptr - 0x1B9426)
1B9422:  ADD             R1, PC; Imm_ptr
1B9424:  LDR             R1, [R1]; Imm
1B9426:  LDRD.W          R2, R4, [R1,#(dword_6B32D8 - 0x6B32A4)]
1B942A:  ADD.W           R11, R4, R0
1B942E:  CMP             R2, R11
1B9430:  BGE             loc_1B9470
1B9432:  LDR             R0, =(Imm_ptr - 0x1B943C)
1B9434:  ADD.W           R1, R11, R11,LSL#1
1B9438:  ADD             R0, PC; Imm_ptr
1B943A:  LDR             R6, [R0]; Imm
1B943C:  ADD.W           R0, R1, R1,LSR#31
1B9440:  ASRS            R0, R0, #1; byte_count
1B9442:  STR             R0, [R6,#(dword_6B32D8 - 0x6B32A4)]
1B9444:  BLX             malloc
1B9448:  LDR             R6, [R6,#(dword_6B32D4 - 0x6B32A4)]
1B944A:  MOV             R5, R0
1B944C:  CBZ             R6, loc_1B9466
1B944E:  MOV             R0, R5; void *
1B9450:  MOV             R1, R6; void *
1B9452:  MOV             R2, R4; size_t
1B9454:  BLX             memcpy_1
1B9458:  MOV             R0, R6; p
1B945A:  BLX             free
1B945E:  LDR             R0, =(Imm_ptr - 0x1B9464)
1B9460:  ADD             R0, PC; Imm_ptr
1B9462:  LDR             R0, [R0]; Imm
1B9464:  LDR             R4, [R0,#(dword_6B32DC - 0x6B32A4)]
1B9466:  LDR             R0, =(Imm_ptr - 0x1B946C)
1B9468:  ADD             R0, PC; Imm_ptr
1B946A:  LDR             R0, [R0]; Imm
1B946C:  STR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B946E:  B               loc_1B9478
1B9470:  LDR             R0, =(Imm_ptr - 0x1B9476)
1B9472:  ADD             R0, PC; Imm_ptr
1B9474:  LDR             R0, [R0]; Imm
1B9476:  LDR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B9478:  LDR             R0, =(Imm_ptr - 0x1B947E)
1B947A:  ADD             R0, PC; Imm_ptr
1B947C:  LDR             R0, [R0]; Imm
1B947E:  STR.W           R11, [R0,#(dword_6B32DC - 0x6B32A4)]
1B9482:  ADDS            R0, R5, R4
1B9484:  STRB.W          R10, [R5,R4]
1B9488:  STRB.W          R8, [R0,#1]
1B948C:  STRB.W          R9, [R0,#2]
1B9490:  ADD             SP, SP, #4
1B9492:  POP.W           {R8-R11}
1B9496:  POP             {R4-R7,PC}
