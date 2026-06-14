; =========================================================
; Game Engine Function: sub_FD83C
; Address            : 0xFD83C - 0xFD94C
; =========================================================

FD83C:  PUSH            {R4-R7,LR}
FD83E:  ADD             R7, SP, #0xC
FD840:  PUSH.W          {R8-R11}
FD844:  SUB             SP, SP, #0x84
FD846:  LDR             R5, =(dword_247520 - 0xFD854)
FD848:  VMOV.I32        Q8, #0
FD84C:  MOV             R4, R2
FD84E:  MOVS            R1, #0
FD850:  ADD             R5, PC; dword_247520
FD852:  CMP             R3, #0
FD854:  MOV             R2, R5
FD856:  STR             R1, [R5,#(dword_247544 - 0x247520)]
FD858:  VST1.64         {D16-D17}, [R2]!
FD85C:  MOV             R6, R2
FD85E:  VST1.64         {D16-D17}, [R6]!
FD862:  STR             R1, [R6]
FD864:  LDRD.W          R1, R6, [R0]
FD868:  LDR             R0, [R0,#8]
FD86A:  STRD.W          R1, R6, [R5]
FD86E:  STR             R0, [R5,#(dword_247528 - 0x247520)]
FD870:  LDR             R0, [R4]
FD872:  STR             R0, [R5,#(dword_24752C - 0x247520)]
FD874:  LDR             R0, [R4,#4]
FD876:  STR             R0, [R2]
FD878:  LDR             R0, [R4,#8]
FD87A:  STR             R0, [R5,#(dword_247534 - 0x247520)]
FD87C:  BEQ             loc_FD930
FD87E:  LDR             R6, [R3]
FD880:  CMP             R6, #0
FD882:  BEQ             loc_FD930
FD884:  LDR             R0, [R6,#0x14]
FD886:  CMP             R0, #0
FD888:  BEQ             loc_FD930
FD88A:  LDR             R1, =(off_234AAC - 0xFD890)
FD88C:  ADD             R1, PC; off_234AAC
FD88E:  LDR             R1, [R1]; dword_314320
FD890:  LDR             R1, [R1]
FD892:  CBZ             R1, loc_FD8C6
FD894:  VLDR            S0, [R0,#0x30]
FD898:  VLDR            S6, [R4]
FD89C:  VLDR            S2, [R0,#0x34]
FD8A0:  VLDR            S8, [R4,#4]
FD8A4:  VSUB.F32        S0, S6, S0
FD8A8:  VLDR            S10, [R4,#8]
FD8AC:  VLDR            S4, [R0,#0x38]
FD8B0:  VSUB.F32        S2, S8, S2
FD8B4:  VSUB.F32        S4, S10, S4
FD8B8:  VSTR            S0, [R5,#0x18]
FD8BC:  VSTR            S2, [R5,#0x1C]
FD8C0:  VSTR            S4, [R5,#0x20]
FD8C4:  B               loc_FD92E
FD8C6:  LDR             R0, =(off_23494C - 0xFD8D6)
FD8C8:  VMOV.I32        Q8, #0
FD8CC:  ADD.W           R8, SP, #0xA0+var_60
FD8D0:  MOV             R9, SP
FD8D2:  ADD             R0, PC; off_23494C
FD8D4:  MOV             R11, #0x1E34A1
FD8DC:  LDR.W           R10, [R0]; dword_23DF24
FD8E0:  MOV             R0, R8
FD8E2:  VST1.64         {D16-D17}, [R0]!
FD8E6:  VST1.64         {D16-D17}, [R0]!
FD8EA:  VST1.64         {D16-D17}, [R0]!
FD8EE:  VST1.64         {D16-D17}, [R0]
FD8F2:  MOV             R0, R9
FD8F4:  VST1.64         {D16-D17}, [R0]!
FD8F8:  VST1.64         {D16-D17}, [R0]!
FD8FC:  VST1.64         {D16-D17}, [R0]!
FD900:  VST1.64         {D16-D17}, [R0]
FD904:  LDR.W           R0, [R10]
FD908:  LDR             R1, [R6,#0x14]
FD90A:  ADD.W           R2, R0, R11
FD90E:  MOV             R0, R9
FD910:  BLX             R2
FD912:  LDR.W           R0, [R10]
FD916:  MOV             R1, R9
FD918:  ADD             R0, R11
FD91A:  ADD.W           R2, R0, #0x588
FD91E:  MOV             R0, R8
FD920:  BLX             R2
FD922:  ADD.W           R0, R5, #0x18
FD926:  MOV             R1, R8
FD928:  MOV             R2, R4
FD92A:  BL              sub_108F30
FD92E:  STR             R6, [R5,#(dword_247544 - 0x247520)]
FD930:  LDR             R0, =(off_234970 - 0xFD936)
FD932:  ADD             R0, PC; off_234970
FD934:  LDR             R0, [R0]; dword_23DEF0
FD936:  LDR             R0, [R0]
FD938:  BL              sub_E35A0
FD93C:  LDR             R1, =(dword_247520 - 0xFD942)
FD93E:  ADD             R1, PC; dword_247520
FD940:  BL              sub_105CE0
FD944:  ADD             SP, SP, #0x84
FD946:  POP.W           {R8-R11}
FD94A:  POP             {R4-R7,PC}
