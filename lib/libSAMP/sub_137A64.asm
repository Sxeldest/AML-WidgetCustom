; =========================================================
; Game Engine Function: sub_137A64
; Address            : 0x137A64 - 0x137B6C
; =========================================================

137A64:  PUSH            {R4-R7,LR}
137A66:  ADD             R7, SP, #0xC
137A68:  PUSH.W          {R11}
137A6C:  SUB             SP, SP, #0x18
137A6E:  MOV             R4, R0
137A70:  LDR             R0, [R0,#4]
137A72:  LDR             R3, [R4,#8]
137A74:  MOV             R5, R1
137A76:  CMP             R0, R3
137A78:  BCS             loc_137ABE
137A7A:  LDR             R1, [R5]
137A7C:  MOVS            R2, #0
137A7E:  STR             R1, [R0]
137A80:  VLDR            D16, [R5,#4]
137A84:  LDR             R1, [R5,#0xC]
137A86:  STR             R1, [R0,#0xC]
137A88:  VSTR            D16, [R0,#4]
137A8C:  VLDR            D16, [R5,#0x10]
137A90:  LDR             R1, [R5,#0x18]
137A92:  STR             R2, [R5,#0xC]
137A94:  STRD.W          R2, R2, [R5,#4]
137A98:  STR             R1, [R0,#0x18]
137A9A:  ADD.W           R1, R5, #0x1C
137A9E:  VSTR            D16, [R0,#0x10]
137AA2:  ADDS            R0, #0x1C
137AA4:  VLD1.32         {D16-D17}, [R1]!
137AA8:  VLD1.32         {D18-D19}, [R1]
137AAC:  STR             R2, [R5,#0x18]
137AAE:  STRD.W          R2, R2, [R5,#0x10]
137AB2:  VST1.32         {D16-D17}, [R0]!
137AB6:  VST1.32         {D18-D19}, [R0]!
137ABA:  STR             R0, [R4,#4]
137ABC:  B               loc_137B5E
137ABE:  LDR             R6, [R4]
137AC0:  MOV             R12, #0xEEEEEEEF
137AC8:  MOVW            R1, #0x4444
137ACC:  SUBS            R0, R0, R6
137ACE:  MOVT            R1, #0x444
137AD2:  ASRS            R0, R0, #2
137AD4:  MUL.W           R2, R0, R12
137AD8:  ADDS            R0, R2, #1
137ADA:  CMP             R0, R1
137ADC:  BHI             loc_137B66
137ADE:  SUBS            R3, R3, R6
137AE0:  MOV             R6, #0x2222222
137AE8:  ASRS            R3, R3, #2
137AEA:  MUL.W           R3, R3, R12
137AEE:  CMP.W           R0, R3,LSL#1
137AF2:  IT LS
137AF4:  LSLLS           R0, R3, #1
137AF6:  CMP             R3, R6
137AF8:  ADD             R6, SP, #0x28+var_24
137AFA:  ADD.W           R3, R4, #8
137AFE:  IT CC
137B00:  MOVCC           R1, R0
137B02:  MOV             R0, R6
137B04:  BL              sub_138E50
137B08:  LDR             R0, [SP,#0x28+var_1C]
137B0A:  MOVS            R2, #0
137B0C:  LDR             R1, [R5]
137B0E:  STR             R1, [R0]
137B10:  VLDR            D16, [R5,#4]
137B14:  LDR             R1, [R5,#0xC]
137B16:  STR             R1, [R0,#0xC]
137B18:  VSTR            D16, [R0,#4]
137B1C:  VLDR            D16, [R5,#0x10]
137B20:  LDR             R1, [R5,#0x18]
137B22:  STRD.W          R2, R2, [R5,#4]
137B26:  STR             R2, [R5,#0xC]
137B28:  STR             R1, [R0,#0x18]
137B2A:  ADD.W           R1, R5, #0x1C
137B2E:  VSTR            D16, [R0,#0x10]
137B32:  ADDS            R0, #0x1C
137B34:  VLD1.32         {D16-D17}, [R1]!
137B38:  VLD1.32         {D18-D19}, [R1]
137B3C:  STR             R2, [R5,#0x18]
137B3E:  STRD.W          R2, R2, [R5,#0x10]
137B42:  VST1.32         {D16-D17}, [R0]!
137B46:  VST1.32         {D18-D19}, [R0]
137B4A:  LDR             R0, [SP,#0x28+var_1C]
137B4C:  ADDS            R0, #0x3C ; '<'
137B4E:  STR             R0, [SP,#0x28+var_1C]
137B50:  MOV             R0, R4
137B52:  MOV             R1, R6
137B54:  BL              sub_138EA8
137B58:  ADD             R0, SP, #0x28+var_24
137B5A:  BL              sub_138F32
137B5E:  ADD             SP, SP, #0x18
137B60:  POP.W           {R11}
137B64:  POP             {R4-R7,PC}
137B66:  MOV             R0, R4
137B68:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
