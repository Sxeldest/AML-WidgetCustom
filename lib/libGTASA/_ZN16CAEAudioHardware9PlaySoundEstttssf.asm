; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware9PlaySoundEstttssf
; Address            : 0x392A68 - 0x392B7E
; =========================================================

392A68:  PUSH            {R4-R7,LR}
392A6A:  ADD             R7, SP, #0xC
392A6C:  PUSH.W          {R8-R11}
392A70:  SUB             SP, SP, #4
392A72:  VPUSH           {D8}
392A76:  SUB             SP, SP, #0x10
392A78:  MOV             R4, R1
392A7A:  MOV             R5, R3
392A7C:  MOV             R6, R2
392A7E:  MOV             R9, R0
392A80:  CMP             R4, #0
392A82:  BLT             loc_392B70
392A84:  ADD.W           R0, R9, R4,LSL#1
392A88:  LDRH.W          R0, [R0,#0x4C]
392A8C:  CMP             R0, R6
392A8E:  BLS             loc_392B70
392A90:  LDR             R1, [R7,#arg_0]
392A92:  SUB.W           R3, R7, #-var_2A; unsigned __int16 *
392A96:  LDR.W           R0, [R9,#0xB78]; this
392A9A:  SXTH.W          R8, R1
392A9E:  MOV             R1, R5; unsigned __int16
392AA0:  MOV             R2, R8; __int16
392AA2:  BLX             j__ZN16CAEMP3BankLoader14GetSoundBufferEtsPt; CAEMP3BankLoader::GetSoundBuffer(ushort,short,ushort *)
392AA6:  MOV             R10, R0
392AA8:  CMP.W           R10, #0
392AAC:  BEQ             loc_392B70
392AAE:  LDR.W           R0, [R9,#0xB78]; this
392AB2:  MOV             R1, R5; unsigned __int16
392AB4:  MOV             R2, R8; __int16
392AB6:  BLX             j__ZN16CAEMP3BankLoader13GetLoopOffsetEts; CAEMP3BankLoader::GetLoopOffset(ushort,short)
392ABA:  ADD             R4, R6
392ABC:  UXTH            R1, R4
392ABE:  CMP             R1, #0x1E
392AC0:  BHI             loc_392B70
392AC2:  ADD.W           R6, R9, R1,LSL#2
392AC6:  LDRH.W          R2, [R7,#var_2A]
392ACA:  SXTH            R0, R0
392ACC:  MOV             R3, R8; __int16
392ACE:  LDR.W           R1, [R6,#0xBCC]
392AD2:  STRD.W          R0, R2, [SP,#0x38+var_38]; __int16
392AD6:  MOV             R2, R5; unsigned __int16
392AD8:  MOV             R0, R1; this
392ADA:  MOV             R1, R10; OALBuffer *
392ADC:  BLX             j__ZN16CAEStaticChannel14SetAudioBufferEP9OALBuffertsst; CAEStaticChannel::SetAudioBuffer(OALBuffer *,ushort,short,short,ushort)
392AE0:  CMP             R0, #0
392AE2:  BEQ             loc_392B70
392AE4:  ADDW            R10, R6, #0xBCC
392AE8:  LDRD.W          R11, R8, [R7,#arg_4]
392AEC:  VLDR            S16, [R7,#arg_C]
392AF0:  LDR.W           R0, [R10]
392AF4:  CMP.W           R11, #0
392AF8:  MOV             R6, R11
392AFA:  LDR             R1, [R0]
392AFC:  LDR             R1, [R1,#0x14]
392AFE:  IT LE
392B00:  MOVLE           R6, #0
392B02:  BLX             R1
392B04:  MOV             R5, R0
392B06:  CMP.W           R11, #1
392B0A:  BLT             loc_392B44
392B0C:  ANDS.W          R0, R8, #8
392B10:  BEQ             loc_392B44
392B12:  SXTH            R0, R6
392B14:  VLDR            S2, =100.0
392B18:  VMOV            S0, R0
392B1C:  VCVT.F32.S32    S0, S0
392B20:  VDIV.F32        S0, S0, S2
392B24:  VMOV            S2, R5
392B28:  VCVT.F32.S32    S2, S2
392B2C:  VMUL.F32        S0, S0, S2
392B30:  VMOV            R0, S0; x
392B34:  BLX             floorf
392B38:  VMOV            S0, R0
392B3C:  VCVT.S32.F32    S0, S0
392B40:  VMOV            R6, S0
392B44:  VMOV            R3, S16
392B48:  LDR.W           R0, [R10]
392B4C:  SXTH            R2, R6
392B4E:  CMP             R5, R2
392B50:  SXTB.W          R2, R8
392B54:  LDR             R1, [R0]
392B56:  IT LT
392B58:  MOVLT           R6, R5
392B5A:  LDR             R5, [R1,#0x18]
392B5C:  SXTH            R1, R6
392B5E:  BLX             R5
392B60:  ADD.W           R0, R9, R4,LSL#1
392B64:  STRH.W          R8, [R0,#6]
392B68:  LDR.W           R0, [R10]
392B6C:  STR.W           R8, [R0,#0xC]
392B70:  ADD             SP, SP, #0x10
392B72:  VPOP            {D8}
392B76:  ADD             SP, SP, #4
392B78:  POP.W           {R8-R11}
392B7C:  POP             {R4-R7,PC}
