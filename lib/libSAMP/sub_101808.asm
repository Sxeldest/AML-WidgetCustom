; =========================================================
; Game Engine Function: sub_101808
; Address            : 0x101808 - 0x10199C
; =========================================================

101808:  PUSH            {R4-R7,LR}
10180A:  ADD             R7, SP, #0xC
10180C:  PUSH.W          {R8-R11}
101810:  SUB             SP, SP, #4
101812:  VPUSH           {D8-D9}
101816:  SUB             SP, SP, #0x58
101818:  MOV             R4, R0
10181A:  ADR             R0, dword_1019A0
10181C:  MOV             R5, R1
10181E:  VLD1.64         {D16-D17}, [R0]
101822:  MOV.W           R1, #0xFFFFFFFF
101826:  MOV             R8, R3
101828:  LDR             R0, [R7,#arg_14]
10182A:  VMOV.I32        Q9, #0
10182E:  LDR             R6, =(_ZTV7CObject - 0x101854); `vtable for'CObject ...
101830:  MOV             R9, R2
101832:  LDR             R3, =(word_25B200 - 0x101866)
101834:  CMP             R0, #0
101836:  STR             R1, [R4,#0xC]
101838:  MOV.W           R1, #1
10183C:  STRB.W          R1, [R4,#0x28]
101840:  IT NE
101842:  MOVNE           R0, #1
101844:  STRB.W          R0, [R4,#0x270]
101848:  ADD.W           R0, R4, #0x310
10184C:  VST1.32         {D16-D17}, [R0]!
101850:  ADD             R6, PC; `vtable for'CObject
101852:  VMOV            S0, R9
101856:  MOV.W           R11, #0
10185A:  VST1.32         {D16-D17}, [R0]
10185E:  ADD.W           R0, R6, #8
101862:  ADD             R3, PC; word_25B200
101864:  VMOV            S16, R8
101868:  STR             R0, [R4]
10186A:  ADD.W           R0, R4, #0x10
10186E:  VST1.32         {D18-D19}, [R0]!
101872:  VCVT.F64.F32    D16, S0
101876:  STR.W           R11, [R0]
10187A:  LDR             R0, [R7,#arg_8]
10187C:  LDRD.W          R2, LR, [R7,#arg_0]
101880:  LDR.W           R12, [R7,#arg_C]
101884:  STRD.W          LR, R0, [SP,#0x88+var_3C]
101888:  MOV             R0, R5
10188A:  STR.W           R11, [R4,#8]
10188E:  VMOV            R6, R10, D16
101892:  STR.W           R11, [R4,#4]
101896:  VMOV            S18, R2
10189A:  STR.W           R11, [R4,#0x24]
10189E:  STRB.W          R11, [R4,#0x271]
1018A2:  STRH            R5, [R3]
1018A4:  STR.W           R12, [SP,#0x88+var_34]
1018A8:  BL              sub_108420
1018AC:  ADD             R1, SP, #0x88+var_40
1018AE:  STR             R1, [SP,#0x88+var_78]
1018B0:  VCVT.F64.F32    D16, S16
1018B4:  LDR             R1, =(unk_B33F6 - 0x1018BE)
1018B6:  CMP             R0, #0
1018B8:  MOV             R2, R6
1018BA:  ADD             R1, PC; unk_B33F6
1018BC:  MOV             R3, R10
1018BE:  MOV             R0, R1
1018C0:  VCVT.F64.F32    D17, S18
1018C4:  VSTMEA          SP, {D16-D17}
1018C8:  IT EQ
1018CA:  MOVWEQ          R5, #0x48C7
1018CE:  MOV             R1, R5
1018D0:  BL              sub_107188
1018D4:  LDR             R0, [SP,#0x88+var_40]
1018D6:  BL              sub_108324
1018DA:  CMP             R0, #0
1018DC:  BEQ             loc_101972
1018DE:  LDR             R1, [SP,#0x88+var_40]
1018E0:  CMP             R1, #0
1018E2:  BEQ             loc_101972
1018E4:  STRD.W          R0, R1, [R4,#4]
1018E8:  ADD.W           R1, R4, #0x274
1018EC:  MOVS            R2, #0
1018EE:  MOV             R0, R4
1018F0:  STRB.W          R2, [R4,#0x2CC]
1018F4:  STR.W           R2, [R4,#0x2C8]
1018F8:  STRB.W          R2, [R4,#0x2C4]
1018FC:  STR.W           R5, [R4,#0x2C0]
101900:  BL              sub_F8910
101904:  LDR.W           R0, [R4,#0x274]
101908:  STR             R0, [SP,#0x88+var_44]
10190A:  LDR.W           R0, [R4,#0x278]
10190E:  STR             R0, [SP,#0x88+var_48]
101910:  LDR.W           R0, [R4,#0x27C]
101914:  STR             R0, [SP,#0x88+var_4C]
101916:  LDR.W           R0, [R4,#0x280]
10191A:  STR             R0, [SP,#0x88+var_50]
10191C:  LDR.W           R0, [R4,#0x29C]
101920:  LDR             R2, [R7,#arg_0]
101922:  LDRD.W          R6, R5, [R4,#0x284]
101926:  STR             R0, [SP,#0x88+var_54]
101928:  LDR.W           R0, [R4,#0x2A0]
10192C:  LDRD.W          R12, LR, [R4,#0x28C]
101930:  LDRD.W          R10, R3, [R4,#0x294]
101934:  LDR.W           R1, [R4,#0x2B0]
101938:  STRD.W          R9, R8, [R4,#0x2A4]
10193C:  STR.W           R2, [R4,#0x2AC]
101940:  STRD.W          R0, R9, [SP,#0x88+var_68]
101944:  LDR             R0, [SP,#0x88+var_50]
101946:  STR             R1, [SP,#0x88+var_58]
101948:  STRD.W          R0, R6, [SP,#0x88+var_88]
10194C:  ADD             R0, SP, #0x88+var_80
10194E:  STRD.W          R8, R2, [SP,#0x88+var_60]
101952:  STRD.W          R10, R3, [SP,#0x88+var_74]
101956:  LDR             R1, [SP,#0x88+var_44]
101958:  LDRD.W          R3, R2, [SP,#0x88+var_4C]
10195C:  STM.W           R0, {R5,R12,LR}
101960:  LDR             R0, [SP,#0x88+var_54]
101962:  STR             R0, [SP,#0x88+var_6C]
101964:  MOV             R0, R4
101966:  BL              sub_F894A
10196A:  ADD             R1, SP, #0x88+var_3C
10196C:  MOV             R0, R4
10196E:  BL              sub_1019BC
101972:  ADD.W           R0, R4, #0x2C ; ','; int
101976:  MOVS            R1, #0xC1; n
101978:  STRB.W          R11, [R4,#0x272]
10197C:  BLX             sub_22178C
101980:  ADD.W           R0, R4, #0xF0; int
101984:  MOV.W           R1, #0x180; n
101988:  BLX             sub_22178C
10198C:  MOV             R0, R4
10198E:  ADD             SP, SP, #0x58 ; 'X'
101990:  VPOP            {D8-D9}
101994:  ADD             SP, SP, #4
101996:  POP.W           {R8-R11}
10199A:  POP             {R4-R7,PC}
