; =========================================================
; Game Engine Function: alDeleteEffects
; Address            : 0x252F6C - 0x2531E0
; =========================================================

252F6C:  PUSH            {R4-R7,LR}
252F6E:  ADD             R7, SP, #0xC
252F70:  PUSH.W          {R8-R11}
252F74:  SUB             SP, SP, #0x1C
252F76:  MOV             R5, R1
252F78:  MOV             R6, R0
252F7A:  BLX             j_GetContextRef
252F7E:  MOV             R4, R0
252F80:  CMP             R4, #0
252F82:  BEQ.W           loc_25315A
252F86:  CMP             R6, #0
252F88:  STR             R4, [SP,#0x38+var_38]
252F8A:  BLT.W           loc_253162
252F8E:  STRD.W          R6, R5, [SP,#0x38+var_30]
252F92:  BEQ.W           loc_2531D0
252F96:  LDR.W           R8, [SP,#0x38+var_38]
252F9A:  MOVS            R4, #0
252F9C:  LDR.W           R0, [R8,#0x88]
252FA0:  LDRD.W          R5, R6, [SP,#0x38+var_30]
252FA4:  ADD.W           R9, R0, #0x64 ; 'd'
252FA8:  LDR.W           R1, [R6,R4,LSL#2]
252FAC:  CBZ             R1, loc_252FBA
252FAE:  MOV             R0, R9
252FB0:  BLX             j_LookupUIntMapKey
252FB4:  CMP             R0, #0
252FB6:  BEQ.W           loc_253196
252FBA:  ADDS            R4, #1
252FBC:  CMP             R4, R5
252FBE:  BLT             loc_252FA8
252FC0:  CMP             R5, #1
252FC2:  STR.W           R9, [SP,#0x38+var_34]
252FC6:  BLT.W           loc_2531D0
252FCA:  LDR.W           R9, =(dword_6D681C - 0x252FDE)
252FCE:  MOVS            R5, #0
252FD0:  LDR.W           R11, =(dword_6D681C - 0x252FE2)
252FD4:  MOV.W           R8, #1
252FD8:  LDR             R6, =(dword_6D681C - 0x252FE8)
252FDA:  ADD             R9, PC; dword_6D681C
252FDC:  LDR             R4, =(dword_6D681C - 0x252FEA)
252FDE:  ADD             R11, PC; dword_6D681C
252FE0:  LDR.W           R10, =(dword_6D681C - 0x252FEE)
252FE4:  ADD             R6, PC; dword_6D681C
252FE6:  ADD             R4, PC; dword_6D681C
252FE8:  MOVS            R1, #0
252FEA:  ADD             R10, PC; dword_6D681C
252FEC:  LDR             R0, [SP,#0x38+var_2C]
252FEE:  STR             R1, [SP,#0x38+var_20]
252FF0:  LDR.W           R1, [R0,R1,LSL#2]
252FF4:  LDR             R0, [SP,#0x38+var_34]
252FF6:  BLX             j_RemoveUIntMapKey
252FFA:  CMP             R0, #0
252FFC:  BEQ.W           loc_25314C
253000:  LDR             R2, =(dword_6D681C - 0x25300C)
253002:  STR             R0, [SP,#0x38+p]
253004:  LDR.W           R0, [R0,#0xB4]
253008:  ADD             R2, PC; dword_6D681C
25300A:  STR             R0, [SP,#0x38+var_28]
25300C:  DMB.W           ISH
253010:  LDREX.W         R0, [R2,#0xC]
253014:  STREX.W         R1, R8, [R2,#0xC]
253018:  CMP             R1, #0
25301A:  BNE             loc_253010
25301C:  B               loc_253032
25301E:  BLX             sched_yield
253022:  DMB.W           ISH
253026:  LDREX.W         R0, [R9,#0xC]
25302A:  STREX.W         R1, R8, [R9,#0xC]
25302E:  CMP             R1, #0
253030:  BNE             loc_253026
253032:  CMP             R0, #1
253034:  DMB.W           ISH
253038:  BEQ             loc_25301E
25303A:  LDR             R2, =(dword_6D681C - 0x253044)
25303C:  DMB.W           ISH
253040:  ADD             R2, PC; dword_6D681C
253042:  LDREX.W         R0, [R2,#8]
253046:  STREX.W         R1, R8, [R2,#8]
25304A:  CMP             R1, #0
25304C:  BNE             loc_253042
25304E:  B               loc_253064
253050:  BLX             sched_yield
253054:  DMB.W           ISH
253058:  LDREX.W         R0, [R11,#8]
25305C:  STREX.W         R1, R8, [R11,#8]
253060:  CMP             R1, #0
253062:  BNE             loc_253058
253064:  CMP             R0, #1
253066:  DMB.W           ISH
25306A:  BEQ             loc_253050
25306C:  LDR             R3, =(dword_6D681C - 0x253076)
25306E:  DMB.W           ISH
253072:  ADD             R3, PC; dword_6D681C
253074:  LDREX.W         R0, [R3]
253078:  ADDS            R1, R0, #1
25307A:  STREX.W         R2, R1, [R3]
25307E:  CMP             R2, #0
253080:  BNE             loc_253074
253082:  CMP             R0, #0
253084:  DMB.W           ISH
253088:  BNE             loc_2530BC
25308A:  LDR             R2, =(dword_6D681C - 0x253094)
25308C:  DMB.W           ISH
253090:  ADD             R2, PC; dword_6D681C
253092:  LDREX.W         R0, [R2,#0x10]
253096:  STREX.W         R1, R8, [R2,#0x10]
25309A:  CMP             R1, #0
25309C:  BNE             loc_253092
25309E:  B               loc_2530B4
2530A0:  BLX             sched_yield
2530A4:  DMB.W           ISH
2530A8:  LDREX.W         R0, [R6,#0x10]
2530AC:  STREX.W         R1, R8, [R6,#0x10]
2530B0:  CMP             R1, #0
2530B2:  BNE             loc_2530A8
2530B4:  CMP             R0, #1
2530B6:  DMB.W           ISH
2530BA:  BEQ             loc_2530A0
2530BC:  LDR             R1, =(dword_6D681C - 0x2530C6)
2530BE:  DMB.W           ISH
2530C2:  ADD             R1, PC; dword_6D681C
2530C4:  LDREX.W         R0, [R1,#8]
2530C8:  STREX.W         R0, R5, [R1,#8]
2530CC:  CMP             R0, #0
2530CE:  BNE             loc_2530C4
2530D0:  DMB.W           ISH
2530D4:  DMB.W           ISH
2530D8:  LDREX.W         R0, [R4,#0xC]
2530DC:  STREX.W         R0, R5, [R4,#0xC]
2530E0:  CMP             R0, #0
2530E2:  BNE             loc_2530D8
2530E4:  LDR             R0, =(dword_6D6830 - 0x2530EE)
2530E6:  DMB.W           ISH
2530EA:  ADD             R0, PC; dword_6D6830
2530EC:  LDR             R1, [R0]
2530EE:  LDR             R0, [SP,#0x38+var_28]
2530F0:  SUBS            R0, #1
2530F2:  CMP             R0, R1
2530F4:  BCS             loc_253114
2530F6:  LDR             R1, =(dword_6D6834 - 0x2530FC)
2530F8:  ADD             R1, PC; dword_6D6834
2530FA:  LDR             R1, [R1]
2530FC:  DMB.W           ISH
253100:  ADD.W           R0, R1, R0,LSL#2
253104:  LDREX.W         R1, [R0]
253108:  STREX.W         R1, R5, [R0]
25310C:  CMP             R1, #0
25310E:  BNE             loc_253104
253110:  DMB.W           ISH
253114:  DMB.W           ISH
253118:  LDREX.W         R0, [R10]
25311C:  SUBS            R1, R0, #1
25311E:  STREX.W         R2, R1, [R10]
253122:  CMP             R2, #0
253124:  BNE             loc_253118
253126:  CMP             R0, #1
253128:  DMB.W           ISH
25312C:  BNE             loc_253146
25312E:  LDR             R1, =(dword_6D681C - 0x253138)
253130:  DMB.W           ISH
253134:  ADD             R1, PC; dword_6D681C
253136:  LDREX.W         R0, [R1,#0x10]
25313A:  STREX.W         R0, R5, [R1,#0x10]
25313E:  CMP             R0, #0
253140:  BNE             loc_253136
253142:  DMB.W           ISH
253146:  LDR             R0, [SP,#0x38+p]; p
253148:  BLX             free
25314C:  LDR             R1, [SP,#0x38+var_20]
25314E:  LDR             R0, [SP,#0x38+var_30]
253150:  ADDS            R1, #1
253152:  CMP             R1, R0
253154:  BNE.W           loc_252FEC
253158:  B               loc_2531D0
25315A:  ADD             SP, SP, #0x1C
25315C:  POP.W           {R8-R11}
253160:  POP             {R4-R7,PC}
253162:  LDR             R0, =(TrapALError_ptr - 0x253168)
253164:  ADD             R0, PC; TrapALError_ptr
253166:  LDR             R0, [R0]; TrapALError
253168:  LDRB            R0, [R0]
25316A:  CMP             R0, #0
25316C:  ITT NE
25316E:  MOVNE           R0, #5; sig
253170:  BLXNE           raise
253174:  LDREX.W         R0, [R4,#0x50]
253178:  CBNZ            R0, loc_2531C8
25317A:  ADD.W           R0, R4, #0x50 ; 'P'
25317E:  MOVW            R1, #0xA003
253182:  DMB.W           ISH
253186:  STREX.W         R2, R1, [R0]
25318A:  CBZ             R2, loc_2531CC
25318C:  LDREX.W         R2, [R0]
253190:  CMP             R2, #0
253192:  BEQ             loc_253186
253194:  B               loc_2531C8
253196:  LDR             R0, =(TrapALError_ptr - 0x25319C)
253198:  ADD             R0, PC; TrapALError_ptr
25319A:  LDR             R0, [R0]; TrapALError
25319C:  LDRB            R0, [R0]
25319E:  CMP             R0, #0
2531A0:  ITT NE
2531A2:  MOVNE           R0, #5; sig
2531A4:  BLXNE           raise
2531A8:  LDREX.W         R0, [R8,#0x50]
2531AC:  CBNZ            R0, loc_2531C8
2531AE:  ADD.W           R0, R8, #0x50 ; 'P'
2531B2:  MOVW            R1, #0xA001
2531B6:  DMB.W           ISH
2531BA:  STREX.W         R2, R1, [R0]
2531BE:  CBZ             R2, loc_2531CC
2531C0:  LDREX.W         R2, [R0]
2531C4:  CMP             R2, #0
2531C6:  BEQ             loc_2531BA
2531C8:  CLREX.W
2531CC:  DMB.W           ISH
2531D0:  LDR             R0, [SP,#0x38+var_38]
2531D2:  ADD             SP, SP, #0x1C
2531D4:  POP.W           {R8-R11}
2531D8:  POP.W           {R4-R7,LR}
2531DC:  B.W             ALCcontext_DecRef
