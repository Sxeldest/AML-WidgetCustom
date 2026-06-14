; =========================================================
; Game Engine Function: sub_150AF6
; Address            : 0x150AF6 - 0x150BA6
; =========================================================

150AF6:  PUSH            {R4,R5,R7,LR}
150AF8:  ADD             R7, SP, #8
150AFA:  SUB             SP, SP, #0x18
150AFC:  MOV             R5, R1
150AFE:  MOV             R4, R0
150B00:  LDRD.W          R1, R0, [R0,#4]
150B04:  CMP             R1, R0
150B06:  BCS             loc_150B16
150B08:  LDR             R0, [R5]
150B0A:  MOVS            R2, #0
150B0C:  STR             R2, [R5]
150B0E:  STR.W           R0, [R1],#4
150B12:  STR             R1, [R4,#4]
150B14:  B               loc_150B9C
150B16:  LDR             R3, [R4]
150B18:  SUBS            R2, R1, R3
150B1A:  MOVS            R1, #1
150B1C:  ADD.W           R1, R1, R2,ASR#2
150B20:  CMP.W           R1, #0x40000000
150B24:  BCS             loc_150BA0
150B26:  SUBS            R0, R0, R3
150B28:  MOV             R3, #0x7FFFFFFC
150B30:  ASRS            R2, R2, #2
150B32:  CMP.W           R1, R0,ASR#1
150B36:  IT LS
150B38:  ASRLS           R1, R0, #1
150B3A:  CMP             R0, R3
150B3C:  ADD.W           R3, R4, #8
150B40:  ADD             R0, SP, #0x20+var_1C
150B42:  IT CS
150B44:  MOVCS           R1, #0x3FFFFFFF
150B48:  BL              sub_1514D0
150B4C:  LDR             R2, [SP,#0x20+var_14]
150B4E:  MOVS            R3, #0
150B50:  LDR             R1, [R5]
150B52:  STR             R3, [R5]
150B54:  LDRD.W          R0, R5, [R4]
150B58:  STR.W           R1, [R2],#4
150B5C:  LDR             R1, [SP,#0x20+var_18]
150B5E:  CMP             R5, R0
150B60:  STR             R2, [SP,#0x20+var_14]
150B62:  BEQ             loc_150B82
150B64:  LDR.W           R2, [R5,#-4]!
150B68:  CMP             R5, R0
150B6A:  STR             R3, [R5]
150B6C:  STR.W           R2, [R1,#-4]
150B70:  LDR             R1, [SP,#0x20+var_18]
150B72:  SUB.W           R1, R1, #4
150B76:  STR             R1, [SP,#0x20+var_18]
150B78:  BNE             loc_150B64
150B7A:  LDR             R2, [SP,#0x20+var_14]
150B7C:  LDRD.W          R3, R0, [R4]
150B80:  B               loc_150B84
150B82:  MOV             R3, R0
150B84:  STR             R1, [R4]
150B86:  LDR             R1, [R4,#8]
150B88:  LDR             R5, [SP,#0x20+var_10]
150B8A:  STRD.W          R3, R3, [SP,#0x20+var_1C]
150B8E:  STRD.W          R0, R1, [SP,#0x20+var_14]
150B92:  ADD             R0, SP, #0x20+var_1C
150B94:  STRD.W          R2, R5, [R4,#4]
150B98:  BL              sub_151518
150B9C:  ADD             SP, SP, #0x18
150B9E:  POP             {R4,R5,R7,PC}
150BA0:  MOV             R0, R4
150BA2:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
