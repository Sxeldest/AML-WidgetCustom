; =========================================================
; Game Engine Function: _Z23RpGeometryStreamGetSizePK10RpGeometry
; Address            : 0x216074 - 0x2161CE
; =========================================================

216074:  PUSH            {R4-R7,LR}
216076:  ADD             R7, SP, #0xC
216078:  PUSH.W          {R11}
21607C:  MOV             R4, R0
21607E:  LDR             R1, [R4,#8]
216080:  TST.W           R1, #0x1000000
216084:  BNE             loc_2160BE
216086:  LDR             R0, [R4,#0x14]
216088:  MOVS            R6, #0x10
21608A:  CBZ             R0, loc_2160A2
21608C:  LDR             R3, [R4,#0x1C]
21608E:  LSLS            R1, R1, #0x1C
216090:  LDR             R2, [R4,#0x10]
216092:  MLA.W           R2, R3, R0, R2
216096:  ADD.W           R3, R6, R0,LSL#2
21609A:  IT PL
21609C:  MOVPL           R3, #0x10
21609E:  ADD.W           R6, R3, R2,LSL#3
2160A2:  LDR             R1, [R4,#0x18]
2160A4:  CMP             R1, #1
2160A6:  BLT.W           loc_2161AE
2160AA:  ADD.W           R0, R0, R0,LSL#1
2160AE:  LDR.W           LR, [R4,#0x60]
2160B2:  CMP             R1, #4
2160B4:  MOV.W           R0, R0,LSL#2
2160B8:  BCS             loc_2160C2
2160BA:  MOVS            R3, #0
2160BC:  B               loc_216186
2160BE:  MOVS            R6, #0x28 ; '('
2160C0:  B               loc_2161AE
2160C2:  ANDS.W          R3, R1, #3
2160C6:  IT EQ
2160C8:  MOVEQ           R3, #4
2160CA:  SUBS.W          R12, R1, R3
2160CE:  MOV.W           R3, #0
2160D2:  BEQ             loc_216186
2160D4:  VDUP.32         Q8, R3
2160D8:  VMOV.I32        Q10, #0x18
2160DC:  VDUP.32         Q9, R0
2160E0:  ADD.W           R5, LR, #0x14
2160E4:  VMOV.32         D16[0], R6
2160E8:  MOV             R3, R12
2160EA:  ADD.W           R2, R5, #0x50 ; 'P'
2160EE:  MOV             R6, R5
2160F0:  VLD1.32         {D24-D25}, [R2]
2160F4:  ADD.W           R2, R5, #0x30 ; '0'
2160F8:  SUBS            R3, #4
2160FA:  VLD1.32         {D26-D27}, [R2]
2160FE:  ADD.W           R2, R5, #0x20 ; ' '
216102:  VMOV            Q0, Q13
216106:  ADD.W           R5, R5, #0x70 ; 'p'
21610A:  VEXT.8          Q15, Q13, Q12, #0xC
21610E:  VMOV            Q1, Q13
216112:  VLD1.32         {D22-D23}, [R6]!
216116:  VLD1.32         {D28-D29}, [R6]
21611A:  VZIP.32         Q0, Q15
21611E:  VMOV            Q0, Q11
216122:  VEXT.8          Q14, Q14, Q11, #0xC
216126:  VZIP.32         Q11, Q0
21612A:  VLD1.32         {D0-D1}, [R2]
21612E:  VZIP.32         Q12, Q1
216132:  VREV64.32       Q12, Q14
216136:  VEXT.8          Q14, Q13, Q15, #8
21613A:  VEXT.8          Q11, Q11, Q0, #0xC
21613E:  VEXT.8          Q13, Q13, Q1, #4
216142:  VEXT.8          Q12, Q14, Q12, #8
216146:  VEXT.8          Q11, Q13, Q11, #8
21614A:  VEXT.8          Q12, Q12, Q12, #8
21614E:  VEXT.8          Q11, Q11, Q11, #8
216152:  VCEQ.I32        Q12, Q12, #0
216156:  VBIC            Q12, Q9, Q12
21615A:  VCEQ.I32        Q11, Q11, #0
21615E:  VBIC            Q11, Q9, Q11
216162:  VADD.I32        Q8, Q8, Q12
216166:  VADD.I32        Q8, Q8, Q11
21616A:  VADD.I32        Q8, Q8, Q10
21616E:  BNE             loc_2160EA
216170:  VEXT.8          Q9, Q8, Q8, #8
216174:  MOV             R3, R12
216176:  VADD.I32        Q8, Q8, Q9
21617A:  VDUP.32         Q9, D16[1]
21617E:  VADD.I32        Q8, Q8, Q9
216182:  VMOV.32         R6, D16[0]
216186:  RSB.W           R2, R3, R3,LSL#3
21618A:  SUBS            R1, R1, R3
21618C:  ADD.W           R2, LR, R2,LSL#2
216190:  ADDS            R2, #0x18
216192:  LDR.W           R3, [R2,#-4]
216196:  LDR             R5, [R2]
216198:  ADDS            R2, #0x1C
21619A:  CMP             R3, #0
21619C:  IT NE
21619E:  ADDNE           R6, R0
2161A0:  CMP             R5, #0
2161A2:  ADD.W           R6, R6, #0x18
2161A6:  IT NE
2161A8:  ADDNE           R6, R0
2161AA:  SUBS            R1, #1
2161AC:  BNE             loc_216192
2161AE:  ADD.W           R0, R4, #0x20 ; ' '
2161B2:  BLX             j__Z28_rpMaterialListStreamGetSizePK14RpMaterialList; _rpMaterialListStreamGetSize(RpMaterialList const*)
2161B6:  MOV             R5, R0
2161B8:  LDR             R0, =(dword_683B78 - 0x2161C0)
2161BA:  MOV             R1, R4
2161BC:  ADD             R0, PC; dword_683B78
2161BE:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
2161C2:  ADDS            R1, R6, R5
2161C4:  ADD             R0, R1
2161C6:  ADDS            R0, #0x24 ; '$'
2161C8:  POP.W           {R11}
2161CC:  POP             {R4-R7,PC}
