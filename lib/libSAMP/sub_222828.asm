; =========================================================
; Game Engine Function: sub_222828
; Address            : 0x222828 - 0x222978
; =========================================================

222828:  PUSH            {R4-R11,LR}
22282C:  ADD             R11, SP, #0x1C
222830:  SUB             SP, SP, #0x34
222834:  MOV             R4, R1
222838:  MOV             R1, R0
22283C:  MOV             R0, R4
222840:  MOV             R10, R3
222844:  MOV             R5, R2
222848:  BL              sub_222BB0
22284C:  SUB             R8, R11, #-var_20
222850:  ADD             R9, SP, #0x50+var_48
222854:  MOV             R6, #1
222858:  B               loc_222860
22285C:  SUB             R6, R6, #1
222860:  ANDS            R0, R10, #1
222864:  MOV             R7, #1
222868:  MOVWNE          R7, #2
22286C:  BEQ             loc_22288C
222870:  CMP             R6, #0
222874:  BNE             loc_22288C
222878:  LDR             R2, [R5,#0x10]
22287C:  MOV             R0, R4
222880:  MOV             R1, #0xFFFFFFFF
222884:  BL              sub_222CE4
222888:  MOV             R10, #0
22288C:  MOV             R0, R4
222890:  MOV             R1, #0xFFFFFFFE
222894:  MOV             R2, R8
222898:  BL              sub_222C8C
22289C:  MOV             R0, R4
2228A0:  MOV             R1, R9
2228A4:  BL              sub_222E9C
2228A8:  CMP             R0, #0
2228AC:  BNE             loc_222944
2228B0:  LDR             R3, [SP,#0x50+var_3C]
2228B4:  CMP             R3, #0
2228B8:  BEQ             loc_22285C
2228BC:  LDR             R0, [SP,#0x50+var_48]
2228C0:  LDR             R1, [SP,#0x50+var_34]
2228C4:  LDR             R2, [SP,#0x50+var_28]
2228C8:  STR             R0, [R5,#0x48]
2228CC:  MOV             R0, R7
2228D0:  STR             R2, [R5,#0x4C]
2228D4:  MOV             R2, R4
2228D8:  STR             R1, [R5,#0x50]
2228DC:  MOV             R1, R5
2228E0:  BLX             R3
2228E4:  CMP             R0, #8
2228E8:  BNE             loc_222934
2228EC:  LDR             R0, [R11,#var_20]
2228F0:  LDR             R1, [R5,#0x20]
2228F4:  CMP             R0, R1
2228F8:  BNE             loc_22285C
2228FC:  LDR             R1, =(aLibunwindSS - 0x222910); "libunwind: %s - %s\n" ...
222900:  LDR             R2, =(aUnwindPhase2 - 0x222918); "unwind_phase2" ...
222904:  LDR             R3, =(aDuringPhase1Pe - 0x22291C); "during phase1 personality function said"... ...
222908:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
22290C:  LDR             R0, =(__sF_ptr - 0x222920)
222910:  ADD             R2, PC, R2; "unwind_phase2"
222914:  ADD             R3, PC, R3; "during phase1 personality function said"...
222918:  LDR             R0, [PC,R0]; __sF
22291C:  ADD             R4, R0, #0xA8
222920:  MOV             R0, R4; stream
222924:  BL              fprintf
222928:  MOV             R0, R4; stream
22292C:  BL              fflush
222930:  BL              abort
222934:  CMP             R0, #7
222938:  BEQ             loc_22294C
22293C:  CMP             R0, #9
222940:  BEQ             loc_222974
222944:  SUB             SP, R11, #0x1C
222948:  POP             {R4-R11,PC}
22294C:  ADD             R2, SP, #0x50+var_4C
222950:  MOV             R0, R4
222954:  MOV             R1, #0xFFFFFFFF
222958:  BL              sub_222C8C
22295C:  LDR             R0, [SP,#0x50+var_4C]
222960:  STR             R0, [R5,#0x10]
222964:  MOV             R0, R4
222968:  BL              sub_222ED0
22296C:  SUB             SP, R11, #0x1C
222970:  POP             {R4-R11,PC}
222974:  BL              abort
