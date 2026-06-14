; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode10UpdateTimeEv
; Address            : 0x38A8E4 - 0x38A99E
; =========================================================

38A8E4:  PUSH            {R4-R7,LR}
38A8E6:  ADD             R7, SP, #0xC
38A8E8:  PUSH.W          {R8}
38A8EC:  LDR             R2, [R0,#0x14]
38A8EE:  LDRB.W          R1, [R2,#0x2E]
38A8F2:  LSLS            R1, R1, #0x1F
38A8F4:  BEQ             loc_38A920
38A8F6:  VLDR            S0, [R2,#0x28]
38A8FA:  VLDR            S2, [R0,#0xC]
38A8FE:  VSUB.F32        S0, S2, S0
38A902:  VCMPE.F32       S0, #0.0
38A906:  VSTR            S0, [R0,#0xC]
38A90A:  VMRS            APSR_nzcv, FPSCR
38A90E:  BGT             loc_38A920
38A910:  LDR             R3, [R0,#0x10]
38A912:  LDRH.W          R12, [R3,#6]
38A916:  SXTH.W          R8, R12
38A91A:  CMP.W           R8, #2
38A91E:  BGE             loc_38A92E
38A920:  MOV.W           LR, #0
38A924:  AND.W           R0, LR, #1
38A928:  POP.W           {R8}
38A92C:  POP             {R4-R7,PC}
38A92E:  LDRH            R5, [R0,#8]
38A930:  MOV.W           LR, #0
38A934:  STRH            R5, [R0,#0xA]
38A936:  ADDS            R4, R5, #1
38A938:  STRH            R4, [R0,#8]
38A93A:  SXTH            R4, R4
38A93C:  CMP             R8, R4
38A93E:  BGT             loc_38A950
38A940:  LDRB.W          R4, [R2,#0x2E]
38A944:  LSLS            R4, R4, #0x1E
38A946:  BPL             loc_38A992
38A948:  MOVS            R4, #0
38A94A:  MOV.W           LR, #1
38A94E:  STRH            R4, [R0,#8]
38A950:  ADD.W           R1, R4, R4,LSL#2
38A954:  LDRH            R6, [R3,#4]
38A956:  LDR             R5, [R3,#8]
38A958:  LSLS            R1, R1, #2
38A95A:  TST.W           R6, #2
38A95E:  IT NE
38A960:  LSLNE           R1, R4, #5
38A962:  ADD             R1, R5
38A964:  MOV             R5, R4
38A966:  VLDR            S2, [R1,#0x10]
38A96A:  VADD.F32        S0, S0, S2
38A96E:  VCMPE.F32       S0, #0.0
38A972:  VSTR            S0, [R0,#0xC]
38A976:  VMRS            APSR_nzcv, FPSCR
38A97A:  BLE             loc_38A936
38A97C:  SUBS            R2, R4, #1
38A97E:  MOVW            R1, #0xFFFF
38A982:  ADD             R1, R4
38A984:  SXTH            R3, R2
38A986:  CMP             R3, #0
38A988:  IT LT
38A98A:  ADDLT.W         R1, R2, R12
38A98E:  STRH            R1, [R0,#0xA]
38A990:  B               loc_38A924
38A992:  MOV.W           LR, #0
38A996:  STR.W           LR, [R0,#0xC]
38A99A:  STRH            R5, [R0,#8]
38A99C:  B               loc_38A924
