; =========================================================
; Game Engine Function: sub_FD404
; Address            : 0xFD404 - 0xFD488
; =========================================================

FD404:  PUSH            {R4-R7,LR}
FD406:  ADD             R7, SP, #0xC
FD408:  PUSH.W          {R8}
FD40C:  SUB             SP, SP, #0x18
FD40E:  MOV             R4, R0
FD410:  LDR             R0, =(__stack_chk_guard_ptr - 0xFD418)
FD412:  MOV             R8, R1
FD414:  ADD             R0, PC; __stack_chk_guard_ptr
FD416:  LDR             R0, [R0]; __stack_chk_guard
FD418:  LDR             R0, [R0]
FD41A:  STR             R0, [SP,#0x28+var_14]
FD41C:  LDRD.W          R0, R1, [R4]
FD420:  SUBS            R0, R1, R0
FD422:  MOVS            R1, #1
FD424:  ADD.W           R1, R1, R0,ASR#2
FD428:  MOV             R0, R4
FD42A:  BL              sub_FD49C
FD42E:  MOV             R6, R0
FD430:  ADD.W           R0, R4, #8
FD434:  STR             R0, [SP,#0x28+var_18]
FD436:  LDRD.W          R0, R1, [R4]
FD43A:  SUBS            R0, R1, R0
FD43C:  ASRS            R5, R0, #2
FD43E:  CBZ             R6, loc_FD448
FD440:  LSLS            R0, R6, #2; unsigned int
FD442:  BLX             j__Znwj; operator new(uint)
FD446:  B               loc_FD44A
FD448:  MOVS            R0, #0
FD44A:  ADD.W           R1, R0, R6,LSL#2
FD44E:  STR             R1, [SP,#0x28+var_1C]
FD450:  LDR.W           R1, [R8]
FD454:  STR             R0, [SP,#0x28+var_28]
FD456:  ADD.W           R0, R0, R5,LSL#2
FD45A:  STR             R0, [SP,#0x28+var_24]
FD45C:  STM             R0!, {R1}
FD45E:  STR             R0, [SP,#0x28+var_20]
FD460:  MOV             R1, SP
FD462:  MOV             R0, R4
FD464:  BL              sub_FD4CC
FD468:  MOV             R0, SP
FD46A:  BL              sub_FD4FC
FD46E:  LDR             R0, [SP,#0x28+var_14]
FD470:  LDR             R1, =(__stack_chk_guard_ptr - 0xFD476)
FD472:  ADD             R1, PC; __stack_chk_guard_ptr
FD474:  LDR             R1, [R1]; __stack_chk_guard
FD476:  LDR             R1, [R1]
FD478:  CMP             R1, R0
FD47A:  ITTT EQ
FD47C:  ADDEQ           SP, SP, #0x18
FD47E:  POPEQ.W         {R8}
FD482:  POPEQ           {R4-R7,PC}
FD484:  BLX             __stack_chk_fail
