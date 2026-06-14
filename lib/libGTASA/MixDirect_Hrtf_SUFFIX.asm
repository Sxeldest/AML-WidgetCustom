; =========================================================
; Game Engine Function: MixDirect_Hrtf_SUFFIX
; Address            : 0x260D7C - 0x261310
; =========================================================

260D7C:  PUSH            {R4-R7,LR}
260D7E:  ADD             R7, SP, #0xC
260D80:  PUSH.W          {R8-R11}
260D84:  SUB.W           SP, SP, #0x438
260D88:  SUB             SP, SP, #4
260D8A:  MOV             R4, SP
260D8C:  BFC.W           R4, #0, #4
260D90:  MOV             SP, R4
260D92:  STR             R1, [SP,#0x458+var_434]
260D94:  MOV.W           R1, #0x2880
260D98:  LDR             R6, [R0,R1]
260D9A:  MOVW            R1, #0x2870
260D9E:  LDR             R5, [R0,R1]
260DA0:  MOVW            R1, #0x2868
260DA4:  ADD             R1, R0
260DA6:  STR             R1, [SP,#0x458+var_444]
260DA8:  MOVW            R1, #0x2D10
260DAC:  ADD.W           R9, R0, R2,LSL#3
260DB0:  LDR.W           R8, [R6,R1]
260DB4:  MOVW            R1, #0x2820
260DB8:  STR             R2, [SP,#0x458+var_42C]
260DBA:  STR             R6, [SP,#0x458+var_430]
260DBC:  ADD.W           R12, R9, R1
260DC0:  LDR             R1, [R6,#4]
260DC2:  CMP             R1, R3
260DC4:  IT LS
260DC6:  MOVLS           R1, R3
260DC8:  CMP             R5, #0
260DCA:  SUB.W           R11, R1, R3
260DCE:  LDR             R1, [R0]
260DD0:  STR             R1, [SP,#0x458+var_440]
260DD2:  LDRD.W          LR, R10, [R0,#4]
260DD6:  BEQ             loc_260E2E
260DD8:  VMOV            S0, R11
260DDC:  MOVW            R1, #0x2424
260DE0:  ADDS            R6, R0, R1
260DE2:  ADD             R2, SP, #0x458+var_428
260DE4:  VCVT.F32.S32    S0, S0
260DE8:  LDR             R1, [SP,#0x458+var_42C]
260DEA:  ORR.W           R2, R2, #4
260DEE:  MOV             R4, R5
260DF0:  ADD.W           R1, R0, R1,LSL#10
260DF4:  ADDS            R1, #0x20 ; ' '
260DF6:  VLDR            S2, [R6,#-4]
260DFA:  SUBS            R4, #1
260DFC:  VLDR            S4, [R6]
260E00:  ADD.W           R6, R6, #8
260E04:  VMUL.F32        S2, S2, S0
260E08:  VLDR            S6, [R1]
260E0C:  VMUL.F32        S4, S4, S0
260E10:  VLDR            S8, [R1,#4]
260E14:  ADD.W           R1, R1, #8
260E18:  VSUB.F32        S2, S6, S2
260E1C:  VSUB.F32        S4, S8, S4
260E20:  VSTR            S2, [R2,#-4]
260E24:  VSTR            S4, [R2]
260E28:  ADD.W           R2, R2, #8
260E2C:  BNE             loc_260DF6
260E2E:  LDR             R2, [SP,#0x458+var_444]
260E30:  MOVW            R1, #0x286C
260E34:  LDR             R1, [R0,R1]
260E36:  CMP             R3, #0
260E38:  ADD             R8, R3
260E3A:  LDR             R4, [R2]
260E3C:  MOVW            R2, #0x2824
260E40:  LDR.W           R2, [R9,R2]
260E44:  MLS.W           R9, R1, R11, R2
260E48:  LDR.W           R1, [R12]
260E4C:  MLS.W           R12, R4, R11, R1
260E50:  ITTTT EQ
260E52:  LDRDEQ.W        R6, R2, [SP,#0x458+var_430]
260E56:  ADDEQ.W         R1, R6, R2,LSL#8
260E5A:  LDREQ           R3, [SP,#0x458+var_434]
260E5C:  LDREQ           R3, [R3]
260E5E:  ITTTT EQ
260E60:  ADDEQ           R1, #0x10
260E62:  MOVWEQ          R4, #:lower16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
260E66:  MOVTEQ          R4, #:upper16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
260E6A:  ANDEQ.W         R4, R4, R12
260E6E:  ITTTT EQ
260E70:  VMOVEQ          S0, R4
260E74:  ANDEQ.W         R4, R8, #0x3F ; '?'
260E78:  VCVTEQ.F32.U32  S0, S0
260E7C:  STREQ.W         R3, [R1,R4,LSL#2]
260E80:  ITTTT EQ
260E82:  SUBEQ.W         R3, R8, R12,LSR#20
260E86:  ANDEQ.W         R4, R3, #0x3F ; '?'
260E8A:  ADDEQ.W         R4, R1, R4,LSL#2
260E8E:  ADDEQ           R3, #0x3F ; '?'
260E90:  ITTTT EQ
260E92:  ANDEQ.W         R3, R3, #0x3F ; '?'
260E96:  VLDREQ          S2, [R4]
260E9A:  ADDEQ.W         R3, R1, R3,LSL#2
260E9E:  VLDREQ          S4, [R3]
260EA2:  ITTTT EQ
260EA4:  VLDREQ          S6, =9.5367e-7
260EA8:  VSUBEQ.F32      S4, S4, S2
260EAC:  VMULEQ.F32      S0, S0, S6
260EB0:  VMULEQ.F32      S0, S0, S4
260EB4:  ITTTT EQ
260EB6:  SUBEQ.W         R3, R8, R9,LSR#20
260EBA:  MOVWEQ          R4, #:lower16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
260EBE:  MOVTEQ          R4, #:upper16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
260EC2:  ANDEQ.W         R4, R4, R9
260EC6:  ITTTT EQ
260EC8:  VMOVEQ          S4, R4
260ECC:  VCVTEQ.F32.U32  S4, S4
260ED0:  ADDEQ.W         R4, R3, #0x3F ; '?'
260ED4:  ANDEQ.W         R4, R4, #0x3F ; '?'
260ED8:  ITTTT EQ
260EDA:  VADDEQ.F32      S0, S2, S0
260EDE:  ADDEQ.W         R4, R1, R4,LSL#2
260EE2:  ANDEQ.W         R3, R3, #0x3F ; '?'
260EE6:  ADDEQ.W         R1, R1, R3,LSL#2
260EEA:  ITTTT EQ
260EEC:  VLDREQ          S2, [SP,#0x458+var_428]
260EF0:  ADDEQ.W         R3, R6, R2,LSL#10
260EF4:  VLDREQ          S8, [R1]
260EF8:  ADDEQ.W         R1, R8, #1
260EFC:  LDR             R6, [R7,#arg_4]
260EFE:  MOV.W           R2, #0
260F02:  ITTTT EQ
260F04:  VLDREQ          S10, [R4]
260F08:  VMULEQ.F32      S0, S0, S2
260F0C:  ANDEQ.W         R1, R1, #0x7F
260F10:  ADDEQ.W         R1, R3, R1,LSL#3
260F14:  ITTTT EQ
260F16:  VSUBEQ.F32      S2, S10, S8
260F1A:  VMULEQ.F32      S4, S4, S6
260F1E:  ADDEQ.W         R3, R1, #0x910
260F22:  VLDREQ          S6, [R3]
260F26:  ITTTT EQ
260F28:  VADDEQ.F32      S0, S6, S0
260F2C:  VMULEQ.F32      S2, S4, S2
260F30:  VLDREQ          S4, [LR]
260F34:  VLDREQ          S6, [LR,#4]
260F38:  ITTTT EQ
260F3A:  VSUBEQ.F32      S0, S4, S0
260F3E:  VADDEQ.F32      S2, S8, S2
260F42:  VSTREQ          S0, [LR]
260F46:  VLDREQ          S0, [SP,#0x458+var_424]
260F4A:  ITTTT EQ
260F4C:  VMULEQ.F32      S0, S2, S0
260F50:  ADDWEQ          R1, R1, #0x914
260F54:  VLDREQ          S2, [R1]
260F58:  VADDEQ.F32      S0, S2, S0
260F5C:  ITTT EQ
260F5E:  VSUBEQ.F32      S0, S6, S0
260F62:  VSTREQ          S0, [LR,#4]
260F66:  MOVEQ           R3, #0
260F68:  CMP.W           R11, #1
260F6C:  STR.W           R10, [SP,#0x458+var_454]
260F70:  STR.W           R9, [SP,#0x458+var_438]
260F74:  BLT.W           loc_26113C
260F78:  CMP             R6, #0
260F7A:  BEQ.W           loc_26113C
260F7E:  MOVW            R1, #0x286C
260F82:  VLDR            S0, =9.5367e-7
260F86:  ADD             R1, R0
260F88:  STR             R1, [SP,#0x458+var_448]
260F8A:  MOVW            R1, #0x2424
260F8E:  ADD             R0, R1
260F90:  STR             R0, [SP,#0x458+var_44C]
260F92:  ADD             R0, SP, #0x458+var_428
260F94:  MOVS            R2, #0
260F96:  ORR.W           R0, R0, #4
260F9A:  STR             R0, [SP,#0x458+var_450]
260F9C:  LDR             R0, [SP,#0x458+var_434]
260F9E:  AND.W           R6, R8, #0x3F ; '?'
260FA2:  STR             R2, [SP,#0x458+var_43C]
260FA4:  CMP             R5, #0
260FA6:  LDR.W           R0, [R0,R2,LSL#2]
260FAA:  LDRD.W          R10, LR, [SP,#0x458+var_430]
260FAE:  ADD.W           R1, R10, LR,LSL#8
260FB2:  ADD.W           R1, R1, #0x10
260FB6:  STR.W           R0, [R1,R6,LSL#2]
260FBA:  SUB.W           R0, R8, R12,LSR#20
260FBE:  ADD.W           R6, R0, #0x3F ; '?'
260FC2:  LDR.W           R9, [SP,#0x458+var_438]
260FC6:  AND.W           R0, R0, #0x3F ; '?'
260FCA:  AND.W           R6, R6, #0x3F ; '?'
260FCE:  ADD.W           R0, R1, R0,LSL#2
260FD2:  SUB.W           R4, R8, R9,LSR#20
260FD6:  ADD.W           R6, R1, R6,LSL#2
260FDA:  AND.W           R2, R4, #0x3F ; '?'
260FDE:  ADD.W           R2, R1, R2,LSL#2
260FE2:  VLDR            S2, [R2]
260FE6:  ADD.W           R2, R4, #0x3F ; '?'
260FEA:  AND.W           R2, R2, #0x3F ; '?'
260FEE:  ADD.W           R2, R1, R2,LSL#2
260FF2:  VLDR            S4, [R2]
260FF6:  MOV             R2, #0xFFFFF
260FFE:  MOV             R4, R2
261000:  AND.W           R2, R12, R4
261004:  VMOV            S6, R2
261008:  AND.W           R2, R9, R4
26100C:  MOV.W           R4, #0
261010:  VMOV            S8, R2
261014:  VCVT.F32.U32    S10, S8
261018:  VCVT.F32.U32    S8, S6
26101C:  LDR             R1, [SP,#0x458+var_444]
26101E:  VLDR            S6, [R0]
261022:  ADD.W           R0, R8, R5
261026:  AND.W           R0, R0, #0x7F
26102A:  LDR             R2, [SP,#0x458+var_448]
26102C:  VLDR            S12, [R6]
261030:  ADD.W           R6, R10, LR,LSL#10
261034:  LDR             R1, [R1]
261036:  ADD.W           R0, R6, R0,LSL#3
26103A:  LDR             R2, [R2]
26103C:  STR.W           R4, [R0,#0x910]
261040:  ADD             R12, R1
261042:  STR.W           R4, [R0,#0x914]
261046:  ADD.W           R0, R8, #1
26104A:  ADD             R9, R2
26104C:  STR.W           R9, [SP,#0x458+var_438]
261050:  BEQ             loc_2610DC
261052:  VSUB.F32        S4, S4, S2
261056:  LDRD.W          R10, LR, [SP,#0x458+var_450]
26105A:  VMUL.F32        S10, S10, S0
26105E:  MOVS            R1, #0
261060:  VSUB.F32        S12, S12, S6
261064:  VMUL.F32        S8, S8, S0
261068:  VMUL.F32        S4, S10, S4
26106C:  VMUL.F32        S8, S8, S12
261070:  VADD.F32        S2, S2, S4
261074:  VADD.F32        S4, S6, S8
261078:  ADD.W           R2, R8, R1
26107C:  VLDR            S6, [R10,#-4]
261080:  ADDS            R2, #1
261082:  ADDS            R1, #1
261084:  AND.W           R2, R2, #0x7F
261088:  VMUL.F32        S8, S4, S6
26108C:  CMP             R5, R1
26108E:  ADD.W           R2, R6, R2,LSL#3
261092:  ADD.W           R4, R2, #0x910
261096:  ADDW            R2, R2, #0x914
26109A:  VLDR            S10, [R4]
26109E:  VADD.F32        S8, S10, S8
2610A2:  VSTR            S8, [R4]
2610A6:  VLDR            S8, [R10]
2610AA:  VLDR            S12, [R2]
2610AE:  VMUL.F32        S10, S2, S8
2610B2:  VADD.F32        S10, S12, S10
2610B6:  VSTR            S10, [R2]
2610BA:  VLDR            S10, [LR,#-4]
2610BE:  VLDR            S12, [LR]
2610C2:  ADD.W           LR, LR, #8
2610C6:  VADD.F32        S6, S6, S10
2610CA:  VADD.F32        S8, S8, S12
2610CE:  VSTR            S6, [R10,#-4]
2610D2:  VSTR            S8, [R10]
2610D6:  ADD.W           R10, R10, #8
2610DA:  BNE             loc_261078
2610DC:  AND.W           R2, R0, #0x7F
2610E0:  LDR             R1, [SP,#0x458+var_440]
2610E2:  CMP.W           R11, #2
2610E6:  ADD.W           R2, R6, R2,LSL#3
2610EA:  ADD.W           R1, R1, R3,LSL#2
2610EE:  ADD.W           R6, R2, #0x910
2610F2:  ADD.W           R3, R3, #1
2610F6:  VLDR            S2, [R1]
2610FA:  VLDR            S4, [R6]
2610FE:  ADD.W           R6, R1, #0x2000
261102:  VADD.F32        S2, S4, S2
261106:  VLDR            S4, [R6]
26110A:  VSTR            S2, [R1]
26110E:  ADDW            R1, R2, #0x914
261112:  VLDR            S2, [R1]
261116:  VADD.F32        S2, S2, S4
26111A:  VSTR            S2, [R6]
26111E:  LDR             R2, [SP,#0x458+var_43C]
261120:  LDR             R6, [R7,#arg_4]
261122:  ADD.W           R2, R2, #1
261126:  BLT             loc_26113E
261128:  SUB.W           R11, R11, #1
26112C:  CMP             R2, R6
26112E:  MOV             R8, R0
261130:  BCC.W           loc_260F9C
261134:  B               loc_26113E
261136:  ALIGN 4
261138:  DCFS 9.5367e-7
26113C:  MOV             R0, R8
26113E:  LDR             R1, [SP,#0x458+var_438]
261140:  MOV.W           R10, R12,LSR#20
261144:  LDR             R4, [R7,#arg_0]
261146:  CMP             R2, R6
261148:  MOV.W           R1, R1,LSR#20
26114C:  STR             R1, [SP,#0x458+var_438]
26114E:  BCS.W           loc_261266
261152:  ADDS            R1, R3, R6
261154:  STR             R1, [SP,#0x458+var_448]
261156:  ADDS            R1, R0, R6
261158:  STR             R1, [SP,#0x458+var_44C]
26115A:  ADD             R1, SP, #0x458+var_428
26115C:  MOV.W           R8, #0
261160:  MOV             R9, R2
261162:  ORR.W           R1, R1, #4
261166:  STR             R1, [SP,#0x458+var_444]
261168:  STR             R2, [SP,#0x458+var_43C]
26116A:  LDR             R1, [SP,#0x458+var_434]
26116C:  AND.W           R4, R0, #0x3F ; '?'
261170:  CMP             R5, #0
261172:  LDR.W           R12, [R1,R9,LSL#2]
261176:  LDRD.W          R6, R1, [SP,#0x458+var_430]
26117A:  ADD.W           R2, R6, R1,LSL#8
26117E:  ADD.W           R11, R6, R1,LSL#10
261182:  ADD.W           R2, R2, #0x10
261186:  ADD.W           R1, R0, R5
26118A:  AND.W           R1, R1, #0x7F
26118E:  STR.W           R12, [R2,R4,LSL#2]
261192:  SUB.W           R4, R0, R10
261196:  AND.W           R4, R4, #0x3F ; '?'
26119A:  LDR             R6, [SP,#0x458+var_438]
26119C:  ADD.W           R1, R11, R1,LSL#3
2611A0:  ADD.W           R12, R2, R4,LSL#2
2611A4:  SUB.W           R4, R0, R6
2611A8:  AND.W           R4, R4, #0x3F ; '?'
2611AC:  VLDR            S2, [R12]
2611B0:  ADD.W           R12, R0, #1
2611B4:  ADD.W           R2, R2, R4,LSL#2
2611B8:  VLDR            S0, [R2]
2611BC:  STR.W           R8, [R1,#0x910]
2611C0:  STR.W           R8, [R1,#0x914]
2611C4:  BEQ             loc_261210
2611C6:  LDR             R1, [SP,#0x458+var_444]
2611C8:  MOVS            R2, #0
2611CA:  ADDS            R4, R0, R2
2611CC:  VLDR            S4, [R1,#-4]
2611D0:  ADDS            R4, #1
2611D2:  ADDS            R2, #1
2611D4:  AND.W           R4, R4, #0x7F
2611D8:  VMUL.F32        S4, S2, S4
2611DC:  CMP             R5, R2
2611DE:  ADD.W           R4, R11, R4,LSL#3
2611E2:  ADD.W           LR, R4, #0x910
2611E6:  ADDW            R4, R4, #0x914
2611EA:  VLDR            S6, [LR]
2611EE:  VADD.F32        S4, S6, S4
2611F2:  VSTR            S4, [LR]
2611F6:  VLDR            S4, [R1]
2611FA:  ADD.W           R1, R1, #8
2611FE:  VLDR            S6, [R4]
261202:  VMUL.F32        S4, S0, S4
261206:  VADD.F32        S4, S6, S4
26120A:  VSTR            S4, [R4]
26120E:  BNE             loc_2611CA
261210:  AND.W           R1, R12, #0x7F
261214:  LDR             R0, [SP,#0x458+var_440]
261216:  ADD.W           R9, R9, #1
26121A:  ADD.W           R1, R11, R1,LSL#3
26121E:  ADD.W           R0, R0, R3,LSL#2
261222:  ADD.W           R2, R1, #0x910
261226:  ADDS            R3, #1
261228:  VLDR            S0, [R0]
26122C:  VLDR            S2, [R2]
261230:  ADD.W           R2, R0, #0x2000
261234:  VADD.F32        S0, S2, S0
261238:  VLDR            S2, [R2]
26123C:  VSTR            S0, [R0]
261240:  ADDW            R0, R1, #0x914
261244:  VLDR            S0, [R0]
261248:  LDR             R0, [R7,#arg_4]
26124A:  VADD.F32        S0, S0, S2
26124E:  CMP             R9, R0
261250:  MOV             R0, R12
261252:  VSTR            S0, [R2]
261256:  BNE             loc_26116A
261258:  LDR             R0, [SP,#0x458+var_43C]
26125A:  LDR             R1, [SP,#0x458+var_448]
26125C:  SUBS            R3, R1, R0
26125E:  LDR             R1, [SP,#0x458+var_44C]
261260:  LDRD.W          R4, R2, [R7,#arg_0]
261264:  SUBS            R0, R1, R0
261266:  CMP             R3, R4
261268:  SUB.W           R4, R7, #-var_1C
26126C:  ITTTT EQ
26126E:  LDREQ           R1, [SP,#0x458+var_434]
261270:  LDREQ.W         R1, [R1,R2,LSL#2]
261274:  LDRDEQ.W        R5, R6, [SP,#0x458+var_430]
261278:  ADDEQ.W         R2, R5, R6,LSL#8
26127C:  ITTTT EQ
26127E:  ADDEQ           R2, #0x10
261280:  ANDEQ.W         R3, R0, #0x3F ; '?'
261284:  STREQ.W         R1, [R2,R3,LSL#2]
261288:  SUBEQ.W         R1, R0, R10
26128C:  ITTTT EQ
26128E:  ANDEQ.W         R1, R1, #0x3F ; '?'
261292:  VLDREQ          S0, [SP,#0x458+var_428]
261296:  ADDEQ.W         R1, R2, R1,LSL#2
26129A:  VLDREQ          S2, [R1]
26129E:  ITTTT EQ
2612A0:  ADDEQ.W         R1, R5, R6,LSL#10
2612A4:  ADDEQ           R3, R0, #1
2612A6:  VMULEQ.F32      S0, S2, S0
2612AA:  ANDEQ.W         R3, R3, #0x7F
2612AE:  ITTTT EQ
2612B0:  ADDEQ.W         R1, R1, R3,LSL#3
2612B4:  ADDEQ.W         R3, R1, #0x910
2612B8:  VLDREQ          S2, [R3]
2612BC:  VADDEQ.F32      S0, S2, S0
2612C0:  ITTTT EQ
2612C2:  LDREQ           R3, [SP,#0x458+var_454]
2612C4:  VLDREQ          S2, [R3]
2612C8:  VLDREQ          S4, [R3,#4]
2612CC:  VADDEQ.F32      S0, S2, S0
2612D0:  ITTTT EQ
2612D2:  LDREQ           R6, [SP,#0x458+var_438]
2612D4:  SUBEQ           R0, R0, R6
2612D6:  ANDEQ.W         R0, R0, #0x3F ; '?'
2612DA:  ADDEQ.W         R0, R2, R0,LSL#2
2612DE:  ITTTT EQ
2612E0:  VLDREQ          S2, [R0]
2612E4:  VSTREQ          S0, [R3]
2612E8:  VLDREQ          S0, [SP,#0x458+var_424]
2612EC:  VMULEQ.F32      S0, S2, S0
2612F0:  ITTTT EQ
2612F2:  ADDWEQ          R0, R1, #0x914
2612F6:  VLDREQ          S2, [R0]
2612FA:  VADDEQ.F32      S0, S2, S0
2612FE:  VADDEQ.F32      S0, S4, S0
261302:  IT EQ
261304:  VSTREQ          S0, [R3,#4]
261308:  MOV             SP, R4
26130A:  POP.W           {R8-R11}
26130E:  POP             {R4-R7,PC}
