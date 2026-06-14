; =========================================================
; Game Engine Function: decode_pulses
; Address            : 0x19F928 - 0x19FABE
; =========================================================

19F928:  PUSH            {R4-R7,LR}
19F92A:  ADD             R7, SP, #0xC
19F92C:  PUSH.W          {R8-R11}
19F930:  SUB             SP, SP, #4
19F932:  MOV             R9, R0
19F934:  LDR             R0, =(off_2301FC - 0x19F942)
19F936:  MOV             R8, R2
19F938:  ADD.W           R6, R8, #1
19F93C:  MOV             R4, R1
19F93E:  ADD             R0, PC; off_2301FC
19F940:  CMP             R4, R8
19F942:  MOV             R1, R8
19F944:  IT LT
19F946:  MOVLT           R1, R4
19F948:  CMP             R6, R4
19F94A:  MOV             R2, R6
19F94C:  LDR.W           R1, [R0,R1,LSL#2]
19F950:  IT GT
19F952:  MOVGT           R2, R4
19F954:  CMP             R4, R8
19F956:  LDR.W           R0, [R0,R2,LSL#2]
19F95A:  MOV             R2, R8
19F95C:  IT GT
19F95E:  MOVGT           R2, R4
19F960:  CMP             R6, R4
19F962:  LDR.W           R1, [R1,R2,LSL#2]
19F966:  IT LT
19F968:  MOVLT           R6, R4
19F96A:  LDR.W           R0, [R0,R6,LSL#2]
19F96E:  ADD             R1, R0
19F970:  MOV             R0, R3
19F972:  BLX             j_ec_dec_uint
19F976:  CMP             R4, #3
19F978:  BLT             loc_19FA6C
19F97A:  LDR.W           LR, =(off_2301FC - 0x19F98E)
19F97E:  MOV.W           R10, #0
19F982:  LDR.W           R11, =(off_2301FC - 0x19F992)
19F986:  LDR.W           R12, =(off_2301FC - 0x19F994)
19F98A:  ADD             LR, PC; off_2301FC
19F98C:  LDR             R3, =(off_2301FC - 0x19F996)
19F98E:  ADD             R11, PC; off_2301FC
19F990:  ADD             R12, PC; off_2301FC
19F992:  ADD             R3, PC; off_2301FC
19F994:  MOV             R2, R4
19F996:  CMP             R8, R2
19F998:  BGE             loc_19F9BE
19F99A:  ADD.W           R6, LR, R8,LSL#2
19F99E:  LDR.W           R1, [LR,R8,LSL#2]
19F9A2:  LDR             R6, [R6,#4]
19F9A4:  LDR.W           R1, [R1,R2,LSL#2]
19F9A8:  LDR.W           R4, [R6,R2,LSL#2]
19F9AC:  CMP             R0, R1
19F9AE:  BCC             loc_19FA1C
19F9B0:  CMP             R0, R4
19F9B2:  BCS             loc_19FA1C
19F9B4:  MOVS            R6, #0
19F9B6:  SUBS            R0, R0, R1
19F9B8:  STR.W           R6, [R9]
19F9BC:  B               loc_19FA60
19F9BE:  LDR.W           R5, [R12,R2,LSL#2]
19F9C2:  ADD.W           R1, R5, R8,LSL#2
19F9C6:  LDR.W           R6, [R5,R2,LSL#2]
19F9CA:  LDR             R1, [R1,#4]
19F9CC:  SUBS            R4, R0, R1
19F9CE:  IT CC
19F9D0:  MOVCC           R4, R0
19F9D2:  MOV.W           R0, #0
19F9D6:  IT CS
19F9D8:  MOVCS.W         R0, #0xFFFFFFFF
19F9DC:  CMP             R6, R4
19F9DE:  MOV             R6, R8
19F9E0:  BLS             loc_19F9F8
19F9E2:  MOV             R5, R2
19F9E4:  ADD.W           R1, R3, R5,LSL#2
19F9E8:  SUBS            R5, #1
19F9EA:  LDR.W           R1, [R1,#-4]
19F9EE:  LDR.W           R1, [R1,R2,LSL#2]
19F9F2:  CMP             R1, R4
19F9F4:  BHI             loc_19F9E4
19F9F6:  B               loc_19FA04
19F9F8:  LDR.W           R1, [R5,R6,LSL#2]
19F9FC:  SUBS            R6, #1
19F9FE:  CMP             R1, R4
19FA00:  BHI             loc_19F9F8
19FA02:  ADDS            R5, R6, #1
19FA04:  ADD.W           R6, R8, R0
19FA08:  MOV             R8, R5
19FA0A:  SUBS            R6, R6, R5
19FA0C:  EORS            R0, R6
19FA0E:  SMLABB.W        R10, R0, R0, R10
19FA12:  SXTH            R0, R0
19FA14:  STR.W           R0, [R9]
19FA18:  SUBS            R0, R4, R1
19FA1A:  B               loc_19FA60
19FA1C:  CMP             R0, R4
19FA1E:  MOV.W           R5, #0
19FA22:  MOV             R1, R0
19FA24:  MOV             LR, R12
19FA26:  ITT CS
19FA28:  MOVCS.W         R5, #0xFFFFFFFF
19FA2C:  SUBCS           R1, R1, R4
19FA2E:  ADD.W           R6, R11, R8,LSL#2
19FA32:  ADDS            R5, #1
19FA34:  SUB.W           R8, R8, #1
19FA38:  LDR.W           R6, [R6,#-4]
19FA3C:  LDR.W           R12, [R6,R2,LSL#2]
19FA40:  CMP             R1, R12
19FA42:  BCC             loc_19FA2E
19FA44:  CMP             R0, R4
19FA46:  IT CS
19FA48:  MVNCS           R5, R5
19FA4A:  SXTH            R0, R5
19FA4C:  SMLABB.W        R10, R5, R5, R10
19FA50:  STR.W           R0, [R9]
19FA54:  SUB.W           R0, R1, R12
19FA58:  MOV             R12, LR
19FA5A:  LDR.W           LR, =(off_2301FC - 0x19FA62)
19FA5E:  ADD             LR, PC; off_2301FC
19FA60:  SUBS            R4, R2, #1
19FA62:  ADD.W           R9, R9, #4
19FA66:  CMP             R2, #3
19FA68:  BGT             loc_19F994
19FA6A:  B               loc_19FA70
19FA6C:  MOV.W           R10, #0
19FA70:  MOVS            R1, #1
19FA72:  MOVS            R6, #0
19FA74:  ORR.W           R1, R1, R8,LSL#1
19FA78:  SUBS            R2, R0, R1
19FA7A:  IT CC
19FA7C:  MOVCC           R2, R0
19FA7E:  ADDS            R3, R2, #1
19FA80:  CMP.W           R6, R3,LSR#1
19FA84:  IT NE
19FA86:  ANDNE.W         R2, R3, #1
19FA8A:  CMP             R0, R1
19FA8C:  IT CS
19FA8E:  SUBCS.W         R8, R8, #1
19FA92:  RSB.W           R6, R2, R3,LSR#1
19FA96:  SUB.W           R0, R8, R3,LSR#1
19FA9A:  RSB.W           R2, R2, #0
19FA9E:  EOR.W           R2, R2, R6
19FAA2:  IT CS
19FAA4:  MVNCS           R0, R0
19FAA6:  SMLABB.W        R1, R0, R0, R10
19FAAA:  SXTH            R3, R0
19FAAC:  SMLABB.W        R0, R2, R2, R1
19FAB0:  SXTH            R1, R2
19FAB2:  STRD.W          R3, R1, [R9]
19FAB6:  ADD             SP, SP, #4
19FAB8:  POP.W           {R8-R11}
19FABC:  POP             {R4-R7,PC}
