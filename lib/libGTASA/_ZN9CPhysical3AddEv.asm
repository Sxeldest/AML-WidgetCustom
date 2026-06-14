; =========================================================
; Game Engine Function: _ZN9CPhysical3AddEv
; Address            : 0x3FCDEC - 0x3FCFC8
; =========================================================

3FCDEC:  PUSH            {R4-R7,LR}
3FCDEE:  ADD             R7, SP, #0xC
3FCDF0:  PUSH.W          {R8-R11}
3FCDF4:  SUB             SP, SP, #4
3FCDF6:  VPUSH           {D8-D12}
3FCDFA:  SUB             SP, SP, #0x30
3FCDFC:  MOV             R4, R0
3FCDFE:  LDRB            R0, [R4,#0x1D]
3FCE00:  LSLS            R0, R0, #0x1F
3FCE02:  BNE.W           loc_3FCFB2
3FCE06:  LDR             R0, [R4]
3FCE08:  MOV             R1, R4
3FCE0A:  LDR             R2, [R0,#0x28]
3FCE0C:  ADD             R0, SP, #0x78+var_58
3FCE0E:  BLX             R2
3FCE10:  VLDR            S16, =50.0
3FCE14:  VLDR            S0, [SP,#0x78+var_58]
3FCE18:  VLDR            S24, =60.0
3FCE1C:  VDIV.F32        S0, S0, S16
3FCE20:  VADD.F32        S0, S0, S24
3FCE24:  VLDR            S18, [SP,#0x78+var_54]
3FCE28:  VLDR            S20, [SP,#0x78+var_50]
3FCE2C:  VLDR            S22, [SP,#0x78+var_4C]
3FCE30:  VMOV            R0, S0; x
3FCE34:  BLX             floorf
3FCE38:  VDIV.F32        S0, S22, S16
3FCE3C:  VADD.F32        S0, S0, S24
3FCE40:  VDIV.F32        S2, S20, S16
3FCE44:  VMOV            R1, S0
3FCE48:  VADD.F32        S0, S2, S24
3FCE4C:  VMOV            S20, R0
3FCE50:  VMOV            R5, S0
3FCE54:  MOV             R0, R1; x
3FCE56:  BLX             floorf
3FCE5A:  VDIV.F32        S0, S18, S16
3FCE5E:  MOV             R6, R0
3FCE60:  VADD.F32        S0, S0, S24
3FCE64:  VMOV            R0, S0; x
3FCE68:  BLX             floorf
3FCE6C:  VMOV            S16, R0
3FCE70:  MOV             R0, R5; x
3FCE72:  BLX             floorf
3FCE76:  VCVT.S32.F32    S0, S16
3FCE7A:  VCVT.S32.F32    S6, S20
3FCE7E:  VMOV            S2, R0
3FCE82:  VMOV            S4, R6
3FCE86:  VCVT.S32.F32    S2, S2
3FCE8A:  VCVT.S32.F32    S4, S4
3FCE8E:  VMOV            R0, S6
3FCE92:  STR             R0, [SP,#0x78+var_70]
3FCE94:  ADDS            R0, #0x78 ; 'x'
3FCE96:  CMP             R0, #0xF0
3FCE98:  ITTTT LS
3FCE9A:  VMOVLS          R0, S4
3FCE9E:  MOVLS           R1, R0
3FCEA0:  STRLS           R1, [SP,#0x78+var_6C]
3FCEA2:  ADDLS           R0, #0x78 ; 'x'
3FCEA4:  IT LS
3FCEA6:  CMPLS           R0, #0xF0
3FCEA8:  BHI             loc_3FCFA4
3FCEAA:  VMOV            R0, S2
3FCEAE:  MOV             R1, R0
3FCEB0:  ADDS            R0, #0x78 ; 'x'
3FCEB2:  CMP             R0, #0xF0
3FCEB4:  STR             R1, [SP,#0x78+var_5C]
3FCEB6:  ITTTT LS
3FCEB8:  VMOVLS          R0, S0
3FCEBC:  MOVLS           R1, R0
3FCEBE:  STRLS           R1, [SP,#0x78+var_74]
3FCEC0:  ADDLS           R0, #0x78 ; 'x'
3FCEC2:  IT LS
3FCEC4:  CMPLS           R0, #0xF0
3FCEC6:  BHI             loc_3FCFA4
3FCEC8:  LDR             R0, [SP,#0x78+var_6C]
3FCECA:  LDR             R1, [SP,#0x78+var_74]
3FCECC:  CMP             R0, R1
3FCECE:  BGT             loc_3FCFA4
3FCED0:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3FCEDA)
3FCED2:  MOV.W           R8, #0
3FCED6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3FCED8:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3FCEDA:  STR             R0, [SP,#0x78+var_60]
3FCEDC:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3FCEE2)
3FCEDE:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3FCEE0:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3FCEE2:  STR             R0, [SP,#0x78+var_68]
3FCEE4:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3FCEEA)
3FCEE6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3FCEE8:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3FCEEA:  STR             R0, [SP,#0x78+var_64]
3FCEEC:  LDR             R0, [SP,#0x78+var_70]
3FCEEE:  LDR             R1, [SP,#0x78+var_5C]
3FCEF0:  CMP             R0, R1
3FCEF2:  BGT             loc_3FCF94
3FCEF4:  LDR             R0, [SP,#0x78+var_6C]
3FCEF6:  LDR.W           R9, [SP,#0x78+var_70]
3FCEFA:  LSLS            R0, R0, #4
3FCEFC:  UXTB.W          R10, R0
3FCF00:  AND.W           R0, R9, #0xF
3FCF04:  LDRB.W          R1, [R4,#0x3A]
3FCF08:  ORR.W           R0, R0, R10
3FCF0C:  LDR             R2, [SP,#0x78+var_60]
3FCF0E:  AND.W           R1, R1, #7
3FCF12:  ADD.W           R0, R0, R0,LSL#1
3FCF16:  CMP             R1, #4
3FCF18:  ADD.W           R6, R2, R0,LSL#2
3FCF1C:  BEQ             loc_3FCF3A
3FCF1E:  CMP             R1, #3
3FCF20:  BEQ             loc_3FCF2E
3FCF22:  CMP             R1, #2
3FCF24:  ITE EQ
3FCF26:  MOVEQ           R11, R6
3FCF28:  MOVNE.W         R11, #0
3FCF2C:  B               loc_3FCF44
3FCF2E:  LDR             R1, [SP,#0x78+var_64]
3FCF30:  ADD.W           R0, R1, R0,LSL#2
3FCF34:  ADD.W           R11, R0, #4
3FCF38:  B               loc_3FCF44
3FCF3A:  LDR             R1, [SP,#0x78+var_68]; unsigned int
3FCF3C:  ADD.W           R0, R1, R0,LSL#2
3FCF40:  ADD.W           R11, R0, #8
3FCF44:  MOVS            R0, #dword_14; this
3FCF46:  BLX             j__ZN14CEntryInfoNodenwEj; CEntryInfoNode::operator new(uint)
3FCF4A:  MOV             R5, R0
3FCF4C:  MOVS            R0, #(byte_9+3); this
3FCF4E:  BLX             j__ZN18CPtrNodeDoubleLinknwEj; CPtrNodeDoubleLink::operator new(uint)
3FCF52:  STR             R4, [R0]
3FCF54:  STR.W           R8, [R0,#8]
3FCF58:  LDR.W           R1, [R11]
3FCF5C:  STR             R1, [R0,#4]
3FCF5E:  LDR.W           R1, [R11]
3FCF62:  CMP             R1, #0
3FCF64:  IT NE
3FCF66:  STRNE           R0, [R1,#8]
3FCF68:  STR.W           R0, [R11]
3FCF6C:  STRD.W          R11, R0, [R5]
3FCF70:  STRD.W          R6, R8, [R5,#8]
3FCF74:  LDR.W           R0, [R4,#0xB4]
3FCF78:  STR             R0, [R5,#0x10]
3FCF7A:  LDR.W           R0, [R4,#0xB4]
3FCF7E:  CMP             R0, #0
3FCF80:  IT NE
3FCF82:  STRNE           R5, [R0,#0xC]
3FCF84:  STR.W           R5, [R4,#0xB4]
3FCF88:  LDR             R1, [SP,#0x78+var_5C]
3FCF8A:  ADD.W           R0, R9, #1
3FCF8E:  CMP             R9, R1
3FCF90:  MOV             R9, R0
3FCF92:  BLT             loc_3FCF00
3FCF94:  LDR             R0, [SP,#0x78+var_6C]
3FCF96:  LDR             R2, [SP,#0x78+var_74]
3FCF98:  MOV             R1, R0
3FCF9A:  CMP             R1, R2
3FCF9C:  ADD.W           R0, R1, #1
3FCFA0:  STR             R0, [SP,#0x78+var_6C]
3FCFA2:  BLT             loc_3FCEEC
3FCFA4:  ADD             SP, SP, #0x30 ; '0'
3FCFA6:  VPOP            {D8-D12}
3FCFAA:  ADD             SP, SP, #4
3FCFAC:  POP.W           {R8-R11}
3FCFB0:  POP             {R4-R7,PC}
3FCFB2:  MOV             R0, R4; this
3FCFB4:  ADD             SP, SP, #0x30 ; '0'
3FCFB6:  VPOP            {D8-D12}
3FCFBA:  ADD             SP, SP, #4
3FCFBC:  POP.W           {R8-R11}
3FCFC0:  POP.W           {R4-R7,LR}
3FCFC4:  B.W             sub_18FCA4
