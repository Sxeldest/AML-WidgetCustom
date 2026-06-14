; =========================================================
; Game Engine Function: sub_21F940
; Address            : 0x21F940 - 0x21FA3C
; =========================================================

21F940:  PUSH            {R4-R7,LR}
21F942:  ADD             R7, SP, #0xC
21F944:  PUSH.W          {R1-R11}
21F948:  LDR.W           R10, [R7,#arg_4]
21F94C:  MOV             R4, R1
21F94E:  LDR             R1, [R1,#8]
21F950:  MOV             R6, R2
21F952:  MOV             R5, R3
21F954:  MOV             R11, R0
21F956:  MOV             R2, R10
21F958:  BL              sub_21EEBC
21F95C:  LDR.W           R9, [R7,#arg_0]
21F960:  CBZ             R0, loc_21F97A
21F962:  STR.W           R9, [R7,#arg_0]
21F966:  MOV             R1, R4
21F968:  MOV             R2, R6
21F96A:  MOV             R3, R5
21F96C:  ADD             SP, SP, #0x1C
21F96E:  POP.W           {R8-R11}
21F972:  POP.W           {R4-R7,LR}
21F976:  B.W             sub_21F590
21F97A:  LDRB.W          R0, [R4,#0x34]
21F97E:  MOV             R1, R4
21F980:  STR             R0, [SP,#0x38+var_20]
21F982:  MOVS            R0, #0
21F984:  LDRB.W          R8, [R4,#0x35]
21F988:  MOV             R2, R6
21F98A:  STRH            R0, [R4,#0x34]
21F98C:  MOV             R3, R5
21F98E:  LDR.W           R0, [R11,#0xC]
21F992:  STR             R0, [SP,#0x38+var_28]
21F994:  ADD.W           R0, R11, #0x10
21F998:  STRD.W          R9, R10, [SP,#0x38+var_38]
21F99C:  STR             R0, [SP,#0x38+var_2C]
21F99E:  BL              sub_21F796
21F9A2:  LDRB.W          R0, [R4,#0x35]
21F9A6:  MOV             R3, R5
21F9A8:  LDRB.W          R1, [R4,#0x34]
21F9AC:  ORR.W           R2, R0, R8
21F9B0:  UXTB.W          R8, R2
21F9B4:  LDR             R2, [SP,#0x38+var_20]
21F9B6:  ORRS            R2, R1
21F9B8:  UXTB            R5, R2
21F9BA:  LDR             R2, [SP,#0x38+var_28]
21F9BC:  CMP             R2, #2
21F9BE:  BLT             loc_21FA1C
21F9C0:  STRD.W          R6, R3, [SP,#0x38+var_24]
21F9C4:  ADD.W           R6, R11, #0x18
21F9C8:  LDR             R3, [SP,#0x38+var_2C]
21F9CA:  ADD.W           R2, R3, R2,LSL#3
21F9CE:  STR             R2, [SP,#0x38+var_28]
21F9D0:  LDRB.W          R2, [R4,#0x36]
21F9D4:  CBNZ            R2, loc_21FA1C
21F9D6:  CBZ             R1, loc_21F9E8
21F9D8:  LDR             R0, [R4,#0x18]
21F9DA:  CMP             R0, #1
21F9DC:  BEQ             loc_21FA1C
21F9DE:  LDRB.W          R0, [R11,#8]
21F9E2:  LSLS            R0, R0, #0x1E
21F9E4:  BMI             loc_21F9F2
21F9E6:  B               loc_21FA1C
21F9E8:  CBZ             R0, loc_21F9F2
21F9EA:  LDRB.W          R0, [R11,#8]
21F9EE:  LSLS            R0, R0, #0x1F
21F9F0:  BEQ             loc_21FA1C
21F9F2:  MOVS            R0, #0
21F9F4:  MOV             R1, R4
21F9F6:  STRH            R0, [R4,#0x34]
21F9F8:  MOV             R0, R6
21F9FA:  STRD.W          R9, R10, [SP,#0x38+var_38]
21F9FE:  LDRD.W          R2, R3, [SP,#0x38+var_24]
21FA02:  BL              sub_21F796
21FA06:  LDRB.W          R1, [R4,#0x34]
21FA0A:  ADDS            R6, #8
21FA0C:  LDRB.W          R0, [R4,#0x35]
21FA10:  LDR             R2, [SP,#0x38+var_28]
21FA12:  ORRS            R5, R1
21FA14:  ORR.W           R8, R8, R0
21FA18:  CMP             R6, R2
21FA1A:  BCC             loc_21F9D0
21FA1C:  CMP.W           R8, #0
21FA20:  IT NE
21FA22:  MOVNE.W         R8, #1
21FA26:  STRB.W          R8, [R4,#0x35]
21FA2A:  CMP             R5, #0
21FA2C:  IT NE
21FA2E:  MOVNE           R5, #1
21FA30:  STRB.W          R5, [R4,#0x34]
21FA34:  ADD             SP, SP, #0x1C
21FA36:  POP.W           {R8-R11}
21FA3A:  POP             {R4-R7,PC}
