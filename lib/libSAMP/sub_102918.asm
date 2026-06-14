; =========================================================
; Game Engine Function: sub_102918
; Address            : 0x102918 - 0x102980
; =========================================================

102918:  PUSH            {R4,R6,R7,LR}
10291A:  ADD             R7, SP, #8
10291C:  LDR             R1, =(word_25B210 - 0x102922)
10291E:  ADD             R1, PC; word_25B210
102920:  LDRSH.W         R0, [R1]
102924:  LDRSH.W         R1, [R1,#(word_25B212 - 0x25B210)]
102928:  LDR             R4, =(dword_25C924 - 0x102932)
10292A:  ORR.W           R2, R0, R1
10292E:  ADD             R4, PC; dword_25C924
102930:  LSLS            R2, R2, #0x10
102932:  BEQ             loc_102960
102934:  MULS            R1, R1
102936:  MOVS            R3, #0
102938:  SMLABB.W        R2, R0, R0, R1
10293C:  LDR             R1, [R4]
10293E:  MOVS            R0, #0
102940:  CMP.W           R2, #0x1000
102944:  IT CC
102946:  MOVCC           R0, #1
102948:  CMP.W           R3, R2,LSR#12
10294C:  BNE             loc_102964
10294E:  CBZ             R1, loc_102964
102950:  BL              sub_F0B30
102954:  LDR             R1, [R4]
102956:  SUBS            R2, R0, R1
102958:  MOVS            R0, #1
10295A:  CMP             R2, #0xFA
10295C:  BLS             loc_10296C
10295E:  POP             {R4,R6,R7,PC}
102960:  LDR             R1, [R4]
102962:  MOVS            R0, #0
102964:  CBNZ            R0, loc_10296C
102966:  CBZ             R1, loc_10296C
102968:  MOVS            R0, #0
10296A:  B               loc_10297A
10296C:  CBZ             R0, loc_10297C
10296E:  CMP             R1, #0
102970:  MOV.W           R0, #0
102974:  BNE             locret_10295E
102976:  BL              sub_F0B30
10297A:  STR             R0, [R4]
10297C:  MOVS            R0, #0
10297E:  POP             {R4,R6,R7,PC}
