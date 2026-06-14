; =========================================================
; Game Engine Function: sub_10A718
; Address            : 0x10A718 - 0x10A868
; =========================================================

10A718:  PUSH            {R4-R11,LR}
10A71C:  ADD             R11, SP, #0x1C
10A720:  SUB             SP, SP, #0x34
10A724:  MOV             R4, R1
10A728:  MOV             R1, R0
10A72C:  MOV             R0, R4
10A730:  MOV             R10, R3
10A734:  MOV             R5, R2
10A738:  BL              sub_10AAA0
10A73C:  SUB             R8, R11, #-var_20
10A740:  ADD             R9, SP, #0x50+var_48
10A744:  MOV             R6, #1
10A748:  B               loc_10A750
10A74C:  SUB             R6, R6, #1
10A750:  ANDS            R0, R10, #1
10A754:  MOV             R7, #1
10A758:  MOVWNE          R7, #2
10A75C:  BEQ             loc_10A77C
10A760:  CMP             R6, #0
10A764:  BNE             loc_10A77C
10A768:  LDR             R2, [R5,#0x10]
10A76C:  MOV             R0, R4
10A770:  MOV             R1, #0xFFFFFFFF
10A774:  BL              sub_10ABD4
10A778:  MOV             R10, #0
10A77C:  MOV             R0, R4
10A780:  MOV             R1, #0xFFFFFFFE
10A784:  MOV             R2, R8
10A788:  BL              sub_10AB7C
10A78C:  MOV             R0, R4
10A790:  MOV             R1, R9
10A794:  BL              sub_10AD8C
10A798:  CMP             R0, #0
10A79C:  BNE             loc_10A834
10A7A0:  LDR             R3, [SP,#0x50+var_3C]
10A7A4:  CMP             R3, #0
10A7A8:  BEQ             loc_10A74C
10A7AC:  LDR             R0, [SP,#0x50+var_48]
10A7B0:  LDR             R1, [SP,#0x50+var_34]
10A7B4:  LDR             R2, [SP,#0x50+var_28]
10A7B8:  STR             R0, [R5,#0x48]
10A7BC:  MOV             R0, R7
10A7C0:  STR             R2, [R5,#0x4C]
10A7C4:  MOV             R2, R4
10A7C8:  STR             R1, [R5,#0x50]
10A7CC:  MOV             R1, R5
10A7D0:  BLX             R3
10A7D4:  CMP             R0, #8
10A7D8:  BNE             loc_10A824
10A7DC:  LDR             R0, [R11,#var_20]
10A7E0:  LDR             R1, [R5,#0x20]
10A7E4:  CMP             R0, R1
10A7E8:  BNE             loc_10A74C
10A7EC:  LDR             R1, =(aLibunwindSS - 0x10A800); "libunwind: %s - %s\n" ...
10A7F0:  LDR             R2, =(aUnwindPhase2 - 0x10A808); "unwind_phase2" ...
10A7F4:  LDR             R3, =(aDuringPhase1Pe - 0x10A80C); "during phase1 personality function said"... ...
10A7F8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10A7FC:  LDR             R0, =(__sF_ptr - 0x10A810)
10A800:  ADD             R2, PC, R2; "unwind_phase2"
10A804:  ADD             R3, PC, R3; "during phase1 personality function said"...
10A808:  LDR             R0, [PC,R0]; __sF
10A80C:  ADD             R4, R0, #0xA8
10A810:  MOV             R0, R4; stream
10A814:  BL              fprintf
10A818:  MOV             R0, R4; stream
10A81C:  BL              fflush
10A820:  BL              abort
10A824:  CMP             R0, #7
10A828:  BEQ             loc_10A83C
10A82C:  CMP             R0, #9
10A830:  BEQ             loc_10A864
10A834:  SUB             SP, R11, #0x1C
10A838:  POP             {R4-R11,PC}
10A83C:  ADD             R2, SP, #0x50+var_4C
10A840:  MOV             R0, R4
10A844:  MOV             R1, #0xFFFFFFFF
10A848:  BL              sub_10AB7C
10A84C:  LDR             R0, [SP,#0x50+var_4C]
10A850:  STR             R0, [R5,#0x10]
10A854:  MOV             R0, R4
10A858:  BL              sub_10ADC0
10A85C:  SUB             SP, R11, #0x1C
10A860:  POP             {R4-R11,PC}
10A864:  BL              abort
