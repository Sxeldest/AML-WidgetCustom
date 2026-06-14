; =========================================================
; Game Engine Function: ec_tell_frac
; Address            : 0x19A814 - 0x19A852
; =========================================================

19A814:  PUSH            {R7,LR}
19A816:  MOV             R7, SP
19A818:  LDR.W           R12, [R0,#0x14]
19A81C:  ADR             R1, dword_19A854
19A81E:  LDR             R0, [R0,#0x1C]
19A820:  MOV.W           LR, #1
19A824:  CLZ.W           R2, R0
19A828:  RSB.W           R3, R2, #0x10
19A82C:  LSRS            R0, R3
19A82E:  LSRS            R3, R0, #0xC
19A830:  ADD.W           R1, R1, R3,LSL#2
19A834:  LDR.W           R1, [R1,#-0x20]
19A838:  CMP             R0, R1
19A83A:  MOV.W           R1, R12,LSL#3
19A83E:  IT HI
19A840:  ADDHI.W         R3, LR, R0,LSR#12
19A844:  RSB.W           R0, R2, #0x20 ; ' '
19A848:  SUB.W           R0, R1, R0,LSL#3
19A84C:  ADDS            R0, #8
19A84E:  SUBS            R0, R0, R3
19A850:  POP             {R7,PC}
