; =========================================================
; Game Engine Function: _ZN11CWaterLevel27RenderDetailedSeaBedSegmentEiiffff
; Address            : 0x596DCC - 0x597040
; =========================================================

596DCC:  PUSH            {R4-R7,LR}
596DCE:  ADD             R7, SP, #0xC
596DD0:  PUSH.W          {R8-R11}
596DD4:  SUB             SP, SP, #4
596DD6:  VPUSH           {D8-D10}
596DDA:  SUB             SP, SP, #0x38
596DDC:  VLDR            S0, [R7,#arg_0]
596DE0:  VMOV            S6, R3
596DE4:  VLDR            S4, [R7,#arg_4]
596DE8:  VMOV            S2, R2
596DEC:  VMOV.F32        S8, #4.0
596DF0:  MOVS            R3, #1
596DF2:  VSUB.F32        S4, S4, S0
596DF6:  VSUB.F32        S6, S6, S2
596DFA:  VMUL.F32        S10, S4, S8
596DFE:  VMUL.F32        S8, S6, S8
596E02:  VCVT.S32.F32    S10, S10
596E06:  VCVT.S32.F32    S8, S8
596E0A:  VMOV            R4, S10
596E0E:  VMOV            R2, S8
596E12:  CMP             R4, #1
596E14:  IT LE
596E16:  MOVLE           R4, R3
596E18:  CMP             R2, #1
596E1A:  IT GT
596E1C:  MOVGT           R3, R2
596E1E:  CMP             R3, #1
596E20:  STR             R3, [SP,#0x70+var_4C]
596E22:  BLT.W           loc_597032
596E26:  VMOV            S8, R1
596E2A:  LDR             R1, =(TempBufferIndicesStored_ptr - 0x596E3A)
596E2C:  VMOV            S10, R0
596E30:  LDR             R2, =(TempBufferVerticesStored_ptr - 0x596E46)
596E32:  VMOV            S12, R4
596E36:  ADD             R1, PC; TempBufferIndicesStored_ptr
596E38:  VCVT.F32.S32    S8, S8
596E3C:  LDR             R6, =(TempVertexBuffer_ptr - 0x596E4E)
596E3E:  VCVT.F32.S32    S10, S10
596E42:  ADD             R2, PC; TempBufferVerticesStored_ptr
596E44:  VCVT.F32.S32    S12, S12
596E48:  LDR             R0, [SP,#0x70+var_4C]
596E4A:  ADD             R6, PC; TempVertexBuffer_ptr
596E4C:  VMOV.F32        S3, #8.0
596E50:  MOVW            R12, #0x5050
596E54:  MOVW            R9, #0
596E58:  VMOV            S14, R0
596E5C:  LSLS            R0, R4, #2
596E5E:  VLDR            S1, =500.0
596E62:  MOVS            R3, #0
596E64:  VCVT.F32.S32    S14, S14
596E68:  STR             R0, [SP,#0x70+var_50]
596E6A:  ADD.W           R0, R4, R4,LSL#1
596E6E:  VLDR            S5, =-3000.0
596E72:  MOVT            R12, #0xFF50
596E76:  MOVT            R9, #0xC28C
596E7A:  LSLS            R0, R0, #1
596E7C:  STR             R0, [SP,#0x70+var_54]
596E7E:  LDR             R0, [R1]; TempBufferIndicesStored
596E80:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x596E88)
596E82:  STR             R0, [SP,#0x70+var_58]
596E84:  ADD             R1, PC; TempBufferRenderIndexList_ptr
596E86:  LDR             R0, [R2]; TempBufferVerticesStored
596E88:  LDR             R2, =(TempBufferIndicesStored_ptr - 0x596E92)
596E8A:  STR             R0, [SP,#0x70+var_5C]
596E8C:  LDR             R0, [R1]; TempBufferRenderIndexList
596E8E:  ADD             R2, PC; TempBufferIndicesStored_ptr
596E90:  STR             R0, [SP,#0x70+var_60]
596E92:  LDR             R0, [R6]; TempVertexBuffer
596E94:  LDR             R6, =(TempBufferVerticesStored_ptr - 0x596E9C)
596E96:  STR             R0, [SP,#0x70+var_64]
596E98:  ADD             R6, PC; TempBufferVerticesStored_ptr
596E9A:  LDR             R0, [R2]; TempBufferIndicesStored
596E9C:  STR             R0, [SP,#0x70+var_68]
596E9E:  LDR             R0, [R6]; TempBufferVerticesStored
596EA0:  STR             R0, [SP,#0x70+var_6C]
596EA2:  CMP             R4, #0
596EA4:  BLE.W           loc_597028
596EA8:  VMOV            S7, R3
596EAC:  ADDS            R3, #1
596EAE:  MOVS            R6, #0
596EB0:  MOVS            R5, #1
596EB2:  VMOV            S9, R3
596EB6:  VCVT.F32.S32    S7, S7
596EBA:  STR             R3, [SP,#0x70+var_40]
596EBC:  VCVT.F32.S32    S9, S9
596EC0:  LDR             R0, [SP,#0x70+var_58]
596EC2:  LDR             R3, [R0]
596EC4:  LDR             R0, [SP,#0x70+var_5C]
596EC6:  STR             R3, [SP,#0x70+var_44]
596EC8:  VMUL.F32        S7, S6, S7
596ECC:  VMUL.F32        S9, S6, S9
596ED0:  LDR.W           R8, [R0]
596ED4:  LDR             R0, [SP,#0x70+var_50]
596ED6:  ADD             R0, R8
596ED8:  STR             R0, [SP,#0x70+var_48]
596EDA:  LDR             R0, [SP,#0x70+var_60]
596EDC:  ADD.W           R2, R8, R8,LSL#3
596EE0:  VDIV.F32        S7, S7, S14
596EE4:  ADD.W           R1, R0, R3,LSL#1
596EE8:  STR             R1, [SP,#0x70+var_3C]
596EEA:  ADD.W           R11, R0, #0xA
596EEE:  LDR             R1, [SP,#0x70+var_64]
596EF0:  ADD.W           R2, R1, R2,LSL#2
596EF4:  ADD.W           R10, R2, #0x8C
596EF8:  LSLS            R2, R3, #1
596EFA:  VDIV.F32        S9, S9, S14
596EFE:  VADD.F32        S7, S7, S2
596F02:  VADD.F32        S9, S9, S2
596F06:  VADD.F32        S11, S7, S10
596F0A:  VADD.F32        S13, S9, S10
596F0E:  VMUL.F32        S7, S7, S3
596F12:  VMUL.F32        S9, S9, S3
596F16:  VMUL.F32        S11, S11, S1
596F1A:  VMUL.F32        S13, S13, S1
596F1E:  VADD.F32        S11, S11, S5
596F22:  VADD.F32        S13, S13, S5
596F26:  SUB.W           LR, R5, #1
596F2A:  VMOV            S15, R5
596F2E:  ADD.W           R0, R11, R2
596F32:  ADD.W           R3, R8, R6
596F36:  VMOV            S16, LR
596F3A:  CMP             R5, R4
596F3C:  VCVT.F32.S32    S15, S15
596F40:  VCVT.F32.S32    S16, S16
596F44:  LDR             R1, [SP,#0x70+var_3C]
596F46:  STRH.W          R3, [R0,#-0xA]
596F4A:  ADD.W           R0, R6, R6,LSL#1
596F4E:  ADD             R0, R1
596F50:  ADD.W           R1, R3, #3
596F54:  VSTR            S7, [R10,#-0x70]
596F58:  ADD.W           R6, R6, #4
596F5C:  STRH            R1, [R0,#6]
596F5E:  ADD.W           R1, R3, #1
596F62:  ADD.W           R3, R3, #2
596F66:  STRH            R3, [R0,#4]
596F68:  VMUL.F32        S15, S4, S15
596F6C:  STRH            R1, [R0,#2]
596F6E:  VMUL.F32        S16, S4, S16
596F72:  STRH            R1, [R0,#8]
596F74:  ADD.W           R0, R5, #1
596F78:  VSTR            S11, [R10,#-0x8C]
596F7C:  STR.W           R9, [R10,#-0x84]
596F80:  STR.W           R12, [R10,#-0x74]
596F84:  MOV             R5, R0
596F86:  VSTR            S7, [R10,#-0x4C]
596F8A:  VSTR            S11, [R10,#-0x68]
596F8E:  VDIV.F32        S15, S15, S12
596F92:  STR.W           R9, [R10,#-0x60]
596F96:  STR.W           R12, [R10,#-0x50]
596F9A:  STRH.W          R3, [R11,R2]
596F9E:  ADD.W           R11, R11, #0xC
596FA2:  VDIV.F32        S16, S16, S12
596FA6:  VADD.F32        S15, S15, S0
596FAA:  VSTR            S13, [R10,#-0x44]
596FAE:  VADD.F32        S16, S16, S0
596FB2:  STR.W           R9, [R10,#-0x3C]
596FB6:  STR.W           R12, [R10,#-0x2C]
596FBA:  VADD.F32        S18, S15, S8
596FBE:  VADD.F32        S20, S16, S8
596FC2:  VMUL.F32        S15, S15, S3
596FC6:  VMUL.F32        S16, S16, S3
596FCA:  VMUL.F32        S18, S18, S1
596FCE:  VMUL.F32        S20, S20, S1
596FD2:  VSTR            S15, [R10,#-0x48]
596FD6:  VSTR            S16, [R10,#-0x6C]
596FDA:  VADD.F32        S18, S18, S5
596FDE:  VADD.F32        S20, S20, S5
596FE2:  VSTR            S18, [R10,#-0x64]
596FE6:  VSTR            S20, [R10,#-0x88]
596FEA:  VSTR            S20, [R10,#-0x40]
596FEE:  VSTR            S9, [R10,#-4]
596FF2:  VSTR            S15, [R10]
596FF6:  VSTR            S9, [R10,#-0x28]
596FFA:  VSTR            S16, [R10,#-0x24]
596FFE:  VSTR            S13, [R10,#-0x20]
597002:  VSTR            S18, [R10,#-0x1C]
597006:  STR.W           R9, [R10,#-0x18]
59700A:  STR.W           R12, [R10,#-8]
59700E:  ADD.W           R10, R10, #0x90
597012:  BLT             loc_596F26
597014:  LDR             R0, [SP,#0x70+var_54]
597016:  LDR             R1, [SP,#0x70+var_44]
597018:  LDR             R3, [SP,#0x70+var_40]
59701A:  ADDS            R2, R0, R1
59701C:  LDR             R0, [SP,#0x70+var_68]
59701E:  LDR             R1, [SP,#0x70+var_48]
597020:  STR             R2, [R0]
597022:  LDR             R0, [SP,#0x70+var_6C]
597024:  STR             R1, [R0]
597026:  B               loc_59702A
597028:  ADDS            R3, #1
59702A:  LDR             R0, [SP,#0x70+var_4C]
59702C:  CMP             R3, R0
59702E:  BLT.W           loc_596EA2
597032:  ADD             SP, SP, #0x38 ; '8'
597034:  VPOP            {D8-D10}
597038:  ADD             SP, SP, #4
59703A:  POP.W           {R8-R11}
59703E:  POP             {R4-R7,PC}
