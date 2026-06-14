; =========================================================
; Game Engine Function: sub_14289C
; Address            : 0x14289C - 0x142B06
; =========================================================

14289C:  PUSH            {R4-R7,LR}
14289E:  ADD             R7, SP, #0xC
1428A0:  PUSH.W          {R11}
1428A4:  SUB             SP, SP, #0x178
1428A6:  MOV             R5, R1
1428A8:  LDR             R2, [R1,#0xC]; size
1428AA:  LDR             R1, [R1,#0x14]; src
1428AC:  MOV             R4, R0
1428AE:  ADD             R0, SP, #0x188+var_124; int
1428B0:  MOVS            R3, #0
1428B2:  MOVS            R6, #0
1428B4:  BL              sub_17D4F2
1428B8:  LDR.W           R0, [R4,#0x218]
1428BC:  STR             R6, [SP,#0x188+var_128]
1428BE:  CMP             R0, #5
1428C0:  BNE.W           loc_142AF8
1428C4:  VMOV.I32        Q8, #0
1428C8:  ADD             R1, SP, #0x188+src
1428CA:  MOVS            R2, #0xF
1428CC:  LDR             R0, [R5,#0x14]
1428CE:  VST1.64         {D16-D17}, [R1]!
1428D2:  VST1.64         {D16-D17}, [R1]!
1428D6:  VST1.64         {D16-D17}, [R1],R2
1428DA:  VST1.8          {D16-D17}, [R1]
1428DE:  LDRB            R0, [R0]
1428E0:  CMP             R0, #0x28 ; '('
1428E2:  BNE             loc_1428FE
1428E4:  ADD             R0, SP, #0x188+var_124; int
1428E6:  ADD.W           R1, SP, #0x188+var_129; int
1428EA:  MOVS            R2, #8
1428EC:  MOVS            R3, #1
1428EE:  BL              sub_17D786
1428F2:  ADD             R0, SP, #0x188+var_124; int
1428F4:  ADD             R1, SP, #0x188+var_128; int
1428F6:  MOVS            R2, #0x20 ; ' '
1428F8:  MOVS            R3, #1
1428FA:  BL              sub_17D786
1428FE:  ADD             R0, SP, #0x188+var_124; int
142900:  ADD.W           R1, SP, #0x188+var_129; int
142904:  MOVS            R2, #8
142906:  MOVS            R3, #1
142908:  BL              sub_17D786
14290C:  ADD             R0, SP, #0x188+var_124; int
14290E:  ADD.W           R1, SP, #0x188+var_16A; int
142912:  MOVS            R2, #0x10
142914:  MOVS            R3, #1
142916:  BL              sub_17D786
14291A:  ADD             R5, SP, #0x188+src
14291C:  ADD             R0, SP, #0x188+var_124; int
14291E:  MOVS            R2, #0x10
142920:  MOVS            R3, #1
142922:  MOV             R1, R5; int
142924:  BL              sub_17D786
142928:  ADDS            R1, R5, #2; int
14292A:  ADD             R0, SP, #0x188+var_124; int
14292C:  MOVS            R2, #0x10
14292E:  MOVS            R3, #1
142930:  BL              sub_17D786
142934:  ADDS            R1, R5, #4; int
142936:  ADD             R0, SP, #0x188+var_124; int
142938:  MOVS            R2, #0x10
14293A:  MOVS            R3, #1
14293C:  BL              sub_17D786
142940:  ADDS            R1, R5, #6; int
142942:  ADD             R0, SP, #0x188+var_124; int
142944:  MOVS            R2, #0x10
142946:  MOVS            R3, #1
142948:  BL              sub_17D786
14294C:  ADD             R0, SP, #0x188+var_17C
14294E:  STR             R0, [SP,#0x188+var_188]; int
142950:  ADD             R0, SP, #0x188+var_124; int
142952:  ADD             R1, SP, #0x188+var_170; int
142954:  ADD             R2, SP, #0x188+var_174; int
142956:  ADD             R3, SP, #0x188+var_178; int
142958:  BL              sub_143758
14295C:  ADD             R3, SP, #0x188+var_17C
14295E:  LDM             R3, {R0-R3}
142960:  STRD.W          R3, R2, [SP,#0x188+var_160]
142964:  STRD.W          R1, R0, [SP,#0x188+var_158]
142968:  ADD.W           R1, R5, #0x18; dest
14296C:  ADD             R0, SP, #0x188+var_124; int
14296E:  MOVS            R2, #0xC
142970:  BL              sub_17D744
142974:  ADD.W           R1, R5, #0x24 ; '$'
142978:  ADD.W           R2, R5, #0x28 ; '('
14297C:  ADD.W           R3, R5, #0x2C ; ','
142980:  ADD             R0, SP, #0x188+var_124
142982:  BL              sub_1438F0
142986:  ADD             R0, SP, #0x188+var_124; int
142988:  ADD.W           R1, SP, #0x188+var_17E; int
14298C:  MOVS            R2, #0x10
14298E:  MOVS            R3, #1
142990:  BL              sub_17D786
142994:  LDRH.W          R0, [SP,#0x188+var_17E]
142998:  VLDR            S2, =65536.0
14299C:  CMP             R0, #0xF9
14299E:  VMOV            S0, R0
1429A2:  VCVT.F32.U32    S0, S0
1429A6:  VADD.F32        S2, S0, S2
1429AA:  IT HI
1429AC:  VMOVHI.F32      S2, S0
1429B0:  VLDR            S0, =250.0
1429B4:  VCMP.F32        S2, S0
1429B8:  VMRS            APSR_nzcv, FPSCR
1429BC:  IT MI
1429BE:  VMOVMI.F32      S2, S0
1429C2:  VSTR            S2, [SP,#0x188+var_138]
1429C6:  ADD             R0, SP, #0x188+var_124; int
1429C8:  ADD.W           R1, SP, #0x188+var_17F; int
1429CC:  MOVS            R2, #8
1429CE:  MOVS            R3, #1
1429D0:  BL              sub_17D786
1429D4:  LDRB.W          R0, [SP,#0x188+var_17F]
1429D8:  AND.W           R1, R0, #0xF
1429DC:  CMP             R1, #0xF
1429DE:  RSB.W           R2, R1, R1,LSL#3
1429E2:  MOV.W           R1, R0,LSR#4
1429E6:  IT EQ
1429E8:  MOVEQ           R2, #0x64 ; 'd'
1429EA:  STRB.W          R2, [SP,#0x188+var_133]
1429EE:  LSLS            R2, R1, #3
1429F0:  CMP             R0, #0x10
1429F2:  SUB.W           R2, R2, R0,LSR#4
1429F6:  IT CC
1429F8:  MOVCC           R2, #0
1429FA:  CMP             R1, #0xF
1429FC:  IT EQ
1429FE:  MOVEQ           R2, #0x64 ; 'd'
142A00:  STRB.W          R2, [SP,#0x188+var_134]
142A04:  ADD             R0, SP, #0x188+var_124; int
142A06:  ADD             R1, SP, #0x188+var_180; int
142A08:  MOVS            R2, #8
142A0A:  MOVS            R3, #1
142A0C:  BL              sub_17D786
142A10:  LDRB.W          R2, [SP,#0x188+var_180]
142A14:  LDRB.W          R3, [SP,#0x188+var_132]
142A18:  LDR             R0, [SP,#0x188+var_124]
142A1A:  AND.W           R2, R2, #0x3F ; '?'
142A1E:  LDR             R1, [SP,#0x188+var_11C]
142A20:  AND.W           R3, R3, #0xC0
142A24:  ADD             R2, R3
142A26:  STRB.W          R2, [SP,#0x188+var_132]
142A2A:  CMP             R1, R0
142A2C:  BGE             loc_142A48
142A2E:  LDR             R2, [SP,#0x188+var_118]
142A30:  ASRS            R3, R1, #3
142A32:  LDRB            R3, [R2,R3]
142A34:  ADDS            R2, R1, #1
142A36:  AND.W           R1, R1, #7
142A3A:  STR             R2, [SP,#0x188+var_11C]
142A3C:  LSL.W           R1, R3, R1
142A40:  LSLS            R1, R1, #0x18
142A42:  BMI             loc_142A4A
142A44:  MOVS            R6, #0
142A46:  B               loc_142A50
142A48:  MOV             R2, R1
142A4A:  MOVS            R6, #1
142A4C:  STRB.W          R6, [SP,#0x188+var_131]
142A50:  CMP             R2, R0
142A52:  BGE             loc_142A6A
142A54:  LDR             R1, [SP,#0x188+var_118]
142A56:  ASRS            R3, R2, #3
142A58:  LDRB            R1, [R1,R3]
142A5A:  ADDS            R3, R2, #1
142A5C:  AND.W           R2, R2, #7
142A60:  STR             R3, [SP,#0x188+var_11C]
142A62:  LSLS            R1, R2
142A64:  UXTB            R1, R1
142A66:  LSRS            R6, R1, #7
142A68:  B               loc_142A6C
142A6A:  MOV             R3, R2
142A6C:  CBZ             R6, loc_142A74
142A6E:  MOVS            R1, #1
142A70:  STRB.W          R1, [SP,#0x188+var_130]
142A74:  CMP             R3, R0
142A76:  BGE             loc_142A8E
142A78:  LDR             R1, [SP,#0x188+var_118]
142A7A:  ASRS            R2, R3, #3
142A7C:  LDRB            R2, [R1,R2]
142A7E:  ADDS            R1, R3, #1
142A80:  AND.W           R3, R3, #7
142A84:  STR             R1, [SP,#0x188+var_11C]
142A86:  LSLS            R2, R3
142A88:  UXTB            R2, R2
142A8A:  LSRS            R6, R2, #7
142A8C:  B               loc_142A90
142A8E:  MOV             R1, R3
142A90:  CBZ             R6, loc_142AA4
142A92:  ADD.W           R1, R5, #0x3B ; ';'; int
142A96:  ADD             R0, SP, #0x188+var_124; int
142A98:  MOVS            R2, #0x20 ; ' '
142A9A:  MOVS            R3, #1
142A9C:  BL              sub_17D786
142AA0:  LDR             R0, [SP,#0x188+var_124]
142AA2:  LDR             R1, [SP,#0x188+var_11C]
142AA4:  CMP             R1, R0
142AA6:  BGE             loc_142ABC
142AA8:  LDR             R0, [SP,#0x188+var_118]
142AAA:  ASRS            R2, R1, #3
142AAC:  LDRB            R0, [R0,R2]
142AAE:  ADDS            R2, R1, #1
142AB0:  AND.W           R1, R1, #7
142AB4:  STR             R2, [SP,#0x188+var_11C]
142AB6:  LSLS            R0, R1
142AB8:  UXTB            R0, R0
142ABA:  LSRS            R6, R0, #7
142ABC:  CBZ             R6, loc_142ACC
142ABE:  ADD.W           R1, R5, #0x39 ; '9'; int
142AC2:  ADD             R0, SP, #0x188+var_124; int
142AC4:  MOVS            R2, #0x10
142AC6:  MOVS            R3, #1
142AC8:  BL              sub_17D786
142ACC:  LDRH.W          R0, [SP,#0x188+var_16A]
142AD0:  CMP.W           R0, #0x3EC
142AD4:  BHI             loc_142AF8
142AD6:  LDR.W           R1, [R4,#0x3B0]
142ADA:  LDR             R1, [R1]
142ADC:  ADDS            R2, R1, R0
142ADE:  LDRB.W          R2, [R2,#0xFB4]
142AE2:  CBZ             R2, loc_142AF8
142AE4:  ADD.W           R0, R1, R0,LSL#2
142AE8:  LDR             R0, [R0,#4]
142AEA:  CBZ             R0, loc_142AF8
142AEC:  LDR             R0, [R0]; int
142AEE:  CBZ             R0, loc_142AF8
142AF0:  LDR             R2, [SP,#0x188+var_128]
142AF2:  ADD             R1, SP, #0x188+src; src
142AF4:  BL              sub_14A8E8
142AF8:  ADD             R0, SP, #0x188+var_124
142AFA:  BL              sub_17D542
142AFE:  ADD             SP, SP, #0x178
142B00:  POP.W           {R11}
142B04:  POP             {R4-R7,PC}
