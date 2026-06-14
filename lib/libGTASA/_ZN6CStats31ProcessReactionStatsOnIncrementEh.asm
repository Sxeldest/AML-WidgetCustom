; =========================================================
; Game Engine Function: _ZN6CStats31ProcessReactionStatsOnIncrementEh
; Address            : 0x416130 - 0x4161B6
; =========================================================

416130:  CMP             R0, #0x16
416132:  IT NE
416134:  CMPNE           R0, #0xE1
416136:  BEQ             loc_416180
416138:  CMP             R0, #0xA5
41613A:  BNE             locret_41617E
41613C:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x416142)
41613E:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
416140:  LDR             R0, [R0]; CStats::StatTypesInt ...
416142:  LDR.W           R0, [R0,#(dword_9649E0 - 0x96492C)]
416146:  CMP.W           R0, #0x3E8
41614A:  BLE             locret_41617E
41614C:  VMOV            S0, R0
416150:  VLDR            S2, =-1000.0
416154:  VCVT.F32.S32    S0, S0
416158:  VADD.F32        S0, S0, S2
41615C:  VCMPE.F32       S0, #0.0
416160:  VMRS            APSR_nzcv, FPSCR
416164:  BLE             locret_41617E
416166:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416170)
416168:  VLDR            S4, =1000.0
41616C:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41616E:  LDR             R0, [R0]; CStats::StatTypesFloat ...
416170:  VLDR            S2, [R0,#0x54]
416174:  VADD.F32        S0, S0, S2
416178:  VMIN.F32        D0, D0, D2
41617C:  B               loc_4161AC
41617E:  BX              LR
416180:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x416186)
416182:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
416184:  LDR             R0, [R0]; CStats::StatTypesInt ...
416186:  LDR.W           R0, [R0,#(dword_9649E0 - 0x96492C)]
41618A:  CMP.W           R0, #0xFFFFFFFF
41618E:  IT GT
416190:  BXGT            LR
416192:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4161A0)
416194:  VMOV.F32        S0, #-23.0
416198:  VLDR            S4, =0.0
41619C:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41619E:  LDR             R0, [R0]; CStats::StatTypesFloat ...
4161A0:  VLDR            S2, [R0,#0x54]
4161A4:  VADD.F32        S0, S2, S0
4161A8:  VMAX.F32        D0, D0, D2
4161AC:  VSTR            S0, [R0,#0x54]
4161B0:  MOVS            R0, #0; this
4161B2:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
