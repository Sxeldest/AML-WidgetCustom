; =========================================================
; Game Engine Function: alSourceUnqueueBuffers
; Address            : 0x25C8F8 - 0x25CA92
; =========================================================

25C8F8:  PUSH            {R4-R7,LR}
25C8FA:  ADD             R7, SP, #0xC
25C8FC:  PUSH.W          {R8-R11}
25C900:  SUB             SP, SP, #4
25C902:  MOV             R6, R1
25C904:  MOV             R11, R2
25C906:  MOV             R4, R0
25C908:  CMP             R6, #0
25C90A:  BEQ             loc_25C99C
25C90C:  BLX             j_GetContextRef
25C910:  MOV             R8, R0
25C912:  CMP.W           R8, #0
25C916:  BEQ             loc_25C99C
25C918:  CMP.W           R6, #0xFFFFFFFF
25C91C:  BLE             loc_25C9A4
25C91E:  ADD.W           R0, R8, #8
25C922:  MOV             R1, R4
25C924:  BLX             j_LookupUIntMapKey
25C928:  MOV             R4, R0
25C92A:  CMP             R4, #0
25C92C:  BEQ             loc_25C9D8
25C92E:  LDR.W           R0, [R8,#0x88]
25C932:  MOV             R9, #0x161AC
25C93A:  LDR.W           R1, [R0,R9]
25C93E:  LDR             R1, [R1,#0x2C]
25C940:  BLX             R1
25C942:  LDRB.W          R0, [R4,#0x4D]
25C946:  CBNZ            R0, loc_25C95A
25C948:  LDR             R0, [R4,#0x7C]
25C94A:  MOVW            R1, #0x1029
25C94E:  CMP             R0, R1
25C950:  BNE             loc_25C95A
25C952:  LDR.W           R1, [R4,#0x98]
25C956:  CMP             R1, R6
25C958:  BCS             loc_25CA22
25C95A:  LDR.W           R0, [R8,#0x88]
25C95E:  LDR.W           R1, [R0,R9]
25C962:  LDR             R1, [R1,#0x30]
25C964:  BLX             R1
25C966:  LDR             R0, =(TrapALError_ptr - 0x25C96C)
25C968:  ADD             R0, PC; TrapALError_ptr
25C96A:  LDR             R0, [R0]; TrapALError
25C96C:  LDRB            R0, [R0]
25C96E:  CMP             R0, #0
25C970:  ITT NE
25C972:  MOVNE           R0, #5; sig
25C974:  BLXNE           raise
25C978:  LDREX.W         R0, [R8,#0x50]
25C97C:  CMP             R0, #0
25C97E:  BNE             loc_25CA0A
25C980:  ADD.W           R0, R8, #0x50 ; 'P'
25C984:  MOVW            R1, #0xA003
25C988:  DMB.W           ISH
25C98C:  STREX.W         R2, R1, [R0]
25C990:  CBZ             R2, loc_25CA0E
25C992:  LDREX.W         R2, [R0]
25C996:  CMP             R2, #0
25C998:  BEQ             loc_25C98C
25C99A:  B               loc_25CA0A
25C99C:  ADD             SP, SP, #4
25C99E:  POP.W           {R8-R11}
25C9A2:  POP             {R4-R7,PC}
25C9A4:  LDR             R0, =(TrapALError_ptr - 0x25C9AA)
25C9A6:  ADD             R0, PC; TrapALError_ptr
25C9A8:  LDR             R0, [R0]; TrapALError
25C9AA:  LDRB            R0, [R0]
25C9AC:  CMP             R0, #0
25C9AE:  ITT NE
25C9B0:  MOVNE           R0, #5; sig
25C9B2:  BLXNE           raise
25C9B6:  LDREX.W         R0, [R8,#0x50]
25C9BA:  CBNZ            R0, loc_25CA0A
25C9BC:  ADD.W           R0, R8, #0x50 ; 'P'
25C9C0:  MOVW            R1, #0xA003
25C9C4:  DMB.W           ISH
25C9C8:  STREX.W         R2, R1, [R0]
25C9CC:  CBZ             R2, loc_25CA0E
25C9CE:  LDREX.W         R2, [R0]
25C9D2:  CMP             R2, #0
25C9D4:  BEQ             loc_25C9C8
25C9D6:  B               loc_25CA0A
25C9D8:  LDR             R0, =(TrapALError_ptr - 0x25C9DE)
25C9DA:  ADD             R0, PC; TrapALError_ptr
25C9DC:  LDR             R0, [R0]; TrapALError
25C9DE:  LDRB            R0, [R0]
25C9E0:  CMP             R0, #0
25C9E2:  ITT NE
25C9E4:  MOVNE           R0, #5; sig
25C9E6:  BLXNE           raise
25C9EA:  LDREX.W         R0, [R8,#0x50]
25C9EE:  CBNZ            R0, loc_25CA0A
25C9F0:  ADD.W           R0, R8, #0x50 ; 'P'
25C9F4:  MOVW            R1, #0xA001
25C9F8:  DMB.W           ISH
25C9FC:  STREX.W         R2, R1, [R0]
25CA00:  CBZ             R2, loc_25CA0E
25CA02:  LDREX.W         R2, [R0]
25CA06:  CMP             R2, #0
25CA08:  BEQ             loc_25C9FC
25CA0A:  CLREX.W
25CA0E:  DMB.W           ISH
25CA12:  MOV             R0, R8
25CA14:  ADD             SP, SP, #4
25CA16:  POP.W           {R8-R11}
25CA1A:  POP.W           {R4-R7,LR}
25CA1E:  B.W             ALCcontext_DecRef
25CA22:  LDR.W           R0, [R4,#0x90]
25CA26:  MOV.W           R10, #0
25CA2A:  MOVS            R5, #0
25CA2C:  B               loc_25CA32
25CA2E:  LDR.W           R1, [R4,#0x98]
25CA32:  LDR.W           R3, [R4,#0x94]
25CA36:  SUBS            R1, #1
25CA38:  LDR             R2, [R0,#4]
25CA3A:  SUBS            R3, #1
25CA3C:  STRD.W          R2, R3, [R4,#0x90]
25CA40:  STR.W           R1, [R4,#0x98]
25CA44:  LDR             R1, [R0]
25CA46:  CBZ             R1, loc_25CA6A
25CA48:  LDR             R1, [R1,#0x44]
25CA4A:  STR.W           R1, [R11,R5,LSL#2]
25CA4E:  LDR             R1, [R0]
25CA50:  DMB.W           ISH
25CA54:  ADDS            R1, #0x2C ; ','
25CA56:  LDREX.W         R2, [R1]
25CA5A:  SUBS            R2, #1
25CA5C:  STREX.W         R3, R2, [R1]
25CA60:  CMP             R3, #0
25CA62:  BNE             loc_25CA56
25CA64:  DMB.W           ISH
25CA68:  B               loc_25CA6E
25CA6A:  STR.W           R10, [R11,R5,LSL#2]
25CA6E:  BLX             free
25CA72:  LDR.W           R0, [R4,#0x90]; p
25CA76:  ADDS            R5, #1
25CA78:  CMP             R5, R6
25CA7A:  BNE             loc_25CA2E
25CA7C:  CMP             R0, #0
25CA7E:  ITT NE
25CA80:  MOVNE           R1, #0
25CA82:  STRNE           R1, [R0,#8]
25CA84:  LDR.W           R0, [R8,#0x88]
25CA88:  LDR.W           R1, [R0,R9]
25CA8C:  LDR             R1, [R1,#0x30]
25CA8E:  BLX             R1
25CA90:  B               loc_25CA12
