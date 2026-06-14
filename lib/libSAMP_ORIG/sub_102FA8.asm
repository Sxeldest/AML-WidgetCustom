; =========================================================
; Game Engine Function: sub_102FA8
; Address            : 0x102FA8 - 0x10305A
; =========================================================

102FA8:  PUSH            {R4-R7,LR}
102FAA:  ADD             R7, SP, #0xC
102FAC:  PUSH.W          {R11}
102FB0:  SUB             SP, SP, #0x30
102FB2:  MOV             R4, R1
102FB4:  LDR             R1, =(__stack_chk_guard_ptr - 0x102FBA)
102FB6:  ADD             R1, PC; __stack_chk_guard_ptr
102FB8:  LDR             R1, [R1]; __stack_chk_guard
102FBA:  LDR             R1, [R1]
102FBC:  STR             R1, [SP,#0x40+var_14]
102FBE:  LDRD.W          R2, R0, [R0,#8]
102FC2:  SUBS            R0, R0, R2
102FC4:  ADDS            R0, #1
102FC6:  CMP             R0, #9
102FC8:  BCC             loc_103040
102FCA:  ADD             R1, SP, #0x40+var_34
102FCC:  MOVS            R0, #0
102FCE:  CMP             R0, #8
102FD0:  BEQ             loc_103004
102FD2:  LDRB            R3, [R2,R0]
102FD4:  SUB.W           R5, R3, #0x3A ; ':'
102FD8:  CMN.W           R5, #0xA
102FDC:  IT CC
102FDE:  ADDCC           R3, #9
102FE0:  ADDS            R5, R2, R0
102FE2:  LDRB            R5, [R5,#1]
102FE4:  SUB.W           R6, R5, #0x3A ; ':'
102FE8:  CMN.W           R6, #0xA
102FEC:  MOV             R6, #0xFFFFFFD0
102FF0:  IT CC
102FF2:  MOVCC           R6, #0xFFFFFFA9
102FF6:  ADD             R5, R6
102FF8:  ADD.W           R3, R5, R3,LSL#4
102FFC:  STRB.W          R3, [R1],#1
103000:  ADDS            R0, #2
103002:  B               loc_102FCE
103004:  ADD             R0, SP, #0x40+var_34
103006:  BL              sub_F7238
10300A:  ADD             R5, SP, #0x40+var_30
10300C:  VMOV.I32        Q8, #0
103010:  VLDR            S0, [SP,#0x40+var_34]
103014:  MOVS            R1, #0
103016:  MOV             R0, R5
103018:  STR             R1, [SP,#0x40+var_1C]
10301A:  VST1.64         {D16-D17}, [R0]!
10301E:  MOVS            R2, #0x18
103020:  VCVT.F64.F32    D16, S0
103024:  STR             R1, [R0]
103026:  MOV             R0, R5
103028:  MOVS            R1, #0x18
10302A:  VSTR            D16, [SP,#0x40+var_40]
10302E:  LDR             R3, =(aAf - 0x103034); "%af" ...
103030:  ADD             R3, PC; "%af"
103032:  BL              sub_10306C
103036:  ADDS            R2, R5, R0
103038:  MOV             R0, R4
10303A:  MOV             R1, R5
10303C:  BL              sub_FFB40
103040:  LDR             R0, [SP,#0x40+var_14]
103042:  LDR             R1, =(__stack_chk_guard_ptr - 0x103048)
103044:  ADD             R1, PC; __stack_chk_guard_ptr
103046:  LDR             R1, [R1]; __stack_chk_guard
103048:  LDR             R1, [R1]
10304A:  CMP             R1, R0
10304C:  ITTT EQ
10304E:  ADDEQ           SP, SP, #0x30 ; '0'
103050:  POPEQ.W         {R11}
103054:  POPEQ           {R4-R7,PC}
103056:  BLX             __stack_chk_fail
