; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware11GetBeatInfoEP9tBeatInfo
; Address            : 0x392D54 - 0x39323C
; =========================================================

392D54:  PUSH            {R4-R7,LR}
392D56:  ADD             R7, SP, #0xC
392D58:  PUSH.W          {R8-R10}
392D5C:  MOV             R5, R0
392D5E:  ADDW            R4, R5, #0xB8C
392D62:  MOV             R8, R1
392D64:  MOV             R0, R4; this
392D66:  BLX             j__ZN15CAEStreamThread16GetActiveTrackIDEv; CAEStreamThread::GetActiveTrackID(void)
392D6A:  ADDS            R0, #1
392D6C:  BEQ             loc_392D98
392D6E:  LDR.W           R0, [R5,#0xB88]
392D72:  MOV             R6, #0x24038
392D7A:  LDR             R0, [R0,R6]
392D7C:  CBZ             R0, loc_392D98
392D7E:  LDR             R1, [R0]
392D80:  LDR             R1, [R1,#0x24]
392D82:  BLX             R1
392D84:  CBZ             R0, loc_392D98
392D86:  LDR.W           R0, [R5,#0xB88]
392D8A:  LDR             R0, [R0,R6]
392D8C:  CBZ             R0, loc_392DAA
392D8E:  LDR             R1, [R0]
392D90:  LDR             R1, [R1,#0x24]
392D92:  BLX             R1
392D94:  MOV             R9, R0
392D96:  B               loc_392DAE
392D98:  ADDW            R4, R5, #0xC44
392D9C:  MOVS            R1, #0xA4
392D9E:  MOV             R0, R4
392DA0:  BLX             j___aeabi_memclr8_0
392DA4:  MOV             R0, R8
392DA6:  MOV             R1, R4
392DA8:  B               loc_393230
392DAA:  MOV.W           R9, #0
392DAE:  MOV             R0, R4; this
392DB0:  BLX             j__ZN15CAEStreamThread16GetTrackPlayTimeEv; CAEStreamThread::GetTrackPlayTime(void)
392DB4:  MOV             R4, R0
392DB6:  CMP             R4, #0
392DB8:  BLT             loc_392E4A
392DBA:  LDR.W           R0, [R9]
392DBE:  CMP             R0, #0
392DC0:  BLT             loc_392E50
392DC2:  LDR.W           R10, [R5,#0xCEC]
392DC6:  CMP.W           R10, #0
392DCA:  BLT             loc_392DE8
392DCC:  SUB.W           R0, R4, #0x32 ; '2'
392DD0:  VLDR            S0, =0.0
392DD4:  VMOV            S2, R0
392DD8:  VCVT.F32.S32    S2, S2
392DDC:  VMAX.F32        D0, D1, D0
392DE0:  VCVT.S32.F32    S0, S0
392DE4:  VMOV            R4, S0
392DE8:  MOVS            R0, #1
392DEA:  MOVS            R6, #0
392DEC:  STR.W           R0, [R5,#0xCE4]
392DF0:  MOV.W           R1, #0xFFFFFFFF
392DF4:  ADDW            R0, R5, #0xC44
392DF8:  STR.W           R6, [R5,#0xCE8]
392DFC:  STR.W           R1, [R5,#0xCEC]
392E00:  MOVS            R1, #0xA0
392E02:  BLX             j___aeabi_memclr8_0
392E06:  LDR.W           R0, [R9]
392E0A:  CMP             R0, R4
392E0C:  BGE             loc_392E22
392E0E:  MOVS            R6, #0
392E10:  ADD.W           R0, R9, R6,LSL#3
392E14:  LDR             R1, [R0,#4]
392E16:  CMP             R1, #1
392E18:  BLT             loc_392E22
392E1A:  LDR             R0, [R0,#8]
392E1C:  ADDS            R6, #1
392E1E:  CMP             R0, R4
392E20:  BLT             loc_392E10
392E22:  ADD.W           R1, R9, R6,LSL#3
392E26:  MOV             R0, R1
392E28:  LDR.W           R2, [R0,#4]!
392E2C:  CMP             R2, #1
392E2E:  BLT             loc_392E5C
392E30:  SUBS            R1, R6, #1
392E32:  CMP             R6, R10
392E34:  BEQ.W           loc_392F88
392E38:  CMP             R6, #1
392E3A:  BLT.W           loc_392F88
392E3E:  ADD.W           R2, R9, R1,LSL#3
392E42:  LDR             R2, [R2,#4]
392E44:  STR.W           R2, [R5,#0xCE8]
392E48:  B               loc_392F8E
392E4A:  ADDS            R0, R4, #7
392E4C:  BEQ.W           loc_39322A
392E50:  ADDW            R0, R5, #0xC44
392E54:  MOVS            R1, #0xA4
392E56:  BLX             j___aeabi_memclr8_0
392E5A:  B               loc_39322A
392E5C:  CMP             R6, #1
392E5E:  BLT.W           loc_39322A
392E62:  LDR.W           R0, [R1,#-8]
392E66:  CMP             R6, #1
392E68:  SUB.W           R0, R0, R4
392E6C:  STR.W           R0, [R5,#0xC8C]
392E70:  LDR.W           R0, [R1,#-4]
392E74:  STR.W           R0, [R5,#0xC90]
392E78:  BEQ.W           loc_39322A
392E7C:  SUBS            R0, R6, #2
392E7E:  CMP             R6, #3
392E80:  LDR.W           R1, [R9,R0,LSL#3]
392E84:  ADD.W           R0, R9, R0,LSL#3
392E88:  SUB.W           R1, R1, R4
392E8C:  STR.W           R1, [R5,#0xC84]
392E90:  LDR             R0, [R0,#4]
392E92:  STR.W           R0, [R5,#0xC88]
392E96:  BLT.W           loc_39322A
392E9A:  SUBS            R0, R6, #3
392E9C:  LDR.W           R1, [R9,R0,LSL#3]
392EA0:  ADD.W           R0, R9, R0,LSL#3
392EA4:  SUB.W           R1, R1, R4
392EA8:  STR.W           R1, [R5,#0xC7C]
392EAC:  LDR             R0, [R0,#4]
392EAE:  STR.W           R0, [R5,#0xC80]
392EB2:  BEQ.W           loc_39322A
392EB6:  SUBS            R0, R6, #4
392EB8:  CMP             R6, #5
392EBA:  LDR.W           R1, [R9,R0,LSL#3]
392EBE:  ADD.W           R0, R9, R0,LSL#3
392EC2:  SUB.W           R1, R1, R4
392EC6:  STR.W           R1, [R5,#0xC74]
392ECA:  LDR             R0, [R0,#4]
392ECC:  STR.W           R0, [R5,#0xC78]
392ED0:  BLT.W           loc_39322A
392ED4:  SUBS            R0, R6, #5
392ED6:  LDR.W           R1, [R9,R0,LSL#3]
392EDA:  ADD.W           R0, R9, R0,LSL#3
392EDE:  SUB.W           R1, R1, R4
392EE2:  STR.W           R1, [R5,#0xC6C]
392EE6:  LDR             R0, [R0,#4]
392EE8:  STR.W           R0, [R5,#0xC70]
392EEC:  BEQ.W           loc_39322A
392EF0:  SUBS            R0, R6, #6
392EF2:  CMP             R6, #7
392EF4:  LDR.W           R1, [R9,R0,LSL#3]
392EF8:  ADD.W           R0, R9, R0,LSL#3
392EFC:  SUB.W           R1, R1, R4
392F00:  STR.W           R1, [R5,#0xC64]
392F04:  LDR             R0, [R0,#4]
392F06:  STR.W           R0, [R5,#0xC68]
392F0A:  BLT.W           loc_39322A
392F0E:  SUBS            R0, R6, #7
392F10:  LDR.W           R1, [R9,R0,LSL#3]
392F14:  ADD.W           R0, R9, R0,LSL#3
392F18:  SUB.W           R1, R1, R4
392F1C:  STR.W           R1, [R5,#0xC5C]
392F20:  LDR             R0, [R0,#4]
392F22:  STR.W           R0, [R5,#0xC60]
392F26:  BEQ.W           loc_39322A
392F2A:  SUB.W           R0, R6, #8
392F2E:  CMP             R6, #9
392F30:  LDR.W           R1, [R9,R0,LSL#3]
392F34:  ADD.W           R0, R9, R0,LSL#3
392F38:  SUB.W           R1, R1, R4
392F3C:  STR.W           R1, [R5,#0xC54]
392F40:  LDR             R0, [R0,#4]
392F42:  STR.W           R0, [R5,#0xC58]
392F46:  BLT.W           loc_39322A
392F4A:  SUBS.W          R0, R6, #9
392F4E:  LDR.W           R1, [R9,R0,LSL#3]
392F52:  ADD.W           R0, R9, R0,LSL#3
392F56:  SUB.W           R1, R1, R4
392F5A:  STR.W           R1, [R5,#0xC4C]
392F5E:  LDR             R0, [R0,#4]
392F60:  STR.W           R0, [R5,#0xC50]
392F64:  BEQ.W           loc_39322A
392F68:  SUB.W           R0, R6, #0xA
392F6C:  LDR.W           R1, [R9,R0,LSL#3]
392F70:  ADD.W           R0, R9, R0,LSL#3
392F74:  SUBS            R1, R1, R4
392F76:  STR.W           R1, [R5,#0xC44]
392F7A:  LDR             R0, [R0,#4]
392F7C:  STR.W           R0, [R5,#0xC48]
392F80:  B               loc_39322A
392F82:  ALIGN 4
392F84:  DCFS 0.0
392F88:  CMP             R6, #1
392F8A:  BLT.W           loc_3930A6
392F8E:  LDR.W           R2, [R9,R1,LSL#3]
392F92:  ADD.W           R1, R9, R1,LSL#3
392F96:  CMP             R6, #1
392F98:  SUB.W           R2, R2, R4
392F9C:  STR.W           R2, [R5,#0xC8C]
392FA0:  LDR             R1, [R1,#4]
392FA2:  STR.W           R1, [R5,#0xC90]
392FA6:  BLE             loc_3930A6
392FA8:  SUBS            R1, R6, #2
392FAA:  LDR.W           R2, [R9,R1,LSL#3]
392FAE:  ADD.W           R1, R9, R1,LSL#3
392FB2:  SUB.W           R2, R2, R4
392FB6:  STR.W           R2, [R5,#0xC84]
392FBA:  LDR             R1, [R1,#4]
392FBC:  STR.W           R1, [R5,#0xC88]
392FC0:  BEQ             loc_3930A6
392FC2:  SUBS            R1, R6, #3
392FC4:  CMP             R6, #4
392FC6:  LDR.W           R2, [R9,R1,LSL#3]
392FCA:  ADD.W           R1, R9, R1,LSL#3
392FCE:  SUB.W           R2, R2, R4
392FD2:  STR.W           R2, [R5,#0xC7C]
392FD6:  LDR             R1, [R1,#4]
392FD8:  STR.W           R1, [R5,#0xC80]
392FDC:  BLT             loc_3930A6
392FDE:  SUBS            R1, R6, #4
392FE0:  LDR.W           R2, [R9,R1,LSL#3]
392FE4:  ADD.W           R1, R9, R1,LSL#3
392FE8:  SUB.W           R2, R2, R4
392FEC:  STR.W           R2, [R5,#0xC74]
392FF0:  LDR             R1, [R1,#4]
392FF2:  STR.W           R1, [R5,#0xC78]
392FF6:  BEQ             loc_3930A6
392FF8:  SUBS            R1, R6, #5
392FFA:  CMP             R6, #6
392FFC:  LDR.W           R2, [R9,R1,LSL#3]
393000:  ADD.W           R1, R9, R1,LSL#3
393004:  SUB.W           R2, R2, R4
393008:  STR.W           R2, [R5,#0xC6C]
39300C:  LDR             R1, [R1,#4]
39300E:  STR.W           R1, [R5,#0xC70]
393012:  BLT             loc_3930A6
393014:  SUBS            R1, R6, #6
393016:  LDR.W           R2, [R9,R1,LSL#3]
39301A:  ADD.W           R1, R9, R1,LSL#3
39301E:  SUB.W           R2, R2, R4
393022:  STR.W           R2, [R5,#0xC64]
393026:  LDR             R1, [R1,#4]
393028:  STR.W           R1, [R5,#0xC68]
39302C:  BEQ             loc_3930A6
39302E:  SUBS            R1, R6, #7
393030:  CMP             R6, #8
393032:  LDR.W           R2, [R9,R1,LSL#3]
393036:  ADD.W           R1, R9, R1,LSL#3
39303A:  SUB.W           R2, R2, R4
39303E:  STR.W           R2, [R5,#0xC5C]
393042:  LDR             R1, [R1,#4]
393044:  STR.W           R1, [R5,#0xC60]
393048:  BLT             loc_3930A6
39304A:  SUBS.W          R1, R6, #8
39304E:  LDR.W           R2, [R9,R1,LSL#3]
393052:  ADD.W           R1, R9, R1,LSL#3
393056:  SUB.W           R2, R2, R4
39305A:  STR.W           R2, [R5,#0xC54]
39305E:  LDR             R1, [R1,#4]
393060:  STR.W           R1, [R5,#0xC58]
393064:  BEQ             loc_3930A6
393066:  SUB.W           R1, R6, #9
39306A:  CMP             R6, #0xA
39306C:  LDR.W           R2, [R9,R1,LSL#3]
393070:  ADD.W           R1, R9, R1,LSL#3
393074:  SUB.W           R2, R2, R4
393078:  STR.W           R2, [R5,#0xC4C]
39307C:  LDR             R1, [R1,#4]
39307E:  STR.W           R1, [R5,#0xC50]
393082:  BLT             loc_3930A6
393084:  SUB.W           R1, R6, #0xA
393088:  CMP.W           R6, #0x3E8
39308C:  LDR.W           R2, [R9,R1,LSL#3]
393090:  ADD.W           R1, R9, R1,LSL#3
393094:  SUB.W           R2, R2, R4
393098:  STR.W           R2, [R5,#0xC44]
39309C:  LDR             R1, [R1,#4]
39309E:  STR.W           R1, [R5,#0xC48]
3930A2:  BGE.W           loc_393226
3930A6:  LDR             R1, [R0]
3930A8:  CMP             R1, #1
3930AA:  ITTTT GE
3930AC:  LDRGE.W         R1, [R9,R6,LSL#3]
3930B0:  SUBGE           R1, R1, R4
3930B2:  STRGE.W         R1, [R5,#0xC94]
3930B6:  LDRGE           R0, [R0]
3930B8:  IT GE
3930BA:  STRGE.W         R0, [R5,#0xC98]
3930BE:  MOVW            R0, #0x3E7
3930C2:  CMP             R6, R0
3930C4:  BGE.W           loc_393226
3930C8:  ADDS            R1, R6, #1
3930CA:  ADD.W           R0, R9, R1,LSL#3
3930CE:  LDR.W           R2, [R0,#4]!
3930D2:  CMP             R2, #1
3930D4:  ITTTT GE
3930D6:  LDRGE.W         R1, [R9,R1,LSL#3]
3930DA:  SUBGE           R1, R1, R4
3930DC:  STRGE.W         R1, [R5,#0xC9C]
3930E0:  LDRGE           R0, [R0]
3930E2:  IT GE
3930E4:  STRGE.W         R0, [R5,#0xCA0]
3930E8:  MOVW            R0, #0x3E5
3930EC:  CMP             R6, R0
3930EE:  BGT.W           loc_393226
3930F2:  ADDS            R1, R6, #2
3930F4:  ADD.W           R0, R9, R1,LSL#3
3930F8:  LDR.W           R2, [R0,#4]!
3930FC:  CMP             R2, #1
3930FE:  ITTTT GE
393100:  LDRGE.W         R1, [R9,R1,LSL#3]
393104:  SUBGE           R1, R1, R4
393106:  STRGE.W         R1, [R5,#0xCA4]
39310A:  LDRGE           R0, [R0]
39310C:  IT GE
39310E:  STRGE.W         R0, [R5,#0xCA8]
393112:  CMP.W           R6, #0x3E4
393116:  BGT.W           loc_393226
39311A:  ADDS            R1, R6, #3
39311C:  ADD.W           R0, R9, R1,LSL#3
393120:  LDR.W           R2, [R0,#4]!
393124:  CMP             R2, #1
393126:  ITTTT GE
393128:  LDRGE.W         R1, [R9,R1,LSL#3]
39312C:  SUBGE           R1, R1, R4
39312E:  STRGE.W         R1, [R5,#0xCAC]
393132:  LDRGE           R0, [R0]
393134:  IT GE
393136:  STRGE.W         R0, [R5,#0xCB0]
39313A:  CMP.W           R6, #0x3E4
39313E:  BGE             loc_393226
393140:  ADDS            R1, R6, #4
393142:  ADD.W           R0, R9, R1,LSL#3
393146:  LDR.W           R2, [R0,#4]!
39314A:  CMP             R2, #1
39314C:  ITTTT GE
39314E:  LDRGE.W         R1, [R9,R1,LSL#3]
393152:  SUBGE           R1, R1, R4
393154:  STRGE.W         R1, [R5,#0xCB4]
393158:  LDRGE           R0, [R0]
39315A:  IT GE
39315C:  STRGE.W         R0, [R5,#0xCB8]
393160:  MOVW            R0, #0x3E2
393164:  CMP             R6, R0
393166:  BGT             loc_393226
393168:  ADDS            R1, R6, #5
39316A:  ADD.W           R0, R9, R1,LSL#3
39316E:  LDR.W           R2, [R0,#4]!
393172:  CMP             R2, #1
393174:  ITTTT GE
393176:  LDRGE.W         R1, [R9,R1,LSL#3]
39317A:  SUBGE           R1, R1, R4
39317C:  STRGE.W         R1, [R5,#0xCBC]
393180:  LDRGE           R0, [R0]
393182:  IT GE
393184:  STRGE.W         R0, [R5,#0xCC0]
393188:  MOVW            R0, #0x3E1
39318C:  CMP             R6, R0
39318E:  BGT             loc_393226
393190:  ADDS            R1, R6, #6
393192:  ADD.W           R0, R9, R1,LSL#3
393196:  LDR.W           R2, [R0,#4]!
39319A:  CMP             R2, #1
39319C:  ITTTT GE
39319E:  LDRGE.W         R1, [R9,R1,LSL#3]
3931A2:  SUBGE           R1, R1, R4
3931A4:  STRGE.W         R1, [R5,#0xCC4]
3931A8:  LDRGE           R0, [R0]
3931AA:  IT GE
3931AC:  STRGE.W         R0, [R5,#0xCC8]
3931B0:  CMP.W           R6, #0x3E0
3931B4:  BGT             loc_393226
3931B6:  ADDS            R1, R6, #7
3931B8:  ADD.W           R0, R9, R1,LSL#3
3931BC:  LDR.W           R2, [R0,#4]!
3931C0:  CMP             R2, #1
3931C2:  ITTTT GE
3931C4:  LDRGE.W         R1, [R9,R1,LSL#3]
3931C8:  SUBGE           R1, R1, R4
3931CA:  STRGE.W         R1, [R5,#0xCCC]
3931CE:  LDRGE           R0, [R0]
3931D0:  IT GE
3931D2:  STRGE.W         R0, [R5,#0xCD0]
3931D6:  CMP.W           R6, #0x3E0
3931DA:  BGE             loc_393226
3931DC:  ADD.W           R1, R6, #8
3931E0:  ADD.W           R0, R9, R1,LSL#3
3931E4:  LDR.W           R2, [R0,#4]!
3931E8:  CMP             R2, #1
3931EA:  ITTTT GE
3931EC:  LDRGE.W         R1, [R9,R1,LSL#3]
3931F0:  SUBGE           R1, R1, R4
3931F2:  STRGE.W         R1, [R5,#0xCD4]
3931F6:  LDRGE           R0, [R0]
3931F8:  IT GE
3931FA:  STRGE.W         R0, [R5,#0xCD8]
3931FE:  MOVW            R0, #0x3DE
393202:  CMP             R6, R0
393204:  BGT             loc_393226
393206:  ADD.W           R1, R6, #9
39320A:  ADD.W           R0, R9, R1,LSL#3
39320E:  LDR.W           R2, [R0,#4]!
393212:  CMP             R2, #1
393214:  BLT             loc_393226
393216:  LDR.W           R1, [R9,R1,LSL#3]
39321A:  SUBS            R1, R1, R4
39321C:  STR.W           R1, [R5,#0xCDC]
393220:  LDR             R0, [R0]
393222:  STR.W           R0, [R5,#0xCE0]
393226:  STR.W           R6, [R5,#0xCEC]
39322A:  ADDW            R1, R5, #0xC44; void *
39322E:  MOV             R0, R8; void *
393230:  MOVS            R2, #0xAC; size_t
393232:  BLX             memcpy_0
393236:  POP.W           {R8-R10}
39323A:  POP             {R4-R7,PC}
