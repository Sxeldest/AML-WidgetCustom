; =========================================================
; Game Engine Function: _Z29AND_CurrentThreadAffinityMaskPKci
; Address            : 0x26BECC - 0x26BF20
; =========================================================

26BECC:  PUSH            {R4,R5,R7,LR}
26BECE:  ADD             R7, SP, #8
26BED0:  SUB             SP, SP, #8
26BED2:  MOV             R5, R1
26BED4:  BLX             gettid
26BED8:  MOV             R4, R0
26BEDA:  MOVS            R0, #3
26BEDC:  ADD             R3, SP, #0x10+var_C
26BEDE:  STR             R0, [SP,#0x10+var_C]
26BEE0:  MOVS            R0, #0xF2; sysno
26BEE2:  MOV             R1, R4
26BEE4:  MOVS            R2, #4
26BEE6:  BLX             syscall
26BEEA:  LDR             R0, [SP,#0x10+var_C]
26BEEC:  CMP             R0, #1
26BEEE:  BEQ             loc_26BF1C
26BEF0:  MOV.W           R1, #0xFFFFFFFF
26BEF4:  MOVS            R2, #1
26BEF6:  ADDS            R3, R1, #1
26BEF8:  LSL.W           R1, R2, R3
26BEFC:  ANDS            R1, R0
26BEFE:  IT NE
26BF00:  MOVNE           R1, R3
26BF02:  SUBS            R5, #1
26BF04:  BNE             loc_26BEF6
26BF06:  CMP             R1, #0xF
26BF08:  BGT             loc_26BF1C
26BF0A:  MOVS            R0, #1
26BF0C:  MOV             R3, SP
26BF0E:  LSLS            R0, R1
26BF10:  MOV             R1, R4
26BF12:  STR             R0, [SP,#0x10+var_10]
26BF14:  MOVS            R0, #0xF1; sysno
26BF16:  MOVS            R2, #4
26BF18:  BLX             syscall
26BF1C:  ADD             SP, SP, #8
26BF1E:  POP             {R4,R5,R7,PC}
