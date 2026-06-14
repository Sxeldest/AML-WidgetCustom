; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode18NextKeyFrameNoCalcEv
; Address            : 0x38A99E - 0x38AA44
; =========================================================

38A99E:  PUSH            {R4-R7,LR}
38A9A0:  ADD             R7, SP, #0xC
38A9A2:  PUSH.W          {R11}
38A9A6:  LDR             R3, [R0,#0x10]
38A9A8:  LDRH.W          R12, [R3,#6]
38A9AC:  SXTH.W          R1, R12
38A9B0:  CMP             R1, #2
38A9B2:  BGE             loc_38A9BA
38A9B4:  MOV.W           LR, #0
38A9B8:  B               loc_38AA2E
38A9BA:  VLDR            S0, [R0,#0xC]
38A9BE:  MOV.W           LR, #0
38A9C2:  LDRH            R2, [R0,#8]
38A9C4:  VCMPE.F32       S0, #0.0
38A9C8:  STRH            R2, [R0,#0xA]
38A9CA:  VMRS            APSR_nzcv, FPSCR
38A9CE:  BGT             loc_38AA1A
38A9D0:  MOV             R4, R2
38A9D2:  ADDS            R2, R4, #1
38A9D4:  STRH            R2, [R0,#8]
38A9D6:  SXTH            R2, R2
38A9D8:  CMP             R1, R2
38A9DA:  BGT             loc_38A9EE
38A9DC:  LDR             R2, [R0,#0x14]
38A9DE:  LDRB.W          R2, [R2,#0x2E]
38A9E2:  LSLS            R2, R2, #0x1E
38A9E4:  BPL             loc_38AA38
38A9E6:  MOVS            R2, #0
38A9E8:  MOV.W           LR, #1
38A9EC:  STRH            R2, [R0,#8]
38A9EE:  ADD.W           R6, R2, R2,LSL#2
38A9F2:  LDRH            R5, [R3,#4]
38A9F4:  LDR             R4, [R3,#8]
38A9F6:  LSLS            R6, R6, #2
38A9F8:  TST.W           R5, #2
38A9FC:  IT NE
38A9FE:  LSLNE           R6, R2, #5
38AA00:  ADD             R4, R6
38AA02:  VLDR            S2, [R4,#0x10]
38AA06:  MOV             R4, R2
38AA08:  VADD.F32        S0, S2, S0
38AA0C:  VCMPE.F32       S0, #0.0
38AA10:  VSTR            S0, [R0,#0xC]
38AA14:  VMRS            APSR_nzcv, FPSCR
38AA18:  BLE             loc_38A9D2
38AA1A:  MOVW            R1, #0xFFFF
38AA1E:  ADD             R1, R2
38AA20:  SUBS            R2, #1
38AA22:  SXTH            R3, R2
38AA24:  CMP             R3, #0
38AA26:  IT LT
38AA28:  ADDLT.W         R1, R2, R12
38AA2C:  STRH            R1, [R0,#0xA]
38AA2E:  AND.W           R0, LR, #1
38AA32:  POP.W           {R11}
38AA36:  POP             {R4-R7,PC}
38AA38:  MOV.W           LR, #0
38AA3C:  STR.W           LR, [R0,#0xC]
38AA40:  STRH            R4, [R0,#8]
38AA42:  B               loc_38AA2E
