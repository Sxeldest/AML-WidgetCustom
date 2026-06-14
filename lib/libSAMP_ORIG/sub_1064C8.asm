; =========================================================
; Game Engine Function: sub_1064C8
; Address            : 0x1064C8 - 0x10654A
; =========================================================

1064C8:  PUSH            {R4-R7,LR}
1064CA:  ADD             R7, SP, #0xC
1064CC:  PUSH.W          {R8}
1064D0:  SUB             SP, SP, #0x10
1064D2:  MOV             R4, R0
1064D4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1064DA)
1064D6:  ADD             R0, PC; __stack_chk_guard_ptr
1064D8:  LDR             R0, [R0]; __stack_chk_guard
1064DA:  LDR             R0, [R0]
1064DC:  STR             R0, [SP,#0x20+var_14]
1064DE:  LDRB            R0, [R4,#0x10]
1064E0:  CBNZ            R0, loc_106530
1064E2:  MOVS            R0, #1
1064E4:  MOV             R5, R1
1064E6:  STRB            R0, [R4,#0x10]
1064E8:  ADD             R0, SP, #0x20+var_1C
1064EA:  MOV             R1, R4
1064EC:  MOV             R2, R5
1064EE:  BL              sub_106564
1064F2:  LDR.W           R8, [SP,#0x20+var_18]
1064F6:  MOV             R0, R8
1064F8:  MOV             R1, R5
1064FA:  BL              sub_10069E
1064FE:  CBNZ            R0, loc_10650A
106500:  MOV             R0, R8
106502:  MOV             R1, R5
106504:  BL              sub_1006B2
106508:  CBZ             R0, loc_106520
10650A:  LDR             R6, =(asc_50037 - 0x106512); ")" ...
10650C:  MOVS            R1, #2; size_t
10650E:  ADD             R6, PC; ")"
106510:  MOV             R0, R6; char *
106512:  BLX             __strlen_chk
106516:  ADDS            R2, R6, R0
106518:  MOV             R0, R5
10651A:  MOV             R1, R6
10651C:  BL              sub_FFB40
106520:  LDR.W           R0, [R8]
106524:  LDR             R2, [R0,#0x14]
106526:  MOV             R0, R8
106528:  MOV             R1, R5
10652A:  BLX             R2
10652C:  MOVS            R0, #0
10652E:  STRB            R0, [R4,#0x10]
106530:  LDR             R0, [SP,#0x20+var_14]
106532:  LDR             R1, =(__stack_chk_guard_ptr - 0x106538)
106534:  ADD             R1, PC; __stack_chk_guard_ptr
106536:  LDR             R1, [R1]; __stack_chk_guard
106538:  LDR             R1, [R1]
10653A:  CMP             R1, R0
10653C:  ITTT EQ
10653E:  ADDEQ           SP, SP, #0x10
106540:  POPEQ.W         {R8}
106544:  POPEQ           {R4-R7,PC}
106546:  BLX             __stack_chk_fail
