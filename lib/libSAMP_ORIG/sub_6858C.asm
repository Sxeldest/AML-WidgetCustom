; =========================================================
; Game Engine Function: sub_6858C
; Address            : 0x6858C - 0x685D2
; =========================================================

6858C:  SUB             SP, SP, #4
6858E:  PUSH            {R4,R6,R7,LR}
68590:  ADD             R7, SP, #8
68592:  SUB             SP, SP, #0xC
68594:  LDR             R4, =(a02x - 0x685A0); "%02X" ...
68596:  MOVS            R2, #0x14
68598:  STR             R3, [R7,#var_s8]
6859A:  LDR             R1, =(__stack_chk_guard_ptr - 0x685A2)
6859C:  ADD             R4, PC; "%02X"
6859E:  ADD             R1, PC; __stack_chk_guard_ptr
685A0:  MOV             R3, R4
685A2:  LDR             R1, [R1]; __stack_chk_guard
685A4:  LDR             R1, [R1]
685A6:  STR             R1, [SP,#0x14+var_C]
685A8:  ADD.W           R1, R7, #8
685AC:  STRD.W          R1, R1, [SP,#0x14+var_14]
685B0:  MOVS            R1, #0
685B2:  BLX             __vsprintf_chk
685B6:  LDR             R0, [SP,#0x14+var_C]
685B8:  LDR             R1, =(__stack_chk_guard_ptr - 0x685BE)
685BA:  ADD             R1, PC; __stack_chk_guard_ptr
685BC:  LDR             R1, [R1]; __stack_chk_guard
685BE:  LDR             R1, [R1]
685C0:  CMP             R1, R0
685C2:  ITTTT EQ
685C4:  ADDEQ           SP, SP, #0xC
685C6:  POPEQ.W         {R4,R6,R7,LR}
685CA:  ADDEQ           SP, SP, #4
685CC:  BXEQ            LR
685CE:  BLX             __stack_chk_fail
