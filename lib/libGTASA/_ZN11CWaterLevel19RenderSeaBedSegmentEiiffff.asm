; =========================================================
; Game Engine Function: _ZN11CWaterLevel19RenderSeaBedSegmentEiiffff
; Address            : 0x596C8C - 0x596DB4
; =========================================================

596C8C:  PUSH            {R4,R5,R7,LR}
596C8E:  ADD             R7, SP, #8
596C90:  VMOV            S2, R1
596C94:  VLDR            S6, [R7,#arg_4]
596C98:  VMOV            S4, R0
596C9C:  VLDR            S1, [R7,#arg_0]
596CA0:  VCVT.F32.S32    S2, S2
596CA4:  VLDR            S7, =500.0
596CA8:  VCVT.F32.S32    S4, S4
596CAC:  LDR.W           R12, =(TempBufferVerticesStored_ptr - 0x596CC0)
596CB0:  VMOV            S10, R2
596CB4:  VLDR            S12, =-3000.0
596CB8:  VMOV            S8, R3
596CBC:  ADD             R12, PC; TempBufferVerticesStored_ptr
596CBE:  VMOV.F32        S0, #8.0
596CC2:  LDR.W           LR, =(TempBufferRenderIndexList_ptr - 0x596CD2)
596CC6:  LDR.W           R12, [R12]; TempBufferVerticesStored
596CCA:  MOVS            R2, #0
596CCC:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x596CE6)
596CCE:  ADD             LR, PC; TempBufferRenderIndexList_ptr
596CD0:  VADD.F32        S3, S2, S6
596CD4:  LDR             R4, =(TempVertexBuffer_ptr - 0x596CEC)
596CD6:  VADD.F32        S2, S2, S1
596CDA:  LDR.W           R1, [R12]
596CDE:  VADD.F32        S5, S4, S10
596CE2:  ADD             R0, PC; TempBufferIndicesStored_ptr
596CE4:  VADD.F32        S4, S4, S8
596CE8:  ADD             R4, PC; TempVertexBuffer_ptr
596CEA:  VMUL.F32        S14, S8, S0
596CEE:  LDR.W           R3, [LR]; TempBufferRenderIndexList
596CF2:  VMUL.F32        S6, S6, S0
596CF6:  LDR.W           LR, [R0]; TempBufferIndicesStored
596CFA:  VMUL.F32        S1, S1, S0
596CFE:  LDR             R0, [R4]; TempVertexBuffer
596D00:  VMUL.F32        S8, S3, S7
596D04:  ADD.W           R4, R1, R1,LSL#3
596D08:  VMUL.F32        S2, S2, S7
596D0C:  MOVT            R2, #0xC28C
596D10:  VMUL.F32        S0, S10, S0
596D14:  ADD.W           R0, R0, R4,LSL#2
596D18:  VMUL.F32        S10, S5, S7
596D1C:  MOVW            R4, #0x5050
596D20:  VMUL.F32        S4, S4, S7
596D24:  MOVT            R4, #0xFF50
596D28:  ADDS            R5, R1, #3
596D2A:  VSTR            S1, [R0,#0x20]
596D2E:  VADD.F32        S8, S8, S12
596D32:  VADD.F32        S2, S2, S12
596D36:  VSTR            S0, [R0,#0x1C]
596D3A:  VADD.F32        S10, S10, S12
596D3E:  STR             R4, [R0,#0x18]
596D40:  VADD.F32        S4, S4, S12
596D44:  STR             R2, [R0,#8]
596D46:  STR             R2, [R0,#0x2C]
596D48:  STR             R4, [R0,#0x3C]
596D4A:  VSTR            S10, [R0]
596D4E:  VSTR            S2, [R0,#4]
596D52:  VSTR            S8, [R0,#0x28]
596D56:  VSTR            S10, [R0,#0x24]
596D5A:  VSTR            S0, [R0,#0x40]
596D5E:  VSTR            S6, [R0,#0x44]
596D62:  VSTR            S4, [R0,#0x48]
596D66:  VSTR            S2, [R0,#0x4C]
596D6A:  STR             R2, [R0,#0x50]
596D6C:  STR             R4, [R0,#0x60]
596D6E:  VSTR            S14, [R0,#0x88]
596D72:  VSTR            S6, [R0,#0x8C]
596D76:  VSTR            S14, [R0,#0x64]
596D7A:  VSTR            S1, [R0,#0x68]
596D7E:  VSTR            S4, [R0,#0x6C]
596D82:  VSTR            S8, [R0,#0x70]
596D86:  STR             R2, [R0,#0x74]
596D88:  STR.W           R4, [R0,#0x84]
596D8C:  ADDS            R4, R1, #2
596D8E:  LDR.W           R0, [LR]
596D92:  ADD.W           R2, R3, R0,LSL#1
596D96:  STRH.W          R1, [R3,R0,LSL#1]
596D9A:  ADDS            R0, #6
596D9C:  ADDS            R3, R1, #1
596D9E:  STRH            R3, [R2,#2]
596DA0:  STRH            R4, [R2,#4]
596DA2:  STRH            R5, [R2,#6]
596DA4:  STRH            R3, [R2,#8]
596DA6:  STR.W           R0, [LR]
596DAA:  ADDS            R0, R1, #4
596DAC:  STRH            R4, [R2,#0xA]
596DAE:  STR.W           R0, [R12]
596DB2:  POP             {R4,R5,R7,PC}
