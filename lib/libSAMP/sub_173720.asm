; =========================================================
; Game Engine Function: sub_173720
; Address            : 0x173720 - 0x1739BC
; =========================================================

173720:  PUSH            {R4-R7,LR}
173722:  ADD             R7, SP, #0xC
173724:  PUSH.W          {R8-R11}
173728:  SUB             SP, SP, #0x24
17372A:  CMP             R2, #3
17372C:  BLT.W           loc_1739B0
173730:  MOV             R4, R0
173732:  LDR             R0, [R0,#0x28]
173734:  MOV             R6, R1
173736:  LDRB.W          R1, [R4,#0x24]
17373A:  LDRD.W          R9, R10, [R0]
17373E:  MOV             R11, R3
173740:  MOV             R8, R2
173742:  LSLS            R0, R1, #0x1E
173744:  BMI             loc_1737A0
173746:  ADD.W           R0, R8, R8,LSL#1
17374A:  MOV             R2, R8
17374C:  SUBS            R1, R0, #6
17374E:  MOV             R0, R4
173750:  BL              sub_172DC0
173754:  LDR             R1, [R4,#0x38]
173756:  MOV             R0, R8
173758:  LDRD.W          R2, R3, [R6],#8
17375C:  SUBS            R0, #1
17375E:  STRD.W          R2, R3, [R1]
173762:  LDR             R1, [R4,#0x38]
173764:  STRD.W          R9, R10, [R1,#8]
173768:  LDR             R2, [R4,#0x38]
17376A:  ADD.W           R1, R2, #0x14
17376E:  STR             R1, [R4,#0x38]
173770:  STR.W           R11, [R2,#0x10]
173774:  BNE             loc_173758
173776:  LDR             R0, [R4,#0x34]
173778:  CMP.W           R8, #3
17377C:  BLT             loc_173798
17377E:  LDR             R1, [R4,#0x3C]
173780:  ADDS            R2, R0, #2
173782:  SUB.W           R3, R8, #2
173786:  SUBS            R6, R2, #1
173788:  STRH            R2, [R1,#4]
17378A:  STRH            R6, [R1,#2]
17378C:  ADDS            R2, #1
17378E:  STRH.W          R0, [R1],#6
173792:  SUBS            R3, #1
173794:  BNE             loc_173786
173796:  STR             R1, [R4,#0x3C]
173798:  UXTAH.W         R0, R0, R8
17379C:  STR             R0, [R4,#0x34]
17379E:  B               loc_1739B0
1737A0:  ADD.W           R0, R8, R8,LSL#3
1737A4:  MOV.W           R5, R8,LSL#1
1737A8:  SUBS            R1, R0, #6
1737AA:  MOV             R0, R4
1737AC:  MOV             R2, R5
1737AE:  BL              sub_172DC0
1737B2:  LDR.W           LR, [R4,#0x34]
1737B6:  LDR             R0, [R4,#0x3C]
1737B8:  STR.W           R4, [R7,#var_28]
1737BC:  ADD.W           R2, LR, #1
1737C0:  BIC.W           R4, R11, #0xFF000000
1737C4:  ADD.W           R1, LR, #4
1737C8:  STR.W           R2, [R7,#var_2C]
1737CC:  MOVS            R2, #2
1737CE:  SUBS            R3, R1, #2
1737D0:  STRH            R1, [R0,#4]
1737D2:  STRH            R3, [R0,#2]
1737D4:  ADDS            R2, #1
1737D6:  STRH.W          LR, [R0],#6
1737DA:  ADDS            R1, #2
1737DC:  CMP             R8, R2
1737DE:  BNE             loc_1737CE
1737E0:  LDR.W           R1, [R7,#var_28]
1737E4:  STR             R0, [R1,#0x3C]
1737E6:  SUB.W           R1, SP, R8,LSL#3
1737EA:  MOV             SP, R1
1737EC:  CMP.W           R8, #1
1737F0:  BLT.W           loc_1739A2
1737F4:  VMOV.F32        S0, #1.0
1737F8:  SUB.W           R0, R8, #1
1737FC:  ADD.W           R12, R6, #4
173800:  STR.W           R5, [R7,#var_3C]
173804:  ADD.W           R2, R6, R0,LSL#3
173808:  MOVS            R5, #0
17380A:  MOV             R3, R12
17380C:  MOV             R6, R8
17380E:  VLDR            S6, [R2]
173812:  VLDR            S8, [R2,#4]
173816:  MOV             R2, R0
173818:  STR.W           R4, [R7,#var_30]
17381C:  STR.W           R0, [R7,#var_24]
173820:  VLDR            S4, [R3]
173824:  VLDR            S2, [R3,#-4]
173828:  VSUB.F32        S8, S4, S8
17382C:  VSUB.F32        S6, S2, S6
173830:  VMUL.F32        S10, S8, S8
173834:  VMLA.F32        S10, S6, S6
173838:  VCMP.F32        S10, #0.0
17383C:  VMRS            APSR_nzcv, FPSCR
173840:  BLE             loc_173852
173842:  VSQRT.F32       S10, S10
173846:  VDIV.F32        S10, S0, S10
17384A:  VMUL.F32        S8, S8, S10
17384E:  VMUL.F32        S6, S6, S10
173852:  VNEG.F32        S6, S6
173856:  ADD.W           R2, R1, R2,LSL#3
17385A:  ADDS            R0, R5, #1
17385C:  ADDS            R3, #8
17385E:  VSTR            S8, [R2]
173862:  VMOV.F32        S8, S4
173866:  SUBS            R6, #1
173868:  VSTR            S6, [R2,#4]
17386C:  VMOV.F32        S6, S2
173870:  MOV             R2, R5
173872:  MOV             R5, R0
173874:  BNE             loc_173820
173876:  CMP.W           R8, #1
17387A:  BLT.W           loc_17399E
17387E:  LDR.W           R4, [R7,#var_24]
173882:  VMOV.F32        S2, #0.5
173886:  LDR.W           R0, [R7,#var_28]
17388A:  ADDS            R6, R1, #4
17388C:  STRD.W          LR, R10, [R7,#var_38]
173890:  ADD.W           R3, R1, R4,LSL#3
173894:  LDR             R2, [R0,#0x38]
173896:  MOV             R0, LR
173898:  LDR.W           LR, [R7,#var_28]
17389C:  VLDR            S8, [R3]
1738A0:  VLDR            S10, [R3,#4]
1738A4:  MOVS            R3, #0
1738A6:  VLDR            S6, [R6]
1738AA:  MOV             R1, R9
1738AC:  VLDR            S4, [R6,#-4]
1738B0:  ADDS            R6, #8
1738B2:  VADD.F32        S10, S10, S6
1738B6:  STR.W           R3, [R7,#var_24]
1738BA:  VADD.F32        S8, S8, S4
1738BE:  VMUL.F32        S10, S10, S2
1738C2:  VMUL.F32        S8, S8, S2
1738C6:  VMUL.F32        S12, S10, S10
1738CA:  VMLA.F32        S12, S8, S8
1738CE:  VCMP.F32        S12, S2
1738D2:  VMRS            APSR_nzcv, FPSCR
1738D6:  IT MI
1738D8:  VMOVMI.F32      S12, S2
1738DC:  VDIV.F32        S12, S0, S12
1738E0:  VMUL.F32        S8, S8, S12
1738E4:  VLDR            S14, [R12]
1738E8:  VMUL.F32        S10, S10, S12
1738EC:  VLDR            S12, [R12,#-4]
1738F0:  STRD.W          R9, R10, [R2,#8]
1738F4:  LDR.W           R3, [LR,#0x38]
1738F8:  STR.W           R11, [R3,#0x10]
1738FC:  VMUL.F32        S8, S8, S2
173900:  VMUL.F32        S10, S10, S2
173904:  VSUB.F32        S12, S12, S8
173908:  VSUB.F32        S14, S14, S10
17390C:  VSTR            S12, [R2]
173910:  VSTR            S14, [R2,#4]
173914:  VLDR            S12, [R12,#-4]
173918:  VLDR            S14, [R12]
17391C:  ADD.W           R12, R12, #8
173920:  VADD.F32        S8, S12, S8
173924:  STRD.W          R9, R10, [R3,#0x1C]
173928:  VADD.F32        S10, S10, S14
17392C:  LDRD.W          R5, R10, [LR,#0x38]
173930:  MOV             R9, R11
173932:  MOV             R11, R8
173934:  ADD.W           R8, R10, #0xC
173938:  ADD.W           R2, R5, #0x28 ; '('
17393C:  STRH.W          R0, [R10]
173940:  STRD.W          R2, R8, [LR,#0x38]
173944:  MOV             R8, R11
173946:  MOV             R11, R9
173948:  MOV             R9, R1
17394A:  LDR.W           R1, [R7,#var_30]
17394E:  STR             R1, [R5,#0x24]
173950:  LDR.W           R1, [R7,#var_2C]
173954:  VSTR            S8, [R3,#0x14]
173958:  VMOV.F32        S8, S4
17395C:  VSTR            S10, [R3,#0x18]
173960:  VMOV.F32        S10, S6
173964:  ADD.W           R5, R1, R4,LSL#1
173968:  LDR.W           R1, [R7,#var_38]
17396C:  STRH.W          R5, [R10,#4]
173970:  ADD.W           R1, R1, R4,LSL#1
173974:  LDR.W           R4, [R7,#var_24]
173978:  STRH.W          R5, [R10,#6]
17397C:  ADDS            R5, R0, #1
17397E:  STRH.W          R0, [R10,#0xA]
173982:  ADDS            R3, R4, #1
173984:  STRH.W          R5, [R10,#8]
173988:  ADDS            R0, #2
17398A:  STRH.W          R1, [R10,#2]
17398E:  CMP             R8, R3
173990:  LDR.W           R10, [R7,#var_34]
173994:  BNE             loc_1738A6
173996:  LDR.W           R0, [R7,#var_28]
17399A:  LDR.W           LR, [R0,#0x34]
17399E:  LDR.W           R5, [R7,#var_3C]
1739A2:  LDR.W           R1, [R7,#var_28]
1739A6:  MOVW            R0, #0xFFFE
1739AA:  ANDS            R0, R5
1739AC:  ADD             R0, LR
1739AE:  STR             R0, [R1,#0x34]
1739B0:  SUB.W           R4, R7, #-var_1C
1739B4:  MOV             SP, R4
1739B6:  POP.W           {R8-R11}
1739BA:  POP             {R4-R7,PC}
