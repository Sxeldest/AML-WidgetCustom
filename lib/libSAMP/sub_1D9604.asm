; =========================================================
; Game Engine Function: sub_1D9604
; Address            : 0x1D9604 - 0x1D9A90
; =========================================================

1D9604:  PUSH            {R4-R11,LR}
1D9608:  ADD             R11, SP, #0x1C
1D960C:  SUB             SP, SP, #4
1D9610:  VPUSH           {D8}
1D9614:  SUB             SP, SP, #0x28
1D9618:  MOV             R5, R0
1D961C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D9638)
1D9620:  STR             R2, [SP,#0x50+var_34]
1D9624:  ADD             R2, SP, #0x50+s
1D9628:  MOV             R8, R1
1D962C:  MOV             R1, R5
1D9630:  LDR             R0, [PC,R0]; __stack_chk_guard
1D9634:  MOV             R4, R3
1D9638:  LDR             R0, [R0]
1D963C:  STR             R0, [SP,#0x50+var_2C]
1D9640:  MOV             R0, #0
1D9644:  BL              j_ConfigValueStr
1D9648:  CMP             R0, #0
1D964C:  BNE             loc_1D9668
1D9650:  ADR             R1, aLayout; "layout"
1D9654:  ADD             R2, SP, #0x50+s
1D9658:  MOV             R0, #0
1D965C:  BL              j_ConfigValueStr
1D9660:  CMP             R0, #0
1D9664:  BEQ             loc_1D9A68
1D9668:  LDR             R0, [SP,#0x50+s]; s
1D966C:  STR             R5, [SP,#0x50+var_4C]
1D9670:  BL              strdup
1D9674:  CMP             R0, #0
1D9678:  STR             R0, [SP,#0x50+var_40]
1D967C:  BEQ             loc_1D99D4
1D9680:  LDR             R0, =(LogLevel_ptr - 0x1D9694)
1D9684:  LDR             R10, [SP,#0x50+var_40]
1D9688:  VLDR            S16, =0.017453
1D968C:  LDR             R0, [PC,R0]; LogLevel
1D9690:  STR             R0, [SP,#0x50+var_38]
1D9694:  LDR             R0, =(aMalformedSpeak - 0x1D96A0); "Malformed speaker key: %s\n" ...
1D9698:  ADD             R0, PC, R0; "Malformed speaker key: %s\n"
1D969C:  STR             R0, [SP,#0x50+var_3C]
1D96A0:  LDR             R0, =(LogLevel_ptr - 0x1D96AC)
1D96A4:  LDR             R0, [PC,R0]; LogLevel
1D96A8:  STR             R0, [SP,#0x50+var_44]
1D96AC:  LDR             R0, =(aInvalidAngleFo - 0x1D96B8); "Invalid angle for speaker \"%s\": %ld\n" ...
1D96B0:  ADD             R0, PC, R0; "Invalid angle for speaker \"%s\": %ld\n"
1D96B4:  STR             R0, [SP,#0x50+var_48]
1D96B8:  LDR             R0, =(LogLevel_ptr - 0x1D96C4)
1D96BC:  LDR             R0, [PC,R0]; LogLevel
1D96C0:  STR             R0, [SP,#0x50+var_50]
1D96C4:  MOV             R5, R10
1D96C8:  LDRB            R0, [R5]
1D96CC:  CMP             R0, #0
1D96D0:  BEQ             loc_1D99D4
1D96D4:  MOV             R0, R5; s
1D96D8:  MOV             R1, #0x2C ; ','; c
1D96DC:  BL              strchr
1D96E0:  MOV             R10, R0
1D96E4:  CMP             R10, #0
1D96E8:  BEQ             loc_1D9714
1D96EC:  MOV             R0, #0
1D96F0:  STRB            R0, [R10]
1D96F4:  LDRB            R7, [R10,#1]!
1D96F8:  MOV             R0, R7; int
1D96FC:  BL              isspace
1D9700:  CMP             R7, #0x2C ; ','
1D9704:  BEQ             loc_1D96F4
1D9708:  CMP             R0, #0
1D970C:  BNE             loc_1D96F4
1D9710:  B               loc_1D9718
1D9714:  MOV             R10, #0
1D9718:  MOV             R0, R5; s
1D971C:  MOV             R1, #0x3D ; '='; c
1D9720:  BL              strchr
1D9724:  MOV             R9, R0
1D9728:  CMP             R9, #0
1D972C:  CMPNE           R5, R9
1D9730:  BEQ             loc_1D9938
1D9734:  SUB             R7, R9, #1
1D9738:  MOV             R6, R7
1D973C:  LDRB            R0, [R6],#-1; int
1D9740:  BL              isspace
1D9744:  CMP             R5, R7
1D9748:  BEQ             loc_1D9758
1D974C:  CMP             R0, #0
1D9750:  MOV             R7, R6
1D9754:  BNE             loc_1D973C
1D9758:  MOV             R7, #0
1D975C:  MOV             R0, R5; s1
1D9760:  STRB            R7, [R6,#2]
1D9764:  ADR             R1, dword_1D9A94; s2
1D9768:  BL              strcmp
1D976C:  CMP             R0, #0
1D9770:  BEQ             loc_1D98EC
1D9774:  ADR             R1, aFrontLeft; "front-left"
1D9778:  MOV             R0, R5; s1
1D977C:  BL              strcmp
1D9780:  CMP             R0, #0
1D9784:  BEQ             loc_1D98EC
1D9788:  ADR             R1, aFr; "fr"
1D978C:  MOV             R0, R5; s1
1D9790:  BL              strcmp
1D9794:  MOV             R7, #1
1D9798:  CMP             R0, #0
1D979C:  BEQ             loc_1D98EC
1D97A0:  ADR             R1, aFrontRight; "front-right"
1D97A4:  MOV             R0, R5; s1
1D97A8:  BL              strcmp
1D97AC:  CMP             R0, #0
1D97B0:  BEQ             loc_1D98EC
1D97B4:  ADR             R1, aFc; "fc"
1D97B8:  MOV             R0, R5; s1
1D97BC:  BL              strcmp
1D97C0:  MOV             R7, #2
1D97C4:  CMP             R0, #0
1D97C8:  BEQ             loc_1D98EC
1D97CC:  ADR             R1, aFrontCenter; "front-center"
1D97D0:  MOV             R0, R5; s1
1D97D4:  BL              strcmp
1D97D8:  CMP             R0, #0
1D97DC:  BEQ             loc_1D98EC
1D97E0:  ADR             R1, aBl; "bl"
1D97E4:  MOV             R0, R5; s1
1D97E8:  BL              strcmp
1D97EC:  MOV             R7, #4
1D97F0:  CMP             R0, #0
1D97F4:  BEQ             loc_1D98EC
1D97F8:  ADR             R1, aBackLeft; "back-left"
1D97FC:  MOV             R0, R5; s1
1D9800:  BL              strcmp
1D9804:  CMP             R0, #0
1D9808:  BEQ             loc_1D98EC
1D980C:  ADR             R1, aBr; "br"
1D9810:  MOV             R0, R5; s1
1D9814:  BL              strcmp
1D9818:  MOV             R7, #5
1D981C:  CMP             R0, #0
1D9820:  BEQ             loc_1D98EC
1D9824:  ADR             R1, aBackRight; "back-right"
1D9828:  MOV             R0, R5; s1
1D982C:  BL              strcmp
1D9830:  CMP             R0, #0
1D9834:  BEQ             loc_1D98EC
1D9838:  ADR             R1, aBc; "bc"
1D983C:  MOV             R0, R5; s1
1D9840:  BL              strcmp
1D9844:  MOV             R7, #6
1D9848:  CMP             R0, #0
1D984C:  BEQ             loc_1D98EC
1D9850:  ADR             R1, aBackCenter; "back-center"
1D9854:  MOV             R0, R5; s1
1D9858:  BL              strcmp
1D985C:  CMP             R0, #0
1D9860:  BEQ             loc_1D98EC
1D9864:  ADR             R1, aSl; "sl"
1D9868:  MOV             R0, R5; s1
1D986C:  BL              strcmp
1D9870:  MOV             R7, #7
1D9874:  CMP             R0, #0
1D9878:  BEQ             loc_1D98EC
1D987C:  ADR             R1, aSideLeft; "side-left"
1D9880:  MOV             R0, R5; s1
1D9884:  BL              strcmp
1D9888:  CMP             R0, #0
1D988C:  BEQ             loc_1D98EC
1D9890:  ADR             R1, aSr; "sr"
1D9894:  MOV             R0, R5; s1
1D9898:  BL              strcmp
1D989C:  MOV             R7, #8
1D98A0:  CMP             R0, #0
1D98A4:  BEQ             loc_1D98EC
1D98A8:  ADR             R1, aSideRight; "side-right"
1D98AC:  MOV             R0, R5; s1
1D98B0:  BL              strcmp
1D98B4:  CMP             R0, #0
1D98B8:  BEQ             loc_1D98EC
1D98BC:  LDR             R0, [SP,#0x50+var_50]
1D98C0:  LDR             R0, [R0]
1D98C4:  CMP             R0, #0
1D98C8:  BEQ             loc_1D99CC
1D98CC:  ADR             R0, aSetspeakerarra; "SetSpeakerArrangement"
1D98D0:  ADR             R1, aUnknownSpeaker; "Unknown speaker for %s: \"%s\"\n"
1D98D4:  LDR             R2, [SP,#0x50+var_4C]
1D98D8:  MOV             R3, R5
1D98DC:  BL              j_al_print
1D98E0:  CMP             R10, #0
1D98E4:  BNE             loc_1D96C4
1D98E8:  B               loc_1D99D4
1D98EC:  MOV             R0, #0
1D98F0:  STRB            R0, [R9]
1D98F4:  LDRB            R0, [R9,#1]!; int
1D98F8:  BL              isspace
1D98FC:  CMP             R0, #0
1D9900:  BNE             loc_1D98F4
1D9904:  LDR             R2, [SP,#0x50+var_34]
1D9908:  CMP             R4, #1
1D990C:  BLT             loc_1D99CC
1D9910:  MOV             R0, #0
1D9914:  MOV             R6, R8
1D9918:  LDR             R1, [R2,R0,LSL#2]
1D991C:  CMP             R1, R7
1D9920:  BEQ             loc_1D9964
1D9924:  ADD             R0, R0, #1
1D9928:  ADD             R6, R6, #4
1D992C:  CMP             R0, R4
1D9930:  BLT             loc_1D9918
1D9934:  B               loc_1D99CC
1D9938:  LDR             R0, [SP,#0x50+var_38]
1D993C:  LDR             R0, [R0]
1D9940:  CMP             R0, #0
1D9944:  BEQ             loc_1D99CC
1D9948:  ADR             R0, aSetspeakerarra; "SetSpeakerArrangement"
1D994C:  LDR             R1, [SP,#0x50+var_3C]
1D9950:  MOV             R2, R5
1D9954:  BL              j_al_print
1D9958:  CMP             R10, #0
1D995C:  BNE             loc_1D96C4
1D9960:  B               loc_1D99D4
1D9964:  MOV             R0, R9; nptr
1D9968:  MOV             R1, #0; endptr
1D996C:  MOV             R2, #0xA; base
1D9970:  BL              strtol
1D9974:  MOV             R3, R0
1D9978:  ADD             R0, R3, #0xB4
1D997C:  CMP             R0, #0x168
1D9980:  BHI             loc_1D99AC
1D9984:  VMOV            S0, R3
1D9988:  VCVT.F32.S32    S0, S0
1D998C:  VMUL.F32        S0, S0, S16
1D9990:  VSTR            S0, [R6]
1D9994:  CMP             R10, #0
1D9998:  BNE             loc_1D96C4
1D999C:  B               loc_1D99D4
1D99A0:  DCB "layout",0
1D99A7:  DCB 0
1D99A8:  DCFS 0.017453
1D99AC:  LDR             R0, [SP,#0x50+var_44]
1D99B0:  LDR             R0, [R0]
1D99B4:  CMP             R0, #0
1D99B8:  BEQ             loc_1D99CC
1D99BC:  ADR             R0, aSetspeakerarra; "SetSpeakerArrangement"
1D99C0:  LDR             R1, [SP,#0x50+var_48]
1D99C4:  MOV             R2, R5
1D99C8:  BL              j_al_print
1D99CC:  CMP             R10, #0
1D99D0:  BNE             loc_1D96C4
1D99D4:  LDR             R0, [SP,#0x50+var_40]; ptr
1D99D8:  BL              free
1D99DC:  CMP             R4, #1
1D99E0:  BLT             loc_1D9A68
1D99E4:  ADD             R7, R8, #4
1D99E8:  MOV             R6, #0
1D99EC:  MOV             R2, R6
1D99F0:  ADD             R6, R2, #1
1D99F4:  CMP             R6, R4
1D99F8:  BGE             loc_1D9A5C
1D99FC:  MOV             R0, R7
1D9A00:  MOV             R1, R6
1D9A04:  MOV             R3, R2
1D9A08:  ADD             R5, R8, R3,LSL#2
1D9A0C:  VLDR            S0, [R0]
1D9A10:  ADD             R0, R0, #4
1D9A14:  VLDR            S2, [R5]
1D9A18:  VCMPE.F32       S0, S2
1D9A1C:  VMRS            APSR_nzcv, FPSCR
1D9A20:  MOVLT           R3, R1
1D9A24:  ADD             R1, R1, #1
1D9A28:  CMP             R4, R1
1D9A2C:  BNE             loc_1D9A08
1D9A30:  CMP             R3, R2
1D9A34:  BEQ             loc_1D9A5C
1D9A38:  LDR             R0, [R8,R2,LSL#2]
1D9A3C:  LDR             R1, [R8,R3,LSL#2]
1D9A40:  STR             R1, [R8,R2,LSL#2]
1D9A44:  STR             R0, [R8,R3,LSL#2]
1D9A48:  LDR             R5, [SP,#0x50+var_34]
1D9A4C:  LDR             R0, [R5,R2,LSL#2]
1D9A50:  LDR             R1, [R5,R3,LSL#2]
1D9A54:  STR             R1, [R5,R2,LSL#2]
1D9A58:  STR             R0, [R5,R3,LSL#2]
1D9A5C:  ADD             R7, R7, #4
1D9A60:  CMP             R6, R4
1D9A64:  BNE             loc_1D99EC
1D9A68:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D9A78)
1D9A6C:  LDR             R1, [SP,#0x50+var_2C]
1D9A70:  LDR             R0, [PC,R0]; __stack_chk_guard
1D9A74:  LDR             R0, [R0]
1D9A78:  SUBS            R0, R0, R1
1D9A7C:  SUBEQ           SP, R11, #0x28 ; '('
1D9A80:  VPOPEQ          {D8}
1D9A84:  ADDEQ           SP, SP, #4
1D9A88:  POPEQ           {R4-R11,PC}
1D9A8C:  BL              __stack_chk_fail
