; =========================================================
; Game Engine Function: sub_9A3F4
; Address            : 0x9A3F4 - 0x9A53E
; =========================================================

9A3F4:  PUSH            {R4-R7,LR}
9A3F6:  ADD             R7, SP, #0xC
9A3F8:  PUSH.W          {R8-R11}
9A3FC:  SUB             SP, SP, #4
9A3FE:  LDR             R6, =(dword_1ACF68 - 0x9A40E)
9A400:  MOV             R8, R0
9A402:  MOV.W           R0, #0x2D00
9A406:  MOVW            R2, #0x2CF8
9A40A:  ADD             R6, PC; dword_1ACF68
9A40C:  MOVS            R1, #0
9A40E:  LDR.W           R10, [R6]
9A412:  LDR.W           R0, [R10,R0]
9A416:  STR.W           R1, [R10,R2]
9A41A:  MOVW            R2, #0x2CFC
9A41E:  ADD.W           R5, R10, R2
9A422:  CMP.W           R0, #0xFFFFFFFF
9A426:  BLE             loc_9A436
9A428:  STR             R1, [R5]
9A42A:  STRB.W          R1, [R7,#var_1D]
9A42E:  CBZ             R0, loc_9A490
9A430:  LDR             R4, [R5,#8]
9A432:  MOVS            R0, #0
9A434:  B               loc_9A4EC
9A436:  LDR             R0, =(off_117248 - 0x9A442)
9A438:  MOV.W           R9, #0
9A43C:  LDR             R1, =(dword_1ACF70 - 0x9A448)
9A43E:  ADD             R0, PC; off_117248
9A440:  LDR.W           R2, [R10,#0x370]
9A444:  ADD             R1, PC; dword_1ACF70
9A446:  LDR             R3, [R0]; sub_9A720
9A448:  ADDS            R0, R2, #1
9A44A:  MOV             R11, R1
9A44C:  LDR             R1, [R1]
9A44E:  STR.W           R0, [R10,#0x370]
9A452:  MOVS            R0, #0
9A454:  BLX             R3; sub_9A720
9A456:  LDR             R1, [R5,#8]; src
9A458:  MOV             R4, R0
9A45A:  CBZ             R1, loc_9A486
9A45C:  LDR             R2, [R5]; n
9A45E:  MOV             R0, R4; dest
9A460:  BLX             j_memcpy
9A464:  LDR             R0, [R5,#8]
9A466:  CMP             R0, #0
9A468:  ITTTT NE
9A46A:  LDRNE           R1, [R6]
9A46C:  CMPNE           R1, #0
9A46E:  LDRNE.W         R2, [R1,#0x370]
9A472:  SUBNE           R2, #1
9A474:  IT NE
9A476:  STRNE.W         R2, [R1,#0x370]
9A47A:  LDR             R2, =(off_11724C - 0x9A484)
9A47C:  LDR.W           R1, [R11]
9A480:  ADD             R2, PC; off_11724C
9A482:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A484:  BLX             R2; j_opus_decoder_destroy_0
9A486:  STRD.W          R9, R9, [R5]
9A48A:  STR             R4, [R5,#8]
9A48C:  STRB.W          R9, [R7,#var_1D]
9A490:  LDR             R0, [R6]
9A492:  MOV.W           R9, #8
9A496:  CMP             R0, #0
9A498:  ITTT NE
9A49A:  LDRNE.W         R1, [R0,#0x370]
9A49E:  ADDNE           R1, #1
9A4A0:  STRNE.W         R1, [R0,#0x370]
9A4A4:  LDR             R1, =(dword_1ACF70 - 0x9A4AC)
9A4A6:  LDR             R0, =(off_117248 - 0x9A4AE)
9A4A8:  ADD             R1, PC; dword_1ACF70
9A4AA:  ADD             R0, PC; off_117248
9A4AC:  MOV             R11, R1
9A4AE:  LDR             R1, [R1]
9A4B0:  LDR             R2, [R0]; sub_9A720
9A4B2:  MOVS            R0, #8
9A4B4:  BLX             R2; sub_9A720
9A4B6:  LDR             R1, [R5,#8]; src
9A4B8:  MOV             R4, R0
9A4BA:  CBZ             R1, loc_9A4E6
9A4BC:  LDR             R2, [R5]; n
9A4BE:  MOV             R0, R4; dest
9A4C0:  BLX             j_memcpy
9A4C4:  LDR             R0, [R5,#8]
9A4C6:  CMP             R0, #0
9A4C8:  ITTTT NE
9A4CA:  LDRNE           R1, [R6]
9A4CC:  CMPNE           R1, #0
9A4CE:  LDRNE.W         R2, [R1,#0x370]
9A4D2:  SUBNE           R2, #1
9A4D4:  IT NE
9A4D6:  STRNE.W         R2, [R1,#0x370]
9A4DA:  LDR             R2, =(off_11724C - 0x9A4E4)
9A4DC:  LDR.W           R1, [R11]
9A4E0:  ADD             R2, PC; off_11724C
9A4E2:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A4E4:  BLX             R2; j_opus_decoder_destroy_0
9A4E6:  LDR             R0, [R5]
9A4E8:  STRD.W          R9, R4, [R5,#4]
9A4EC:  LDRB.W          R1, [R7,#var_1D]
9A4F0:  STRB            R1, [R4,R0]
9A4F2:  LDR             R0, [R5]
9A4F4:  ADDS            R0, #1
9A4F6:  STR             R0, [R5]
9A4F8:  LDR             R0, [R5,#0xC]
9A4FA:  CMP             R0, #1
9A4FC:  BLT             loc_9A518
9A4FE:  MOVS            R4, #0
9A500:  MOVS            R6, #0
9A502:  LDR             R0, [R5,#0x14]
9A504:  MOV             R2, R5
9A506:  ADDS            R1, R0, R4
9A508:  MOV             R0, R10
9A50A:  LDR             R3, [R1,#0x10]
9A50C:  BLX             R3
9A50E:  LDR             R0, [R5,#0xC]
9A510:  ADDS            R6, #1
9A512:  ADDS            R4, #0x18
9A514:  CMP             R6, R0
9A516:  BLT             loc_9A502
9A518:  CMP.W           R8, #0
9A51C:  BEQ             loc_9A52A
9A51E:  LDR             R0, [R5]
9A520:  CMP             R0, #0
9A522:  IT NE
9A524:  SUBNE           R0, #1
9A526:  STR.W           R0, [R8]
9A52A:  LDR             R1, [R5,#8]
9A52C:  LDR             R0, =(unk_1ACF6C - 0x9A534)
9A52E:  CMP             R1, #0
9A530:  ADD             R0, PC; unk_1ACF6C
9A532:  IT NE
9A534:  MOVNE           R0, R1
9A536:  ADD             SP, SP, #4
9A538:  POP.W           {R8-R11}
9A53C:  POP             {R4-R7,PC}
