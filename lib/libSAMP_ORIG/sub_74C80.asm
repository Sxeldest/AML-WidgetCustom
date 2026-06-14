; =========================================================
; Game Engine Function: sub_74C80
; Address            : 0x74C80 - 0x74CC6
; =========================================================

74C80:  SUB             SP, SP, #4
74C82:  PUSH            {R4,R6,R7,LR}
74C84:  ADD             R7, SP, #8
74C86:  SUB             SP, SP, #0xC
74C88:  LDR             R4, =(aD - 0x74C94); "%d" ...
74C8A:  MOVS            R2, #0xB
74C8C:  STR             R3, [R7,#var_s8]
74C8E:  LDR             R1, =(__stack_chk_guard_ptr - 0x74C96)
74C90:  ADD             R4, PC; "%d"
74C92:  ADD             R1, PC; __stack_chk_guard_ptr
74C94:  MOV             R3, R4
74C96:  LDR             R1, [R1]; __stack_chk_guard
74C98:  LDR             R1, [R1]
74C9A:  STR             R1, [SP,#0x14+var_C]
74C9C:  ADD.W           R1, R7, #8
74CA0:  STRD.W          R1, R1, [SP,#0x14+var_14]
74CA4:  MOVS            R1, #0
74CA6:  BLX             __vsprintf_chk
74CAA:  LDR             R0, [SP,#0x14+var_C]
74CAC:  LDR             R1, =(__stack_chk_guard_ptr - 0x74CB2)
74CAE:  ADD             R1, PC; __stack_chk_guard_ptr
74CB0:  LDR             R1, [R1]; __stack_chk_guard
74CB2:  LDR             R1, [R1]
74CB4:  CMP             R1, R0
74CB6:  ITTTT EQ
74CB8:  ADDEQ           SP, SP, #0xC
74CBA:  POPEQ.W         {R4,R6,R7,LR}
74CBE:  ADDEQ           SP, SP, #4
74CC0:  BXEQ            LR
74CC2:  BLX             __stack_chk_fail
