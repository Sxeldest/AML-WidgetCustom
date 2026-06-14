; =========================================================
; Game Engine Function: sub_80734
; Address            : 0x80734 - 0x8077A
; =========================================================

80734:  SUB             SP, SP, #4
80736:  PUSH            {R4,R6,R7,LR}
80738:  ADD             R7, SP, #8
8073A:  SUB             SP, SP, #0xC
8073C:  LDR             R4, =(aSsampS - 0x80748); "%sSAMP/%s" ...
8073E:  MOVS            R2, #0xFF
80740:  STR             R3, [R7,#var_s8]
80742:  LDR             R1, =(__stack_chk_guard_ptr - 0x8074A)
80744:  ADD             R4, PC; "%sSAMP/%s"
80746:  ADD             R1, PC; __stack_chk_guard_ptr
80748:  MOV             R3, R4
8074A:  LDR             R1, [R1]; __stack_chk_guard
8074C:  LDR             R1, [R1]
8074E:  STR             R1, [SP,#0x14+var_C]
80750:  ADD.W           R1, R7, #8
80754:  STRD.W          R1, R1, [SP,#0x14+var_14]
80758:  MOVS            R1, #0
8075A:  BLX             __vsprintf_chk
8075E:  LDR             R0, [SP,#0x14+var_C]
80760:  LDR             R1, =(__stack_chk_guard_ptr - 0x80766)
80762:  ADD             R1, PC; __stack_chk_guard_ptr
80764:  LDR             R1, [R1]; __stack_chk_guard
80766:  LDR             R1, [R1]
80768:  CMP             R1, R0
8076A:  ITTTT EQ
8076C:  ADDEQ           SP, SP, #0xC
8076E:  POPEQ.W         {R4,R6,R7,LR}
80772:  ADDEQ           SP, SP, #4
80774:  BXEQ            LR
80776:  BLX             __stack_chk_fail
