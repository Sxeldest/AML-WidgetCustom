; =========================================================
; Game Engine Function: sub_86F46
; Address            : 0x86F46 - 0x86FD6
; =========================================================

86F46:  PUSH            {R4-R7,LR}
86F48:  ADD             R7, SP, #0xC
86F4A:  PUSH.W          {R8}
86F4E:  LDR             R1, [R0]
86F50:  MOV             R4, R0
86F52:  ADDS            R0, R1, #1
86F54:  CMP             R1, #0
86F56:  BMI             loc_86FA0
86F58:  LDR             R6, [R4,#4]
86F5A:  SUBS            R2, R6, #1
86F5C:  ASRS            R2, R2, #3
86F5E:  CMP.W           R2, R1,LSR#3
86F62:  BGE             loc_86FA0
86F64:  MOVS            R1, #7
86F66:  LDR             R5, [R4,#0xC]
86F68:  ADD.W           R1, R1, R0,LSL#1
86F6C:  ADD.W           R2, R4, #0x11
86F70:  MOV.W           R8, R0,LSL#1
86F74:  CMP             R5, R2
86F76:  MOV.W           R1, R1,ASR#3; size
86F7A:  BEQ             loc_86F86
86F7C:  MOV             R0, R5; ptr
86F7E:  BLX             realloc
86F82:  STR             R0, [R4,#0xC]
86F84:  B               loc_86F9E
86F86:  CMP.W           R0, #0x400
86F8A:  BLS             loc_86F9E
86F8C:  MOV             R0, R1; size
86F8E:  BLX             malloc
86F92:  ADDS            R1, R6, #7
86F94:  STR             R0, [R4,#0xC]
86F96:  ASRS            R2, R1, #3; n
86F98:  MOV             R1, R5; src
86F9A:  BLX             j_memcpy
86F9E:  MOV             R0, R8
86FA0:  LDR             R1, [R4,#4]
86FA2:  CMP             R0, R1
86FA4:  IT GT
86FA6:  STRGT           R0, [R4,#4]
86FA8:  LDR             R0, [R4]
86FAA:  ANDS.W          R1, R0, #7
86FAE:  BEQ             loc_86FC2
86FB0:  LDR             R2, [R4,#0xC]
86FB2:  ASRS            R0, R0, #3
86FB4:  MOVS            R6, #0x80
86FB6:  LSR.W           R1, R6, R1
86FBA:  LDRB            R3, [R2,R0]
86FBC:  ORRS            R1, R3
86FBE:  STRB            R1, [R2,R0]
86FC0:  B               loc_86FCA
86FC2:  LDR             R1, [R4,#0xC]
86FC4:  ASRS            R0, R0, #3
86FC6:  MOVS            R2, #0x80
86FC8:  STRB            R2, [R1,R0]
86FCA:  LDR             R0, [R4]
86FCC:  ADDS            R0, #1
86FCE:  STR             R0, [R4]
86FD0:  POP.W           {R8}
86FD4:  POP             {R4-R7,PC}
