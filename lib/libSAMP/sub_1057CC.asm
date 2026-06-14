; =========================================================
; Game Engine Function: sub_1057CC
; Address            : 0x1057CC - 0x10597E
; =========================================================

1057CC:  PUSH            {R4-R7,LR}
1057CE:  ADD             R7, SP, #0xC
1057D0:  PUSH.W          {R8-R11}
1057D4:  SUB             SP, SP, #0xA4
1057D6:  MOV             R4, R0
1057D8:  BL              sub_F9104
1057DC:  MOV             R0, R4
1057DE:  BL              sub_F8C70
1057E2:  CBZ             R0, loc_1057EA
1057E4:  MOV             R0, R4
1057E6:  BL              sub_105984
1057EA:  LDR             R0, =(off_23494C - 0x1057FA)
1057EC:  MOVW            R9, #0xCDED
1057F0:  MOVS            R5, #0
1057F2:  MOVT            R9, #0x3F ; '?'
1057F6:  ADD             R0, PC; off_23494C
1057F8:  MOV.W           R8, #0
1057FC:  LDR             R0, [R0]; dword_23DF24
1057FE:  STR             R0, [SP,#0xC0+var_6C]
105800:  ADD.W           R0, R4, R8
105804:  LDRB.W          R0, [R0,#0x74]
105808:  CMP             R0, #0
10580A:  BEQ.W           loc_105968
10580E:  ADD.W           R10, R4, R8,LSL#2
105812:  LDR.W           R0, [R10,#0x288]
105816:  CMP             R0, #0
105818:  BEQ.W           loc_105968
10581C:  LDR             R0, [R0,#4]
10581E:  CMP             R0, #0
105820:  BEQ.W           loc_105968
105824:  MOV             R0, R4
105826:  BL              sub_F8C70
10582A:  CMP             R0, #0
10582C:  BEQ.W           loc_105958
105830:  ADD.W           R11, R4, R5
105834:  LDR             R1, [R4,#0x5C]
105836:  LDR.W           R0, [R11,#0x84]
10583A:  ADD.W           R0, R1, R0,LSL#2
10583E:  LDR.W           R0, [R0,#0x494]
105842:  CMP             R0, #0
105844:  BEQ.W           loc_105976
105848:  LDR             R2, [SP,#0xC0+var_6C]
10584A:  LDR.W           R1, [R10,#0x288]
10584E:  LDR             R6, [R0,#0x14]
105850:  LDR             R2, [R2]
105852:  LDR             R0, [R1,#4]
105854:  ADD.W           R1, R9, R2
105858:  ADD.W           R1, R1, #0x1F0
10585C:  BLX             R1
10585E:  ADD.W           R9, SP, #0xC0+var_5C
105862:  MOV             R0, R4
105864:  MOV             R2, R6
105866:  MOV             R1, R9
105868:  BL              sub_1059B4
10586C:  ADD.W           R2, R11, #0x88
105870:  ADD             R0, SP, #0xC0+var_68
105872:  MOV             R1, R9
105874:  BL              sub_108F30
105878:  ADD             R2, SP, #0xC0+var_68
10587A:  VLDR            S0, [R11,#0x94]
10587E:  ADD             R3, SP, #0xC0+var_2C
105880:  LDM             R2, {R0-R2}
105882:  VCMP.F32        S0, #0.0
105886:  VMRS            APSR_nzcv, FPSCR
10588A:  STM             R3!, {R0-R2}
10588C:  BEQ             loc_10589A
10588E:  VMOV            R2, S0
105892:  MOV             R0, R9
105894:  MOVS            R1, #0
105896:  BL              sub_109038
10589A:  VLDR            S0, [R11,#0x98]
10589E:  VCMP.F32        S0, #0.0
1058A2:  VMRS            APSR_nzcv, FPSCR
1058A6:  BEQ             loc_1058B4
1058A8:  VMOV            R2, S0
1058AC:  MOV             R0, R9
1058AE:  MOVS            R1, #1
1058B0:  BL              sub_109038
1058B4:  VLDR            S0, [R11,#0x9C]
1058B8:  VCMP.F32        S0, #0.0
1058BC:  VMRS            APSR_nzcv, FPSCR
1058C0:  BEQ             loc_1058CE
1058C2:  VMOV            R2, S0
1058C6:  MOV             R0, R9
1058C8:  MOVS            R1, #2
1058CA:  BL              sub_109038
1058CE:  ADD.W           R1, R11, #0xA0
1058D2:  MOV             R0, R9
1058D4:  BL              sub_10906C
1058D8:  LDR             R0, [SP,#0xC0+var_5C]
1058DA:  ADD.W           R12, SP, #0xC0+var_30
1058DE:  STR             R0, [SP,#0xC0+var_70]
1058E0:  LDR             R0, [SP,#0xC0+var_58]
1058E2:  STR             R0, [SP,#0xC0+var_74]
1058E4:  LDR             R0, [SP,#0xC0+var_54]
1058E6:  STR             R0, [SP,#0xC0+var_78]
1058E8:  LDR             R0, [SP,#0xC0+var_50]
1058EA:  STR             R0, [SP,#0xC0+var_80]
1058EC:  LDR.W           R0, [R10,#0x288]
1058F0:  STR             R0, [SP,#0xC0+var_7C]
1058F2:  LDR             R0, [SP,#0xC0+var_3C]
1058F4:  STR             R0, [SP,#0xC0+var_84]
1058F6:  LDR             R0, [SP,#0xC0+var_38]
1058F8:  STR             R0, [SP,#0xC0+var_88]
1058FA:  LDR             R0, [SP,#0xC0+var_34]
1058FC:  STR             R0, [SP,#0xC0+var_8C]
1058FE:  LDM.W           R12, {R0-R3,R12}
105902:  STR             R0, [SP,#0xC0+var_A0]
105904:  LDR             R0, [SP,#0xC0+var_80]
105906:  LDRD.W          R6, LR, [SP,#0xC0+var_4C]
10590A:  STMEA.W         SP, {R0,R6,LR}
10590E:  LDR             R0, [SP,#0xC0+var_84]
105910:  STR             R0, [SP,#0xC0+var_AC]
105912:  LDR             R0, [SP,#0xC0+var_88]
105914:  STR             R0, [SP,#0xC0+var_A8]
105916:  LDR             R0, [SP,#0xC0+var_8C]
105918:  STR             R1, [SP,#0xC0+var_9C]
10591A:  STR             R2, [SP,#0xC0+var_98]
10591C:  STR             R3, [SP,#0xC0+var_94]
10591E:  STR             R0, [SP,#0xC0+var_A4]
105920:  LDRD.W          R2, R1, [SP,#0xC0+var_74]
105924:  LDRD.W          R0, R3, [SP,#0xC0+var_7C]
105928:  LDRD.W          R11, R9, [SP,#0xC0+var_44]
10592C:  STR.W           R12, [SP,#0xC0+var_90]
105930:  STRD.W          R11, R9, [SP,#0xC0+var_B4]
105934:  BL              sub_F894A
105938:  LDR.W           R0, [R10,#0x288]
10593C:  BL              sub_F8C14
105940:  LDR             R1, [SP,#0xC0+var_6C]
105942:  MOVW            R9, #0xCDED
105946:  LDR.W           R0, [R10,#0x288]
10594A:  MOVT            R9, #0x3F ; '?'
10594E:  LDR             R1, [R1]
105950:  LDR             R0, [R0,#4]
105952:  ADD             R1, R9
105954:  BLX             R1
105956:  B               loc_105968
105958:  LDR.W           R0, [R10,#0x288]
10595C:  MOVS            R2, #0
10595E:  MOVS            R3, #0
105960:  LDR             R1, [R0]
105962:  LDR             R6, [R1,#0x10]
105964:  MOVS            R1, #0
105966:  BLX             R6
105968:  ADDS            R5, #0x34 ; '4'
10596A:  ADD.W           R8, R8, #1
10596E:  CMP.W           R5, #0x208
105972:  BNE.W           loc_105800
105976:  ADD             SP, SP, #0xA4
105978:  POP.W           {R8-R11}
10597C:  POP             {R4-R7,PC}
