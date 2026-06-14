; =========================================================
; Game Engine Function: sub_80664
; Address            : 0x80664 - 0x80714
; =========================================================

80664:  SUB             SP, SP, #0xC
80666:  PUSH            {R4-R7,LR}
80668:  ADD             R7, SP, #0xC
8066A:  PUSH.W          {R11}
8066E:  SUB             SP, SP, #0x10C
80670:  MOV             R4, R0
80672:  ADD.W           R0, R7, #8
80676:  LDR             R6, =(dword_1A49D4 - 0x8067E)
80678:  STM             R0!, {R1-R3}
8067A:  ADD             R6, PC; dword_1A49D4
8067C:  LDR             R0, =(__stack_chk_guard_ptr - 0x80682)
8067E:  ADD             R0, PC; __stack_chk_guard_ptr
80680:  LDR             R0, [R0]; __stack_chk_guard
80682:  LDR             R0, [R0]
80684:  STR             R0, [SP,#0x11C+var_14]
80686:  LDR             R0, [R6]
80688:  CBNZ            R0, loc_806B8
8068A:  LDR             R0, =(off_114AA8 - 0x80698)
8068C:  MOV             R1, #0x6D687C
80694:  ADD             R0, PC; off_114AA8
80696:  LDR             R0, [R0]; dword_1A4404
80698:  LDR             R0, [R0]
8069A:  ADDS            R3, R0, R1
8069C:  BEQ             loc_806B8
8069E:  LDR             R0, =(aSvlogTxt - 0x806A6); "svlog.txt" ...
806A0:  ADD             R5, SP, #0x11C+var_114
806A2:  ADD             R0, PC; "svlog.txt"
806A4:  STR             R0, [SP,#0x11C+var_11C]
806A6:  MOV             R0, R5
806A8:  BL              sub_80734
806AC:  LDR             R1, =(aW - 0x806B4); "w" ...
806AE:  MOV             R0, R5; filename
806B0:  ADD             R1, PC; "w"
806B2:  BLX             fopen
806B6:  STR             R0, [R6]
806B8:  ADD             R5, SP, #0x11C+var_114
806BA:  MOVS            R1, #0xFF; n
806BC:  MOV             R0, R5; int
806BE:  BLX             sub_10967C
806C2:  ADD.W           R3, R7, #8; arg
806C6:  MOV             R0, R5; s
806C8:  MOVS            R1, #0xFF; maxlen
806CA:  MOV             R2, R4; format
806CC:  STR             R3, [SP,#0x11C+var_118]
806CE:  BLX             vsnprintf
806D2:  LDR             R1, =(aSampOrig - 0x806DC); "SAMP_ORIG" ...
806D4:  MOVS            R0, #4; prio
806D6:  MOV             R2, R5; text
806D8:  ADD             R1, PC; "SAMP_ORIG"
806DA:  BLX             __android_log_write
806DE:  LDR             R0, [R6]; stream
806E0:  CBZ             R0, loc_806F2
806E2:  LDR             R1, =(aS - 0x806EA); "%s\n" ...
806E4:  ADD             R2, SP, #0x11C+var_114
806E6:  ADD             R1, PC; "%s\n"
806E8:  BLX             fprintf
806EC:  LDR             R0, [R6]; stream
806EE:  BLX             fflush
806F2:  LDR             R0, [SP,#0x11C+var_14]
806F4:  LDR             R1, =(__stack_chk_guard_ptr - 0x806FA)
806F6:  ADD             R1, PC; __stack_chk_guard_ptr
806F8:  LDR             R1, [R1]; __stack_chk_guard
806FA:  LDR             R1, [R1]
806FC:  CMP             R1, R0
806FE:  ITTTT EQ
80700:  ADDEQ           SP, SP, #0x10C
80702:  POPEQ.W         {R11}
80706:  POPEQ.W         {R4-R7,LR}
8070A:  ADDEQ           SP, SP, #0xC
8070C:  IT EQ
8070E:  BXEQ            LR
80710:  BLX             __stack_chk_fail
