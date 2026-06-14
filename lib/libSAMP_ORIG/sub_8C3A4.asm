; =========================================================
; Game Engine Function: sub_8C3A4
; Address            : 0x8C3A4 - 0x8C4E8
; =========================================================

8C3A4:  PUSH            {R4-R7,LR}
8C3A6:  ADD             R7, SP, #0xC
8C3A8:  PUSH.W          {R8-R10}
8C3AC:  SUB             SP, SP, #0x20
8C3AE:  MOV             R9, R0
8C3B0:  LDR             R0, =(aWindow - 0x8C3BA); "Window" ...
8C3B2:  LDR             R1, =(__stack_chk_guard_ptr - 0x8C3BC)
8C3B4:  MOVS            R3, #0x57 ; 'W'
8C3B6:  ADD             R0, PC; "Window"
8C3B8:  ADD             R1, PC; __stack_chk_guard_ptr
8C3BA:  LDR             R1, [R1]; __stack_chk_guard
8C3BC:  LDR             R1, [R1]
8C3BE:  STR             R1, [SP,#0x38+var_1C]
8C3C0:  MOVS            R1, #0
8C3C2:  STR             R1, [SP,#0x38+var_24]
8C3C4:  MOVW            R1, #0x2D08
8C3C8:  STR             R0, [SP,#0x38+var_38]
8C3CA:  ADD.W           R6, R9, R1
8C3CE:  LDR             R2, =(unk_52D88 - 0x8C3DA)
8C3D0:  ADDS            R1, R0, #1
8C3D2:  MOV.W           R0, #0xFFFFFFFF
8C3D6:  ADD             R2, PC; unk_52D88
8C3D8:  B               loc_8C3EA
8C3DA:  UXTB            R4, R0
8C3DC:  EORS            R5, R4
8C3DE:  ADDS            R1, #1
8C3E0:  LDR.W           R5, [R2,R5,LSL#2]
8C3E4:  EOR.W           R0, R5, R0,LSR#8
8C3E8:  CBZ             R3, loc_8C406
8C3EA:  MOV             R5, R3
8C3EC:  LDRB            R3, [R1]; "indow"
8C3EE:  CMP             R5, #0x23 ; '#'
8C3F0:  IT EQ
8C3F2:  CMPEQ           R3, #0x23 ; '#'
8C3F4:  BNE             loc_8C3DA
8C3F6:  LDRB            R3, [R1,#1]; "ndow"
8C3F8:  CMP             R3, #0x23 ; '#'
8C3FA:  MOV.W           R3, #0x23 ; '#'
8C3FE:  IT EQ
8C400:  MOVEQ.W         R0, #0xFFFFFFFF
8C404:  B               loc_8C3DA
8C406:  LDR             R2, =(sub_942C0+1 - 0x8C412)
8C408:  MVNS            R0, R0
8C40A:  LDR             R3, =(sub_94238+1 - 0x8C418)
8C40C:  LDR             R4, =(sub_9438C+1 - 0x8C41A)
8C40E:  ADD             R2, PC; sub_942C0
8C410:  LDRD.W          R1, R5, [R6]
8C414:  ADD             R3, PC; sub_94238
8C416:  ADD             R4, PC; sub_9438C
8C418:  STR             R4, [SP,#0x38+var_28]
8C41A:  CMP             R1, R5
8C41C:  STRD.W          R3, R2, [SP,#0x38+var_30]
8C420:  STR             R0, [SP,#0x38+var_34]
8C422:  BNE             loc_8C4A6
8C424:  CMP             R1, #0
8C426:  ADD.W           R5, R1, #1
8C42A:  ITTE NE
8C42C:  ADDNE.W         R0, R1, R1,LSR#31
8C430:  ADDNE.W         R0, R1, R0,ASR#1
8C434:  MOVEQ           R0, #8
8C436:  CMP             R0, R5
8C438:  IT GT
8C43A:  MOVGT           R5, R0
8C43C:  CMP             R1, R5
8C43E:  BGE             loc_8C4A6
8C440:  LDR             R4, =(dword_1ACF68 - 0x8C44A)
8C442:  ADD.W           R0, R5, R5,LSL#1
8C446:  ADD             R4, PC; dword_1ACF68
8C448:  LSLS            R0, R0, #3
8C44A:  LDR             R1, [R4]
8C44C:  CMP             R1, #0
8C44E:  ITTT NE
8C450:  LDRNE.W         R2, [R1,#0x370]
8C454:  ADDNE           R2, #1
8C456:  STRNE.W         R2, [R1,#0x370]
8C45A:  LDR             R1, =(dword_1ACF70 - 0x8C462)
8C45C:  LDR             R2, =(off_117248 - 0x8C464)
8C45E:  ADD             R1, PC; dword_1ACF70
8C460:  ADD             R2, PC; off_117248
8C462:  MOV             R10, R1
8C464:  LDR             R1, [R1]
8C466:  LDR             R2, [R2]; sub_9A720
8C468:  BLX             R2; sub_9A720
8C46A:  LDR             R1, [R6,#8]; src
8C46C:  MOV             R8, R0
8C46E:  CBZ             R1, loc_8C4A0
8C470:  LDR             R0, [R6]
8C472:  ADD.W           R0, R0, R0,LSL#1
8C476:  LSLS            R2, R0, #3; n
8C478:  MOV             R0, R8; dest
8C47A:  BLX             j_memcpy
8C47E:  LDR             R0, [R6,#8]
8C480:  CMP             R0, #0
8C482:  ITTTT NE
8C484:  LDRNE           R1, [R4]
8C486:  CMPNE           R1, #0
8C488:  LDRNE.W         R2, [R1,#0x370]
8C48C:  SUBNE           R2, #1
8C48E:  IT NE
8C490:  STRNE.W         R2, [R1,#0x370]
8C494:  LDR             R2, =(off_11724C - 0x8C49E)
8C496:  LDR.W           R1, [R10]
8C49A:  ADD             R2, PC; off_11724C
8C49C:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8C49E:  BLX             R2; j_opus_decoder_destroy_0
8C4A0:  LDR             R1, [R6]
8C4A2:  STRD.W          R5, R8, [R6,#4]
8C4A6:  MOV             R0, SP
8C4A8:  LDR             R2, [R6,#8]
8C4AA:  VLD1.8          {D16-D17}, [R0,#0x38+var_38]!
8C4AE:  ADD.W           R1, R1, R1,LSL#1
8C4B2:  VLDR            D18, [R0]
8C4B6:  ADD.W           R0, R2, R1,LSL#3
8C4BA:  VST1.8          {D16-D17}, [R0]!
8C4BE:  VST1.8          {D18}, [R0]
8C4C2:  MOVS            R0, #1
8C4C4:  LDR             R1, [R6]
8C4C6:  STRB.W          R0, [R9]
8C4CA:  ADDS            R0, R1, #1
8C4CC:  STR             R0, [R6]
8C4CE:  LDR             R0, [SP,#0x38+var_1C]
8C4D0:  LDR             R1, =(__stack_chk_guard_ptr - 0x8C4D6)
8C4D2:  ADD             R1, PC; __stack_chk_guard_ptr
8C4D4:  LDR             R1, [R1]; __stack_chk_guard
8C4D6:  LDR             R1, [R1]
8C4D8:  CMP             R1, R0
8C4DA:  ITTT EQ
8C4DC:  ADDEQ           SP, SP, #0x20 ; ' '
8C4DE:  POPEQ.W         {R8-R10}
8C4E2:  POPEQ           {R4-R7,PC}
8C4E4:  BLX             __stack_chk_fail
