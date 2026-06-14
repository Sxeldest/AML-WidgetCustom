; =========================================================
; Game Engine Function: sub_767F0
; Address            : 0x767F0 - 0x76F70
; =========================================================

767F0:  PUSH            {R4-R7,LR}
767F2:  ADD             R7, SP, #0xC
767F4:  PUSH.W          {R8-R11}
767F8:  SUB.W           SP, SP, #0x2AC
767FC:  LDR             R0, =(off_114AA8 - 0x76806)
767FE:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x76808)
76802:  ADD             R0, PC; off_114AA8
76804:  ADD             R1, PC; __stack_chk_guard_ptr
76806:  LDR             R0, [R0]; dword_1A4404
76808:  LDR             R1, [R1]; __stack_chk_guard
7680A:  LDR             R0, [R0]
7680C:  LDR             R1, [R1]
7680E:  STR             R1, [SP,#0x2C8+var_20]
76810:  MOV             R1, #0x6D687C; int
76818:  ADDS            R0, R0, R1
7681A:  BEQ.W           loc_76F58
7681E:  LDR             R3, =(aSSampMenuSetti - 0x76828); "%s/SAMP/menu_settings.ini" ...
76820:  ADD             R4, SP, #0x2C8+src
76822:  STR             R0, [SP,#0x2C8+var_2C8]
76824:  ADD             R3, PC; "%s/SAMP/menu_settings.ini"
76826:  MOV             R0, R4; int
76828:  BL              sub_767B0
7682C:  MOV             R0, R4; s
7682E:  BLX             strlen
76832:  CMN.W           R0, #0x10
76836:  BCS.W           loc_76F6A
7683A:  MOV             R4, R0
7683C:  CMP             R0, #0xB
7683E:  BCS             loc_76858
76840:  LSLS            R0, R4, #1
76842:  STRB.W          R0, [SP,#0x2C8+var_154]
76846:  ADD             R0, SP, #0x2C8+var_154
76848:  ADD.W           R5, R0, #1
7684C:  CBNZ            R4, loc_76870
7684E:  B               loc_7687A
76850:  DCD off_114AA8 - 0x76806
76854:  DCD aSSampMenuSetti - 0x76828
76858:  ADD.W           R0, R4, #0x10
7685C:  BIC.W           R6, R0, #0xF
76860:  MOV             R0, R6; unsigned int
76862:  BLX             j__Znwj; operator new(uint)
76866:  MOV             R5, R0
76868:  STRD.W          R4, R0, [SP,#0x2C8+var_150]
7686C:  ADDS            R0, R6, #1
7686E:  STR             R0, [SP,#0x2C8+var_154]
76870:  ADD             R1, SP, #0x2C8+src; src
76872:  MOV             R0, R5; dest
76874:  MOV             R2, R4; n
76876:  BLX             j_memcpy
7687A:  MOVS            R0, #0
7687C:  STRB            R0, [R5,R4]
7687E:  ADD             R0, SP, #0x2C8+var_148
76880:  ADD             R1, SP, #0x2C8+var_154
76882:  BL              sub_77138
76886:  LDRB.W          R0, [SP,#0x2C8+var_154]
7688A:  LSLS            R0, R0, #0x1F
7688C:  ITT NE
7688E:  LDRNE           R0, [SP,#0x2C8+var_14C]; void *
76890:  BLXNE           j__ZdlPv; operator delete(void *)
76894:  LDR             R0, [SP,#0x2C8+var_148]
76896:  LDR             R4, =(dword_1A44F8 - 0x768A4)
76898:  LDR             R5, =(dword_1A44FC - 0x768A6)
7689A:  CMP.W           R0, #0xFFFFFFFF
7689E:  LDR             R0, =(dword_1A4500 - 0x768A8)
768A0:  ADD             R4, PC; dword_1A44F8
768A2:  ADD             R5, PC; dword_1A44FC
768A4:  ADD             R0, PC; dword_1A4500
768A6:  MOV             R10, R0
768A8:  LDR             R0, =(dword_1A4504 - 0x768AE)
768AA:  ADD             R0, PC; dword_1A4504
768AC:  MOV             R9, R0
768AE:  LDR             R0, =(dword_1A4510 - 0x768B4)
768B0:  ADD             R0, PC; dword_1A4510
768B2:  MOV             R11, R0
768B4:  LDR             R0, =(dword_1A4508 - 0x768BA)
768B6:  ADD             R0, PC; dword_1A4508
768B8:  MOV             R8, R0
768BA:  LDR             R0, =(dword_1A450C - 0x768C0)
768BC:  ADD             R0, PC; dword_1A450C
768BE:  STR             R0, [SP,#0x2C8+var_2A8]
768C0:  LDR             R0, =(dword_1A4514 - 0x768C6)
768C2:  ADD             R0, PC; dword_1A4514
768C4:  STR             R0, [SP,#0x2C8+var_2AC]
768C6:  LDR             R0, =(dword_1A4520 - 0x768CC)
768C8:  ADD             R0, PC; dword_1A4520
768CA:  STR             R0, [SP,#0x2C8+var_2B4]
768CC:  LDR             R0, =(dword_1A451C - 0x768D2)
768CE:  ADD             R0, PC; dword_1A451C
768D0:  STR             R0, [SP,#0x2C8+var_2B0]
768D2:  LDR             R0, =(dword_1A4524 - 0x768D8)
768D4:  ADD             R0, PC; dword_1A4524
768D6:  STR             R0, [SP,#0x2C8+var_2B8]
768D8:  LDR             R6, =(dword_1A4528 - 0x768DE)
768DA:  ADD             R6, PC; dword_1A4528
768DC:  BGT             loc_769A8
768DE:  B               loc_76910
768E0:  DCD dword_1A44F8 - 0x768A4
768E4:  DCD dword_1A44FC - 0x768A6
768E8:  DCD dword_1A4500 - 0x768A8
768EC:  DCD dword_1A4504 - 0x768AE
768F0:  DCD dword_1A4510 - 0x768B4
768F4:  DCD dword_1A4508 - 0x768BA
768F8:  DCD dword_1A450C - 0x768C0
768FC:  DCD dword_1A4514 - 0x768C6
76900:  DCD dword_1A4520 - 0x768CC
76904:  DCD dword_1A451C - 0x768D2
76908:  DCD dword_1A4524 - 0x768D8
7690C:  DCD dword_1A4528 - 0x768DE
76910:  LDR             R1, =(aSampOrig - 0x76918); "SAMP_ORIG" ...
76912:  LDR             R2, =(aMenuSettingsIn - 0x7691A); "menu_settings.ini not found. Creating n"... ...
76914:  ADD             R1, PC; "SAMP_ORIG"
76916:  ADD             R2, PC; "menu_settings.ini not found. Creating n"...
76918:  MOVS            R0, #4; prio
7691A:  BLX             __android_log_print
7691E:  B               loc_76928
76920:  DCD aSampOrig - 0x76918
76924:  DCD aMenuSettingsIn - 0x7691A
76928:  MOVS            R0, #0
7692A:  MOVS            R1, #0
7692C:  MOVT            R0, #0x4448
76930:  MOVT            R1, #0x4248
76934:  STR             R0, [R4]
76936:  MOVW            R2, #0x14B
7693A:  LDR             R0, =(unk_1A452C - 0x7694A)
7693C:  MOVS            R3, #0x50 ; 'P'
7693E:  STR             R1, [R5]
76940:  MOV.W           R12, #1
76944:  LDR             R1, =(aC80018 - 0x76960); "C80018" ...
76946:  ADD             R0, PC; unk_1A452C
76948:  STR.W           R2, [R10]
7694C:  MOV             R2, #0xFFFFFFF2
76950:  STR.W           R2, [R9]
76954:  MOV             R2, R5
76956:  MOV             R5, R4
76958:  MOV             R4, R8
7695A:  LDR             R4, [SP,#0x2C8+var_2A8]
7695C:  ADD             R1, PC; "C80018"
7695E:  STR.W           R3, [R8]
76962:  STR.W           R12, [R11]
76966:  STR             R3, [R4]
76968:  MOV             R4, R5
7696A:  LDR             R3, [SP,#0x2C8+var_2AC]
7696C:  MOV             R5, R2
7696E:  STR.W           R12, [R3]
76972:  MOVS            R2, #7
76974:  MOVS            R3, #6
76976:  STR             R2, [SP,#0x2C8+var_2C8]
76978:  MOVS            R2, #6
7697A:  BLX             __strncpy_chk2
7697E:  B               loc_76988
76980:  DCD unk_1A452C - 0x7694A
76984:  DCD aC80018 - 0x76960
76988:  LDR             R1, [SP,#0x2C8+var_2B4]
7698A:  MOVW            R0, #0x159
7698E:  STR             R0, [R1]
76990:  MOV.W           R0, #0x7D0
76994:  LDR             R1, [SP,#0x2C8+var_2B0]
76996:  STR             R0, [R1]
76998:  MOV.W           R0, #0x3F800000
7699C:  LDR             R1, [SP,#0x2C8+var_2B8]
7699E:  STR             R0, [R1]
769A0:  MOVS            R0, #5
769A2:  STR             R0, [R6]
769A4:  BL              sub_76564
769A8:  MOVW            R0, #0x6975
769AC:  STR             R6, [SP,#0x2C8+var_2BC]
769AE:  MOVS            R6, #0
769B0:  STRH.W          R0, [SP,#0x2C8+var_15F]
769B4:  MOVS            R0, #4
769B6:  STRB.W          R6, [SP,#0x2C8+var_15D]
769BA:  STRB.W          R0, [SP,#0x2C8+var_160]
769BE:  MOVS            R0, #0x10; unsigned int
769C0:  BLX             j__Znwj; operator new(uint)
769C4:  LDR             R1, =(aSensitivity - 0x769CC); "sensitivity" ...
769C6:  STRB            R6, [R0,#0xB]
769C8:  ADD             R1, PC; "sensitivity"
769CA:  STR             R0, [SP,#0x2C8+var_164]
769CC:  VLDR            D16, [R1]
769D0:  MOV             R1, #0x79746976
769D8:  VST1.8          {D16}, [R0]
769DC:  STR.W           R1, [R0,#7]
769E0:  MOVS            R1, #0xB
769E2:  STR             R1, [SP,#0x2C8+var_168]
769E4:  MOVS            R1, #0x11
769E6:  STR             R1, [SP,#0x2C8+var_16C]
769E8:  MOVS            R0, #0
769EA:  ADD             R1, SP, #0x2C8+var_160; int
769EC:  MOVT            R0, #0x4049
769F0:  ADD             R2, SP, #0x2C8+var_16C; int
769F2:  STRD.W          R6, R0, [SP,#0x2C8+var_2C8]; double
769F6:  ADD             R0, SP, #0x2C8+var_148; int
769F8:  BL              sub_771D8
769FC:  B               loc_76A04
769FE:  ALIGN 0x10
76A00:  DCD aSensitivity - 0x769CC
76A04:  VMOV            D16, R0, R1
76A08:  LDRB.W          R0, [SP,#0x2C8+var_16C]
76A0C:  VCVT.F32.F64    S0, D16
76A10:  LSLS            R0, R0, #0x1F
76A12:  VSTR            S0, [R5]
76A16:  ITT NE
76A18:  LDRNE           R0, [SP,#0x2C8+var_164]; void *
76A1A:  BLXNE           j__ZdlPv; operator delete(void *)
76A1E:  LDRB.W          R0, [SP,#0x2C8+var_160]
76A22:  LSLS            R0, R0, #0x1F
76A24:  ITT NE
76A26:  LDRNE           R0, [SP,#0x2C8+var_158]; void *
76A28:  BLXNE           j__ZdlPv; operator delete(void *)
76A2C:  MOVW            R0, #0x6975
76A30:  MOVS            R5, #0
76A32:  STRH.W          R0, [SP,#0x2C8+var_177]
76A36:  MOVS            R0, #4
76A38:  STRB.W          R5, [SP,#0x2C8+var_175]
76A3C:  STRB.W          R0, [SP,#0x2C8+var_178]
76A40:  MOVS            R0, #0x10; unsigned int
76A42:  BLX             j__Znwj; operator new(uint)
76A46:  LDR             R1, =(aDrawDistance - 0x76A4E); "draw_distance" ...
76A48:  STRB            R5, [R0,#0xD]
76A4A:  ADD             R1, PC; "draw_distance"
76A4C:  STR             R0, [SP,#0x2C8+var_17C]
76A4E:  VLDR            D16, [R1]
76A52:  ADDS            R1, #5
76A54:  VLD1.8          {D17}, [R1]
76A58:  ADDS            R1, R0, #5
76A5A:  VST1.8          {D16}, [R0]
76A5E:  VST1.8          {D17}, [R1]
76A62:  MOVS            R1, #0xD
76A64:  STR             R1, [SP,#0x2C8+var_180]
76A66:  MOVS            R1, #0x11
76A68:  STR             R1, [SP,#0x2C8+var_184]
76A6A:  MOVS            R0, #0
76A6C:  ADD             R1, SP, #0x2C8+var_178; int
76A6E:  MOVT            R0, #0x4089
76A72:  ADD             R2, SP, #0x2C8+var_184; int
76A74:  STRD.W          R5, R0, [SP,#0x2C8+var_2C8]; double
76A78:  ADD             R0, SP, #0x2C8+var_148; int
76A7A:  BL              sub_771D8
76A7E:  B               loc_76A84
76A80:  DCD aDrawDistance - 0x76A4E
76A84:  VMOV            D16, R0, R1
76A88:  LDRB.W          R0, [SP,#0x2C8+var_184]
76A8C:  VCVT.F32.F64    S0, D16
76A90:  LSLS            R0, R0, #0x1F
76A92:  VSTR            S0, [R4]
76A96:  ITT NE
76A98:  LDRNE           R0, [SP,#0x2C8+var_17C]; void *
76A9A:  BLXNE           j__ZdlPv; operator delete(void *)
76A9E:  LDRB.W          R0, [SP,#0x2C8+var_178]
76AA2:  LSLS            R0, R0, #0x1F
76AA4:  ITT NE
76AA6:  LDRNE           R0, [SP,#0x2C8+var_170]; void *
76AA8:  BLXNE           j__ZdlPv; operator delete(void *)
76AAC:  MOVW            R4, #0x6F76
76AB0:  MOVW            R0, #0x6563
76AB4:  MOVW            R1, #0x6975
76AB8:  MOVT            R4, #0x6369
76ABC:  STRH.W          R1, [SP,#0x2C8+var_18F]
76AC0:  MOVS            R1, #4
76AC2:  MOVT            R0, #0x785F
76AC6:  STR.W           R4, [SP,#0x2C8+var_19B]
76ACA:  STR             R0, [SP,#0x2C8+var_19B+3]
76ACC:  MOVS            R0, #0
76ACE:  STRB.W          R1, [SP,#0x2C8+var_190]
76AD2:  MOVS            R1, #0xE
76AD4:  STRB.W          R0, [SP,#0x2C8+var_18D]
76AD8:  STRB.W          R1, [SP,#0x2C8+var_19C]
76ADC:  STRB.W          R0, [SP,#0x2C8+var_194]
76AE0:  ADD             R0, SP, #0x2C8+var_148
76AE2:  ADD             R1, SP, #0x2C8+var_190
76AE4:  ADD             R2, SP, #0x2C8+var_19C
76AE6:  MOVW            R3, #0x14B
76AEA:  BL              sub_772CC
76AEE:  LDRB.W          R1, [SP,#0x2C8+var_19C]
76AF2:  STR.W           R0, [R10]
76AF6:  LSLS            R0, R1, #0x1F
76AF8:  ITT NE
76AFA:  LDRNE           R0, [SP,#0x2C8+var_194]; void *
76AFC:  BLXNE           j__ZdlPv; operator delete(void *)
76B00:  LDRB.W          R0, [SP,#0x2C8+var_190]
76B04:  LSLS            R0, R0, #0x1F
76B06:  ITT NE
76B08:  LDRNE           R0, [SP,#0x2C8+var_188]; void *
76B0A:  BLXNE           j__ZdlPv; operator delete(void *)
76B0E:  MOVW            R0, #0x6563
76B12:  MOVW            R1, #0x6975
76B16:  STRH.W          R1, [SP,#0x2C8+var_1A7]
76B1A:  MOVS            R1, #4
76B1C:  MOVT            R0, #0x795F
76B20:  STR.W           R4, [SP,#0x2C8+var_1B3]
76B24:  STR             R0, [SP,#0x2C8+var_1B3+3]
76B26:  MOVS            R0, #0
76B28:  STRB.W          R1, [SP,#0x2C8+var_1A8]
76B2C:  MOVS            R1, #0xE
76B2E:  STRB.W          R0, [SP,#0x2C8+var_1A5]
76B32:  STRB.W          R1, [SP,#0x2C8+var_1B4]
76B36:  STRB.W          R0, [SP,#0x2C8+var_1AC]
76B3A:  ADD             R0, SP, #0x2C8+var_148
76B3C:  ADD             R1, SP, #0x2C8+var_1A8
76B3E:  ADD             R2, SP, #0x2C8+var_1B4
76B40:  MOV             R3, #0xFFFFFFF2
76B44:  BL              sub_772CC
76B48:  LDRB.W          R1, [SP,#0x2C8+var_1B4]
76B4C:  STR.W           R0, [R9]
76B50:  LSLS            R0, R1, #0x1F
76B52:  ITT NE
76B54:  LDRNE           R0, [SP,#0x2C8+var_1AC]; void *
76B56:  BLXNE           j__ZdlPv; operator delete(void *)
76B5A:  LDRB.W          R0, [SP,#0x2C8+var_1A8]
76B5E:  LSLS            R0, R0, #0x1F
76B60:  ITT NE
76B62:  LDRNE           R0, [SP,#0x2C8+var_1A0]; void *
76B64:  BLXNE           j__ZdlPv; operator delete(void *)
76B68:  MOVW            R0, #0x6975
76B6C:  MOVS            R5, #0
76B6E:  STRH.W          R0, [SP,#0x2C8+var_1BF]
76B72:  MOVS            R0, #4
76B74:  STRB.W          R5, [SP,#0x2C8+var_1BD]
76B78:  STRB.W          R0, [SP,#0x2C8+var_1C0]
76B7C:  MOVS            R0, #0x10; unsigned int
76B7E:  BLX             j__Znwj; operator new(uint)
76B82:  LDR             R1, =(aSpeakerList - 0x76B8A); "speaker_list" ...
76B84:  STRB            R5, [R0,#0xC]
76B86:  ADD             R1, PC; "speaker_list"
76B88:  STR             R0, [SP,#0x2C8+var_1C4]
76B8A:  VLDR            D16, [R1]
76B8E:  MOV             R1, #0x7473696C
76B96:  STR             R1, [R0,#8]
76B98:  MOVS            R1, #0xC
76B9A:  STR             R1, [SP,#0x2C8+var_1C8]
76B9C:  MOVS            R1, #0x11
76B9E:  VST1.8          {D16}, [R0]
76BA2:  STR             R1, [SP,#0x2C8+var_1CC]
76BA4:  ADD             R0, SP, #0x2C8+var_148
76BA6:  ADD             R1, SP, #0x2C8+var_1C0
76BA8:  ADD             R2, SP, #0x2C8+var_1CC
76BAA:  MOVS            R3, #1
76BAC:  BL              sub_772CC
76BB0:  LDRB.W          R1, [SP,#0x2C8+var_1CC]
76BB4:  STR.W           R0, [R11]
76BB8:  LSLS            R0, R1, #0x1F
76BBA:  ITT NE
76BBC:  LDRNE           R0, [SP,#0x2C8+var_1C4]; void *
76BBE:  BLXNE           j__ZdlPv; operator delete(void *)
76BC2:  LDRB.W          R0, [SP,#0x2C8+var_1C0]
76BC6:  LSLS            R0, R0, #0x1F
76BC8:  ITT NE
76BCA:  LDRNE           R0, [SP,#0x2C8+var_1B8]; void *
76BCC:  BLXNE           j__ZdlPv; operator delete(void *)
76BD0:  MOVW            R0, #0x6563
76BD4:  MOVW            R1, #0x6975
76BD8:  STRH.W          R1, [SP,#0x2C8+var_1D7]
76BDC:  MOVS            R1, #4
76BDE:  MOVT            R0, #0x775F
76BE2:  STR.W           R4, [SP,#0x2C8+var_1E3]
76BE6:  STR             R0, [SP,#0x2C8+var_1E3+3]
76BE8:  MOVS            R0, #0
76BEA:  STRB.W          R1, [SP,#0x2C8+var_1D8]
76BEE:  MOVS            R1, #0xE
76BF0:  STRB.W          R0, [SP,#0x2C8+var_1D5]
76BF4:  STRB.W          R1, [SP,#0x2C8+var_1E4]
76BF8:  STRB.W          R0, [SP,#0x2C8+var_1DC]
76BFC:  ADD             R0, SP, #0x2C8+var_148
76BFE:  ADD             R1, SP, #0x2C8+var_1D8
76C00:  ADD             R2, SP, #0x2C8+var_1E4
76C02:  MOVS            R3, #0x50 ; 'P'
76C04:  BL              sub_772CC
76C08:  LDRB.W          R1, [SP,#0x2C8+var_1E4]
76C0C:  STR.W           R0, [R8]
76C10:  LSLS            R0, R1, #0x1F
76C12:  ITT NE
76C14:  LDRNE           R0, [SP,#0x2C8+var_1DC]; void *
76C16:  BLXNE           j__ZdlPv; operator delete(void *)
76C1A:  LDRB.W          R0, [SP,#0x2C8+var_1D8]
76C1E:  LSLS            R0, R0, #0x1F
76C20:  ITT NE
76C22:  LDRNE           R0, [SP,#0x2C8+var_1D0]; void *
76C24:  BLXNE           j__ZdlPv; operator delete(void *)
76C28:  MOVW            R0, #0x6563
76C2C:  MOVW            R1, #0x6975
76C30:  STRH.W          R1, [SP,#0x2C8+var_1EF]
76C34:  MOVS            R1, #4
76C36:  MOVT            R0, #0x685F
76C3A:  STR.W           R4, [SP,#0x2C8+var_1FB]
76C3E:  STR             R0, [SP,#0x2C8+var_1FB+3]
76C40:  MOVS            R0, #0
76C42:  STRB.W          R1, [SP,#0x2C8+var_1F0]
76C46:  MOVS            R1, #0xE
76C48:  STRB.W          R0, [SP,#0x2C8+var_1ED]
76C4C:  STRB.W          R1, [SP,#0x2C8+var_1FC]
76C50:  STRB.W          R0, [SP,#0x2C8+var_1F4]
76C54:  ADD             R0, SP, #0x2C8+var_148
76C56:  ADD             R1, SP, #0x2C8+var_1F0
76C58:  ADD             R2, SP, #0x2C8+var_1FC
76C5A:  MOVS            R3, #0x50 ; 'P'
76C5C:  BL              sub_772CC
76C60:  LDR             R2, [SP,#0x2C8+var_2A8]
76C62:  LDRB.W          R1, [SP,#0x2C8+var_1FC]
76C66:  STR             R0, [R2]
76C68:  LSLS            R0, R1, #0x1F
76C6A:  ITT NE
76C6C:  LDRNE           R0, [SP,#0x2C8+var_1F4]; void *
76C6E:  BLXNE           j__ZdlPv; operator delete(void *)
76C72:  LDRB.W          R0, [SP,#0x2C8+var_1F0]
76C76:  LSLS            R0, R0, #0x1F
76C78:  ITT NE
76C7A:  LDRNE           R0, [SP,#0x2C8+var_1E8]; void *
76C7C:  BLXNE           j__ZdlPv; operator delete(void *)
76C80:  MOVW            R0, #0x656D
76C84:  MOVW            R1, #0x6975
76C88:  MOVT            R0, #0x756E
76C8C:  STRH.W          R1, [SP,#0x2C8+var_207]
76C90:  STR.W           R0, [SP,#0x2C8+var_20F]
76C94:  MOV             R0, #0x5F77656E
76C9C:  MOVS            R1, #4
76C9E:  STR.W           R0, [SP,#0x2C8+var_213]
76CA2:  MOVS            R0, #0
76CA4:  STRB.W          R0, [SP,#0x2C8+var_205]
76CA8:  STRB.W          R0, [SP,#0x2C8+var_20B]
76CAC:  MOVS            R0, #0x10
76CAE:  STRB.W          R1, [SP,#0x2C8+var_208]
76CB2:  STRB.W          R0, [SP,#0x2C8+var_214]
76CB6:  ADD             R0, SP, #0x2C8+var_148
76CB8:  ADD             R1, SP, #0x2C8+var_208
76CBA:  ADD             R2, SP, #0x2C8+var_214
76CBC:  MOVS            R3, #1
76CBE:  BL              sub_772CC
76CC2:  LDR             R2, [SP,#0x2C8+var_2AC]
76CC4:  LDRB.W          R1, [SP,#0x2C8+var_214]
76CC8:  STR             R0, [R2]
76CCA:  LSLS            R0, R1, #0x1F
76CCC:  ITT NE
76CCE:  LDRNE           R0, [SP,#0x2C8+var_20F+3]; void *
76CD0:  BLXNE           j__ZdlPv; operator delete(void *)
76CD4:  LDRB.W          R0, [SP,#0x2C8+var_208]
76CD8:  LSLS            R0, R0, #0x1F
76CDA:  ITT NE
76CDC:  LDRNE           R0, [SP,#0x2C8+var_200]; void *
76CDE:  BLXNE           j__ZdlPv; operator delete(void *)
76CE2:  LDR             R0, =(aButtoncol - 0x76CF2); "buttoncol" ...
76CE4:  MOVW            R1, #0x6975
76CE8:  ADD             R3, SP, #0x2C8+var_238
76CEA:  STRH.W          R1, [SP,#0x2C8+var_22B]
76CEE:  ADD             R0, PC; "buttoncol"
76CF0:  MOVS            R1, #4
76CF2:  STRB.W          R1, [SP,#0x2C8+var_22C]
76CF6:  MOVS            R1, #0x12
76CF8:  VLDR            D16, [R0]
76CFC:  ADDS            R0, R3, #1
76CFE:  STRB.W          R1, [SP,#0x2C8+var_238]
76D02:  MOVS            R1, #0x6C ; 'l'
76D04:  VST1.8          {D16}, [R0]
76D08:  MOV             R0, #0x30303843
76D10:  STRH.W          R1, [SP,#0x2C8+var_22F]
76D14:  MOVS            R1, #0xC
76D16:  STR.W           R0, [SP,#0x2C8+var_243]
76D1A:  MOVS            R0, #0
76D1C:  STRB.W          R1, [SP,#0x2C8+var_244]
76D20:  MOVW            R1, #0x3831
76D24:  STRB.W          R0, [SP,#0x2C8+var_229]
76D28:  STRH.W          R1, [SP,#0x2C8+var_23F]
76D2C:  STRB.W          R0, [SP,#0x2C8+var_23D]
76D30:  ADD             R0, SP, #0x2C8+var_244
76D32:  STR             R0, [SP,#0x2C8+var_2C8]
76D34:  ADD             R0, SP, #0x2C8+var_220
76D36:  ADD             R1, SP, #0x2C8+var_148
76D38:  ADD             R2, SP, #0x2C8+var_22C
76D3A:  BL              sub_773B8
76D3E:  LDR             R4, =(unk_1A452C - 0x76D44)
76D40:  ADD             R4, PC; unk_1A452C
76D42:  ADD             R0, SP, #0x2C8+var_220; int
76D44:  MOV             R1, R4; dest
76D46:  MOVS            R2, #6
76D48:  MOVS            R3, #0
76D4A:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcjj; std::string::copy(char *,uint,uint)
76D4E:  MOV             R5, R0
76D50:  LDRB.W          R0, [SP,#0x2C8+var_220]
76D54:  LSLS            R0, R0, #0x1F
76D56:  ITT NE
76D58:  LDRNE           R0, [SP,#0x2C8+var_218]; void *
76D5A:  BLXNE           j__ZdlPv; operator delete(void *)
76D5E:  LDRB.W          R0, [SP,#0x2C8+var_244]
76D62:  LSLS            R0, R0, #0x1F
76D64:  ITT NE
76D66:  LDRNE           R0, [SP,#0x2C8+var_23C]; void *
76D68:  BLXNE           j__ZdlPv; operator delete(void *)
76D6C:  LDRB.W          R0, [SP,#0x2C8+var_238]
76D70:  LSLS            R0, R0, #0x1F
76D72:  ITT NE
76D74:  LDRNE           R0, [SP,#0x98]; void *
76D76:  BLXNE           j__ZdlPv; operator delete(void *)
76D7A:  LDRB.W          R0, [SP,#0x2C8+var_22C]
76D7E:  LSLS            R0, R0, #0x1F
76D80:  ITT NE
76D82:  LDRNE           R0, [SP,#0x2C8+var_224]; void *
76D84:  BLXNE           j__ZdlPv; operator delete(void *)
76D88:  MOVW            R0, #0x6975
76D8C:  MOVS            R6, #0
76D8E:  STRH.W          R0, [SP,#0x2C8+var_24F]
76D92:  MOVS            R0, #4
76D94:  STRB            R6, [R4,R5]
76D96:  STRB.W          R6, [SP,#0x2C8+var_24D]
76D9A:  STRB.W          R0, [SP,#0x2C8+var_250]
76D9E:  MOVS            R0, #0x10; unsigned int
76DA0:  BLX             j__Znwj; operator new(uint)
76DA4:  LDR             R1, =(aPassengerBtnX - 0x76DAC); "passenger_btn_x" ...
76DA6:  STRB            R6, [R0,#0xF]
76DA8:  ADD             R1, PC; "passenger_btn_x"
76DAA:  STR             R0, [SP,#0x2C8+var_254]
76DAC:  VLDR            D16, [R1]
76DB0:  ADDS            R1, #7
76DB2:  VLD1.8          {D17}, [R1]
76DB6:  ADDS            R1, R0, #7
76DB8:  VST1.8          {D16}, [R0]
76DBC:  VST1.8          {D17}, [R1]
76DC0:  MOVS            R1, #0xF
76DC2:  STR             R1, [SP,#0x2C8+var_258]
76DC4:  MOVS            R1, #0x11
76DC6:  STR             R1, [SP,#0x2C8+var_25C]
76DC8:  ADD             R0, SP, #0x2C8+var_148
76DCA:  ADD             R1, SP, #0x2C8+var_250
76DCC:  ADD             R2, SP, #0x2C8+var_25C
76DCE:  MOV.W           R3, #0x7D0
76DD2:  BL              sub_772CC
76DD6:  LDR             R2, [SP,#0x2C8+var_2B0]
76DD8:  LDRB.W          R1, [SP,#0x2C8+var_25C]
76DDC:  LDR.W           R8, [SP,#0x2C8+var_2BC]
76DE0:  STR             R0, [R2]
76DE2:  LSLS            R0, R1, #0x1F
76DE4:  ITT NE
76DE6:  LDRNE           R0, [SP,#0x2C8+var_254]; void *
76DE8:  BLXNE           j__ZdlPv; operator delete(void *)
76DEC:  LDRB.W          R0, [SP,#0x2C8+var_250]
76DF0:  LSLS            R0, R0, #0x1F
76DF2:  ITT NE
76DF4:  LDRNE           R0, [SP,#0x2C8+var_248]; void *
76DF6:  BLXNE           j__ZdlPv; operator delete(void *)
76DFA:  MOVW            R0, #0x6975
76DFE:  MOVS            R4, #0
76E00:  STRH.W          R0, [SP,#0x2C8+var_267]
76E04:  MOVS            R0, #4
76E06:  STRB.W          R4, [SP,#0x2C8+var_265]
76E0A:  STRB.W          R0, [SP,#0x2C8+var_268]
76E0E:  MOVS            R0, #0x10; unsigned int
76E10:  BLX             j__Znwj; operator new(uint)
76E14:  LDR             R1, =(aPassengerBtnY - 0x76E1C); "passenger_btn_y" ...
76E16:  STRB            R4, [R0,#0xF]
76E18:  ADD             R1, PC; "passenger_btn_y"
76E1A:  STR             R0, [SP,#0x2C8+var_26C]
76E1C:  VLDR            D16, [R1]
76E20:  ADDS            R1, #7
76E22:  VLD1.8          {D17}, [R1]
76E26:  ADDS            R1, R0, #7
76E28:  VST1.8          {D16}, [R0]
76E2C:  VST1.8          {D17}, [R1]
76E30:  MOVS            R1, #0xF
76E32:  STR             R1, [SP,#0x2C8+var_270]
76E34:  MOVS            R1, #0x11
76E36:  STR             R1, [SP,#0x2C8+var_274]
76E38:  ADD             R0, SP, #0x2C8+var_148
76E3A:  ADD             R1, SP, #0x2C8+var_268
76E3C:  ADD             R2, SP, #0x2C8+var_274
76E3E:  MOVW            R3, #0x159
76E42:  BL              sub_772CC
76E46:  LDR             R2, [SP,#0x2C8+var_2B4]
76E48:  LDRB.W          R1, [SP,#0x2C8+var_274]
76E4C:  STR             R0, [R2]
76E4E:  LSLS            R0, R1, #0x1F
76E50:  ITT NE
76E52:  LDRNE           R0, [SP,#0x2C8+var_26C]; void *
76E54:  BLXNE           j__ZdlPv; operator delete(void *)
76E58:  LDRB.W          R0, [SP,#0x2C8+var_268]
76E5C:  LSLS            R0, R0, #0x1F
76E5E:  ITT NE
76E60:  LDRNE           R0, [SP,#0x2C8+var_260]; void *
76E62:  BLXNE           j__ZdlPv; operator delete(void *)
76E66:  MOVW            R0, #0x6F66
76E6A:  MOVW            R1, #0x6975
76E6E:  MOVW            R4, #0x6973
76E72:  MOVT            R0, #0x746E
76E76:  STRH.W          R1, [SP,#0x2C8+var_27F]
76E7A:  MOVS            R1, #4
76E7C:  MOVT            R4, #0x657A
76E80:  STR.W           R0, [SP,#0x2C8+var_28B]
76E84:  MOVS            R0, #0
76E86:  STRB.W          R1, [SP,#0x2C8+var_280]
76E8A:  MOVS            R1, #0x10
76E8C:  STR.W           R4, [SP,#0x2C8+var_287]
76E90:  STRB.W          R0, [SP,#0x2C8+var_27D]
76E94:  STRB.W          R0, [SP,#0x2C8+var_283]
76E98:  STRB.W          R1, [SP,#0x2C8+var_28C]
76E9C:  MOVS            R1, #0
76E9E:  ADD             R2, SP, #0x2C8+var_28C; int
76EA0:  MOVT            R1, #0x3FF0
76EA4:  STRD.W          R0, R1, [SP,#0x2C8+var_2C8]; double
76EA8:  ADD             R0, SP, #0x2C8+var_148; int
76EAA:  ADD             R1, SP, #0x2C8+var_280; int
76EAC:  BL              sub_771D8
76EB0:  VMOV            D16, R0, R1
76EB4:  LDRB.W          R0, [SP,#0x2C8+var_28C]
76EB8:  LDR             R1, [SP,#0x2C8+var_2B8]
76EBA:  VCVT.F32.F64    S0, D16
76EBE:  LSLS            R0, R0, #0x1F
76EC0:  VSTR            S0, [R1]
76EC4:  ITT NE
76EC6:  LDRNE           R0, [SP,#0x2C8+var_287+3]; void *
76EC8:  BLXNE           j__ZdlPv; operator delete(void *)
76ECC:  LDRB.W          R0, [SP,#0x2C8+var_280]
76ED0:  LSLS            R0, R0, #0x1F
76ED2:  ITT NE
76ED4:  LDRNE           R0, [SP,#0x2C8+var_278]; void *
76ED6:  BLXNE           j__ZdlPv; operator delete(void *)
76EDA:  MOVW            R0, #0x6170
76EDE:  MOVW            R1, #0x6975
76EE2:  MOVT            R0, #0x6567
76EE6:  STRH.W          R1, [SP,#0x2C8+var_297]
76EEA:  STR.W           R0, [SP,#0x2C8+var_2A3]
76EEE:  MOVS            R0, #0
76EF0:  MOVS            R1, #4
76EF2:  STRB.W          R0, [SP,#0x2C8+var_295]
76EF6:  STRB.W          R0, [SP,#0x2C8+var_29B]
76EFA:  MOVS            R0, #0x10
76EFC:  STR.W           R4, [SP,#0x2C8+var_29F]
76F00:  STRB.W          R1, [SP,#0x2C8+var_298]
76F04:  STRB.W          R0, [SP,#0x2C8+var_2A4]
76F08:  ADD             R0, SP, #0x2C8+var_148
76F0A:  ADD             R1, SP, #0x2C8+var_298
76F0C:  ADD             R2, SP, #0x2C8+var_2A4
76F0E:  MOVS            R3, #5
76F10:  BL              sub_772CC
76F14:  LDRB.W          R1, [SP,#0x2C8+var_2A4]
76F18:  STR.W           R0, [R8]
76F1C:  LSLS            R0, R1, #0x1F
76F1E:  ITT NE
76F20:  LDRNE           R0, [SP,#0x2C8+var_29F+3]; void *
76F22:  BLXNE           j__ZdlPv; operator delete(void *)
76F26:  LDRB.W          R0, [SP,#0x2C8+var_298]
76F2A:  LSLS            R0, R0, #0x1F
76F2C:  ITT NE
76F2E:  LDRNE           R0, [SP,#0x2C8+var_290]; void *
76F30:  BLXNE           j__ZdlPv; operator delete(void *)
76F34:  ADD             R0, SP, #0x2C8+var_148
76F36:  BL              sub_774A4
76F3A:  LDR             R0, [SP,#0x2C8+var_20]
76F3C:  LDR             R1, =(__stack_chk_guard_ptr - 0x76F42)
76F3E:  ADD             R1, PC; __stack_chk_guard_ptr
76F40:  LDR             R1, [R1]; __stack_chk_guard
76F42:  LDR             R1, [R1]
76F44:  CMP             R1, R0
76F46:  ITTTT EQ
76F48:  MOVEQ           R0, #1
76F4A:  ADDEQ.W         SP, SP, #0x2AC
76F4E:  POPEQ.W         {R8-R11}
76F52:  POPEQ           {R4-R7,PC}
76F54:  BLX             __stack_chk_fail
76F58:  LDR             R1, =(aSampOrig - 0x76F62); "SAMP_ORIG" ...
76F5A:  MOVS            R0, #6; prio
76F5C:  LDR             R2, =(aFailedToInitia - 0x76F64); "Failed to initialize settings. (game st"... ...
76F5E:  ADD             R1, PC; "SAMP_ORIG"
76F60:  ADD             R2, PC; "Failed to initialize settings. (game st"...
76F62:  BLX             __android_log_print
76F66:  BLX             j__ZSt9terminatev; std::terminate(void)
76F6A:  ADD             R0, SP, #0x2C8+var_154
76F6C:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
