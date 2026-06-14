; =========================================================
; Game Engine Function: sub_21E95C
; Address            : 0x21E95C - 0x21EB92
; =========================================================

21E95C:  PUSH            {R4-R7,LR}
21E95E:  ADD             R7, SP, #0xC
21E960:  PUSH.W          {R8-R11}
21E964:  SUB             SP, SP, #0x144
21E966:  MOV             R8, R0
21E968:  LDR             R0, =(dword_6BD638 - 0x21E96E)
21E96A:  ADD             R0, PC; dword_6BD638
21E96C:  LDR             R0, [R0]
21E96E:  ADD.W           R4, R8, R0
21E972:  MOV             R0, R8
21E974:  LDR             R1, [R4,#0x18]
21E976:  BLX             R1
21E978:  CMP             R0, #0
21E97A:  BEQ.W           loc_21EB66
21E97E:  LDR             R4, [R4,#0xC]
21E980:  CMP             R4, #0
21E982:  BEQ.W           loc_21EB88
21E986:  LDR             R0, =(dword_6BD638 - 0x21E98C)
21E988:  ADD             R0, PC; dword_6BD638
21E98A:  LDR             R5, [R0]
21E98C:  LDR.W           R0, [R8,#4]
21E990:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
21E994:  VLDR            D16, [R0,#0x30]
21E998:  ADD.W           R9, R8, R5
21E99C:  LDR             R0, [R0,#0x38]
21E99E:  ADD.W           R12, R8, #0x98
21E9A2:  STR             R0, [SP,#0x160+var_128]
21E9A4:  ADD.W           LR, SP, #0x160+var_124
21E9A8:  VSTR            D16, [SP,#0x160+var_130]
21E9AC:  MOV.W           R10, #0
21E9B0:  VLDR            D16, [R8,#0x11C]
21E9B4:  LDR.W           R0, [R8,#0x124]
21E9B8:  STR             R0, [SP,#0x160+var_138]
21E9BA:  VSTR            D16, [SP,#0x160+var_140]
21E9BE:  VLDR            D16, [R8,#0x110]
21E9C2:  LDR.W           R0, [R8,#0x118]
21E9C6:  STR             R0, [SP,#0x160+var_148]
21E9C8:  VSTR            D16, [SP,#0x160+var_150]
21E9CC:  LDR.W           R0, [R9,#0xC]
21E9D0:  LDR             R1, [R4,#0xC]
21E9D2:  MOVS            R4, #0
21E9D4:  STR             R1, [SP,#0x160+var_160]
21E9D6:  LDR.W           R11, [R0,#0x1C]
21E9DA:  LDR             R0, =(RwEngineInstance_ptr - 0x21E9E4)
21E9DC:  STR.W           R12, [SP,#0x160+var_15C]
21E9E0:  ADD             R0, PC; RwEngineInstance_ptr
21E9E2:  LDR             R0, [R0]; RwEngineInstance
21E9E4:  STR             R0, [SP,#0x160+var_158]
21E9E6:  LDR.W           R0, [R11]
21E9EA:  CMP.W           R0, #0xFFFFFFFF
21E9EE:  BLE             loc_21EA46
21E9F0:  ADD             R1, SP, #0x160+var_140
21E9F2:  VLDR            S0, [R11,#0x10]
21E9F6:  ADD             R0, R1
21E9F8:  VLDR            S2, [R11,#0x14]
21E9FC:  ADD             R1, SP, #0x160+var_150
21E9FE:  VLDR            S4, [R0]
21EA02:  VSUB.F32        S0, S4, S0
21EA06:  VSTR            S0, [SP,#0x160+var_24]
21EA0A:  LDR.W           R0, [R11]
21EA0E:  ADD             R0, R1
21EA10:  VLDR            S0, [R0]
21EA14:  VSUB.F32        S0, S2, S0
21EA18:  VSTR            S0, [SP,#0x160+var_154]
21EA1C:  LDR             R0, [SP,#0x160+var_24]
21EA1E:  CMP.W           R0, #0xFFFFFFFF
21EA22:  ITT LE
21EA24:  LDRLE           R0, [SP,#0x160+var_154]
21EA26:  CMPLE.W         R0, #0xFFFFFFFF
21EA2A:  BLE             loc_21EAC2
21EA2C:  LDR             R0, [SP,#0x160+var_24]
21EA2E:  ADD.W           R1, R11, #0xC
21EA32:  CMP             R0, #0
21EA34:  IT LT
21EA36:  ADDLT.W         R1, R11, #8
21EA3A:  LDR.W           R11, [R1]
21EA3E:  CMP.W           R10, #0xFFFFFFFF
21EA42:  BGT             loc_21E9E6
21EA44:  B               loc_21EB84
21EA46:  ADD.W           R0, R11, #0x50 ; 'P'
21EA4A:  MOV.W           R1, #0xFFFFFFFF
21EA4E:  MOV             R2, R12
21EA50:  LDRB            R3, [R2,#0x11]
21EA52:  LDRB            R5, [R2,#0x10]
21EA54:  VLDR            S0, [R2]
21EA58:  ADD.W           R3, R3, R3,LSL#1
21EA5C:  VLDR            S2, [R2,#4]
21EA60:  ADD.W           R5, R5, R5,LSL#1
21EA64:  LDRB            R6, [R2,#0x12]
21EA66:  ADD.W           R3, R0, R3,LSL#2
21EA6A:  VLDR            S4, [R2,#8]
21EA6E:  VLDR            S6, [R2,#0xC]
21EA72:  VLDR            S8, [R3,#4]
21EA76:  ADD.W           R3, R0, R5,LSL#2
21EA7A:  VLDR            S10, [R3]
21EA7E:  VMUL.F32        S2, S8, S2
21EA82:  ADD.W           R3, R6, R6,LSL#1
21EA86:  VMUL.F32        S0, S10, S0
21EA8A:  ADD.W           R3, R0, R3,LSL#2
21EA8E:  VLDR            S8, [R3,#8]
21EA92:  VMUL.F32        S4, S8, S4
21EA96:  VADD.F32        S0, S0, S2
21EA9A:  VADD.F32        S0, S0, S4
21EA9E:  VSUB.F32        S0, S0, S6
21EAA2:  VSTR            S0, [SP,#0x160+var_24]
21EAA6:  LDR             R3, [SP,#0x160+var_24]
21EAA8:  CMP             R3, #0
21EAAA:  BGT             loc_21EB54
21EAAC:  ADDS            R1, #1
21EAAE:  ADDS            R2, #0x14
21EAB0:  CMP             R1, #4
21EAB2:  BLE             loc_21EA50
21EAB4:  LDR.W           R2, [R9,#4]
21EAB8:  CMP             R4, R2
21EABA:  BGE             loc_21EB18
21EABC:  LDR.W           R0, [R9]
21EAC0:  B               loc_21EB4E
21EAC2:  LDR.W           R0, [R11]
21EAC6:  ADD             R1, SP, #0x160+var_130
21EAC8:  VLDR            S0, [R11,#4]
21EACC:  ADD.W           R10, R10, #1
21EAD0:  ADD             R0, R1
21EAD2:  VLDR            S2, [R0]
21EAD6:  MOVS            R0, #0
21EAD8:  VCMPE.F32       S2, S0
21EADC:  VMRS            APSR_nzcv, FPSCR
21EAE0:  IT GT
21EAE2:  MOVGT           R0, #1
21EAE4:  LDR             R1, [SP,#0x160+var_160]
21EAE6:  CMP             R1, #2
21EAE8:  MOV.W           R1, #0
21EAEC:  IT EQ
21EAEE:  MOVEQ           R1, #1
21EAF0:  EORS            R0, R1
21EAF2:  MOV.W           R1, #0xC
21EAF6:  MOV.W           R0, #8
21EAFA:  IT NE
21EAFC:  MOVNE           R0, #0xC
21EAFE:  IT NE
21EB00:  MOVNE           R1, #8
21EB02:  LDR.W           R1, [R11,R1]
21EB06:  LDR.W           R11, [R11,R0]
21EB0A:  STR.W           R1, [LR,R10,LSL#2]
21EB0E:  CMP.W           R10, #0xFFFFFFFF
21EB12:  BGT.W           loc_21E9E6
21EB16:  B               loc_21EB84
21EB18:  LDR             R1, [SP,#0x160+var_158]
21EB1A:  MOVS            R3, #0xC8
21EB1C:  LDR.W           R0, [R9]
21EB20:  ADD.W           R5, R3, R2,LSL#2
21EB24:  LDR             R1, [R1]
21EB26:  CBZ             R0, loc_21EB32
21EB28:  LDR.W           R2, [R1,#0x134]
21EB2C:  MOV             R1, R5
21EB2E:  BLX             R2
21EB30:  B               loc_21EB3A
21EB32:  LDR.W           R1, [R1,#0x12C]
21EB36:  MOV             R0, R5
21EB38:  BLX             R1
21EB3A:  ADD.W           LR, SP, #0x160+var_124
21EB3E:  CBZ             R0, loc_21EB6C
21EB40:  LDR.W           R1, [R9,#4]
21EB44:  ADDS            R1, #0x32 ; '2'
21EB46:  STRD.W          R0, R1, [R9]
21EB4A:  LDR.W           R12, [SP,#0x160+var_15C]
21EB4E:  STR.W           R11, [R0,R4,LSL#2]
21EB52:  ADDS            R4, #1
21EB54:  LDR.W           R11, [LR,R10,LSL#2]
21EB58:  SUB.W           R10, R10, #1
21EB5C:  CMP.W           R10, #0xFFFFFFFF
21EB60:  BGT.W           loc_21E9E6
21EB64:  B               loc_21EB84
21EB66:  MOV.W           R8, #0
21EB6A:  B               loc_21EB88
21EB6C:  MOVS            R0, #0
21EB6E:  MOV             R1, R5
21EB70:  STR             R0, [SP,#0x160+var_24]
21EB72:  MOVS            R0, #0x80000013; int
21EB78:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21EB7C:  STR             R0, [SP,#0x160+var_20]
21EB7E:  ADD             R0, SP, #0x160+var_24
21EB80:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21EB84:  STR.W           R4, [R9,#8]
21EB88:  MOV             R0, R8
21EB8A:  ADD             SP, SP, #0x144
21EB8C:  POP.W           {R8-R11}
21EB90:  POP             {R4-R7,PC}
