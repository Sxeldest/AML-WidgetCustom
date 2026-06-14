; =========================================================
; Game Engine Function: _Z30_rwMipmapRasterSetFromImage888PhiP7RwImagei
; Address            : 0x1AA81C - 0x1AA8D4
; =========================================================

1AA81C:  PUSH            {R4-R7,LR}
1AA81E:  ADD             R7, SP, #0xC
1AA820:  PUSH.W          {R8-R11}
1AA824:  SUB             SP, SP, #0x1C
1AA826:  MOV             R11, R2
1AA828:  STR             R1, [SP,#0x38+var_30]
1AA82A:  MOV             R8, R0
1AA82C:  LDR.W           R0, [R11,#8]
1AA830:  ASRS            R0, R3
1AA832:  CMP             R0, #1
1AA834:  STR             R0, [SP,#0x38+var_34]
1AA836:  BLT             loc_1AA8CA
1AA838:  LDR.W           R0, [R11,#4]
1AA83C:  LDRD.W          R1, R5, [R11,#0xC]
1AA840:  LDR.W           R12, =(unk_660710 - 0x1AA852)
1AA844:  LSLS            R5, R3
1AA846:  ASR.W           R9, R0, R3
1AA84A:  LDR.W           R4, [R11,#0x14]
1AA84E:  ADD             R12, PC; unk_660710
1AA850:  STR             R4, [SP,#0x38+var_28]
1AA852:  ADD.W           R0, R12, R1,LSL#2
1AA856:  MOVS            R4, #1
1AA858:  STR             R5, [SP,#0x38+var_38]
1AA85A:  ADD             R5, SP, #0x38+var_20
1AA85C:  LDR.W           R12, [R0,#-4]
1AA860:  LSL.W           R6, R4, R3
1AA864:  MOVS            R1, #0
1AA866:  CMP.W           R9, #1
1AA86A:  STR             R1, [SP,#0x38+var_2C]
1AA86C:  BLT             loc_1AA8B4
1AA86E:  LDR             R4, [SP,#0x38+var_28]
1AA870:  MOV.W           R10, #0
1AA874:  STR.W           R8, [SP,#0x38+var_24]
1AA878:  MOV             R0, R5
1AA87A:  MOV             R1, R4
1AA87C:  MOV             R2, R11
1AA87E:  MOV             R8, R12
1AA880:  MOV             R5, R3
1AA882:  BLX             R8
1AA884:  LDRB.W          R0, [SP,#0x38+var_20]
1AA888:  MOV             R12, R8
1AA88A:  LDRB.W          R1, [SP,#0x38+var_1F]
1AA88E:  MOV             R3, R5
1AA890:  LDR.W           R8, [SP,#0x38+var_24]
1AA894:  ADD             R4, R6
1AA896:  LSLS            R0, R0, #0x10
1AA898:  LDRB.W          R5, [SP,#0x38+var_1E]
1AA89C:  ORR.W           R0, R0, R1,LSL#8
1AA8A0:  ORRS            R0, R5
1AA8A2:  ADD             R5, SP, #0x38+var_20
1AA8A4:  ORR.W           R0, R0, #0xFF000000
1AA8A8:  STR.W           R0, [R8,R10,LSL#2]
1AA8AC:  ADD.W           R10, R10, #1
1AA8B0:  CMP             R9, R10
1AA8B2:  BNE             loc_1AA878
1AA8B4:  LDR             R0, [SP,#0x38+var_30]
1AA8B6:  LDR             R1, [SP,#0x38+var_38]
1AA8B8:  ADD             R8, R0
1AA8BA:  LDR             R0, [SP,#0x38+var_28]
1AA8BC:  ADD             R0, R1
1AA8BE:  LDR             R1, [SP,#0x38+var_2C]
1AA8C0:  STR             R0, [SP,#0x38+var_28]
1AA8C2:  LDR             R0, [SP,#0x38+var_34]
1AA8C4:  ADDS            R1, #1
1AA8C6:  CMP             R1, R0
1AA8C8:  BNE             loc_1AA866
1AA8CA:  MOVS            R0, #1
1AA8CC:  ADD             SP, SP, #0x1C
1AA8CE:  POP.W           {R8-R11}
1AA8D2:  POP             {R4-R7,PC}
