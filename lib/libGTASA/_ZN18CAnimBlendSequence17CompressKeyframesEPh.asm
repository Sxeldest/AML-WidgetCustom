; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequence17CompressKeyframesEPh
; Address            : 0x38BB8C - 0x38BD4E
; =========================================================

38BB8C:  PUSH            {R4-R7,LR}
38BB8E:  ADD             R7, SP, #0xC
38BB90:  PUSH.W          {R11}
38BB94:  MOV             R4, R0
38BB96:  MOV             R5, R1
38BB98:  LDRSH.W         R1, [R4,#6]; unsigned int
38BB9C:  UXTH            R0, R1
38BB9E:  CMP             R0, #0
38BBA0:  BEQ.W           loc_38BD48
38BBA4:  LDRB            R2, [R4,#4]
38BBA6:  LSLS            R2, R2, #0x1E
38BBA8:  BMI             loc_38BC4C
38BBAA:  CMP             R5, #0
38BBAC:  MOV             R6, R5
38BBAE:  BNE             loc_38BBBE
38BBB0:  ADD.W           R0, R1, R1,LSL#2
38BBB4:  LSLS            R0, R0, #1; byte_count
38BBB6:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
38BBBA:  MOV             R6, R0
38BBBC:  LDRH            R0, [R4,#6]
38BBBE:  SXTH            R0, R0
38BBC0:  CMP             R0, #1
38BBC2:  BLT.W           loc_38BD26
38BBC6:  VMOV.F32        S4, #0.5
38BBCA:  LDR             R1, [R4,#8]
38BBCC:  ADDS            R0, R6, #4
38BBCE:  VLDR            S0, =4096.0
38BBD2:  ADDS            R1, #0x10
38BBD4:  VLDR            S2, =60.0
38BBD8:  MOVS            R2, #0
38BBDA:  VLDR            S6, [R1,#-0x10]
38BBDE:  ADDS            R2, #1
38BBE0:  VMUL.F32        S6, S6, S0
38BBE4:  VCVT.S32.F32    S6, S6
38BBE8:  VMOV            R3, S6
38BBEC:  STRH.W          R3, [R0,#-4]
38BBF0:  VLDR            S6, [R1,#-0xC]
38BBF4:  VMUL.F32        S6, S6, S0
38BBF8:  VCVT.S32.F32    S6, S6
38BBFC:  VMOV            R3, S6
38BC00:  STRH.W          R3, [R0,#-2]
38BC04:  VLDR            S6, [R1,#-8]
38BC08:  VMUL.F32        S6, S6, S0
38BC0C:  VCVT.S32.F32    S6, S6
38BC10:  VMOV            R3, S6
38BC14:  STRH            R3, [R0]
38BC16:  VLDR            S6, [R1,#-4]
38BC1A:  VMUL.F32        S6, S6, S0
38BC1E:  VCVT.S32.F32    S6, S6
38BC22:  VMOV            R3, S6
38BC26:  STRH            R3, [R0,#2]
38BC28:  VLDR            S6, [R1]
38BC2C:  ADDS            R1, #0x14
38BC2E:  VMUL.F32        S6, S6, S2
38BC32:  VADD.F32        S6, S6, S4
38BC36:  VCVT.S32.F32    S6, S6
38BC3A:  VMOV            R3, S6
38BC3E:  STRH            R3, [R0,#4]
38BC40:  ADDS            R0, #0xA
38BC42:  LDRSH.W         R3, [R4,#6]
38BC46:  CMP             R2, R3
38BC48:  BLT             loc_38BBDA
38BC4A:  B               loc_38BD26
38BC4C:  CMP             R5, #0
38BC4E:  MOV             R6, R5
38BC50:  BNE             loc_38BC5C
38BC52:  LSLS            R0, R1, #4; byte_count
38BC54:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
38BC58:  MOV             R6, R0
38BC5A:  LDRH            R0, [R4,#6]
38BC5C:  SXTH            R0, R0
38BC5E:  CMP             R0, #1
38BC60:  BLT             loc_38BD26
38BC62:  VMOV.F32        S4, #0.5
38BC66:  LDR             R1, [R4,#8]
38BC68:  ADD.W           R0, R6, #8
38BC6C:  VLDR            S0, =4096.0
38BC70:  ADDS            R1, #0x10
38BC72:  VLDR            S2, =60.0
38BC76:  VLDR            S6, =1024.0
38BC7A:  MOVS            R2, #0
38BC7C:  VLDR            S8, [R1,#-0x10]
38BC80:  ADDS            R2, #1
38BC82:  VMUL.F32        S8, S8, S0
38BC86:  VCVT.S32.F32    S8, S8
38BC8A:  VMOV            R3, S8
38BC8E:  STRH.W          R3, [R0,#-8]
38BC92:  VLDR            S8, [R1,#-0xC]
38BC96:  VMUL.F32        S8, S8, S0
38BC9A:  VCVT.S32.F32    S8, S8
38BC9E:  VMOV            R3, S8
38BCA2:  STRH.W          R3, [R0,#-6]
38BCA6:  VLDR            S8, [R1,#-8]
38BCAA:  VMUL.F32        S8, S8, S0
38BCAE:  VCVT.S32.F32    S8, S8
38BCB2:  VMOV            R3, S8
38BCB6:  STRH.W          R3, [R0,#-4]
38BCBA:  VLDR            S8, [R1,#-4]
38BCBE:  VMUL.F32        S8, S8, S0
38BCC2:  VCVT.S32.F32    S8, S8
38BCC6:  VMOV            R3, S8
38BCCA:  STRH.W          R3, [R0,#-2]
38BCCE:  VLDR            S8, [R1]
38BCD2:  VMUL.F32        S8, S8, S2
38BCD6:  VADD.F32        S8, S8, S4
38BCDA:  VCVT.S32.F32    S8, S8
38BCDE:  VMOV            R3, S8
38BCE2:  STRH            R3, [R0]
38BCE4:  VLDR            S8, [R1,#4]
38BCE8:  VMUL.F32        S8, S8, S6
38BCEC:  VCVT.S32.F32    S8, S8
38BCF0:  VMOV            R3, S8
38BCF4:  STRH            R3, [R0,#2]
38BCF6:  VLDR            S8, [R1,#8]
38BCFA:  VMUL.F32        S8, S8, S6
38BCFE:  VCVT.S32.F32    S8, S8
38BD02:  VMOV            R3, S8
38BD06:  STRH            R3, [R0,#4]
38BD08:  VLDR            S8, [R1,#0xC]
38BD0C:  ADDS            R1, #0x20 ; ' '; void *
38BD0E:  VMUL.F32        S8, S8, S6
38BD12:  VCVT.S32.F32    S8, S8
38BD16:  VMOV            R3, S8
38BD1A:  STRH            R3, [R0,#6]
38BD1C:  ADDS            R0, #0x10
38BD1E:  LDRSH.W         R3, [R4,#6]
38BD22:  CMP             R2, R3
38BD24:  BLT             loc_38BC7C
38BD26:  LDRB            R0, [R4,#4]
38BD28:  LSLS            R0, R0, #0x1C
38BD2A:  ITT PL
38BD2C:  LDRPL           R0, [R4,#8]; this
38BD2E:  BLXPL           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
38BD32:  STR             R6, [R4,#8]
38BD34:  CMP             R5, #0
38BD36:  LDRH            R0, [R4,#4]
38BD38:  ORR.W           R1, R0, #8
38BD3C:  IT EQ
38BD3E:  BICEQ.W         R1, R0, #0xC
38BD42:  ORR.W           R0, R1, #4
38BD46:  STRH            R0, [R4,#4]
38BD48:  POP.W           {R11}
38BD4C:  POP             {R4-R7,PC}
