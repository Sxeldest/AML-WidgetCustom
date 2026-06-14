; =========================================================
; Game Engine Function: sub_480728
; Address            : 0x480728 - 0x480768
; =========================================================

480728:  PUSH            {R4,R6,R7,LR}
48072A:  ADD             R7, SP, #8
48072C:  SUB             SP, SP, #0xD0
48072E:  LDR             R1, =(__stack_chk_guard_ptr - 0x480736)
480730:  ADD             R4, SP, #0xD8+var_D4
480732:  ADD             R1, PC; __stack_chk_guard_ptr
480734:  LDR             R1, [R1]; __stack_chk_guard
480736:  LDR             R1, [R1]
480738:  STR             R1, [SP,#0xD8+var_C]
48073A:  LDR             R1, [R0]
48073C:  LDR             R2, [R1,#0xC]
48073E:  MOV             R1, R4
480740:  BLX             R2
480742:  LDR             R0, =(off_677664 - 0x48074C)
480744:  ADR             R1, dword_480770; format
480746:  MOV             R2, R4
480748:  ADD             R0, PC; off_677664
48074A:  LDR             R0, [R0]
48074C:  LDR             R0, [R0]; stream
48074E:  BLX             fprintf
480752:  LDR             R0, =(__stack_chk_guard_ptr - 0x48075A)
480754:  LDR             R1, [SP,#0xD8+var_C]
480756:  ADD             R0, PC; __stack_chk_guard_ptr
480758:  LDR             R0, [R0]; __stack_chk_guard
48075A:  LDR             R0, [R0]
48075C:  SUBS            R0, R0, R1
48075E:  ITT EQ
480760:  ADDEQ           SP, SP, #0xD0
480762:  POPEQ           {R4,R6,R7,PC}
480764:  BLX             __stack_chk_fail
