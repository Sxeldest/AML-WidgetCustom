; =========================================================
; Game Engine Function: opus_fft_impl
; Address            : 0xC3F28 - 0xC4AA2
; =========================================================

C3F28:  PUSH            {R4-R7,LR}
C3F2A:  ADD             R7, SP, #0xC
C3F2C:  PUSH.W          {R8-R11}
C3F30:  SUB             SP, SP, #0x104
C3F32:  STR             R1, [SP,#0x120+var_11C]
C3F34:  MOVS            R5, #1
C3F36:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xC3F3E)
C3F3A:  ADD             R1, PC; __stack_chk_guard_ptr
C3F3C:  LDR             R1, [R1]; __stack_chk_guard
C3F3E:  LDR             R1, [R1]
C3F40:  STR             R1, [SP,#0x120+var_20]
C3F42:  ADD             R1, SP, #0x120+var_40
C3F44:  LDR             R4, [R0,#0xC]
C3F46:  ADDS            R2, R1, #4
C3F48:  MOVS            R1, #0
C3F4A:  STR             R5, [SP,#0x120+var_40]
C3F4C:  ADD.W           R3, R0, R1,LSL#2
C3F50:  LDRSH.W         R6, [R3,#0x10]
C3F54:  LDRH            R3, [R3,#0x12]
C3F56:  MULS            R5, R6
C3F58:  CMP             R3, #1
C3F5A:  STR.W           R5, [R2,R1,LSL#2]
C3F5E:  ADD.W           R1, R1, #1
C3F62:  BNE             loc_C3F4C
C3F64:  CMP             R4, #0
C3F66:  SUB.W           R3, R1, #1
C3F6A:  IT LE
C3F6C:  MOVLE           R4, #0
C3F6E:  CMP             R3, #0
C3F70:  STR             R4, [SP,#0x120+var_110]
C3F72:  BLT.W           loc_C4A88
C3F76:  LDR             R2, [SP,#0x120+var_11C]
C3F78:  ADD.W           R1, R0, R1,LSL#2
C3F7C:  ADD.W           R6, R2, #0x3C ; '<'
C3F80:  STR             R6, [SP,#0x120+var_118]
C3F82:  LDRSH.W         R1, [R1,#0xE]
C3F86:  STR             R1, [SP,#0x120+var_108]
C3F88:  ADDS            R1, R2, #4
C3F8A:  STR             R1, [SP,#0x120+var_114]
C3F8C:  STR             R0, [SP,#0x120+var_10C]
C3F8E:  LDR.W           R8, [SP,#0x120+var_108]
C3F92:  CMP             R3, #0
C3F94:  STR             R3, [SP,#0x120+var_100]
C3F96:  BEQ             loc_C3FA6
C3F98:  ADD.W           R1, R0, R3,LSL#2
C3F9C:  LDRSH.W         R1, [R1,#0xE]
C3FA0:  STR             R1, [SP,#0x120+var_108]
C3FA2:  LSLS            R1, R3, #1
C3FA4:  B               loc_C3FAC
C3FA6:  MOVS            R1, #1
C3FA8:  STR             R1, [SP,#0x120+var_108]
C3FAA:  MOVS            R1, #0
C3FAC:  ADD.W           R0, R0, R1,LSL#1
C3FB0:  LDRSH.W         R0, [R0,#0x10]
C3FB4:  SUBS            R0, #2; switch 4 cases
C3FB6:  CMP             R0, #3
C3FB8:  BHI.W           def_C3FC0; jumptable 000C3FC0 default case
C3FBC:  STR.W           R8, [SP,#0x120+var_70]
C3FC0:  TBH.W           [PC,R0,LSL#1]; switch jump
C3FC4:  DCW 4; jump table for switch statement
C3FC6:  DCW 0x9B
C3FC8:  DCW 0x195
C3FCA:  DCW 0x1D3
C3FCC:  LDR             R1, [SP,#0x120+var_100]; jumptable 000C3FC0 case 2
C3FCE:  ADD             R0, SP, #0x120+var_40
C3FD0:  LDR.W           LR, [R0,R1,LSL#2]
C3FD4:  CMP.W           LR, #1
C3FD8:  BLT.W           def_C3FC0; jumptable 000C3FC0 default case
C3FDC:  LDR             R1, [SP,#0x120+var_118]
C3FDE:  LDRD.W          R3, R6, [R1,#-0x3C]
C3FE2:  MOVW            R8, #0x5A82
C3FE6:  LDRD.W          R5, R12, [R1,#-0x34]
C3FEA:  MOVW            R9, #0xB504
C3FEE:  LDRD.W          R4, R2, [R1,#-0x1C]
C3FF2:  SUBS.W          LR, LR, #1
C3FF6:  SUB.W           R0, R3, R4
C3FFA:  STR.W           R0, [R1,#-0x1C]
C3FFE:  ADD.W           R0, R6, R2
C4002:  STR.W           R0, [R1,#-0x38]
C4006:  SUB.W           R0, R6, R2
C400A:  LDR.W           R2, [R1,#-0x14]
C400E:  STR.W           R0, [R1,#-0x18]
C4012:  ADD.W           R0, R3, R4
C4016:  LDR.W           R3, [R1,#-0x10]
C401A:  STR.W           R0, [R1,#-0x3C]
C401E:  ADD.W           R0, R3, R2
C4022:  SUB.W           R2, R3, R2
C4026:  UXTH            R4, R0
C4028:  UXTH            R3, R2
C402A:  MOV.W           R0, R0,ASR#16
C402E:  MUL.W           R4, R4, R8
C4032:  MOV.W           R2, R2,ASR#16
C4036:  MUL.W           R0, R0, R9
C403A:  MUL.W           R3, R3, R8
C403E:  MUL.W           R2, R2, R9
C4042:  ADD.W           R0, R0, R4,LSR#15
C4046:  ADD.W           R4, R0, R5
C404A:  STR.W           R4, [R1,#-0x34]
C404E:  SUB.W           R0, R5, R0
C4052:  STR.W           R0, [R1,#-0x14]
C4056:  LDR.W           R0, [R1,#-8]
C405A:  ADD.W           R2, R2, R3,LSR#15
C405E:  LDR.W           R4, [R1,#-0xC]
C4062:  SUB.W           R3, R12, R2
C4066:  STR.W           R3, [R1,#-0x10]
C406A:  LDR.W           R3, [R1,#-0x2C]
C406E:  ADD             R2, R12
C4070:  STR.W           R2, [R1,#-0x30]
C4074:  SUB.W           R2, R3, R0
C4078:  STR.W           R2, [R1,#-0xC]
C407C:  LDR.W           R2, [R1,#-0x28]
C4080:  ADD             R0, R3
C4082:  ADD.W           R6, R2, R4
C4086:  STR.W           R6, [R1,#-8]
C408A:  SUB.W           R2, R2, R4
C408E:  STR.W           R2, [R1,#-0x28]
C4092:  STR.W           R0, [R1,#-0x2C]
C4096:  LDR.W           R2, [R1,#-4]
C409A:  LDR             R3, [R1]
C409C:  LDR.W           R0, [R1,#-0x24]
C40A0:  ADD.W           R6, R3, R2
C40A4:  SUB.W           R2, R3, R2
C40A8:  RSB.W           R6, R6, #0
C40AC:  UXTH            R3, R2
C40AE:  MOV.W           R2, R2,ASR#16
C40B2:  MUL.W           R3, R3, R8
C40B6:  UXTH            R5, R6
C40B8:  MOV.W           R6, R6,ASR#16
C40BC:  MUL.W           R2, R2, R9
C40C0:  MUL.W           R5, R5, R8
C40C4:  MUL.W           R6, R6, R9
C40C8:  ADD.W           R2, R2, R3,LSR#15
C40CC:  SUB.W           R3, R0, R2
C40D0:  STR.W           R3, [R1,#-4]
C40D4:  LDR.W           R3, [R1,#-0x20]
C40D8:  ADD             R0, R2
C40DA:  ADD.W           R6, R6, R5,LSR#15
C40DE:  SUB.W           R5, R3, R6
C40E2:  STR             R5, [R1]
C40E4:  ADD             R3, R6
C40E6:  STR.W           R3, [R1,#-0x20]
C40EA:  STR.W           R0, [R1,#-0x24]
C40EE:  ADD.W           R1, R1, #0x40 ; '@'
C40F2:  BNE.W           loc_C3FDE
C40F6:  B.W             def_C3FC0; jumptable 000C3FC0 default case
C40FA:  LDR             R1, [SP,#0x120+var_100]; jumptable 000C3FC0 case 3
C40FC:  ADD             R0, SP, #0x120+var_40
C40FE:  LDR.W           R1, [R0,R1,LSL#2]
C4102:  CMP             R1, #1
C4104:  MOV             R0, R1
C4106:  STR             R0, [SP,#0x120+var_8C]
C4108:  BLT.W           def_C3FC0; jumptable 000C3FC0 default case
C410C:  LDR             R0, [SP,#0x120+var_110]
C410E:  MOV.W           R12, R8,LSL#4
C4112:  LDR             R1, [SP,#0x120+var_8C]
C4114:  MOV.W           R11, R8,LSL#3
C4118:  LDR             R6, [SP,#0x120+var_114]
C411A:  LSL.W           R0, R1, R0
C411E:  LDR             R1, [SP,#0x120+var_108]
C4120:  LSLS            R2, R0, #2
C4122:  MOV.W           LR, R0,LSL#3
C4126:  LSLS            R1, R1, #3
C4128:  STR             R1, [SP,#0x120+var_90]
C412A:  LDR             R1, [SP,#0x120+var_10C]
C412C:  LDR             R1, [R1,#0x34]
C412E:  ADDS            R0, R1, #2
C4130:  MOVS            R1, #0
C4132:  STR             R0, [SP,#0x120+var_94]
C4134:  STRD.W          R2, R12, [SP,#0x120+var_78]
C4138:  STRD.W          LR, R11, [SP,#0x120+var_80]
C413C:  LDR             R0, [SP,#0x120+var_94]
C413E:  MOV             R5, R8
C4140:  STR             R1, [SP,#0x120+var_84]
C4142:  STR             R6, [SP,#0x120+var_88]
C4144:  MOV             R1, R0
C4146:  MOV             R4, R0
C4148:  STRD.W          R5, R4, [SP,#0x120+var_54]
C414C:  ADD.W           R0, R6, R11
C4150:  STR             R1, [SP,#0x120+var_4C]
C4152:  LDR.W           R3, [R6,R8,LSL#3]
C4156:  LDRSH.W         R10, [R1,#-2]
C415A:  STR             R0, [SP,#0x120+var_44]
C415C:  LDR.W           R0, [R0,#-4]
C4160:  LDRSH.W         R5, [R1]
C4164:  MOV             R1, R0
C4166:  MOV             R0, R3
C4168:  SMULTB.W        R2, R1, R10
C416C:  ASRS            R3, R0, #0x10
C416E:  STR             R1, [SP,#0x120+var_64]
C4170:  MLS.W           LR, R3, R5, R2
C4174:  UXTH            R2, R1
C4176:  UXTH            R1, R0
C4178:  STR             R2, [SP,#0x120+var_60]
C417A:  MUL.W           R2, R2, R10
C417E:  STR             R1, [SP,#0x120+var_68]
C4180:  MUL.W           R9, R1, R5
C4184:  STR             R0, [SP,#0x120+var_6C]
C4186:  ASRS            R2, R2, #0xF
C4188:  SUB.W           R2, R2, R9,ASR#15
C418C:  ADD.W           R1, R2, LR,LSL#1
C4190:  STR             R1, [SP,#0x120+var_48]
C4192:  ADD.W           R1, R6, R12
C4196:  LDRSH.W         R3, [R4,#-2]
C419A:  STR             R1, [SP,#0x120+var_58]
C419C:  LDR.W           R11, [R1,#-4]
C41A0:  LDR.W           R8, [R6,R12]
C41A4:  LDRSH.W         R12, [R4]
C41A8:  SMULTB.W        R2, R11, R3
C41AC:  LDR             R4, [SP,#0x120+var_48]
C41AE:  MOV.W           R9, R8,ASR#16
C41B2:  MLS.W           R0, R9, R12, R2
C41B6:  UXTH.W          R2, R11
C41BA:  MUL.W           LR, R2, R3
C41BE:  MUL.W           R2, R2, R12
C41C2:  MOV.W           R1, LR,ASR#15
C41C6:  UXTH.W          LR, R8
C41CA:  MUL.W           R9, LR, R12
C41CE:  SUB.W           R1, R1, R9,ASR#15
C41D2:  ADD.W           R0, R1, R0,LSL#1
C41D6:  STR             R0, [SP,#0x120+var_5C]
C41D8:  ADD.W           R9, R0, R4
C41DC:  LDR             R4, [SP,#0x120+var_44]
C41DE:  LDR.W           R1, [R6,#-4]
C41E2:  SUB.W           R1, R1, R9,ASR#1
C41E6:  STR.W           R1, [R4,#-4]
C41EA:  LDR             R0, [SP,#0x120+var_6C]
C41EC:  SMULTB.W        R1, R0, R10
C41F0:  LDR             R0, [SP,#0x120+var_64]
C41F2:  SMLATB.W        R1, R0, R5, R1
C41F6:  LDR             R0, [SP,#0x120+var_68]
C41F8:  MUL.W           R4, R0, R10
C41FC:  LDR             R0, [SP,#0x120+var_60]
C41FE:  MULS            R5, R0
C4200:  ASRS            R4, R4, #0xF
C4202:  ADD.W           R4, R4, R5,ASR#15
C4206:  ADD.W           R1, R4, R1,LSL#1
C420A:  SMULTB.W        R4, R8, R3
C420E:  MUL.W           R3, LR, R3
C4212:  LDR.W           R8, [SP,#0x120+var_70]
C4216:  SMLATB.W        R0, R11, R12, R4
C421A:  LDRD.W          R5, R4, [SP,#0x120+var_54]
C421E:  LDR.W           LR, [SP,#0x120+var_80]
C4222:  LDR.W           R12, [SP,#0x120+var_74]
C4226:  SUBS            R5, #1
C4228:  ADD             R4, LR
C422A:  MOV.W           R3, R3,ASR#15
C422E:  ADD.W           R2, R3, R2,ASR#15
C4232:  ADD.W           R0, R2, R0,LSL#1
C4236:  LDR             R2, [R6]
C4238:  ADD.W           R3, R0, R1
C423C:  SUB.W           R0, R1, R0
C4240:  SUB.W           R2, R2, R3,ASR#1
C4244:  STR.W           R2, [R6,R8,LSL#3]
C4248:  UXTH            R1, R0
C424A:  LDR.W           R2, [R6,#-4]
C424E:  MOV.W           R0, R0,ASR#16
C4252:  ADD             R2, R9
C4254:  STR.W           R2, [R6,#-4]
C4258:  LDR             R2, [R6]
C425A:  LDR.W           R11, [SP,#0x120+var_7C]
C425E:  ADD             R2, R3
C4260:  STR             R2, [R6]
C4262:  MOVW            R2, #0x9126
C4266:  LDR             R3, [SP,#0x120+var_44]
C4268:  MOVT            R2, #0xFFFF
C426C:  MOV             R9, R2
C426E:  MOV             R2, #0xFFFF224C
C4276:  MUL.W           R1, R1, R9
C427A:  MOV             R10, R2
C427C:  MUL.W           R0, R0, R10
C4280:  LDR             R2, [SP,#0x120+var_58]
C4282:  ADD.W           R0, R0, R1,ASR#15
C4286:  LDR.W           R1, [R3,#-4]
C428A:  ADD             R1, R0
C428C:  STR.W           R1, [R2,#-4]
C4290:  LDR             R1, [SP,#0x120+var_48]
C4292:  LDR             R2, [SP,#0x120+var_5C]
C4294:  SUB.W           R1, R1, R2
C4298:  UXTH            R2, R1
C429A:  MOV.W           R1, R1,ASR#16
C429E:  MUL.W           R2, R2, R9
C42A2:  MUL.W           R1, R1, R10
C42A6:  ADD.W           R1, R1, R2,ASR#15
C42AA:  LDR.W           R2, [R6,R8,LSL#3]
C42AE:  SUB.W           R2, R2, R1
C42B2:  STR.W           R2, [R6,R12]
C42B6:  LDR.W           R2, [R3,#-4]
C42BA:  SUB.W           R0, R2, R0
C42BE:  LDR             R2, [SP,#0x120+var_78]
C42C0:  STR.W           R0, [R3,#-4]
C42C4:  LDR.W           R0, [R6,R8,LSL#3]
C42C8:  ADD             R0, R1
C42CA:  LDR             R1, [SP,#0x120+var_4C]
C42CC:  STR.W           R0, [R6,R8,LSL#3]
C42D0:  ADD.W           R6, R6, #8
C42D4:  ADD             R1, R2
C42D6:  BNE.W           loc_C4148
C42DA:  LDR             R0, [SP,#0x120+var_90]
C42DC:  LDR             R6, [SP,#0x120+var_88]
C42DE:  LDR             R1, [SP,#0x120+var_84]
C42E0:  ADD             R6, R0
C42E2:  LDR             R0, [SP,#0x120+var_8C]
C42E4:  ADDS            R1, #1
C42E6:  CMP             R1, R0
C42E8:  BNE.W           loc_C413C
C42EC:  B               def_C3FC0; jumptable 000C3FC0 default case
C42EE:  LDR             R1, [SP,#0x120+var_100]; jumptable 000C3FC0 case 4
C42F0:  ADD             R0, SP, #0x120+var_40
C42F2:  CMP.W           R8, #1
C42F6:  LDR.W           R2, [R0,R1,LSL#2]
C42FA:  BNE.W           loc_C483C
C42FE:  CMP             R2, #1
C4300:  BLT.W           def_C3FC0; jumptable 000C3FC0 default case
C4304:  LDR             R0, [SP,#0x120+var_11C]
C4306:  STR             R2, [SP,#0x120+var_BC]
C4308:  LDRD.W          R8, R4, [R0]
C430C:  STR             R4, [SP,#0x120+var_44]
C430E:  LDRD.W          LR, R10, [R0,#8]
C4312:  LDR.W           R9, [R0,#0x18]
C4316:  LDR.W           R11, [R0,#0x10]
C431A:  ADD.W           R2, R9, LR
C431E:  ADD.W           R3, R11, R8
C4322:  SUBS            R1, R3, R2
C4324:  STR             R1, [R0,#0x10]
C4326:  LDR             R1, [R0,#0x1C]
C4328:  ADD             R2, R3
C432A:  LDR             R5, [R0,#0x14]
C432C:  ADD.W           R6, R1, R10
C4330:  SUB.W           R1, R10, R1
C4334:  ADD             R4, R5
C4336:  SUB.W           R12, R4, R6
C433A:  STR.W           R12, [R0,#0x14]
C433E:  STR             R2, [R0]
C4340:  ADDS            R2, R6, R4
C4342:  STR             R2, [R0,#4]
C4344:  SUB.W           R2, R8, R11
C4348:  ADDS            R3, R1, R2
C434A:  STR             R3, [R0,#8]
C434C:  LDR             R6, [SP,#0x120+var_44]
C434E:  SUB.W           R3, LR, R9
C4352:  SUBS            R1, R2, R1
C4354:  SUBS            R6, R6, R5
C4356:  SUBS            R5, R6, R3
C4358:  STR             R5, [R0,#0xC]
C435A:  LDR             R2, [SP,#0x120+var_BC]
C435C:  STR             R1, [R0,#0x18]
C435E:  ADDS            R1, R3, R6
C4360:  STR             R1, [R0,#0x1C]
C4362:  ADDS            R0, #0x20 ; ' '
C4364:  SUBS            R2, #1
C4366:  BNE             loc_C4306
C4368:  B               def_C3FC0; jumptable 000C3FC0 default case
C436A:  LDR             R1, [SP,#0x120+var_100]; jumptable 000C3FC0 case 5
C436C:  ADD             R0, SP, #0x120+var_40
C436E:  LDR.W           R1, [R0,R1,LSL#2]
C4372:  CMP             R1, #1
C4374:  MOV             R0, R1
C4376:  STR             R0, [SP,#0x120+var_F8]
C4378:  BLT.W           def_C3FC0; jumptable 000C3FC0 default case
C437C:  LDR             R0, [SP,#0x120+var_10C]
C437E:  MOV.W           LR, #0
C4382:  LDR             R1, [SP,#0x120+var_110]
C4384:  ADD.W           R12, SP, #0x120+var_F0
C4388:  LDR             R2, [SP,#0x120+var_F8]
C438A:  LDR             R0, [R0,#0x34]
C438C:  ADDS            R0, #2
C438E:  STR             R0, [SP,#0x120+var_104]
C4390:  LDR             R0, [SP,#0x120+var_108]
C4392:  LSL.W           R1, R2, R1
C4396:  MOV.W           R2, R8,LSL#5
C439A:  LSLS            R6, R1, #2
C439C:  STR             R2, [SP,#0x120+var_68]
C439E:  MOV.W           R2, R8,LSL#4
C43A2:  LSLS            R0, R0, #3
C43A4:  MOV.W           R10, R1,LSL#4
C43A8:  STR             R0, [SP,#0x120+var_FC]
C43AA:  ADD.W           R0, R8, R8,LSL#1
C43AE:  LSLS            R3, R1, #3
C43B0:  STR             R2, [SP,#0x120+var_48]
C43B2:  LSLS            R0, R0, #3
C43B4:  MOV.W           R2, R8,LSL#3
C43B8:  STR             R0, [SP,#0x120+var_4C]
C43BA:  ADD.W           R0, R1, R1,LSL#1
C43BE:  LSLS            R1, R0, #2
C43C0:  LDR             R0, [SP,#0x120+var_114]
C43C2:  STRD.W          R6, R2, [SP,#0x120+var_E0]
C43C6:  STM.W           R12, {R0,R1,R3,R10}
C43CA:  CMP.W           R8, #1
C43CE:  STR.W           LR, [SP,#0x120+var_F4]
C43D2:  BLT.W           loc_C4822
C43D6:  LDR.W           R9, [SP,#0x120+var_104]
C43DA:  MOV             R4, R8
C43DC:  LDR.W           LR, [SP,#0x120+var_F0]
C43E0:  STR.W           R9, [SP,#0x120+var_44]
C43E4:  MOV             R5, R9
C43E6:  MOV             R12, R9
C43E8:  STR             R4, [SP,#0x120+var_74]
C43EA:  ADD.W           R0, LR, R2
C43EE:  STR             R5, [SP,#0x120+var_6C]
C43F0:  LDRSH.W         R1, [R5,#-2]
C43F4:  LDR.W           R4, [LR,R8,LSL#3]
C43F8:  STR             R0, [SP,#0x120+var_8C]
C43FA:  LDR.W           R6, [R0,#-4]
C43FE:  MOV             R2, R1
C4400:  STR             R6, [SP,#0x120+var_94]
C4402:  LDRSH.W         R5, [R5]
C4406:  ASRS            R1, R4, #0x10
C4408:  SMULTB.W        R0, R6, R2
C440C:  STR             R2, [SP,#0x120+var_98]
C440E:  LDR             R3, [SP,#0x120+var_68]
C4410:  MLS.W           R8, R1, R5, R0
C4414:  UXTH            R0, R6
C4416:  STR             R0, [SP,#0x120+var_90]
C4418:  MUL.W           R1, R0, R2
C441C:  UXTH            R0, R4
C441E:  STR             R0, [SP,#0x120+var_A0]
C4420:  MUL.W           R2, R0, R5
C4424:  STR             R5, [SP,#0x120+var_A4]
C4426:  STR             R4, [SP,#0x120+var_9C]
C4428:  STR.W           R12, [SP,#0x120+var_78]
C442C:  ASRS            R1, R1, #0xF
C442E:  SUB.W           R1, R1, R2,ASR#15
C4432:  ADD.W           R0, R1, R8,LSL#1
C4436:  STR             R0, [SP,#0x120+var_50]
C4438:  ADD.W           R0, LR, R3
C443C:  LDRSH.W         R1, [R12,#-2]
C4440:  STR             R0, [SP,#0x120+var_88]
C4442:  LDR.W           R0, [R0,#-4]
C4446:  LDR.W           R5, [LR,R3]
C444A:  MOV             R2, R1
C444C:  LDRSH.W         R6, [R12]
C4450:  MOV             R3, R0
C4452:  STR             R2, [SP,#0x120+var_BC]
C4454:  SMULTB.W        R0, R3, R2
C4458:  ASRS            R1, R5, #0x10
C445A:  STR             R6, [SP,#0x120+var_C4]
C445C:  MLS.W           R0, R1, R6, R0
C4460:  UXTH            R1, R3
C4462:  STR             R1, [SP,#0x120+var_A8]
C4464:  MULS            R1, R2
C4466:  UXTH            R2, R5
C4468:  STR             R2, [SP,#0x120+var_C0]
C446A:  MULS            R2, R6
C446C:  STR             R3, [SP,#0x120+var_B4]
C446E:  STR             R5, [SP,#0x120+var_B8]
C4470:  ASRS            R1, R1, #0xF
C4472:  SUB.W           R1, R1, R2,ASR#15
C4476:  ADD.W           R0, R1, R0,LSL#1
C447A:  STR             R0, [SP,#0x120+var_54]
C447C:  LDR             R0, [SP,#0x120+var_48]
C447E:  MOV             R1, R9
C4480:  STR             R1, [SP,#0x120+var_7C]
C4482:  ADD             R0, LR
C4484:  LDRSH.W         R9, [R1,#-2]
C4488:  STR             R0, [SP,#0x120+var_80]
C448A:  LDR.W           R2, [R0,#-4]
C448E:  LDR             R0, [SP,#0x120+var_48]
C4490:  STR             R2, [SP,#0x120+var_C8]
C4492:  LDR.W           R6, [LR,R0]
C4496:  SMULTB.W        R0, R2, R9
C449A:  STR             R6, [SP,#0x120+var_D4]
C449C:  LDRSH.W         R1, [R1]
C44A0:  UXTH            R2, R2
C44A2:  MUL.W           R11, R2, R9
C44A6:  STR             R2, [SP,#0x120+var_CC]
C44A8:  UXTH            R2, R6
C44AA:  ASRS            R3, R6, #0x10
C44AC:  MUL.W           R10, R2, R1
C44B0:  STR             R2, [SP,#0x120+var_D0]
C44B2:  MLS.W           R0, R3, R1, R0
C44B6:  LDR             R2, [SP,#0x120+var_4C]
C44B8:  LDR             R3, [SP,#0x120+var_44]
C44BA:  MOV.W           R11, R11,ASR#15
C44BE:  ADD             R2, LR
C44C0:  SUB.W           R5, R11, R10,ASR#15
C44C4:  ADD.W           R0, R5, R0,LSL#1
C44C8:  STR             R0, [SP,#0x120+var_5C]
C44CA:  LDRSH.W         R12, [R3,#-2]
C44CE:  STR             R2, [SP,#0x120+var_84]
C44D0:  LDR.W           R10, [R2,#-4]
C44D4:  LDR             R2, [SP,#0x120+var_4C]
C44D6:  LDRSH.W         R5, [R3]
C44DA:  UXTH.W          R0, R10
C44DE:  LDR.W           R11, [LR,R2]
C44E2:  SMULTB.W        R2, R10, R12
C44E6:  MUL.W           R4, R0, R12
C44EA:  STR             R0, [SP,#0x120+var_D8]
C44EC:  MOV.W           R8, R11,ASR#16
C44F0:  MLS.W           R3, R8, R5, R2
C44F4:  UXTH.W          R2, R11
C44F8:  MUL.W           R8, R2, R5
C44FC:  ASRS            R4, R4, #0xF
C44FE:  SUB.W           R4, R4, R8,ASR#15
C4502:  ADD.W           R8, R4, R3,LSL#1
C4506:  STR.W           R8, [SP,#0x120+var_B0]
C450A:  LDR.W           R4, [LR,#-4]
C450E:  STR             R4, [SP,#0x120+var_60]
C4510:  LDR.W           R3, [LR]
C4514:  STR             R3, [SP,#0x120+var_58]
C4516:  LDRD.W          R6, R3, [SP,#0x120+var_54]
C451A:  ADDS            R0, R6, R3
C451C:  LDR             R3, [SP,#0x120+var_5C]
C451E:  STR             R0, [SP,#0x120+var_64]
C4520:  ADD.W           R6, R8, R3
C4524:  ADDS            R3, R6, R4
C4526:  ADD             R3, R0
C4528:  STR.W           R3, [LR,#-4]
C452C:  LDR             R0, [SP,#0x120+var_D4]
C452E:  SMULTB.W        R3, R0, R9
C4532:  LDR             R0, [SP,#0x120+var_C8]
C4534:  SMLATB.W        R3, R0, R1, R3
C4538:  LDR             R0, [SP,#0x120+var_D0]
C453A:  MUL.W           R4, R0, R9
C453E:  LDR             R0, [SP,#0x120+var_CC]
C4540:  MULS            R1, R0
C4542:  MUL.W           R0, R2, R12
C4546:  LDR             R2, [SP,#0x120+var_D8]
C4548:  ASRS            R4, R4, #0xF
C454A:  MULS            R2, R5
C454C:  ADD.W           R1, R4, R1,ASR#15
C4550:  ADD.W           R8, R1, R3,LSL#1
C4554:  SMULTB.W        R1, R11, R12
C4558:  SMLATB.W        R1, R10, R5, R1
C455C:  ASRS            R0, R0, #0xF
C455E:  ADD.W           R0, R0, R2,ASR#15
C4562:  ADD.W           R11, R0, R1,LSL#1
C4566:  LDR.W           R1, [LR]
C456A:  LDRD.W          R2, R3, [SP,#0x120+var_9C]
C456E:  ADD.W           R10, R11, R8
C4572:  LDR             R4, [SP,#0x120+var_94]
C4574:  ADD             R1, R10
C4576:  LDR             R5, [SP,#0x120+var_A4]
C4578:  SMULTB.W        R2, R2, R3
C457C:  SMLATB.W        R2, R4, R5, R2
C4580:  LDR             R4, [SP,#0x120+var_A0]
C4582:  MULS            R3, R4
C4584:  LDR             R4, [SP,#0x120+var_90]
C4586:  MULS            R5, R4
C4588:  ASRS            R3, R3, #0xF
C458A:  ADD.W           R3, R3, R5,ASR#15
C458E:  ADD.W           R12, R3, R2,LSL#1
C4592:  LDRD.W          R0, R2, [SP,#0x120+var_BC]
C4596:  LDR             R3, [SP,#0x120+var_B4]
C4598:  LDR             R5, [SP,#0x120+var_C4]
C459A:  SMULTB.W        R2, R2, R0
C459E:  SMLATB.W        R2, R3, R5, R2
C45A2:  LDR             R3, [SP,#0x120+var_C0]
C45A4:  MULS            R3, R0
C45A6:  LDR             R0, [SP,#0x120+var_A8]
C45A8:  MULS            R5, R0
C45AA:  ASRS            R3, R3, #0xF
C45AC:  ADD.W           R3, R3, R5,ASR#15
C45B0:  ADD.W           R5, R3, R2,LSL#1
C45B4:  MOVW            R2, #0x30E4
C45B8:  ADD.W           R9, R5, R12
C45BC:  MOVT            R2, #0xFFFF
C45C0:  ADD             R1, R9
C45C2:  STR.W           R1, [LR]
C45C6:  ASRS            R1, R6, #0x10
C45C8:  LDR             R0, [SP,#0x120+var_60]
C45CA:  MLA.W           R1, R1, R2, R0
C45CE:  MOVW            R2, #0x9872
C45D2:  UXTH            R0, R6
C45D4:  MOVT            R2, #0xFFFF
C45D8:  STR             R0, [SP,#0x120+var_90]
C45DA:  MUL.W           R3, R0, R2
C45DE:  LDR             R0, [SP,#0x120+var_64]
C45E0:  MOVW            R2, #0x4F1C
C45E4:  STR             R6, [SP,#0x120+var_AC]
C45E6:  SUB.W           R4, R12, R5
C45EA:  ADD.W           R1, R1, R3,ASR#15
C45EE:  SMLATB.W        R1, R0, R2, R1
C45F2:  UXTH            R0, R0
C45F4:  MOVW            R2, #0x278E
C45F8:  STR             R0, [SP,#0x120+var_94]
C45FA:  MUL.W           R3, R0, R2
C45FE:  SUB.W           R0, R8, R11
C4602:  MOVW            R2, #0x278E
C4606:  ADD.W           R6, R1, R3,LSR#15
C460A:  ASRS            R3, R0, #0x10
C460C:  UXTH            R1, R0
C460E:  MOV             R0, #0xFFFFB4C3
C4616:  STR             R1, [SP,#0x120+var_9C]
C4618:  MULS            R0, R1
C461A:  MOV             R1, #0xFFFF6986
C4622:  MULS            R1, R3
C4624:  STR             R3, [SP,#0x120+var_98]
C4626:  ASRS            R3, R4, #0x10
C4628:  STR             R3, [SP,#0x120+var_A0]
C462A:  STR             R6, [SP,#0x120+var_A8]
C462C:  ADD.W           R1, R1, R0,ASR#15
C4630:  MOV             R0, #0xFFFF0C88
C4638:  MLA.W           R5, R3, R0, R1
C463C:  MOV             R8, R0
C463E:  MOVW            R0, #0x8644
C4642:  UXTH            R1, R4
C4644:  MOVT            R0, #0xFFFF
C4648:  MUL.W           R4, R1, R0
C464C:  LDR             R0, [SP,#0x120+var_8C]
C464E:  STR             R1, [SP,#0x120+var_A4]
C4650:  ADD.W           R3, R5, R4,ASR#15
C4654:  MOVW            R5, #0x8644
C4658:  SUBS            R4, R6, R3
C465A:  STR.W           R4, [R0,#-4]
C465E:  MOVW            R0, #0x30E4
C4662:  MOV.W           R4, R10,ASR#16
C4666:  MOVT            R0, #0xFFFF
C466A:  LDR             R1, [SP,#0x120+var_58]
C466C:  MLA.W           R4, R4, R0, R1
C4670:  MOVW            R0, #0x9872
C4674:  UXTH.W          R1, R10
C4678:  MOVT            R0, #0xFFFF
C467C:  STR.W           R10, [SP,#0x120+var_C8]
C4680:  MUL.W           R12, R1, R0
C4684:  MOVW            R0, #0x4F1C
C4688:  STR             R1, [SP,#0x120+var_8C]
C468A:  LDR             R1, [SP,#0x120+var_B0]
C468C:  MOVT            R5, #0xFFFF
C4690:  ADD.W           R4, R4, R12,ASR#15
C4694:  UXTH.W          R12, R9
C4698:  MUL.W           R10, R12, R2
C469C:  SMLATB.W        R4, R9, R0, R4
C46A0:  LDR             R0, [SP,#0x120+var_5C]
C46A2:  ADD.W           R10, R4, R10,LSR#15
C46A6:  SUBS            R4, R0, R1
C46A8:  MOVW            R0, #0xB4C3
C46AC:  MOVW            R1, #0x6986
C46B0:  ASRS            R2, R4, #0x10
C46B2:  UXTH            R4, R4
C46B4:  MOVT            R0, #0xFFFF
C46B8:  MOVT            R1, #0xFFFF
C46BC:  MULS            R0, R4
C46BE:  MUL.W           R11, R2, R1
C46C2:  ADD.W           R11, R11, R0,ASR#15
C46C6:  LDRD.W          R1, R0, [SP,#0x120+var_54]
C46CA:  SUBS            R0, R0, R1
C46CC:  ASRS            R1, R0, #0x10
C46CE:  UXTH            R0, R0
C46D0:  MLA.W           R11, R1, R8, R11
C46D4:  MUL.W           R8, R0, R5
C46D8:  MOV             R5, #0xFFFF8644
C46E0:  ADD.W           R6, R11, R8,ASR#15
C46E4:  LDR.W           R8, [SP,#0x120+var_70]
C46E8:  MOV             R11, R5
C46EA:  ADD.W           R5, R10, R6
C46EE:  STR.W           R5, [LR,R8,LSL#3]
C46F2:  SUB.W           R5, R10, R6
C46F6:  LDR             R6, [SP,#0x120+var_68]
C46F8:  STR.W           R5, [LR,R6]
C46FC:  MOV             R5, #0xFFFFB4C3
C4704:  LDR             R6, [SP,#0x120+var_A8]
C4706:  MULS            R0, R5
C4708:  ADD             R3, R6
C470A:  LDR             R6, [SP,#0x120+var_88]
C470C:  STR.W           R3, [R6,#-4]
C4710:  MUL.W           R3, R4, R11
C4714:  MOVW            R4, #0xF378
C4718:  MULS            R2, R4
C471A:  MOVW            R6, #0x4F1C
C471E:  MOVW            R4, #0x278E
C4722:  SUB.W           R2, R2, R3,ASR#15
C4726:  MOV             R3, #0xFFFF6986
C472E:  MLA.W           R1, R1, R3, R2
C4732:  MOV             R3, #0xFFFF30E4
C473A:  ADD.W           R10, R1, R0,ASR#15
C473E:  LDR             R1, [SP,#0x120+var_C8]
C4740:  LDR             R0, [SP,#0x120+var_58]
C4742:  SMLABT.W        R1, R6, R1, R0
C4746:  LDR             R0, [SP,#0x120+var_8C]
C4748:  MUL.W           R2, R0, R4
C474C:  ADD.W           R1, R1, R2,LSR#15
C4750:  MOV.W           R2, R9,ASR#16
C4754:  MLA.W           R1, R2, R3, R1
C4758:  MOV             R2, #0xFFFF9872
C4760:  MUL.W           R2, R12, R2
C4764:  LDR             R3, [SP,#0x120+var_48]
C4766:  LDR.W           R9, [SP,#0x120+var_E8]
C476A:  ADD.W           R1, R1, R2,ASR#15
C476E:  ADD.W           R2, R1, R10
C4772:  STR.W           R2, [LR,R3]
C4776:  MOVW            R3, #0x30E4
C477A:  LDR             R0, [SP,#0x120+var_9C]
C477C:  MOVT            R3, #0xFFFF
C4780:  MOV             R12, R3
C4782:  MOV             R3, #0xFFFF0C88
C478A:  MUL.W           R2, R0, R11
C478E:  LDR             R0, [SP,#0x120+var_98]
C4790:  MULS            R3, R0
C4792:  LDR             R0, [SP,#0x120+var_A0]
C4794:  ADD.W           R2, R3, R2,ASR#15
C4798:  MOVW            R3, #0x967A
C479C:  MLA.W           R2, R0, R3, R2
C47A0:  LDR             R0, [SP,#0x120+var_A4]
C47A2:  MUL.W           R3, R0, R5
C47A6:  LDR             R0, [SP,#0x120+var_60]
C47A8:  MOV             R5, #0xFFFF9872
C47B0:  SUB.W           R2, R2, R3,ASR#15
C47B4:  LDR             R3, [SP,#0x120+var_AC]
C47B6:  SMLABT.W        R3, R6, R3, R0
C47BA:  LDR             R0, [SP,#0x120+var_90]
C47BC:  MUL.W           R6, R0, R4
C47C0:  LDR             R0, [SP,#0x120+var_64]
C47C2:  LDR             R4, [SP,#0x120+var_74]
C47C4:  SUBS            R4, #1
C47C6:  ADD.W           R3, R3, R6,LSR#15
C47CA:  MOV.W           R6, R0,ASR#16
C47CE:  LDR             R0, [SP,#0x120+var_94]
C47D0:  MLA.W           R3, R6, R12, R3
C47D4:  MUL.W           R6, R0, R5
C47D8:  LDR             R0, [SP,#0x120+var_80]
C47DA:  LDR             R5, [SP,#0x120+var_6C]
C47DC:  ADD.W           R3, R3, R6,ASR#15
C47E0:  ADD.W           R6, R3, R2
C47E4:  STR.W           R6, [R0,#-4]
C47E8:  LDR             R6, [SP,#0x120+var_4C]
C47EA:  SUB.W           R0, R1, R10
C47EE:  LDR.W           R11, [SP,#0x120+var_E4]
C47F2:  LDR             R1, [SP,#0x120+var_EC]
C47F4:  STR.W           R0, [LR,R6]
C47F8:  SUB.W           R0, R3, R2
C47FC:  ADD.W           LR, LR, #8
C4800:  LDRD.W          R3, R2, [SP,#0x120+var_E0]
C4804:  LDR             R6, [SP,#0x120+var_84]
C4806:  ADD             R5, R3
C4808:  STR.W           R0, [R6,#-4]
C480C:  LDR             R0, [SP,#0x120+var_44]
C480E:  LDR.W           R12, [SP,#0x120+var_78]
C4812:  ADD             R0, R1
C4814:  STR             R0, [SP,#0x120+var_44]
C4816:  LDR             R0, [SP,#0x120+var_7C]
C4818:  ADD             R12, R11
C481A:  ADD             R0, R9
C481C:  MOV             R9, R0
C481E:  BNE.W           loc_C43E8
C4822:  LDR             R0, [SP,#0x120+var_FC]
C4824:  LDR             R5, [SP,#0x120+var_F0]
C4826:  LDR.W           LR, [SP,#0x120+var_F4]
C482A:  ADD             R5, R0
C482C:  LDR             R0, [SP,#0x120+var_F8]
C482E:  ADD.W           LR, LR, #1
C4832:  STR             R5, [SP,#0x120+var_F0]
C4834:  CMP             LR, R0
C4836:  BNE.W           loc_C43CA
C483A:  B               def_C3FC0; jumptable 000C3FC0 default case
C483C:  CMP             R2, #1
C483E:  BLT.W           def_C3FC0; jumptable 000C3FC0 default case
C4842:  LDR             R0, [SP,#0x120+var_110]
C4844:  MOV.W           R1, R8,LSL#3
C4848:  STR             R1, [SP,#0x120+var_A8]
C484A:  MOV.W           R1, R8,LSL#4
C484E:  STR             R1, [SP,#0x120+var_48]
C4850:  LDR             R1, [SP,#0x120+var_108]
C4852:  LSL.W           R0, R2, R0
C4856:  MOV.W           R12, R0,LSL#3
C485A:  LSLS            R3, R0, #2
C485C:  ADD.W           R0, R0, R0,LSL#1
C4860:  LDR             R6, [SP,#0x120+var_114]
C4862:  LSLS            R1, R1, #3
C4864:  STR             R1, [SP,#0x120+var_C8]
C4866:  LSLS            R1, R0, #2
C4868:  ADD.W           R0, R8, R8,LSL#1
C486C:  MOV.W           LR, R0,LSL#3
C4870:  LDR             R0, [SP,#0x120+var_10C]
C4872:  LDR             R0, [R0,#0x34]
C4874:  ADDS            R0, #2
C4876:  STR             R0, [SP,#0x120+var_CC]
C4878:  MOVS            R0, #0
C487A:  STRD.W          R6, R2, [SP,#0x120+var_C0]
C487E:  STRD.W          R3, R12, [SP,#0x120+var_B0]
C4882:  STRD.W          LR, R1, [SP,#0x120+var_B8]
C4886:  CMP.W           R8, #1
C488A:  STR             R0, [SP,#0x120+var_C4]
C488C:  BLT.W           loc_C4A68
C4890:  LDR             R0, [SP,#0x120+var_CC]
C4892:  MOV             R2, R8
C4894:  LDR.W           R10, [SP,#0x120+var_C0]
C4898:  MOV             R4, R0
C489A:  MOV             R5, R0
C489C:  STRD.W          R0, R5, [SP,#0x120+var_58]
C48A0:  STRD.W          R4, R2, [SP,#0x120+var_50]
C48A4:  LDR.W           R1, [R10,R8,LSL#3]
C48A8:  LDR.W           R9, [SP,#0x120+var_48]
C48AC:  STR             R1, [SP,#0x120+var_68]
C48AE:  LDRSH.W         R6, [R0]
C48B2:  LDRSH.W         R2, [R0,#-2]
C48B6:  LDR             R0, [SP,#0x120+var_A8]
C48B8:  STR             R2, [SP,#0x120+var_74]
C48BA:  ADD             R0, R10
C48BC:  STR             R0, [SP,#0x120+var_5C]
C48BE:  LDR.W           R3, [R0,#-4]
C48C2:  SMULTB.W        R0, R1, R2
C48C6:  STR             R3, [SP,#0x120+var_78]
C48C8:  SMLATB.W        R12, R3, R6, R0
C48CC:  UXTH            R0, R1
C48CE:  MUL.W           R1, R0, R2
C48D2:  STR             R0, [SP,#0x120+var_64]
C48D4:  UXTH            R0, R3
C48D6:  MUL.W           R2, R0, R6
C48DA:  STR             R0, [SP,#0x120+var_6C]
C48DC:  ASRS            R1, R1, #0xF
C48DE:  ADD.W           R1, R1, R2,ASR#15
C48E2:  ADD.W           R2, R10, LR
C48E6:  ADD.W           R0, R1, R12,LSL#1
C48EA:  STR             R0, [SP,#0x120+var_44]
C48EC:  LDRSH.W         R12, [R4]
C48F0:  LDR.W           R0, [R10,LR]
C48F4:  STR.W           R12, [SP,#0x120+var_94]
C48F8:  LDRSH.W         R1, [R4,#-2]
C48FC:  STR             R2, [SP,#0x120+var_60]
C48FE:  LDR.W           R3, [R2,#-4]
C4902:  SMULTB.W        R2, R0, R1
C4906:  STR             R0, [SP,#0x120+var_80]
C4908:  STR             R3, [SP,#0x120+var_98]
C490A:  SMLATB.W        LR, R3, R12, R2
C490E:  UXTH            R2, R0
C4910:  UXTH            R0, R3
C4912:  MUL.W           R4, R2, R1
C4916:  STR             R2, [SP,#0x120+var_7C]
C4918:  MUL.W           R3, R0, R12
C491C:  STR             R0, [SP,#0x120+var_84]
C491E:  ASRS            R4, R4, #0xF
C4920:  ADD.W           R3, R4, R3,ASR#15
C4924:  ADD.W           R0, R3, LR,LSL#1
C4928:  STR             R0, [SP,#0x120+var_9C]
C492A:  LDRSH.W         R3, [R5]
C492E:  LDRSH.W         R8, [R5,#-2]
C4932:  ADD.W           R5, R10, R9
C4936:  LDR.W           R2, [R10,R9]
C493A:  STR             R5, [SP,#0x120+var_90]
C493C:  LDR.W           R11, [R5,#-4]
C4940:  UXTH.W          R9, R2
C4944:  SMULTB.W        R4, R2, R8
C4948:  MUL.W           R12, R9, R8
C494C:  ASRS            R2, R2, #0x10
C494E:  UXTH.W          LR, R11
C4952:  MUL.W           R5, LR, R3
C4956:  SMLATB.W        R4, R11, R3, R4
C495A:  MOV.W           R12, R12,ASR#15
C495E:  ADD.W           R5, R12, R5,ASR#15
C4962:  ADD.W           R4, R5, R4,LSL#1
C4966:  STR             R4, [SP,#0x120+var_8C]
C4968:  LDR.W           R5, [R10]
C496C:  STR             R5, [SP,#0x120+var_88]
C496E:  ADD.W           R12, R5, R4
C4972:  STR.W           R12, [R10]
C4976:  LDR             R4, [SP,#0x120+var_44]
C4978:  ADD             R0, R4
C497A:  SMULTB.W        R4, R11, R8
C497E:  STR             R0, [SP,#0x120+var_A0]
C4980:  SUB.W           R5, R12, R0
C4984:  MLS.W           R2, R2, R3, R4
C4988:  MUL.W           R4, LR, R8
C498C:  LDR.W           R8, [SP,#0x120+var_70]
C4990:  MUL.W           R3, R9, R3
C4994:  ASRS            R4, R4, #0xF
C4996:  SUB.W           R3, R4, R3,ASR#15
C499A:  ADD.W           R0, R3, R2,LSL#1
C499E:  STR             R0, [SP,#0x120+var_A4]
C49A0:  LDR.W           R3, [R10,#-4]
C49A4:  ADDS            R4, R3, R0
C49A6:  STR.W           R4, [R10,#-4]
C49AA:  LDR             R2, [SP,#0x120+var_48]
C49AC:  STR.W           R5, [R10,R2]
C49B0:  LDRD.W          R2, R0, [SP,#0x120+var_78]
C49B4:  SMULTB.W        R5, R2, R0
C49B8:  LDR             R2, [SP,#0x120+var_68]
C49BA:  ASRS            R2, R2, #0x10
C49BC:  MLS.W           R2, R2, R6, R5
C49C0:  LDR             R5, [SP,#0x120+var_64]
C49C2:  MULS            R5, R6
C49C4:  LDR             R6, [SP,#0x120+var_6C]
C49C6:  MULS            R6, R0
C49C8:  LDR             R0, [SP,#0x120+var_98]
C49CA:  ASRS            R6, R6, #0xF
C49CC:  SUB.W           R5, R6, R5,ASR#15
C49D0:  ADD.W           R12, R5, R2,LSL#1
C49D4:  SMULTB.W        R5, R0, R1
C49D8:  LDR             R0, [SP,#0x120+var_80]
C49DA:  LDR             R2, [SP,#0x120+var_7C]
C49DC:  ASRS            R6, R0, #0x10
C49DE:  LDR             R0, [SP,#0x120+var_94]
C49E0:  MLS.W           R5, R6, R0, R5
C49E4:  MULS            R0, R2
C49E6:  LDR             R2, [SP,#0x120+var_84]
C49E8:  MULS            R1, R2
C49EA:  LDR             R2, [SP,#0x120+var_90]
C49EC:  ASRS            R1, R1, #0xF
C49EE:  SUB.W           R0, R1, R0,ASR#15
C49F2:  ADD.W           R0, R0, R5,LSL#1
C49F6:  ADD.W           R1, R0, R12
C49FA:  SUB.W           R0, R12, R0
C49FE:  SUBS            R4, R4, R1
C4A00:  STR.W           R4, [R2,#-4]
C4A04:  LDR.W           R4, [R10,#-4]
C4A08:  ADD             R1, R4
C4A0A:  STR.W           R1, [R10,#-4]
C4A0E:  LDR.W           R1, [R10]
C4A12:  LDR             R2, [SP,#0x120+var_A0]
C4A14:  LDR.W           LR, [SP,#0x120+var_B8]
C4A18:  ADD             R1, R2
C4A1A:  LDRD.W          R9, R11, [SP,#0x120+var_B0]
C4A1E:  STR.W           R1, [R10]
C4A22:  LDR             R1, [SP,#0x120+var_44]
C4A24:  LDR             R2, [SP,#0x120+var_9C]
C4A26:  SUBS            R1, R1, R2
C4A28:  LDR             R2, [SP,#0x120+var_A4]
C4A2A:  LDRD.W          R5, R4, [SP,#0x120+var_54]
C4A2E:  SUBS            R3, R3, R2
C4A30:  LDR             R2, [SP,#0x120+var_5C]
C4A32:  ADDS            R6, R1, R3
C4A34:  ADD             R5, R11
C4A36:  STR.W           R6, [R2,#-4]
C4A3A:  LDRD.W          R6, R2, [SP,#0x120+var_8C]
C4A3E:  SUBS            R2, R2, R6
C4A40:  SUBS            R6, R2, R0
C4A42:  STR.W           R6, [R10,R8,LSL#3]
C4A46:  ADD             R0, R2
C4A48:  LDR             R2, [SP,#0x120+var_4C]
C4A4A:  STR.W           R0, [R10,LR]
C4A4E:  SUBS            R0, R3, R1
C4A50:  SUBS            R2, #1
C4A52:  LDR             R3, [SP,#0x120+var_60]
C4A54:  ADD.W           R10, R10, #8
C4A58:  LDR             R1, [SP,#0x120+var_B4]
C4A5A:  STR.W           R0, [R3,#-4]
C4A5E:  ADD             R4, R1
C4A60:  LDR             R0, [SP,#0x120+var_58]
C4A62:  ADD             R0, R9
C4A64:  BNE.W           loc_C489C
C4A68:  LDR             R0, [SP,#0x120+var_C8]
C4A6A:  LDR             R2, [SP,#0x120+var_C0]
C4A6C:  ADD             R2, R0
C4A6E:  LDR             R0, [SP,#0x120+var_C4]
C4A70:  STR             R2, [SP,#0x120+var_C0]
C4A72:  LDR             R2, [SP,#0x120+var_BC]
C4A74:  ADDS            R0, #1
C4A76:  CMP             R0, R2
C4A78:  BNE.W           loc_C4886
C4A7C:  LDR             R0, [SP,#0x120+var_100]; jumptable 000C3FC0 default case
C4A7E:  SUBS            R3, R0, #1
C4A80:  CMP             R0, #0
C4A82:  LDR             R0, [SP,#0x120+var_10C]
C4A84:  BGT.W           loc_C3F8E
C4A88:  LDR             R0, =(__stack_chk_guard_ptr - 0xC4A90)
C4A8A:  LDR             R1, [SP,#0x120+var_20]
C4A8C:  ADD             R0, PC; __stack_chk_guard_ptr
C4A8E:  LDR             R0, [R0]; __stack_chk_guard
C4A90:  LDR             R0, [R0]
C4A92:  SUBS            R0, R0, R1
C4A94:  ITTT EQ
C4A96:  ADDEQ           SP, SP, #0x104
C4A98:  POPEQ.W         {R8-R11}
C4A9C:  POPEQ           {R4-R7,PC}
C4A9E:  BLX             __stack_chk_fail
