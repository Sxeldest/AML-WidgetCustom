; =========================================================
; Game Engine Function: _ZN10BoneNode_c4InitEiP23RpHAnimBlendInterpFrame
; Address            : 0x4D1C78 - 0x4D1D34
; =========================================================

4D1C78:  PUSH            {R4,R5,R7,LR}
4D1C7A:  ADD             R7, SP, #8
4D1C7C:  MOV             R4, R0
4D1C7E:  MOV             R0, R2
4D1C80:  STRD.W          R1, R2, [R4,#8]
4D1C84:  ADD.W           R1, R4, #0x10
4D1C88:  VLD1.32         {D16-D17}, [R0]!
4D1C8C:  MOVS            R5, #0
4D1C8E:  VST1.32         {D16-D17}, [R1]
4D1C92:  VLDR            D16, [R0]
4D1C96:  LDR             R0, [R2,#0x18]
4D1C98:  STRD.W          R0, R5, [R4,#0x28]
4D1C9C:  ADD.W           R0, R4, #0x30 ; '0'; this
4D1CA0:  VSTR            D16, [R4,#0x20]
4D1CA4:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4D1CA8:  LDR             R0, =(_ZN17BoneNodeManager_c12ms_boneInfosE_ptr - 0x4D1CB0)
4D1CAA:  LDR             R1, [R4,#8]
4D1CAC:  ADD             R0, PC; _ZN17BoneNodeManager_c12ms_boneInfosE_ptr
4D1CAE:  LDR             R0, [R0]; BoneNodeManager_c::ms_boneInfos ...
4D1CB0:  LDRSH.W         R2, [R0]; BoneNodeManager_c::ms_boneInfos
4D1CB4:  CMP             R1, R2
4D1CB6:  BEQ             loc_4D1CC6
4D1CB8:  ADDS            R2, R5, #1
4D1CBA:  ADDS            R0, #0x28 ; '('
4D1CBC:  CMP             R5, #0x1F
4D1CBE:  MOV             R5, R2
4D1CC0:  BLT             loc_4D1CB0
4D1CC2:  MOV.W           R5, #0xFFFFFFFF
4D1CC6:  LDR             R0, =(_ZN17BoneNodeManager_c12ms_boneInfosE_ptr - 0x4D1CD0)
4D1CC8:  ADD.W           R1, R5, R5,LSL#2
4D1CCC:  ADD             R0, PC; _ZN17BoneNodeManager_c12ms_boneInfosE_ptr
4D1CCE:  LDR             R0, [R0]; BoneNodeManager_c::ms_boneInfos ...
4D1CD0:  ADD.W           R0, R0, R1,LSL#3
4D1CD4:  VLDR            S0, [R0,#4]
4D1CD8:  VLDR            S6, [R0,#0x10]
4D1CDC:  VLDR            S2, [R0,#8]
4D1CE0:  VLDR            S10, [R0,#0x18]
4D1CE4:  VSUB.F32        S6, S0, S6
4D1CE8:  VLDR            S8, [R0,#0x14]
4D1CEC:  VLDR            S4, [R0,#0xC]
4D1CF0:  VSUB.F32        S10, S2, S10
4D1CF4:  VLDR            S14, [R0,#0x20]
4D1CF8:  VADD.F32        S0, S0, S8
4D1CFC:  VLDR            S12, [R0,#0x1C]
4D1D00:  VLDR            S1, [R0,#0x24]
4D1D04:  VSUB.F32        S14, S4, S14
4D1D08:  VADD.F32        S2, S2, S12
4D1D0C:  MOV.W           R0, #0x3F800000
4D1D10:  VADD.F32        S4, S4, S1
4D1D14:  STR.W           R0, [R4,#0x94]
4D1D18:  MOVS            R0, #1
4D1D1A:  VSTR            S6, [R4,#0x7C]
4D1D1E:  VSTR            S10, [R4,#0x80]
4D1D22:  VSTR            S14, [R4,#0x84]
4D1D26:  VSTR            S0, [R4,#0x88]
4D1D2A:  VSTR            S2, [R4,#0x8C]
4D1D2E:  VSTR            S4, [R4,#0x90]
4D1D32:  POP             {R4,R5,R7,PC}
