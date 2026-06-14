; =========================================================
; Game Engine Function: aluInitPanning
; Address            : 0x1D8EC8 - 0x1D95CC
; =========================================================

1D8EC8:  PUSH            {R4-R11,LR}
1D8ECC:  ADD             R11, SP, #0x1C
1D8ED0:  SUB             SP, SP, #4
1D8ED4:  VPUSH           {D8-D14}
1D8ED8:  SUB             SP, SP, #0x38
1D8EDC:  MOV             R7, R0
1D8EE0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D8EF4)
1D8EE4:  MOV             R1, #0x240DC
1D8EEC:  LDR             R0, [PC,R0]; __stack_chk_guard
1D8EF0:  ADD             R1, R7, R1
1D8EF4:  LDR             R0, [R0]
1D8EF8:  STR             R0, [SP,#0x90+var_5C]
1D8EFC:  LDR             R0, [R7,#0x18]
1D8F00:  STR             R1, [SP,#0x90+var_84]
1D8F04:  SUB             R1, R0, #0x1500; switch 7 cases
1D8F08:  CMP             R1, #6
1D8F0C:  BHI             def_1D8F1C; jumptable 001D8F1C default case
1D8F10:  MOV             R0, R1,LSL#2
1D8F14:  ADR             R1, jpt_1D8F1C
1D8F18:  LDR             R0, [R0,R1]
1D8F1C:  ADD             PC, R0, R1; switch jump
1D8F20:  DCD loc_1D8F3C - 0x1D8F20; jump table for switch statement
1D8F24:  DCD loc_1D9020 - 0x1D8F20; jumptable 001D8F1C case 5377
1D8F28:  DCD loc_1D9014 - 0x1D8F20; jumptable 001D8F1C case 5378
1D8F2C:  DCD loc_1D9078 - 0x1D8F20; jumptable 001D8F1C case 5379
1D8F30:  DCD loc_1D9104 - 0x1D8F20; jumptable 001D8F1C case 5380
1D8F34:  DCD loc_1D91A4 - 0x1D8F20; jumptable 001D8F1C case 5381
1D8F38:  DCD loc_1D9260 - 0x1D8F20; jumptable 001D8F1C case 5382
1D8F3C:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); jumptable 001D8F1C case 5376
1D8F40:  MOV             R1, #1
1D8F44:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1D8F48:  MOV             R4, R7
1D8F4C:  STR             R1, [R4,R0]!
1D8F50:  MOV             R0, #2
1D8F54:  LDR             R1, [SP,#0x90+var_84]
1D8F58:  STR             R0, [R1]
1D8F5C:  MOV             R0, #0
1D8F60:  STR             R0, [SP,#0x90+var_80]
1D8F64:  B               loc_1D9338
1D8F68:  MOV             R1, #0x80001504; jumptable 001D8F1C default case
1D8F70:  CMP             R0, R1
1D8F74:  BNE             loc_1D9014; jumptable 001D8F1C case 5378
1D8F78:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1D8F7C:  MOV             R1, #5
1D8F80:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1D8F84:  MOV             R4, R7
1D8F88:  STR             R1, [R4,R0]!
1D8F8C:  MOV             R0, #7
1D8F90:  LDR             R2, [SP,#0x90+var_84]
1D8F94:  MOV             R1, #2
1D8F98:  MOV             R3, #1
1D8F9C:  STR             R0, [R2]
1D8FA0:  MOV             R0, #0xFFFFB7E4
1D8FA8:  STR             R1, [R4,R0]
1D8FAC:  MOV             R0, #0xFFFFB7E0
1D8FB4:  MOV             R1, #0
1D8FB8:  STR             R1, [R4,R0]
1D8FBC:  MOV             R0, #0xFFFFB7E8
1D8FC4:  STR             R3, [R4,R0]
1D8FC8:  MOV             R0, #0xFFFFB7EC
1D8FD0:  MOV             R3, #8
1D8FD4:  STR             R3, [R4,R0]
1D8FD8:  MOV             R0, #0xBF060A92
1D8FE0:  STR             R0, [SP,#0x90+var_7C]
1D8FE4:  MOV             R0, #0xBFC90FDB
1D8FEC:  STR             R0, [SP,#0x90+var_80]
1D8FF0:  MOV             R0, #0x3F060A92
1D8FF8:  STR             R1, [SP,#0x90+var_78]
1D8FFC:  STR             R0, [SP,#0x90+var_74]
1D9000:  MOV             R0, #0x3FC90FDB
1D9008:  STR             R0, [SP,#0x90+var_70]
1D900C:  ADR             R0, aLayout51sidech; "layout_51SIDECHN"
1D9010:  B               loc_1D9198
1D9014:  ADD             R0, R7, #0x8900; jumptable 001D8F1C case 5378
1D9018:  ADD             R4, R0, #0x20000
1D901C:  B               loc_1D9338
1D9020:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); jumptable 001D8F1C case 5377
1D9024:  MOV             R1, #2
1D9028:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1D902C:  MOV             R4, R7
1D9030:  STR             R1, [R4,R0]!
1D9034:  MOV             R0, #0
1D9038:  LDR             R2, [SP,#0x90+var_84]
1D903C:  MOV             R1, #1
1D9040:  MOV             R3, #2
1D9044:  STR             R0, [R2]
1D9048:  MOV             R0, #0xFFFFB7E0
1D9050:  STR             R1, [R4,R0]
1D9054:  MOV             R0, #0x3FC90FDB
1D905C:  STR             R0, [SP,#0x90+var_7C]
1D9060:  MOV             R0, #0xBFC90FDB
1D9068:  ADD             R1, SP, #0x90+var_80
1D906C:  STR             R0, [SP,#0x90+var_80]
1D9070:  ADR             R0, aLayoutStereo; "layout_STEREO"
1D9074:  B               loc_1D9334
1D9078:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); jumptable 001D8F1C case 5379
1D907C:  MOV             R1, #4
1D9080:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1D9084:  MOV             R4, R7
1D9088:  STR             R1, [R4,R0]!
1D908C:  MOVW            R0, #0xB7E8
1D9090:  LDR             R2, [SP,#0x90+var_84]
1D9094:  MOVT            R0, #0xFFFF
1D9098:  MOV             R3, #4
1D909C:  STR             R1, [R2]
1D90A0:  MOV             R1, #5
1D90A4:  STR             R1, [R4,R0]
1D90A8:  MOV             R0, #0xFFFFB7E4
1D90B0:  MOV             R1, #1
1D90B4:  STR             R1, [R4,R0]
1D90B8:  MOV             R0, #0xFFFFB7E0
1D90C0:  MOV             R1, #0
1D90C4:  STR             R1, [R4,R0]
1D90C8:  MOV             R0, #0xBF490FDB
1D90D0:  STR             R0, [SP,#0x90+var_7C]
1D90D4:  MOV             R0, #0xC016CBE4
1D90DC:  ADD             R1, SP, #0x90+var_80
1D90E0:  STR             R0, [SP,#0x90+var_80]
1D90E4:  MOV             R0, #0x3F490FDB
1D90EC:  STR             R0, [SP,#0x90+var_78]
1D90F0:  MOV             R0, #0x4016CBE4
1D90F8:  STR             R0, [SP,#0x90+var_74]
1D90FC:  ADR             R0, aLayoutQuad; "layout_QUAD"
1D9100:  B               loc_1D9334
1D9104:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); jumptable 001D8F1C case 5380
1D9108:  MOV             R1, #5
1D910C:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1D9110:  MOV             R4, R7
1D9114:  STR             R1, [R4,R0]!
1D9118:  MOV             R0, #4
1D911C:  LDR             R2, [SP,#0x90+var_84]
1D9120:  MOV             R3, #2
1D9124:  MOV             R6, #0
1D9128:  STR             R0, [R2]
1D912C:  MOV             R0, #0xFFFFB7E4
1D9134:  STR             R3, [R4,R0]
1D9138:  MOV             R0, #0xFFFFB7E0
1D9140:  STR             R6, [R4,R0]
1D9144:  MOV             R0, #0xFFFFB7E8
1D914C:  MOV             R3, #1
1D9150:  STR             R3, [R4,R0]
1D9154:  MOV             R0, #0xFFFFB7EC
1D915C:  STR             R1, [R4,R0]
1D9160:  MOV             R0, #0xBF060A92
1D9168:  STR             R0, [SP,#0x90+var_7C]
1D916C:  MOV             R0, #0xBFF5BE0B
1D9174:  STR             R0, [SP,#0x90+var_80]
1D9178:  MOV             R0, #0x3F060A92
1D9180:  STR             R6, [SP,#0x90+var_78]
1D9184:  STR             R0, [SP,#0x90+var_74]
1D9188:  MOV             R0, #0x3FF5BE0B
1D9190:  STR             R0, [SP,#0x90+var_70]
1D9194:  ADR             R0, aLayout51chn; "layout_51CHN"
1D9198:  ADD             R1, SP, #0x90+var_80
1D919C:  MOV             R3, #5
1D91A0:  B               loc_1D9334
1D91A4:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); jumptable 001D8F1C case 5381
1D91A8:  MOV             R1, #6
1D91AC:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1D91B0:  MOV             R4, R7
1D91B4:  STR             R1, [R4,R0]!
1D91B8:  MOV             R0, #7
1D91BC:  LDR             R2, [SP,#0x90+var_84]
1D91C0:  MOV             R3, #2
1D91C4:  MOV             R6, #0
1D91C8:  STR             R0, [R2]
1D91CC:  MOV             R0, #0xFFFFB7E4
1D91D4:  STR             R3, [R4,R0]
1D91D8:  MOV             R0, #0xFFFFB7E0
1D91E0:  STR             R6, [R4,R0]
1D91E4:  MOV             R0, #0xFFFFB7E8
1D91EC:  MOV             R3, #1
1D91F0:  STR             R3, [R4,R0]
1D91F4:  MOV             R0, #0xFFFFB7EC
1D91FC:  MOV             R3, #8
1D9200:  STR             R3, [R4,R0]
1D9204:  MOV             R0, #0xFFFFB7F0
1D920C:  STR             R1, [R4,R0]
1D9210:  MOV             R0, #0xBF060A92
1D9218:  STR             R0, [SP,#0x90+var_7C]
1D921C:  MOV             R0, #0xBFC90FDB
1D9224:  ADD             R1, SP, #0x90+var_80
1D9228:  STR             R0, [SP,#0x90+var_80]
1D922C:  MOV             R0, #0x3F060A92
1D9234:  STR             R6, [SP,#0x90+var_78]
1D9238:  STR             R0, [SP,#0x90+var_74]
1D923C:  MOV             R0, #0x3FC90FDB
1D9244:  MOV             R3, #6
1D9248:  STR             R0, [SP,#0x90+var_70]
1D924C:  MOV             R0, #0x40490FDB
1D9254:  STR             R0, [SP,#0x90+var_6C]
1D9258:  ADR             R0, aLayout61chn; "layout_61CHN"
1D925C:  B               loc_1D9334
1D9260:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); jumptable 001D8F1C case 5382
1D9264:  MOV             R1, #7
1D9268:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1D926C:  MOV             R4, R7
1D9270:  STR             R1, [R4,R0]!
1D9274:  MOV             R0, #4
1D9278:  LDR             R2, [SP,#0x90+var_84]
1D927C:  MOV             R3, #0
1D9280:  STR             R0, [R2]
1D9284:  MOV             R0, #0xFFFFB7E4
1D928C:  STR             R3, [R4,R0]
1D9290:  MOV             R0, #0xFFFFB7E0
1D9298:  STR             R1, [R4,R0]
1D929C:  MOV             R0, #0xFFFFB7E8
1D92A4:  MOV             R1, #2
1D92A8:  STR             R1, [R4,R0]
1D92AC:  MOV             R0, #0xFFFFB7EC
1D92B4:  MOV             R1, #1
1D92B8:  STR             R1, [R4,R0]
1D92BC:  MOV             R0, #0xFFFFB7F0
1D92C4:  MOV             R1, #8
1D92C8:  STR             R1, [R4,R0]
1D92CC:  MOV             R0, #0xFFFFB7F4
1D92D4:  MOV             R1, #5
1D92D8:  STR             R1, [R4,R0]
1D92DC:  MOV             R0, #0xBFC90FDB
1D92E4:  STR             R0, [SP,#0x90+var_7C]
1D92E8:  MOV             R0, #0xC0278D36
1D92F0:  ADD             R1, SP, #0x90+var_80
1D92F4:  STR             R0, [SP,#0x90+var_80]
1D92F8:  MOV             R0, #0xBF060A92
1D9300:  STR             R0, [SP,#0x90+var_78]
1D9304:  MOV             R0, #0x3F060A92
1D930C:  STR             R3, [SP,#0x90+var_74]
1D9310:  STR             R0, [SP,#0x90+var_70]
1D9314:  MOV             R0, #0x3FC90FDB
1D931C:  MOV             R3, #7
1D9320:  STR             R0, [SP,#0x90+var_6C]
1D9324:  MOV             R0, #0x40278D36
1D932C:  STR             R0, [SP,#0x90+var_68]
1D9330:  ADR             R0, aLayout71chn; "layout_71CHN"
1D9334:  BL              sub_1D9604
1D9338:  VLDR            S16, =6.2832
1D933C:  VMOV.F32        S22, #1.0
1D9340:  VLDR            S18, [SP,#0x90+var_80]
1D9344:  ADD             R0, R7, #0xE0
1D9348:  MOVW            R9, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1D934C:  ADD             R0, R0, #0x24000
1D9350:  VADD.F32        S20, S18, S16
1D9354:  VLDR            S24, =1.5708
1D9358:  VLDR            S26, =-3.1416
1D935C:  MOV             R10, #0
1D9360:  VLDR            S28, =-1.5708
1D9364:  MOVT            R9, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1D9368:  STR             R0, [SP,#0x90+var_88]
1D936C:  ADD             R0, SP, #0x90+var_80
1D9370:  ADD             R0, R0, #4
1D9374:  STR             R0, [SP,#0x90+var_8C]
1D9378:  ADD             R0, R10, R10,LSL#3
1D937C:  MOV             R1, #0x24 ; '$'; n
1D9380:  ADD             R5, R7, R0,LSL#2
1D9384:  ADD             R6, R5, R9
1D9388:  MOV             R0, R6; int
1D938C:  BL              sub_22178C
1D9390:  VMOV.F32        S0, S22
1D9394:  LDR             R8, [R4]
1D9398:  CMP             R8, #1
1D939C:  BEQ             loc_1D9584
1D93A0:  CMP             R10, #0x7F
1D93A4:  BGT             loc_1D93D0
1D93A8:  RSB             R0, R10, #0x80
1D93AC:  VMOV            S0, R10
1D93B0:  VMOV            S2, R0
1D93B4:  VCVT.F32.S32    S0, S0
1D93B8:  VCVT.F32.S32    S2, S2
1D93BC:  VDIV.F32        S0, S0, S2
1D93C0:  VMOV            R0, S0; x
1D93C4:  BL              atanf
1D93C8:  VMOV            S0, R0
1D93CC:  B               loc_1D9490
1D93D0:  CMP             R10, #0xFF
1D93D4:  BGT             loc_1D941C
1D93D8:  RSB             R0, R10, #0x100
1D93DC:  VMOV            S0, R0
1D93E0:  SUB             R0, R10, #0x80
1D93E4:  VMOV            S2, R0
1D93E8:  VCVT.F32.S32    S0, S0
1D93EC:  VCVT.F32.S32    S2, S2
1D93F0:  VDIV.F32        S0, S2, S0
1D93F4:  VMOV            R0, S0; x
1D93F8:  BL              atanf
1D93FC:  VMOV            S0, R0
1D9400:  VADD.F32        S0, S0, S24
1D9404:  B               loc_1D9490
1D9408:  DCB "layout_51SIDECHN",0
1D9419:  DCB 0, 0, 0
1D941C:  CMP             R10, #0x180
1D9420:  BGE             loc_1D9464
1D9424:  RSB             R0, R10, #0x180
1D9428:  VMOV            S0, R0
1D942C:  SUB             R0, R10, #0x100
1D9430:  VMOV            S2, R0
1D9434:  VCVT.F32.S32    S0, S0
1D9438:  VCVT.F32.S32    S2, S2
1D943C:  VDIV.F32        S0, S2, S0
1D9440:  VMOV            R0, S0; x
1D9444:  BL              atanf
1D9448:  VMOV            S0, R0
1D944C:  VADD.F32        S0, S0, S26
1D9450:  B               loc_1D9490
1D9454:  DCB "layout_STEREO",0
1D9462:  DCW 0
1D9464:  RSB             R0, R10, #0x200
1D9468:  VMOV            S0, R0
1D946C:  SUB             R0, R10, #0x180
1D9470:  VMOV            S2, R0
1D9474:  VCVT.F32.S32    S0, S0
1D9478:  VCVT.F32.S32    S2, S2
1D947C:  VDIV.F32        S0, S2, S0
1D9480:  VMOV            R0, S0; x
1D9484:  BL              atanf
1D9488:  VMOV            S0, R0
1D948C:  VADD.F32        S0, S0, S28
1D9490:  LDR             R3, [SP,#0x90+var_8C]
1D9494:  SUB             R2, R8, #1
1D9498:  LDR             R1, [SP,#0x90+var_88]
1D949C:  MOV             R0, #0
1D94A0:  VLDR            S2, [R3,#-4]
1D94A4:  VCMPE.F32       S0, S2
1D94A8:  VMRS            APSR_nzcv, FPSCR
1D94AC:  BLT             loc_1D94C0
1D94B0:  VLDR            S4, [R3]
1D94B4:  VCMPE.F32       S0, S4
1D94B8:  VMRS            APSR_nzcv, FPSCR
1D94BC:  BLT             loc_1D94F4
1D94C0:  ADD             R0, R0, #1
1D94C4:  ADD             R3, R3, #4
1D94C8:  ADD             R1, R1, #4
1D94CC:  CMP             R0, R2
1D94D0:  BCC             loc_1D94A0
1D94D4:  B               loc_1D9528
1D94D8:  DCB "layout_QUAD",0
1D94E4:  DCB "layout_51CHN",0
1D94F1:  DCB 0, 0, 0
1D94F4:  VSUB.F32        S4, S4, S2
1D94F8:  LDR             R2, [R1,#-4]
1D94FC:  VSUB.F32        S2, S0, S2
1D9500:  ADD             R2, R6, R2,LSL#2
1D9504:  VDIV.F32        S2, S2, S4
1D9508:  VSUB.F32        S4, S22, S2
1D950C:  VSQRT.F32       S2, S2
1D9510:  VSQRT.F32       S4, S4
1D9514:  VSTR            S4, [R2]
1D9518:  LDR             R1, [R1]
1D951C:  ADD             R1, R6, R1,LSL#2
1D9520:  VSTR            S2, [R1]
1D9524:  LDR             R8, [R4]
1D9528:  SUB             R1, R8, #1
1D952C:  CMP             R0, R1
1D9530:  BNE             loc_1D9598
1D9534:  VCMPE.F32       S0, S18
1D9538:  ADD             R1, SP, #0x90+var_80
1D953C:  VMRS            APSR_nzcv, FPSCR
1D9540:  VADD.F32        S2, S0, S16
1D9544:  ADD             R1, R1, R0,LSL#2
1D9548:  ADD             R0, R7, R0,LSL#2
1D954C:  VMOVLT.F32      S0, S2
1D9550:  VLDR            S2, [R1]
1D9554:  MOVW            R1, #:lower16:(aZn3fmt2v86deta_55+1); "ZN3fmt2v86detail15parse_precisionIcRNS1"...
1D9558:  VSUB.F32        S4, S20, S2
1D955C:  MOVT            R1, #:upper16:(aZn3fmt2v86deta_55+1); "ZN3fmt2v86detail15parse_precisionIcRNS1"...
1D9560:  LDR             R0, [R0,R1]
1D9564:  ADD             R0, R5, R0,LSL#2
1D9568:  VSUB.F32        S0, S0, S2
1D956C:  ADD             R0, R0, R9
1D9570:  VDIV.F32        S0, S0, S4
1D9574:  VSUB.F32        S2, S22, S0
1D9578:  VSQRT.F32       S0, S0
1D957C:  VSQRT.F32       S2, S2
1D9580:  VSTR            S2, [R0]
1D9584:  LDR             R0, [SP,#0x90+var_84]
1D9588:  LDR             R0, [R0]
1D958C:  ADD             R0, R5, R0,LSL#2
1D9590:  ADD             R0, R0, R9
1D9594:  VSTR            S0, [R0]
1D9598:  ADD             R10, R10, #1
1D959C:  CMP             R10, #0x200
1D95A0:  BNE             loc_1D9378
1D95A4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D95B4)
1D95A8:  LDR             R1, [SP,#0x90+var_5C]
1D95AC:  LDR             R0, [PC,R0]; __stack_chk_guard
1D95B0:  LDR             R0, [R0]
1D95B4:  SUBS            R0, R0, R1
1D95B8:  SUBEQ           SP, R11, #0x58 ; 'X'
1D95BC:  VPOPEQ          {D8-D14}
1D95C0:  ADDEQ           SP, SP, #4
1D95C4:  POPEQ           {R4-R11,PC}
1D95C8:  BL              __stack_chk_fail
