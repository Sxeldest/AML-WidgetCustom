; =========================================================
; Game Engine Function: sub_79388
; Address            : 0x79388 - 0x79484
; =========================================================

79388:  PUSH            {R4-R7,LR}
7938A:  ADD             R7, SP, #0xC
7938C:  PUSH.W          {R8-R11}
79390:  SUB             SP, SP, #4
79392:  VPUSH           {D8-D9}
79396:  SUB             SP, SP, #0x28
79398:  LDR             R0, =(off_114AB0 - 0x793AA)
7939A:  MOVW            R9, #:lower16:unk_147668
7939E:  VMOV.I32        Q4, #0
793A2:  ADD.W           R8, SP, #0x58+var_48
793A6:  ADD             R0, PC; off_114AB0
793A8:  MOVT            R9, #:upper16:unk_147668
793AC:  LDR.W           R10, [R0]; dword_1A4408
793B0:  LDR.W           R0, [R10]
793B4:  LDR             R1, =(__stack_chk_guard_ptr - 0x793BE)
793B6:  ADD.W           R4, R0, R9
793BA:  ADD             R1, PC; __stack_chk_guard_ptr
793BC:  ADD.W           R0, R4, #0x68 ; 'h'
793C0:  LDR             R1, [R1]; __stack_chk_guard
793C2:  LDR             R1, [R1]
793C4:  STR             R1, [SP,#0x58+var_34]
793C6:  MOV             R1, R8
793C8:  VST1.64         {D8-D9}, [R8]
793CC:  BLX             dladdr
793D0:  LDR             R6, =(aUnknownSymbol - 0x793D8); "unknown symbol" ...
793D2:  LDR             R5, =(aUnknownFile - 0x793DA); "unknown file" ...
793D4:  ADD             R6, PC; "unknown symbol"
793D6:  ADD             R5, PC; "unknown file"
793D8:  CBZ             R0, loc_79404
793DA:  LDRD.W          R0, R12, [SP,#0x58+var_48]
793DE:  LDRD.W          R3, LR, [SP,#0x58+var_40]
793E2:  LDR             R1, =(aMemory - 0x793F0); "Memory" ...
793E4:  CMP             R0, #0
793E6:  LDR             R2, =(aHookingS0xXFro - 0x793F6); "Hooking %s (0x%X) from %s (0x%X)" ...
793E8:  IT EQ
793EA:  MOVEQ           R0, R5
793EC:  ADD             R1, PC; "Memory"
793EE:  STRD.W          LR, R0, [SP,#0x58+var_58]
793F2:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
793F4:  MOVS            R0, #4; prio
793F6:  STR.W           R12, [SP,#0x58+var_50]
793FA:  CMP             R3, #0
793FC:  IT EQ
793FE:  MOVEQ           R3, R6
79400:  BLX             __android_log_print
79404:  LDR             R1, =(sub_791A0+1 - 0x79412)
79406:  ADD.W           R0, R4, #0x69 ; 'i'
7940A:  LDR             R2, =(unk_1A4550 - 0x79414)
7940C:  MOV             R11, R6
7940E:  ADD             R1, PC; sub_791A0
79410:  ADD             R2, PC; unk_1A4550
79412:  BLX             DobbyHook
79416:  LDR.W           R0, [R10]
7941A:  MOV             R1, R8
7941C:  VST1.64         {D8-D9}, [R8]
79420:  ADD.W           R6, R0, R9
79424:  MOV             R0, R6
79426:  BLX             dladdr
7942A:  CBZ             R0, loc_79454
7942C:  LDRD.W          R0, R12, [SP,#0x58+var_48]
79430:  LDRD.W          R4, R3, [SP,#0x58+var_40]
79434:  LDR             R1, =(aMemory - 0x79442); "Memory" ...
79436:  CMP             R0, #0
79438:  LDR             R2, =(aHookingS0xXFro - 0x79448); "Hooking %s (0x%X) from %s (0x%X)" ...
7943A:  IT NE
7943C:  MOVNE           R5, R0
7943E:  ADD             R1, PC; "Memory"
79440:  STMEA.W         SP, {R3,R5,R12}
79444:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
79446:  MOV             R3, R11
79448:  MOVS            R0, #4; prio
7944A:  CMP             R4, #0
7944C:  IT NE
7944E:  MOVNE           R3, R4
79450:  BLX             __android_log_print
79454:  LDR             R1, =(sub_792C4+1 - 0x7945E)
79456:  ADDS            R0, R6, #1
79458:  LDR             R2, =(unk_1A4554 - 0x79460)
7945A:  ADD             R1, PC; sub_792C4
7945C:  ADD             R2, PC; unk_1A4554
7945E:  BLX             DobbyHook
79462:  LDR             R0, [SP,#0x58+var_34]
79464:  LDR             R1, =(__stack_chk_guard_ptr - 0x7946A)
79466:  ADD             R1, PC; __stack_chk_guard_ptr
79468:  LDR             R1, [R1]; __stack_chk_guard
7946A:  LDR             R1, [R1]
7946C:  CMP             R1, R0
7946E:  ITTTT EQ
79470:  ADDEQ           SP, SP, #0x28 ; '('
79472:  VPOPEQ          {D8-D9}
79476:  ADDEQ           SP, SP, #4
79478:  POPEQ.W         {R8-R11}
7947C:  IT EQ
7947E:  POPEQ           {R4-R7,PC}
79480:  BLX             __stack_chk_fail
