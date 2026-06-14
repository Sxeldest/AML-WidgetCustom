; =========================================================
; Game Engine Function: sub_1C7004
; Address            : 0x1C7004 - 0x1C77FC
; =========================================================

1C7004:  PUSH            {R4-R11,LR}
1C7008:  ADD             R11, SP, #0x1C
1C700C:  SUB             SP, SP, #4
1C7010:  VPUSH           {D8-D15}
1C7014:  SUB             SP, SP, #0x88
1C7018:  MOV             LR, R0
1C701C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C7030)
1C7020:  STR             R3, [SP,#0xE8+var_E4]
1C7024:  LDR             R3, [R11,#arg_0]
1C7028:  LDR             R0, [PC,R0]; __stack_chk_guard
1C702C:  LDR             R6, [R11,#arg_C]
1C7030:  LDR             R10, [R11,#arg_4]
1C7034:  LDR             R0, [R0]
1C7038:  STR             R0, [R11,#var_64]
1C703C:  MOVW            R0, #0x12E8
1C7040:  LDR             R8, [LR,R0]
1C7044:  LDR             R5, [LR,#0xD0]
1C7048:  LDR             R3, [R3]
1C704C:  CMP             R5, #0
1C7050:  STR             LR, [SP,#0xE8+var_9C]
1C7054:  STR             R3, [SP,#0xE8+var_8C]
1C7058:  STR             R1, [SP,#0xE8+var_E8]
1C705C:  BEQ             loc_1C7590
1C7060:  ADD             R0, R1, #0x148
1C7064:  VMOV            S0, R3
1C7068:  ADD             R0, R0, #0x28800
1C706C:  STR             R0, [SP,#0xE8+var_98]
1C7070:  ADD             R0, R1, #0x144
1C7074:  MOV             R12, #0
1C7078:  ADD             R0, R0, #0x28800
1C707C:  STR             R0, [SP,#0xE8+var_A0]
1C7080:  ADD             R0, R1, #0x940
1C7084:  ADD             R0, R0, #0x28000
1C7088:  STR             R0, [SP,#0xE8+var_A4]
1C708C:  ADD             R0, R1, #0x13C
1C7090:  ADD             R0, R0, #0x28800
1C7094:  STR             R0, [SP,#0xE8+var_A8]
1C7098:  ADD             R0, R1, #0x138
1C709C:  ADD             R0, R0, #0x28800
1C70A0:  STR             R0, [SP,#0xE8+var_AC]
1C70A4:  ADD             R0, R1, #0x134
1C70A8:  ADD             R0, R0, #0x28800
1C70AC:  STR             R0, [SP,#0xE8+var_B0]
1C70B0:  ADD             R0, R1, #0x930
1C70B4:  ADD             R0, R0, #0x28000
1C70B8:  STR             R0, [SP,#0xE8+var_B4]
1C70BC:  ADD             R0, R1, #0x12C
1C70C0:  ADD             R0, R0, #0x28800
1C70C4:  STR             R0, [SP,#0xE8+var_B8]
1C70C8:  ADD             R0, R1, #0x128
1C70CC:  ADD             R0, R0, #0x28800
1C70D0:  STR             R0, [SP,#0xE8+var_BC]
1C70D4:  ADD             R0, R1, #0x124
1C70D8:  ADD             R0, R0, #0x28800
1C70DC:  STR             R0, [SP,#0xE8+var_C0]
1C70E0:  ADD             R0, R1, #0x920
1C70E4:  ADD             R0, R0, #0x28000
1C70E8:  STR             R0, [SP,#0xE8+var_C4]
1C70EC:  ADD             R0, R1, #0x11C
1C70F0:  ADD             R0, R0, #0x28800
1C70F4:  STR             R0, [SP,#0xE8+var_C8]
1C70F8:  ADD             R0, R1, #0x118
1C70FC:  ADD             R0, R0, #0x28800
1C7100:  STR             R0, [SP,#0xE8+var_CC]
1C7104:  ADD             R0, R1, #0x114
1C7108:  ADD             R0, R0, #0x28800
1C710C:  STR             R0, [SP,#0xE8+var_D0]
1C7110:  ADD             R0, R1, #0x910
1C7114:  ADD             R0, R0, #0x28000
1C7118:  STR             R0, [SP,#0xE8+var_D4]
1C711C:  ADD             R0, R1, #0x10C
1C7120:  ADD             R0, R0, #0x28800
1C7124:  STR             R0, [SP,#0xE8+var_D8]
1C7128:  ADD             R0, R1, #0x108
1C712C:  ADD             R0, R0, #0x28800
1C7130:  STR             R0, [SP,#0xE8+var_DC]
1C7134:  ADD             R0, R1, #0x104
1C7138:  ADD             R0, R0, #0x28800
1C713C:  STR             R0, [SP,#0xE8+var_E0]
1C7140:  MOVW            R0, #0x1E90
1C7144:  ADD             R9, LR, R0
1C7148:  ADD             R0, R1, #0xD8
1C714C:  STR             R0, [SP,#0xE8+var_94]
1C7150:  VCVT.F32.S32    S2, S0
1C7154:  VLDR            S0, =0.000061035
1C7158:  STR             R9, [SP,#0xE8+var_90]
1C715C:  VMUL.F32        S2, S2, S0
1C7160:  ADD             R0, R12, R12,LSL#3
1C7164:  MOVW            R1, #0x1D4C
1C7168:  CMP             R10, #0
1C716C:  ADD             R0, LR, R0,LSL#2
1C7170:  ADD             R9, R0, R1
1C7174:  ADD             R1, SP, #0xE8+var_88
1C7178:  LDM             R9!, {R0,R3,R4,R7}
1C717C:  STM             R1!, {R0,R3,R4,R7}
1C7180:  LDM             R9, {R0,R3,R4,R7,LR}
1C7184:  STM             R1, {R0,R3,R4,R7,LR}
1C7188:  LDR             R9, [SP,#0xE8+var_90]
1C718C:  BNE             loc_1C72C0
1C7190:  ADD             R0, R2, R12,LSL#2
1C7194:  MOVW            R1, #0x1E94
1C7198:  VLDR            S8, [R9]
1C719C:  VLDR            S4, [R0]
1C71A0:  ADD             R0, R0, R5,LSL#2
1C71A4:  VLDR            S6, [R0]
1C71A8:  LDR             R0, [SP,#0xE8+var_9C]
1C71AC:  VSUB.F32        S6, S6, S4
1C71B0:  ADD             R0, R0, R12,LSL#3
1C71B4:  ADD             R1, R0, R1
1C71B8:  VMUL.F32        S6, S2, S6
1C71BC:  VADD.F32        S4, S6, S4
1C71C0:  VLDR            S6, [R1]
1C71C4:  MOVW            R1, #0x1E98
1C71C8:  ADD             R0, R0, R1
1C71CC:  VSUB.F32        S6, S6, S4
1C71D0:  VMUL.F32        S6, S6, S8
1C71D4:  VADD.F32        S4, S6, S4
1C71D8:  VLDR            S6, [R0]
1C71DC:  LDR             R0, [SP,#0xE8+var_E0]
1C71E0:  VSUB.F32        S6, S6, S4
1C71E4:  VMUL.F32        S6, S6, S8
1C71E8:  VLDR            S8, [R0]
1C71EC:  VADD.F32        S4, S6, S4
1C71F0:  VLDR            S6, [SP,#0xE8+var_88]
1C71F4:  VMUL.F32        S6, S6, S4
1C71F8:  VSUB.F32        S6, S8, S6
1C71FC:  VSTR            S6, [R0]
1C7200:  VLDR            S6, [SP,#0xE8+var_84]
1C7204:  LDR             R0, [SP,#0xE8+var_DC]
1C7208:  VMUL.F32        S6, S6, S4
1C720C:  VLDR            S8, [R0]
1C7210:  VSUB.F32        S6, S8, S6
1C7214:  VSTR            S6, [R0]
1C7218:  VLDR            S6, [SP,#0xE8+var_80]
1C721C:  LDR             R0, [SP,#0xE8+var_D8]
1C7220:  VMUL.F32        S6, S6, S4
1C7224:  VLDR            S8, [R0]
1C7228:  VSUB.F32        S6, S8, S6
1C722C:  VSTR            S6, [R0]
1C7230:  VLDR            S6, [SP,#0xE8+var_7C]
1C7234:  LDR             R0, [SP,#0xE8+var_D4]
1C7238:  VMUL.F32        S6, S6, S4
1C723C:  VLDR            S8, [R0]
1C7240:  VSUB.F32        S6, S8, S6
1C7244:  VSTR            S6, [R0]
1C7248:  VLDR            S6, [SP,#0xE8+var_78]
1C724C:  LDR             R0, [SP,#0xE8+var_D0]
1C7250:  VMUL.F32        S6, S6, S4
1C7254:  VLDR            S8, [R0]
1C7258:  VSUB.F32        S6, S8, S6
1C725C:  VSTR            S6, [R0]
1C7260:  VLDR            S6, [SP,#0xE8+var_74]
1C7264:  LDR             R0, [SP,#0xE8+var_CC]
1C7268:  VMUL.F32        S6, S6, S4
1C726C:  VLDR            S8, [R0]
1C7270:  VSUB.F32        S6, S8, S6
1C7274:  VSTR            S6, [R0]
1C7278:  VLDR            S6, [SP,#0xE8+var_70]
1C727C:  LDR             R0, [SP,#0xE8+var_C8]
1C7280:  VMUL.F32        S6, S6, S4
1C7284:  VLDR            S8, [R0]
1C7288:  VSUB.F32        S6, S8, S6
1C728C:  VSTR            S6, [R0]
1C7290:  VLDR            S6, [SP,#0xE8+var_6C]
1C7294:  LDR             R0, [SP,#0xE8+var_C4]
1C7298:  VMUL.F32        S6, S6, S4
1C729C:  VLDR            S8, [R0]
1C72A0:  VSUB.F32        S6, S8, S6
1C72A4:  VSTR            S6, [R0]
1C72A8:  VLDR            S6, [SP,#0xE8+var_68]
1C72AC:  LDR             R0, [SP,#0xE8+var_C0]
1C72B0:  VMUL.F32        S4, S6, S4
1C72B4:  VLDR            S6, [R0]
1C72B8:  VSUB.F32        S4, S6, S4
1C72BC:  VSTR            S4, [R0]
1C72C0:  LDR             R4, [SP,#0xE8+var_8C]
1C72C4:  CMP             R6, #0
1C72C8:  BEQ             loc_1C7428
1C72CC:  LDR             LR, [SP,#0xE8+var_9C]
1C72D0:  MOVW            R1, #0x1E94
1C72D4:  LDR             R3, [SP,#0xE8+var_94]
1C72D8:  MOV             R7, #0
1C72DC:  ADD             R0, LR, R12,LSL#3
1C72E0:  VLDR            S4, [SP,#0xE8+var_88]
1C72E4:  ADD             R0, R0, R1
1C72E8:  ADD             R1, R10, R10,LSL#3
1C72EC:  VLDR            S6, [SP,#0xE8+var_84]
1C72F0:  ADD             R3, R3, R1,LSL#2
1C72F4:  VLDR            S8, [SP,#0xE8+var_80]
1C72F8:  VLDR            S10, [SP,#0xE8+var_7C]
1C72FC:  MOV             R1, R6
1C7300:  VLDR            S12, [SP,#0xE8+var_68]
1C7304:  VLDR            S14, [SP,#0xE8+var_6C]
1C7308:  VLDR            S1, [SP,#0xE8+var_70]
1C730C:  VLDR            S3, [SP,#0xE8+var_74]
1C7310:  VLDR            S5, [SP,#0xE8+var_78]
1C7314:  MUL             R6, R7, R5
1C7318:  VMOV            S7, R4
1C731C:  ADD             R4, R4, R8
1C7320:  VCVT.F32.S32    S7, S7
1C7324:  VLDR            S13, [R9]
1C7328:  ADD             R7, R7, R4,LSR#14
1C732C:  BFC             R4, #0xE, #0x12
1C7330:  SUBS            R1, R1, #1
1C7334:  ADD             R6, R2, R6,LSL#2
1C7338:  ADD             R6, R6, R12,LSL#2
1C733C:  VLDR            S9, [R6]
1C7340:  ADD             R6, R6, R5,LSL#2
1C7344:  VMUL.F32        S7, S7, S0
1C7348:  VLDR            S11, [R6]
1C734C:  VSUB.F32        S11, S11, S9
1C7350:  VMUL.F32        S7, S7, S11
1C7354:  VLDR            S11, [R0,#4]
1C7358:  VADD.F32        S7, S7, S9
1C735C:  VLDR            S9, [R0]
1C7360:  VSUB.F32        S9, S9, S7
1C7364:  VMUL.F32        S9, S9, S13
1C7368:  VADD.F32        S7, S9, S7
1C736C:  VSUB.F32        S9, S11, S7
1C7370:  VSTR            S7, [R0]
1C7374:  VMUL.F32        S9, S9, S13
1C7378:  VADD.F32        S9, S9, S7
1C737C:  VMUL.F32        S13, S4, S9
1C7380:  VSTR            S9, [R0,#4]
1C7384:  VMUL.F32        S11, S8, S9
1C7388:  VLDR            S24, [R3,#-0x20]
1C738C:  VMUL.F32        S15, S1, S9
1C7390:  VLDR            S28, [R3,#-0x18]
1C7394:  VMUL.F32        S16, S14, S9
1C7398:  VLDR            S21, [R3,#-8]
1C739C:  VMUL.F32        S18, S6, S9
1C73A0:  VLDR            S26, [R3,#-0x1C]
1C73A4:  VMUL.F32        S20, S10, S9
1C73A8:  VLDR            S30, [R3,#-0x14]
1C73AC:  VMUL.F32        S7, S5, S9
1C73B0:  VLDR            S17, [R3,#-0x10]
1C73B4:  VMUL.F32        S22, S3, S9
1C73B8:  VLDR            S19, [R3,#-0xC]
1C73BC:  VMUL.F32        S9, S12, S9
1C73C0:  VLDR            S23, [R3,#-4]
1C73C4:  VADD.F32        S13, S24, S13
1C73C8:  VLDR            S24, [R3]
1C73CC:  VADD.F32        S11, S28, S11
1C73D0:  VADD.F32        S18, S26, S18
1C73D4:  VADD.F32        S20, S30, S20
1C73D8:  VADD.F32        S7, S17, S7
1C73DC:  VADD.F32        S22, S19, S22
1C73E0:  VADD.F32        S9, S24, S9
1C73E4:  VADD.F32        S15, S21, S15
1C73E8:  VSTR            S13, [R3,#-0x20]
1C73EC:  VADD.F32        S16, S23, S16
1C73F0:  VSTR            S18, [R3,#-0x1C]
1C73F4:  VSTR            S11, [R3,#-0x18]
1C73F8:  VSTR            S20, [R3,#-0x14]
1C73FC:  VSTR            S7, [R3,#-0x10]
1C7400:  VSTR            S22, [R3,#-0xC]
1C7404:  VSTR            S15, [R3,#-8]
1C7408:  VSTR            S16, [R3,#-4]
1C740C:  VSTR            S9, [R3]
1C7410:  ADD             R3, R3, #0x24 ; '$'
1C7414:  BNE             loc_1C7314
1C7418:  LDR             R6, [R11,#arg_C]
1C741C:  ADD             R10, R10, R6
1C7420:  B               loc_1C7430
1C7424:  DCFS 0.000061035
1C7428:  MOV             R7, #0
1C742C:  LDR             LR, [SP,#0xE8+var_9C]
1C7430:  LDR             R0, [R11,#arg_8]
1C7434:  CMP             R10, R0
1C7438:  BNE             loc_1C757C
1C743C:  MUL             R0, R7, R5
1C7440:  VMOV            S4, R4
1C7444:  MOVW            R1, #0x1E94
1C7448:  VCVT.F32.S32    S4, S4
1C744C:  ADD             R0, R2, R0,LSL#2
1C7450:  ADD             R0, R0, R12,LSL#2
1C7454:  VLDR            S6, [R0]
1C7458:  ADD             R0, R0, R5,LSL#2
1C745C:  VMUL.F32        S4, S4, S0
1C7460:  VLDR            S8, [R0]
1C7464:  ADD             R0, LR, R12,LSL#3
1C7468:  ADD             R1, R0, R1
1C746C:  VSUB.F32        S8, S8, S6
1C7470:  VMUL.F32        S4, S4, S8
1C7474:  VLDR            S8, [R9]
1C7478:  VADD.F32        S4, S4, S6
1C747C:  VLDR            S6, [R1]
1C7480:  MOVW            R1, #0x1E98
1C7484:  ADD             R0, R0, R1
1C7488:  VSUB.F32        S6, S6, S4
1C748C:  VMUL.F32        S6, S6, S8
1C7490:  VADD.F32        S4, S6, S4
1C7494:  VLDR            S6, [R0]
1C7498:  LDR             R0, [SP,#0xE8+var_BC]
1C749C:  VSUB.F32        S6, S6, S4
1C74A0:  VMUL.F32        S6, S6, S8
1C74A4:  VLDR            S8, [R0]
1C74A8:  VADD.F32        S4, S6, S4
1C74AC:  VLDR            S6, [SP,#0xE8+var_88]
1C74B0:  VMUL.F32        S6, S6, S4
1C74B4:  VADD.F32        S6, S8, S6
1C74B8:  VSTR            S6, [R0]
1C74BC:  VLDR            S6, [SP,#0xE8+var_84]
1C74C0:  LDR             R0, [SP,#0xE8+var_B8]
1C74C4:  VMUL.F32        S6, S6, S4
1C74C8:  VLDR            S8, [R0]
1C74CC:  VADD.F32        S6, S8, S6
1C74D0:  VSTR            S6, [R0]
1C74D4:  VLDR            S6, [SP,#0xE8+var_80]
1C74D8:  LDR             R0, [SP,#0xE8+var_B4]
1C74DC:  VMUL.F32        S6, S6, S4
1C74E0:  VLDR            S8, [R0]
1C74E4:  VADD.F32        S6, S8, S6
1C74E8:  VSTR            S6, [R0]
1C74EC:  VLDR            S6, [SP,#0xE8+var_7C]
1C74F0:  LDR             R0, [SP,#0xE8+var_B0]
1C74F4:  VMUL.F32        S6, S6, S4
1C74F8:  VLDR            S8, [R0]
1C74FC:  VADD.F32        S6, S8, S6
1C7500:  VSTR            S6, [R0]
1C7504:  VLDR            S6, [SP,#0xE8+var_78]
1C7508:  LDR             R0, [SP,#0xE8+var_AC]
1C750C:  VMUL.F32        S6, S6, S4
1C7510:  VLDR            S8, [R0]
1C7514:  VADD.F32        S6, S8, S6
1C7518:  VSTR            S6, [R0]
1C751C:  VLDR            S6, [SP,#0xE8+var_74]
1C7520:  LDR             R0, [SP,#0xE8+var_A8]
1C7524:  VMUL.F32        S6, S6, S4
1C7528:  VLDR            S8, [R0]
1C752C:  VADD.F32        S6, S8, S6
1C7530:  VSTR            S6, [R0]
1C7534:  VLDR            S6, [SP,#0xE8+var_70]
1C7538:  LDR             R0, [SP,#0xE8+var_A4]
1C753C:  VMUL.F32        S6, S6, S4
1C7540:  VLDR            S8, [R0]
1C7544:  VADD.F32        S6, S8, S6
1C7548:  VSTR            S6, [R0]
1C754C:  VLDR            S6, [SP,#0xE8+var_6C]
1C7550:  LDR             R0, [SP,#0xE8+var_A0]
1C7554:  VMUL.F32        S6, S6, S4
1C7558:  VLDR            S8, [R0]
1C755C:  VADD.F32        S6, S8, S6
1C7560:  VSTR            S6, [R0]
1C7564:  VLDR            S6, [SP,#0xE8+var_68]
1C7568:  LDR             R0, [SP,#0xE8+var_98]
1C756C:  VMUL.F32        S4, S6, S4
1C7570:  VLDR            S6, [R0]
1C7574:  VADD.F32        S4, S6, S4
1C7578:  VSTR            S4, [R0]
1C757C:  ADD             R12, R12, #1
1C7580:  SUB             R10, R10, R6
1C7584:  CMP             R12, R5
1C7588:  BNE             loc_1C7160
1C758C:  B               loc_1C759C
1C7590:  MOV             R1, R3
1C7594:  MOV             R7, #0
1C7598:  MOV             R4, R1
1C759C:  LDR             R0, [SP,#0xE8+var_E8]
1C75A0:  LDR             R0, [R0,#0x38]
1C75A4:  STR             R0, [SP,#0xE8+var_A4]
1C75A8:  CMP             R0, #0
1C75AC:  BEQ             loc_1C77BC
1C75B0:  LDR             R0, [SP,#0xE8+var_8C]
1C75B4:  MOV             R3, #0
1C75B8:  VMOV            S0, R0
1C75BC:  VCVT.F32.S32    S2, S0
1C75C0:  VLDR            S0, =0.000061035
1C75C4:  VMUL.F32        S2, S2, S0
1C75C8:  ADD             R0, R3, R3,LSL#1
1C75CC:  ADD             R1, LR, R0,LSL#4
1C75D0:  MOVW            R0, #0x1EDC
1C75D4:  LDR             R0, [R1,R0]
1C75D8:  STR             R3, [SP,#0xE8+var_A0]
1C75DC:  CMP             R0, #0
1C75E0:  CMPNE           R5, #0
1C75E4:  BEQ             loc_1C77A4
1C75E8:  MOVW            R3, #0x40CC
1C75EC:  MOV             LR, #0
1C75F0:  ADD             R3, R0, R3
1C75F4:  STR             R3, [SP,#0xE8+var_94]
1C75F8:  MOVW            R3, #0x1EE0
1C75FC:  ADD             R3, R1, R3
1C7600:  VLDR            S4, [R3]
1C7604:  MOVW            R3, #0x40C8
1C7608:  ADD             R3, R0, R3
1C760C:  STR             R3, [SP,#0xE8+var_98]
1C7610:  MOVW            R3, #0x1EE4
1C7614:  ADD             R9, R1, R3
1C7618:  MOVW            R3, #0x1EE8
1C761C:  ADD             R0, R0, #0xC8
1C7620:  STR             R0, [SP,#0xE8+var_90]
1C7624:  CMP             R10, #0
1C7628:  BNE             loc_1C767C
1C762C:  ADD             R0, R2, LR,LSL#2
1C7630:  VLDR            S10, [R9]
1C7634:  MOV             R10, #0
1C7638:  VLDR            S6, [R0]
1C763C:  ADD             R0, R0, R5,LSL#2
1C7640:  VLDR            S8, [R0]
1C7644:  ADD             R0, R1, LR,LSL#2
1C7648:  ADD             R0, R0, R3
1C764C:  VSUB.F32        S8, S8, S6
1C7650:  VMUL.F32        S8, S2, S8
1C7654:  VADD.F32        S6, S8, S6
1C7658:  VLDR            S8, [R0]
1C765C:  LDR             R0, [SP,#0xE8+var_98]
1C7660:  VSUB.F32        S8, S6, S8
1C7664:  VMUL.F32        S8, S8, S10
1C7668:  VSUB.F32        S6, S8, S6
1C766C:  VLDR            S8, [R0]
1C7670:  VMUL.F32        S6, S6, S4
1C7674:  VADD.F32        S6, S8, S6
1C7678:  VSTR            S6, [R0]
1C767C:  LDR             R4, [SP,#0xE8+var_8C]
1C7680:  CMP             R6, #0
1C7684:  BEQ             loc_1C7724
1C7688:  LDR             R0, [SP,#0xE8+var_90]
1C768C:  MOVW            R3, #0x1EE8
1C7690:  MOV             R7, #0
1C7694:  ADD             R12, R0, R10,LSL#2
1C7698:  ADD             R0, R1, LR,LSL#2
1C769C:  ADD             R3, R0, R3
1C76A0:  MOV             R0, R6
1C76A4:  MUL             R6, R7, R5
1C76A8:  VMOV            S6, R4
1C76AC:  ADD             R4, R4, R8
1C76B0:  VCVT.F32.S32    S6, S6
1C76B4:  SUBS            R0, R0, #1
1C76B8:  ADD             R7, R7, R4,LSR#14
1C76BC:  BFC             R4, #0xE, #0x12
1C76C0:  ADD             R6, R2, R6,LSL#2
1C76C4:  ADD             R6, R6, LR,LSL#2
1C76C8:  VLDR            S8, [R6]
1C76CC:  ADD             R6, R6, R5,LSL#2
1C76D0:  VMUL.F32        S6, S6, S0
1C76D4:  VLDR            S10, [R6]
1C76D8:  VSUB.F32        S10, S10, S8
1C76DC:  VMUL.F32        S6, S6, S10
1C76E0:  VLDR            S10, [R9]
1C76E4:  VADD.F32        S6, S6, S8
1C76E8:  VLDR            S8, [R3]
1C76EC:  VSUB.F32        S8, S8, S6
1C76F0:  VMUL.F32        S8, S8, S10
1C76F4:  VADD.F32        S6, S8, S6
1C76F8:  VMUL.F32        S8, S6, S4
1C76FC:  VSTR            S6, [R3]
1C7700:  VLDR            S6, [R12]
1C7704:  VADD.F32        S6, S8, S6
1C7708:  VSTR            S6, [R12]
1C770C:  ADD             R12, R12, #4
1C7710:  BNE             loc_1C76A4
1C7714:  LDR             R6, [R11,#arg_C]
1C7718:  MOVW            R3, #0x1EE8
1C771C:  ADD             R10, R10, R6
1C7720:  B               loc_1C7728
1C7724:  MOV             R7, #0
1C7728:  LDR             R0, [R11,#arg_8]
1C772C:  CMP             R10, R0
1C7730:  BNE             loc_1C7794
1C7734:  MUL             R0, R7, R5
1C7738:  VMOV            S6, R4
1C773C:  VCVT.F32.S32    S6, S6
1C7740:  ADD             R0, R2, R0,LSL#2
1C7744:  ADD             R0, R0, LR,LSL#2
1C7748:  VLDR            S8, [R0]
1C774C:  ADD             R0, R0, R5,LSL#2
1C7750:  VMUL.F32        S6, S6, S0
1C7754:  VLDR            S10, [R0]
1C7758:  ADD             R0, R1, LR,LSL#2
1C775C:  ADD             R0, R0, R3
1C7760:  VSUB.F32        S10, S10, S8
1C7764:  VMUL.F32        S6, S6, S10
1C7768:  VLDR            S10, [R9]
1C776C:  VADD.F32        S6, S6, S8
1C7770:  VLDR            S8, [R0]
1C7774:  LDR             R0, [SP,#0xE8+var_94]
1C7778:  VSUB.F32        S8, S8, S6
1C777C:  VMUL.F32        S8, S8, S10
1C7780:  VADD.F32        S6, S8, S6
1C7784:  VLDR            S8, [R0]
1C7788:  VMUL.F32        S6, S6, S4
1C778C:  VADD.F32        S6, S6, S8
1C7790:  VSTR            S6, [R0]
1C7794:  ADD             LR, LR, #1
1C7798:  SUB             R10, R10, R6
1C779C:  CMP             LR, R5
1C77A0:  BNE             loc_1C7624
1C77A4:  LDR             R3, [SP,#0xE8+var_A0]
1C77A8:  LDR             R0, [SP,#0xE8+var_A4]
1C77AC:  LDR             LR, [SP,#0xE8+var_9C]
1C77B0:  ADD             R3, R3, #1
1C77B4:  CMP             R3, R0
1C77B8:  BCC             loc_1C75C8
1C77BC:  LDR             R1, [SP,#0xE8+var_E4]
1C77C0:  LDR             R0, [R1]
1C77C4:  ADD             R0, R0, R7
1C77C8:  STR             R0, [R1]
1C77CC:  LDR             R0, [R11,#arg_0]
1C77D0:  STR             R4, [R0]
1C77D4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C77E4)
1C77D8:  LDR             R1, [R11,#var_64]
1C77DC:  LDR             R0, [PC,R0]; __stack_chk_guard
1C77E0:  LDR             R0, [R0]
1C77E4:  SUBS            R0, R0, R1
1C77E8:  SUBEQ           SP, R11, #0x60 ; '`'
1C77EC:  VPOPEQ          {D8-D15}
1C77F0:  ADDEQ           SP, SP, #4
1C77F4:  POPEQ           {R4-R11,PC}
1C77F8:  BL              __stack_chk_fail
