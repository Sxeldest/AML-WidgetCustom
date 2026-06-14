; =========================================================
; Game Engine Function: png_warning_parameter_signed
; Address            : 0x1F2840 - 0x1F29DC
; =========================================================

1F2840:  PUSH            {R4-R7,LR}
1F2842:  ADD             R7, SP, #0xC
1F2844:  PUSH.W          {R8-R11}
1F2848:  SUB             SP, SP, #0x2C
1F284A:  STR             R0, [SP,#0x48+var_44]
1F284C:  ADD             R4, SP, #0x48+var_38
1F284E:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F2860)
1F2850:  MOVW            R5, #0xCCCD
1F2854:  LDR.W           R8, =(a0123456789abcd_1 - 0x1F2872); "0123456789ABCDEF"
1F2858:  MOV.W           LR, #0
1F285C:  ADD             R0, PC; __stack_chk_guard_ptr
1F285E:  LDR.W           R10, =(a0123456789abcd_1 - 0x1F2874); "0123456789ABCDEF"
1F2862:  STR             R1, [SP,#0x48+var_3C]
1F2864:  ADD.W           R12, R4, #0x17
1F2868:  LDR             R0, [R0]; __stack_chk_guard
1F286A:  CMP             R3, #0
1F286C:  MOV             R11, R3
1F286E:  ADD             R8, PC; "0123456789ABCDEF"
1F2870:  ADD             R10, PC; "0123456789ABCDEF"
1F2872:  MOV.W           R6, #1
1F2876:  LDR             R0, [R0]
1F2878:  MOVT            R5, #0xCCCC
1F287C:  STR             R0, [SP,#0x48+var_20]
1F287E:  MOV.W           R0, #0
1F2882:  STRB.W          LR, [SP,#0x48+var_21]
1F2886:  IT MI
1F2888:  RSBMI.W         R11, R3, #0
1F288C:  MOV.W           R9, #0
1F2890:  STR             R0, [SP,#0x48+var_40]
1F2892:  CMP             R9, R6
1F2894:  BLT             loc_1F289C
1F2896:  CMP.W           R11, #0
1F289A:  BEQ             loc_1F296A
1F289C:  SUBS            R0, R2, #1; switch 5 cases
1F289E:  CMP             R0, #4
1F28A0:  BHI             def_1F28A2; jumptable 001F28A2 default case
1F28A2:  TBB.W           [PC,R0]; switch jump
1F28A6:  DCB 4; jump table for switch statement
1F28A7:  DCB 3
1F28A8:  DCB 0x12
1F28A9:  DCB 0x11
1F28AA:  DCB 0x21
1F28AB:  ALIGN 2
1F28AC:  MOVS            R6, #2; jumptable 001F28A2 case 2
1F28AE:  UMULL.W         R0, R1, R11, R5; jumptable 001F28A2 case 1
1F28B2:  ADD.W           R9, R9, #1
1F28B6:  LSRS            R0, R1, #3
1F28B8:  ADD.W           R1, R0, R0,LSL#2
1F28BC:  SUB.W           R1, R11, R1,LSL#1
1F28C0:  MOV             R11, R0
1F28C2:  LDRB.W          LR, [R8,R1]
1F28C6:  B               loc_1F28DA
1F28C8:  MOVS            R6, #2; jumptable 001F28A2 case 4
1F28CA:  AND.W           R0, R11, #0xF; jumptable 001F28A2 case 3
1F28CE:  MOV.W           R11, R11,LSR#4
1F28D2:  ADD.W           R9, R9, #1
1F28D6:  LDRB.W          LR, [R10,R0]
1F28DA:  STRB.W          LR, [R12,#-1]!
1F28DE:  CMP             R12, R4
1F28E0:  BHI             loc_1F2892
1F28E2:  B               loc_1F296A
1F28E4:  MOVS            R0, #0; jumptable 001F28A2 default case
1F28E6:  B               loc_1F2912
1F28E8:  UMULL.W         R0, R1, R11, R5; jumptable 001F28A2 case 5
1F28EC:  LDR             R6, [SP,#0x48+var_40]
1F28EE:  LSRS            R0, R1, #3
1F28F0:  ADD.W           R1, R0, R0,LSL#2
1F28F4:  SUB.W           R1, R11, R1,LSL#1
1F28F8:  ORRS            R6, R1
1F28FA:  BEQ             loc_1F290C
1F28FC:  LDR             R6, =(a0123456789abcd_1 - 0x1F2902); "0123456789ABCDEF"
1F28FE:  ADD             R6, PC; "0123456789ABCDEF"
1F2900:  LDRB.W          LR, [R6,R1]
1F2904:  MOVS            R1, #1
1F2906:  STRB.W          LR, [R12,#-1]!
1F290A:  B               loc_1F290E
1F290C:  MOVS            R1, #0
1F290E:  STR             R1, [SP,#0x48+var_40]
1F2910:  MOVS            R6, #5
1F2912:  CMP             R2, #5
1F2914:  ADD.W           R1, R9, #1
1F2918:  IT EQ
1F291A:  CMPEQ.W         R9, #4
1F291E:  BNE             loc_1F2934
1F2920:  CMP             R12, R4
1F2922:  BLS             loc_1F2934
1F2924:  LDR             R1, [SP,#0x48+var_40]
1F2926:  CMP             R1, #0
1F2928:  BEQ             loc_1F293E
1F292A:  MOV.W           LR, #0x2E ; '.'
1F292E:  STRB.W          LR, [R12,#-1]!
1F2932:  B               loc_1F2944
1F2934:  MOV             R11, R0
1F2936:  MOV             R9, R1
1F2938:  CMP             R12, R4
1F293A:  BHI             loc_1F2892
1F293C:  B               loc_1F296A
1F293E:  CBZ             R0, loc_1F2950
1F2940:  MOVS            R1, #0
1F2942:  STR             R1, [SP,#0x48+var_40]
1F2944:  MOV.W           R9, #5
1F2948:  MOV             R11, R0
1F294A:  CMP             R12, R4
1F294C:  BHI             loc_1F2892
1F294E:  B               loc_1F296A
1F2950:  MOV.W           LR, #0x30 ; '0'
1F2954:  MOVS            R0, #0
1F2956:  STRB.W          LR, [R12,#-1]!
1F295A:  MOV.W           R9, #5
1F295E:  MOV.W           R11, #0
1F2962:  STR             R0, [SP,#0x48+var_40]
1F2964:  CMP             R12, R4
1F2966:  BHI.W           loc_1F2892
1F296A:  CMP.W           R3, #0xFFFFFFFF
1F296E:  BGT             loc_1F297E
1F2970:  ADD             R0, SP, #0x48+var_38
1F2972:  CMP             R12, R0
1F2974:  ITT HI
1F2976:  MOVHI.W         LR, #0x2D ; '-'
1F297A:  STRBHI.W        LR, [R12,#-1]!
1F297E:  LDR             R0, [SP,#0x48+var_3C]
1F2980:  SUBS            R0, #1
1F2982:  CMP             R0, #7
1F2984:  BHI             loc_1F29C2
1F2986:  LDR             R1, [SP,#0x48+var_44]
1F2988:  ADD.W           R0, R1, R0,LSL#5
1F298C:  CBZ             R0, loc_1F29C2
1F298E:  MOVS            R1, #0
1F2990:  CMP.W           R12, #0
1F2994:  BEQ             loc_1F29BE
1F2996:  MOVS.W          R2, LR,LSL#24
1F299A:  MOV.W           R4, #0
1F299E:  BEQ             loc_1F29C0
1F29A0:  ADD.W           R2, R12, #1
1F29A4:  MOVS            R3, #0
1F29A6:  ADDS            R4, R3, #1
1F29A8:  STRB.W          LR, [R0,R3]
1F29AC:  CMP             R4, #0x1E
1F29AE:  BHI             loc_1F29C0
1F29B0:  LDRB.W          LR, [R2,R3]
1F29B4:  MOV             R3, R4
1F29B6:  CMP.W           LR, #0
1F29BA:  BNE             loc_1F29A6
1F29BC:  B               loc_1F29C0
1F29BE:  MOVS            R4, #0
1F29C0:  STRB            R1, [R0,R4]
1F29C2:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F29CA)
1F29C4:  LDR             R1, [SP,#0x48+var_20]
1F29C6:  ADD             R0, PC; __stack_chk_guard_ptr
1F29C8:  LDR             R0, [R0]; __stack_chk_guard
1F29CA:  LDR             R0, [R0]
1F29CC:  SUBS            R0, R0, R1
1F29CE:  ITTT EQ
1F29D0:  ADDEQ           SP, SP, #0x2C ; ','
1F29D2:  POPEQ.W         {R8-R11}
1F29D6:  POPEQ           {R4-R7,PC}
1F29D8:  BLX             __stack_chk_fail
