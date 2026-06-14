; =========================================================
; Game Engine Function: sub_F40D4
; Address            : 0xF40D4 - 0xF42AA
; =========================================================

F40D4:  PUSH            {R4-R7,LR}
F40D6:  ADD             R7, SP, #0xC
F40D8:  PUSH.W          {R8-R11}
F40DC:  SUB             SP, SP, #0x8C
F40DE:  STRD.W          R1, R0, [SP,#0xA8+var_9C]
F40E2:  MOVS            R1, #0xC
F40E4:  LDR             R0, =(__stack_chk_guard_ptr - 0xF40EC)
F40E6:  MOV             R10, R3
F40E8:  ADD             R0, PC; __stack_chk_guard_ptr
F40EA:  LDR             R0, [R0]; __stack_chk_guard
F40EC:  LDR             R0, [R0]
F40EE:  STR             R0, [SP,#0xA8+var_20]
F40F0:  LDR             R0, =(free_ptr - 0xF40F8)
F40F2:  STR             R2, [SP,#0xA8+var_A8]
F40F4:  ADD             R0, PC; free_ptr
F40F6:  LDR             R0, [R0]; __imp_free
F40F8:  STR             R0, [SP,#0xA8+var_88]
F40FA:  MOVS            R0, #0
F40FC:  STR             R0, [SP,#0xA8+var_8C]
F40FE:  SUBS            R0, R3, R2
F4100:  BLX             sub_108848
F4104:  MOV             R4, R0
F4106:  CMP             R0, #0x65 ; 'e'
F4108:  BCC             loc_F4126
F410A:  MOV             R0, R4; size
F410C:  MOV             R5, R4
F410E:  BLX             malloc
F4112:  CMP             R0, #0
F4114:  BEQ.W           loc_F42A6
F4118:  MOV             R11, R0
F411A:  ADD             R0, SP, #0xA8+var_8C
F411C:  MOV             R1, R11
F411E:  BL              sub_F6866
F4122:  MOV             R4, R5
F4124:  B               loc_F412A
F4126:  ADD.W           R11, SP, #0xA8+var_84
F412A:  LDR             R6, [SP,#0xA8+var_A8]
F412C:  MOV.W           R9, #0
F4130:  MOV.W           R8, #1
F4134:  MOV             R5, R11
F4136:  CMP             R6, R10
F4138:  BEQ             loc_F4158
F413A:  MOV             R0, R6
F413C:  BL              sub_EC820
F4140:  CBZ             R0, loc_F414E
F4142:  ADD.W           R9, R9, #1
F4146:  SUBS            R4, #1
F4148:  MOVS            R0, #2
F414A:  STRB            R0, [R5]
F414C:  B               loc_F4152
F414E:  STRB.W          R8, [R5]
F4152:  ADDS            R5, #1
F4154:  ADDS            R6, #0xC
F4156:  B               loc_F4136
F4158:  LDR             R0, [SP,#0xA8+var_A8]
F415A:  MOVS            R6, #0
F415C:  STR.W           R11, [SP,#0xA8+var_A4]
F4160:  ADDS            R0, #4
F4162:  STR             R0, [SP,#0xA8+var_A0]
F4164:  LDR             R0, [SP,#0xA8+var_98]
F4166:  LDR             R1, [SP,#0xA8+var_9C]
F4168:  LDR             R0, [R0]
F416A:  CMP             R0, R1
F416C:  IT NE
F416E:  CMPNE           R4, #0
F4170:  BEQ             loc_F4250
F4172:  LDR.W           R8, [R0]
F4176:  LDR             R0, [R7,#arg_8]
F4178:  STR.W           R9, [SP,#0xA8+var_90]
F417C:  CBNZ            R0, loc_F418A
F417E:  LDR             R0, [R7,#arg_0]
F4180:  LDR             R1, [R0]
F4182:  LDR             R2, [R1,#0x1C]
F4184:  MOV             R1, R8
F4186:  BLX             R2
F4188:  MOV             R8, R0
F418A:  LDR.W           R9, [SP,#0xA8+var_A0]
F418E:  ADDS            R5, R6, #1
F4190:  MOVS            R0, #0
F4192:  STR             R0, [SP,#0xA8+var_94]
F4194:  SUB.W           R0, R9, #4
F4198:  CMP             R0, R10
F419A:  BEQ             loc_F4200
F419C:  LDRB.W          R0, [R11]
F41A0:  CMP             R0, #1
F41A2:  BNE             loc_F41F6
F41A4:  LDRB.W          R1, [R9,#-4]
F41A8:  LDR.W           R0, [R9,#4]
F41AC:  LSLS            R1, R1, #0x1F
F41AE:  IT EQ
F41B0:  MOVEQ           R0, R9
F41B2:  LDR.W           R1, [R0,R6,LSL#2]
F41B6:  LDR             R0, [R7,#arg_8]
F41B8:  CBNZ            R0, loc_F41C4
F41BA:  LDR             R0, [R7,#arg_0]
F41BC:  LDR             R2, [R0]
F41BE:  LDR             R2, [R2,#0x1C]
F41C0:  BLX             R2
F41C2:  MOV             R1, R0
F41C4:  CMP             R8, R1
F41C6:  BNE             loc_F41EE
F41C8:  LDRB.W          R1, [R9,#-4]
F41CC:  LDR.W           R0, [R9]
F41D0:  LSLS            R2, R1, #0x1F
F41D2:  IT EQ
F41D4:  LSREQ           R0, R1, #1
F41D6:  CMP             R0, R5
F41D8:  BNE             loc_F41E8
F41DA:  MOVS            R0, #2
F41DC:  SUBS            R4, #1
F41DE:  STRB.W          R0, [R11]
F41E2:  LDR             R0, [SP,#0xA8+var_90]
F41E4:  ADDS            R0, #1
F41E6:  STR             R0, [SP,#0xA8+var_90]
F41E8:  MOVS            R0, #1
F41EA:  STR             R0, [SP,#0xA8+var_94]
F41EC:  B               loc_F41F6
F41EE:  SUBS            R4, #1
F41F0:  MOVS            R0, #0
F41F2:  STRB.W          R0, [R11]
F41F6:  ADD.W           R9, R9, #0xC
F41FA:  ADD.W           R11, R11, #1
F41FE:  B               loc_F4194
F4200:  LDR             R0, [SP,#0xA8+var_94]
F4202:  MOV             R6, R5
F4204:  LDR.W           R11, [SP,#0xA8+var_A4]
F4208:  LDR.W           R9, [SP,#0xA8+var_90]
F420C:  LSLS            R0, R0, #0x1F
F420E:  BEQ             loc_F4164
F4210:  LDR             R1, [SP,#0xA8+var_98]
F4212:  MOV             R6, R5
F4214:  LDR             R0, [R1]
F4216:  ADDS            R0, #4
F4218:  STR             R0, [R1]
F421A:  ADD.W           R0, R9, R4
F421E:  CMP             R0, #2
F4220:  BCC             loc_F4164
F4222:  LDR             R1, [SP,#0xA8+var_A8]
F4224:  MOV             R0, R11
F4226:  CMP             R1, R10
F4228:  BEQ             loc_F424C
F422A:  LDRB            R2, [R0]
F422C:  CMP             R2, #2
F422E:  BNE             loc_F4246
F4230:  LDRB            R3, [R1]
F4232:  LDR             R2, [R1,#4]
F4234:  LSLS            R6, R3, #0x1F
F4236:  IT EQ
F4238:  LSREQ           R2, R3, #1
F423A:  CMP             R2, R5
F423C:  ITTT NE
F423E:  MOVNE           R2, #0
F4240:  STRBNE          R2, [R0]
F4242:  SUBNE.W         R9, R9, #1
F4246:  ADDS            R0, #1
F4248:  ADDS            R1, #0xC
F424A:  B               loc_F4226
F424C:  MOV             R6, R5
F424E:  B               loc_F4164
F4250:  LDR             R1, [SP,#0xA8+var_9C]
F4252:  CMP             R0, R1
F4254:  BNE             loc_F4260
F4256:  LDR             R1, [R7,#arg_4]
F4258:  LDR             R0, [R1]
F425A:  ORR.W           R0, R0, #2
F425E:  STR             R0, [R1]
F4260:  LDR             R1, [SP,#0xA8+var_A8]
F4262:  CMP             R1, R10
F4264:  BEQ             loc_F4276
F4266:  LDRB.W          R0, [R11]
F426A:  CMP             R0, #2
F426C:  BEQ             loc_F4282
F426E:  ADD.W           R11, R11, #1
F4272:  ADDS            R1, #0xC
F4274:  B               loc_F4262
F4276:  LDR             R1, [R7,#arg_4]
F4278:  LDR             R0, [R1]
F427A:  ORR.W           R0, R0, #4
F427E:  STR             R0, [R1]
F4280:  B               loc_F4284
F4282:  MOV             R10, R1
F4284:  ADD             R0, SP, #0xA8+var_8C
F4286:  BL              sub_F687C
F428A:  LDR             R0, [SP,#0xA8+var_20]
F428C:  LDR             R1, =(__stack_chk_guard_ptr - 0xF4292)
F428E:  ADD             R1, PC; __stack_chk_guard_ptr
F4290:  LDR             R1, [R1]; __stack_chk_guard
F4292:  LDR             R1, [R1]
F4294:  CMP             R1, R0
F4296:  ITTTT EQ
F4298:  MOVEQ           R0, R10
F429A:  ADDEQ           SP, SP, #0x8C
F429C:  POPEQ.W         {R8-R11}
F42A0:  POPEQ           {R4-R7,PC}
F42A2:  BLX             __stack_chk_fail
F42A6:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
