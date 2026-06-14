; =========================================================
; Game Engine Function: sub_10B928
; Address            : 0x10B928 - 0x10BA44
; =========================================================

10B928:  PUSH            {R4-R7,LR}
10B92A:  ADD             R7, SP, #0xC
10B92C:  PUSH.W          {R8-R11}
10B930:  SUB             SP, SP, #0x54
10B932:  MOV             R4, R0
10B934:  ADR             R0, dword_10BA90
10B936:  VLD1.64         {D16-D17}, [R0]
10B93A:  ADR             R0, dword_10BAA0
10B93C:  ADD.W           R5, R4, #8
10B940:  VMOV.I32        Q12, #0
10B944:  VLD1.64         {D18-D19}, [R0]
10B948:  ADR             R0, dword_10BAB0
10B94A:  MOV.W           R1, #0x3F800000
10B94E:  MOVS            R6, #0
10B950:  VLD1.64         {D20-D21}, [R0]
10B954:  ADR             R0, dword_10BAC0
10B956:  MOV             R11, R4
10B958:  VLD1.64         {D22-D23}, [R0]
10B95C:  VST1.32         {D22-D23}, [R5]!
10B960:  VST1.32         {D16-D17}, [R5]!
10B964:  VST1.32         {D18-D19}, [R5]!
10B968:  VST1.32         {D20-D21}, [R5]!
10B96C:  MOV             R0, R5
10B96E:  STRD.W          R6, R6, [R4]
10B972:  VST1.32         {D24-D25}, [R0]!
10B976:  STR             R1, [R0]
10B978:  MOV             R0, R5
10B97A:  STR.W           R6, [R11,#0x60]!
10B97E:  BL              sub_10BE0C
10B982:  LDR             R0, =(off_23494C - 0x10B988)
10B984:  ADD             R0, PC; off_23494C
10B986:  LDR             R0, [R0]; dword_23DF24
10B988:  LDR             R0, [R0]
10B98A:  STR             R0, [SP,#0x70+var_6C]
10B98C:  LDR             R1, =(sub_10BAE4+1 - 0x10B996)
10B98E:  STRB.W          R6, [R4,#0x5C]
10B992:  ADD             R1, PC; sub_10BAE4
10B994:  ADD             R0, SP, #0x70+var_68
10B996:  MOVS            R2, #0
10B998:  MOV             R3, R4
10B99A:  BL              sub_10BB58
10B99E:  ADD.W           R9, SP, #0x70+var_50
10B9A2:  ADD             R6, SP, #0x70+var_68
10B9A4:  MOV             R0, R9
10B9A6:  MOV             R1, R6
10B9A8:  BL              sub_10BEC4
10B9AC:  BL              sub_10BE6C
10B9B0:  LDR             R0, =(unk_2631B8 - 0x10B9B6)
10B9B2:  ADD             R0, PC; unk_2631B8
10B9B4:  LDR.W           R8, [R0,#(dword_2631C8 - 0x2631B8)]
10B9B8:  CMP.W           R8, #0
10B9BC:  BNE             loc_10B9F2
10B9BE:  ADD.W           R10, SP, #0x70+var_50
10B9C2:  ADD             R0, SP, #0x70+var_38
10B9C4:  MOV             R1, R10
10B9C6:  BL              sub_10BEC4
10B9CA:  BL              sub_10BE6C
10B9CE:  LDR             R0, =(unk_2631B8 - 0x10B9D4)
10B9D0:  ADD             R0, PC; unk_2631B8
10B9D2:  ADD.W           R10, SP, #0x70+var_38
10B9D6:  MOV             R1, R10
10B9D8:  BL              sub_10BEF0
10B9DC:  LDR             R0, [SP,#0x70+var_28]
10B9DE:  CMP             R10, R0
10B9E0:  BEQ             loc_10B9E8
10B9E2:  CBZ             R0, loc_10B9F2
10B9E4:  MOVS            R1, #5
10B9E6:  B               loc_10B9EA
10B9E8:  MOVS            R1, #4
10B9EA:  LDR             R2, [R0]
10B9EC:  LDR.W           R1, [R2,R1,LSL#2]
10B9F0:  BLX             R1
10B9F2:  LDR             R0, [SP,#0x70+var_40]
10B9F4:  CMP             R9, R0
10B9F6:  BEQ             loc_10B9FE
10B9F8:  CBZ             R0, loc_10BA08
10B9FA:  MOVS            R1, #5
10B9FC:  B               loc_10BA00
10B9FE:  MOVS            R1, #4
10BA00:  LDR             R2, [R0]
10BA02:  LDR.W           R1, [R2,R1,LSL#2]
10BA06:  BLX             R1
10BA08:  CMP.W           R8, #0
10BA0C:  BNE             loc_10BA24
10BA0E:  MOVW            R0, #0xF4FC
10BA12:  LDR             R1, [SP,#0x70+var_6C]
10BA14:  MOVT            R0, #0x66 ; 'f'
10BA18:  ADD             R0, R1
10BA1A:  LDR             R1, =(sub_10BE40+1 - 0x10BA20)
10BA1C:  ADD             R1, PC; sub_10BE40
10BA1E:  MOV             R2, R11
10BA20:  BL              sub_164196
10BA24:  LDR             R0, [SP,#0x70+var_58]
10BA26:  CMP             R6, R0
10BA28:  BEQ             loc_10BA30
10BA2A:  CBZ             R0, loc_10BA3A
10BA2C:  MOVS            R1, #5
10BA2E:  B               loc_10BA32
10BA30:  MOVS            R1, #4
10BA32:  LDR             R2, [R0]
10BA34:  LDR.W           R1, [R2,R1,LSL#2]
10BA38:  BLX             R1
10BA3A:  MOV             R0, R4
10BA3C:  ADD             SP, SP, #0x54 ; 'T'
10BA3E:  POP.W           {R8-R11}
10BA42:  POP             {R4-R7,PC}
