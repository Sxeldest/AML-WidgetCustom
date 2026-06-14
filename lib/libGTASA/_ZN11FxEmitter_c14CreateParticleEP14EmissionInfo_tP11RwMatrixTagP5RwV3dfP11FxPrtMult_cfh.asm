; =========================================================
; Game Engine Function: _ZN11FxEmitter_c14CreateParticleEP14EmissionInfo_tP11RwMatrixTagP5RwV3dfP11FxPrtMult_cfh
; Address            : 0x368E24 - 0x3694EA
; =========================================================

368E24:  PUSH            {R4-R7,LR}
368E26:  ADD             R7, SP, #0xC
368E28:  PUSH.W          {R8-R11}
368E2C:  SUB             SP, SP, #4
368E2E:  VPUSH           {D8-D15}
368E32:  SUB             SP, SP, #0x40
368E34:  MOV             R6, R0
368E36:  LDR.W           R0, =(g_fxMan_ptr - 0x368E42)
368E3A:  MOV             R11, R1
368E3C:  MOVS            R1, #0; signed __int8
368E3E:  ADD             R0, PC; g_fxMan_ptr
368E40:  MOV             R4, R3
368E42:  STR             R2, [SP,#0xA0+var_94]
368E44:  LDR             R0, [R0]; g_fxMan ; this
368E46:  BLX             j__ZN11FxManager_c11GetParticleEa; FxManager_c::GetParticle(signed char)
368E4A:  MOV             R5, R0
368E4C:  CBNZ            R5, loc_368E70
368E4E:  LDR             R0, [R6,#8]
368E50:  LDRB.W          R0, [R0,#0x66]
368E54:  LSLS            R0, R0, #0x1A
368E56:  BPL             loc_368E70
368E58:  LDR.W           R0, =(g_fxMan_ptr - 0x368E60)
368E5C:  ADD             R0, PC; g_fxMan_ptr
368E5E:  LDR             R5, [R0]; g_fxMan
368E60:  MOV             R0, R5; this
368E62:  BLX             j__ZN11FxManager_c14FreeUpParticleEv; FxManager_c::FreeUpParticle(void)
368E66:  MOV             R0, R5; this
368E68:  MOVS            R1, #0; signed __int8
368E6A:  BLX             j__ZN11FxManager_c11GetParticleEa; FxManager_c::GetParticle(signed char)
368E6E:  MOV             R5, R0
368E70:  CMP             R5, #0
368E72:  BEQ.W           loc_3694DA
368E76:  LDR.W           R9, [R7,#arg_4]
368E7A:  STR             R4, [SP,#0xA0+var_9C]
368E7C:  LDR.W           R8, [R7,#arg_C]
368E80:  VLDR            S24, [R7,#arg_8]
368E84:  VLDR            S20, [R9,#0x18]
368E88:  VLDR            S22, [R11,#0x3C]
368E8C:  BLX             rand
368E90:  MOVW            R10, #0x8BAD
368E94:  MOVW            R4, #0x2710
368E98:  MOVT            R10, #0x68DB
368E9C:  VLDR            S16, =0.0002
368EA0:  SMMUL.W         R1, R0, R10
368EA4:  VMOV.F32        S18, #-1.0
368EA8:  VLDR            S26, =255.0
368EAC:  ASRS            R2, R1, #0xC
368EAE:  ADD.W           R1, R2, R1,LSR#31
368EB2:  MLS.W           R0, R1, R4, R0
368EB6:  VMOV            S0, R0
368EBA:  MOVS            R0, #0
368EBC:  VCVT.F32.S32    S0, S0
368EC0:  VLDR            S2, [R11,#0x40]
368EC4:  STR             R0, [R5,#0xC]
368EC6:  VMUL.F32        S0, S0, S16
368ECA:  VADD.F32        S0, S0, S18
368ECE:  VMUL.F32        S0, S2, S0
368ED2:  VADD.F32        S0, S22, S0
368ED6:  VMUL.F32        S0, S20, S0
368EDA:  VSTR            S0, [R5,#8]
368EDE:  LDR             R0, [R6,#8]
368EE0:  STR             R0, [R5,#0x28]
368EE2:  VLDR            S0, [R9]
368EE6:  VMUL.F32        S0, S0, S26
368EEA:  VCVT.U32.F32    S0, S0
368EEE:  VMOV            R0, S0
368EF2:  STRB.W          R0, [R5,#0x2C]
368EF6:  VLDR            S0, [R9,#4]
368EFA:  VMUL.F32        S0, S0, S26
368EFE:  VCVT.U32.F32    S0, S0
368F02:  VMOV            R0, S0
368F06:  STRB.W          R0, [R5,#0x2D]
368F0A:  VLDR            S0, [R9,#8]
368F0E:  VMUL.F32        S0, S0, S26
368F12:  VCVT.U32.F32    S0, S0
368F16:  VMOV            R0, S0
368F1A:  STRB.W          R0, [R5,#0x2E]
368F1E:  VLDR            S0, [R9,#0xC]
368F22:  VMUL.F32        S0, S0, S26
368F26:  VCVT.U32.F32    S0, S0
368F2A:  VMOV            R0, S0
368F2E:  STRB.W          R0, [R5,#0x2F]
368F32:  VLDR            S0, [R9,#0x10]
368F36:  VMUL.F32        S0, S0, S26
368F3A:  VCVT.U32.F32    S0, S0
368F3E:  VMOV            R0, S0
368F42:  STRB.W          R0, [R5,#0x30]
368F46:  VLDR            S0, [R9,#0x14]
368F4A:  VMUL.F32        S0, S0, S26
368F4E:  VCVT.U32.F32    S0, S0
368F52:  STRB.W          R8, [R5,#0x37]
368F56:  VMOV            R0, S0
368F5A:  STRB.W          R0, [R5,#0x31]
368F5E:  BLX             rand
368F62:  SMMUL.W         R1, R0, R10
368F66:  VLDR            S20, =0.0001
368F6A:  VLDR            S22, =0.0
368F6E:  ASRS            R2, R1, #0xC
368F70:  ADD.W           R1, R2, R1,LSR#31
368F74:  MLS.W           R0, R1, R4, R0
368F78:  VMOV            S0, R0
368F7C:  VCVT.F32.S32    S0, S0
368F80:  VMUL.F32        S0, S0, S20
368F84:  VMUL.F32        S0, S0, S26
368F88:  VADD.F32        S0, S0, S22
368F8C:  VCVT.U32.F32    S0, S0
368F90:  VMOV            R0, S0
368F94:  STRB.W          R0, [R5,#0x32]
368F98:  BLX             rand
368F9C:  SMMUL.W         R1, R0, R10
368FA0:  ASRS            R2, R1, #0xC
368FA2:  ADD.W           R1, R2, R1,LSR#31
368FA6:  MLS.W           R0, R1, R4, R0
368FAA:  VMOV            S0, R0
368FAE:  VCVT.F32.S32    S0, S0
368FB2:  VMUL.F32        S0, S0, S20
368FB6:  VMUL.F32        S0, S0, S26
368FBA:  VADD.F32        S0, S0, S22
368FBE:  VCVT.U32.F32    S0, S0
368FC2:  VMOV            R0, S0
368FC6:  STRB.W          R0, [R5,#0x33]
368FCA:  BLX             rand
368FCE:  SMMUL.W         R1, R0, R10
368FD2:  VLDR            S2, =100.0
368FD6:  VMUL.F32        S2, S24, S2
368FDA:  ASRS            R2, R1, #0xC
368FDC:  ADD.W           R1, R2, R1,LSR#31
368FE0:  MLS.W           R0, R1, R4, R0
368FE4:  VMOV            S0, R0
368FE8:  VCVT.F32.S32    S0, S0
368FEC:  VCVT.U32.F32    S2, S2
368FF0:  VMUL.F32        S0, S0, S20
368FF4:  VMOV            R0, S2
368FF8:  VMUL.F32        S0, S0, S26
368FFC:  VADD.F32        S0, S0, S22
369000:  VCVT.U32.F32    S0, S0
369004:  STRB.W          R0, [R5,#0x35]
369008:  VMOV            R0, S0
36900C:  STRB.W          R0, [R5,#0x34]
369010:  VLDR            S24, [R11,#0x50]
369014:  BLX             rand
369018:  SMMUL.W         R1, R0, R10
36901C:  ASRS            R2, R1, #0xC
36901E:  ADD.W           R1, R2, R1,LSR#31
369022:  MLS.W           R0, R1, R4, R0
369026:  MOVS            R1, #0xFF
369028:  VMOV            S0, R0
36902C:  VCVT.F32.S32    S0, S0
369030:  VLDR            S2, [R11,#0x50]
369034:  VLDR            S4, [R11,#0x54]
369038:  LDRB.W          R0, [R5,#0x37]
36903C:  VSUB.F32        S2, S4, S2
369040:  STRB.W          R1, [R5,#0x36]
369044:  CMP             R0, #0
369046:  VMUL.F32        S0, S0, S20
36904A:  VADD.F32        S0, S0, S22
36904E:  VMUL.F32        S0, S2, S0
369052:  VADD.F32        S0, S24, S0
369056:  VSTR            S0, [R5,#0x38]
36905A:  ITTT NE
36905C:  LDRNE           R0, [R6,#4]
36905E:  LDRNE           R1, [SP,#0xA0+var_94]
369060:  BLXNE           j__ZN10FxPrimBP_c11GetRWMatrixEP11RwMatrixTag; FxPrimBP_c::GetRWMatrix(RwMatrixTag *)
369064:  STR             R6, [SP,#0xA0+var_98]
369066:  VLDR            S0, [R11,#4]
36906A:  VLDR            S2, =0.001
36906E:  VABS.F32        S0, S0
369072:  VCMPE.F32       S0, S2
369076:  VMRS            APSR_nzcv, FPSCR
36907A:  BGE             loc_369150
36907C:  VLDR            S24, [R11,#8]
369080:  BLX             rand
369084:  MOV             R8, R0
369086:  VLDR            S26, [R11,#8]
36908A:  VLDR            S28, [R11,#0xC]
36908E:  SMMUL.W         R4, R8, R10
369092:  VLDR            S30, [R11,#0x14]
369096:  BLX             rand
36909A:  MOV             R9, R0
36909C:  VLDR            S17, [R11,#0xC]
3690A0:  VLDR            S19, [R11,#0x10]
3690A4:  SMMUL.W         R6, R9, R10
3690A8:  VLDR            S21, [R11,#0x18]
3690AC:  BLX             rand
3690B0:  ASRS            R2, R4, #0xC
3690B2:  MOVW            R3, #0x2710
3690B6:  ADD.W           R2, R2, R4,LSR#31
3690BA:  SMMUL.W         R1, R0, R10
3690BE:  ASRS            R4, R6, #0xC
3690C0:  MLS.W           R2, R2, R3, R8
3690C4:  ADD.W           R6, R4, R6,LSR#31
3690C8:  VSUB.F32        S6, S30, S26
3690CC:  MLS.W           R6, R6, R3, R9
3690D0:  VSUB.F32        S12, S21, S17
3690D4:  VMOV            S0, R2
3690D8:  ASRS            R2, R1, #0xC
3690DA:  ADD.W           R1, R2, R1,LSR#31
3690DE:  VMOV            S2, R6
3690E2:  MLS.W           R0, R1, R3, R0
3690E6:  VCVT.F32.S32    S0, S0
3690EA:  VCVT.F32.S32    S2, S2
3690EE:  VMOV            S4, R0
3690F2:  VMUL.F32        S0, S0, S20
3690F6:  VCVT.F32.S32    S4, S4
3690FA:  VLDR            S8, [R11,#0x10]
3690FE:  VMUL.F32        S2, S2, S20
369102:  VLDR            S10, [R11,#0x1C]
369106:  LDRD.W          R0, R8, [SP,#0xA0+var_9C]
36910A:  VSUB.F32        S8, S10, S8
36910E:  VADD.F32        S0, S0, S22
369112:  VMUL.F32        S4, S4, S20
369116:  VADD.F32        S2, S2, S22
36911A:  VMUL.F32        S0, S6, S0
36911E:  VADD.F32        S4, S4, S22
369122:  VMUL.F32        S2, S12, S2
369126:  VMUL.F32        S6, S8, S4
36912A:  VADD.F32        S4, S24, S0
36912E:  VADD.F32        S2, S28, S2
369132:  VADD.F32        S0, S19, S6
369136:  B               loc_369234
369138:  DCFS 0.0002
36913C:  DCFS 255.0
369140:  DCFS 0.0001
369144:  DCFS 0.0
369148:  DCFS 100.0
36914C:  DCFS 0.001
369150:  BLX             rand
369154:  MOV             R8, R0
369156:  SMMUL.W         R4, R8, R10
36915A:  BLX             rand
36915E:  MOV             R6, R0
369160:  SMMUL.W         R9, R6, R10
369164:  BLX             rand
369168:  ASRS            R2, R4, #0xC
36916A:  MOV.W           R3, R9,ASR#12
36916E:  ADD.W           R2, R2, R4,LSR#31
369172:  MOVW            R4, #0x2710
369176:  ADD.W           R3, R3, R9,LSR#31
36917A:  SMMUL.W         R1, R0, R10
36917E:  MLS.W           R2, R2, R4, R8
369182:  MLS.W           R3, R3, R4, R6
369186:  VMOV            S0, R2
36918A:  ASRS            R2, R1, #0xC
36918C:  ADD.W           R1, R2, R1,LSR#31
369190:  VMOV            S2, R3
369194:  MLS.W           R0, R1, R4, R0
369198:  VCVT.F32.S32    S0, S0
36919C:  VCVT.F32.S32    S2, S2
3691A0:  VMOV            S4, R0
3691A4:  VMUL.F32        S0, S0, S16
3691A8:  VCVT.F32.S32    S4, S4
3691AC:  VMUL.F32        S2, S2, S16
3691B0:  VADD.F32        S24, S0, S18
3691B4:  VMUL.F32        S4, S4, S16
3691B8:  VADD.F32        S26, S2, S18
3691BC:  VMUL.F32        S0, S24, S24
3691C0:  VADD.F32        S28, S4, S18
3691C4:  VMUL.F32        S2, S26, S26
3691C8:  VMUL.F32        S4, S28, S28
3691CC:  VADD.F32        S0, S0, S2
3691D0:  VMOV.F32        S2, #1.0
3691D4:  VADD.F32        S0, S0, S4
3691D8:  VSQRT.F32       S0, S0
3691DC:  VDIV.F32        S30, S2, S0
3691E0:  VLDR            S0, [R11,#4]
3691E4:  VCMPE.F32       S0, #0.0
3691E8:  VMRS            APSR_nzcv, FPSCR
3691EC:  BLT             loc_369220
3691EE:  BLX             rand
3691F2:  MOV             R1, #0x68DB8BAD
3691FA:  SMMUL.W         R1, R0, R1
3691FE:  ASRS            R2, R1, #0xC
369200:  ADD.W           R1, R2, R1,LSR#31
369204:  MLS.W           R0, R1, R4, R0
369208:  VMOV            S0, R0
36920C:  VCVT.F32.S32    S0, S0
369210:  VMUL.F32        S0, S0, S20
369214:  VADD.F32        S0, S0, S22
369218:  VMUL.F32        S30, S30, S0
36921C:  VLDR            S0, [R11,#4]
369220:  VMUL.F32        S4, S30, S0
369224:  LDRD.W          R0, R8, [SP,#0xA0+var_9C]
369228:  VMUL.F32        S0, S28, S4
36922C:  VMUL.F32        S2, S26, S4
369230:  VMUL.F32        S4, S24, S4
369234:  VLDR            S6, [R11,#0x44]
369238:  CMP             R0, #0
36923A:  LDR             R1, [SP,#0xA0+var_94]
36923C:  VADD.F32        S4, S4, S6
369240:  VLDR            S8, [R11,#0x48]
369244:  VLDR            S10, [R11,#0x4C]
369248:  VLDR            S6, [R1]
36924C:  VADD.F32        S2, S2, S8
369250:  VLDR            S12, [R1,#0x10]
369254:  VADD.F32        S0, S0, S10
369258:  VLDR            S1, [R1,#0x30]
36925C:  VLDR            S14, [R1,#0x20]
369260:  VLDR            S24, [R7,#arg_0]
369264:  VMUL.F32        S6, S4, S6
369268:  VMUL.F32        S8, S2, S12
36926C:  VMUL.F32        S10, S0, S14
369270:  VADD.F32        S6, S1, S6
369274:  VADD.F32        S6, S6, S8
369278:  VADD.F32        S6, S6, S10
36927C:  VSTR            S6, [R5,#0x10]
369280:  VLDR            S6, [R1,#4]
369284:  VLDR            S8, [R1,#0x14]
369288:  VMUL.F32        S6, S4, S6
36928C:  VLDR            S12, [R1,#0x34]
369290:  VMUL.F32        S8, S2, S8
369294:  VLDR            S10, [R1,#0x24]
369298:  VMUL.F32        S10, S0, S10
36929C:  VADD.F32        S6, S12, S6
3692A0:  VADD.F32        S6, S6, S8
3692A4:  VADD.F32        S6, S6, S10
3692A8:  VSTR            S6, [R5,#0x14]
3692AC:  VLDR            S6, [R1,#8]
3692B0:  VLDR            S8, [R1,#0x18]
3692B4:  VMUL.F32        S4, S4, S6
3692B8:  VLDR            S12, [R1,#0x38]
3692BC:  VMUL.F32        S2, S2, S8
3692C0:  VLDR            S10, [R1,#0x28]
3692C4:  VMUL.F32        S0, S0, S10
3692C8:  VADD.F32        S4, S12, S4
3692CC:  VADD.F32        S2, S4, S2
3692D0:  VADD.F32        S0, S2, S0
3692D4:  VSTR            S0, [R5,#0x18]
3692D8:  BEQ             loc_3692F4
3692DA:  VLDR            D16, [R0]
3692DE:  LDR             R0, [R0,#8]
3692E0:  STR             R0, [R5,#0x24]
3692E2:  VLDR            S0, [R5,#0x24]
3692E6:  VSTR            D16, [R5,#0x1C]
3692EA:  VLDR            S4, [R5,#0x1C]
3692EE:  VLDR            S2, [R5,#0x20]
3692F2:  B               loc_369490
3692F4:  BLX             rand
3692F8:  MOVW            R9, #0x8BAD
3692FC:  MOV             R4, R0
3692FE:  MOVT            R9, #0x68DB
369302:  SMMUL.W         R6, R4, R9
369306:  BLX             rand
36930A:  ASRS            R2, R6, #0xC
36930C:  MOVW            R3, #0x2710
369310:  ADD.W           R2, R2, R6,LSR#31
369314:  SMMUL.W         R1, R0, R9
369318:  VLDR            S0, =0.017453
36931C:  MLS.W           R2, R2, R3, R4
369320:  VLDR            S2, [R11,#0x34]
369324:  VLDR            S4, [R11,#0x38]
369328:  VMUL.F32        S2, S2, S0
36932C:  VLDR            S8, =6.2832
369330:  VMUL.F32        S0, S4, S0
369334:  VMOV            S6, R2
369338:  ASRS            R2, R1, #0xC
36933A:  ADD.W           R1, R2, R1,LSR#31
36933E:  VCVT.F32.S32    S6, S6
369342:  MLS.W           R0, R1, R3, R0
369346:  VSUB.F32        S0, S0, S2
36934A:  VMOV            S4, R0
36934E:  LDR             R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x36935C)
369350:  VMUL.F32        S6, S6, S20
369354:  VCVT.F32.S32    S4, S4
369358:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
36935A:  LDR             R0, [R0]; CMaths::ms_SinTable ...
36935C:  VMUL.F32        S6, S6, S8
369360:  VMUL.F32        S4, S4, S20
369364:  VMUL.F32        S0, S4, S0
369368:  VADD.F32        S4, S6, S22
36936C:  VLDR            S6, =256.0
369370:  VADD.F32        S0, S2, S0
369374:  VMUL.F32        S2, S4, S6
369378:  VLDR            S4, =6.2832
36937C:  VMUL.F32        S0, S0, S6
369380:  VDIV.F32        S2, S2, S4
369384:  VDIV.F32        S0, S0, S4
369388:  VCVT.U32.F32    S8, S0
36938C:  VLDR            S4, =64.0
369390:  VADD.F32        S6, S2, S4
369394:  VADD.F32        S0, S0, S4
369398:  VMOV            R1, S8
36939C:  VCVT.U32.F32    S6, S6
3693A0:  UXTB            R1, R1
3693A2:  ADD.W           R1, R0, R1,LSL#2
3693A6:  VLDR            S8, [R1]
3693AA:  VMOV            R1, S6
3693AE:  UXTB            R1, R1
3693B0:  ADD.W           R1, R0, R1,LSL#2
3693B4:  VLDR            S6, [R1]
3693B8:  VCVT.U32.F32    S0, S0
3693BC:  VMUL.F32        S4, S8, S6
3693C0:  VMOV            R1, S0
3693C4:  VSTR            S4, [SP,#0xA0+var_6C]
3693C8:  UXTB            R1, R1
3693CA:  LDR.W           R1, [R0,R1,LSL#2]
3693CE:  VCVT.U32.F32    S0, S2
3693D2:  STR             R1, [SP,#0xA0+var_68]
3693D4:  VMOV.F32        S2, #10.0
3693D8:  VMOV            R1, S0
3693DC:  UXTB            R1, R1
3693DE:  ADD.W           R0, R0, R1,LSL#2
3693E2:  VLDR            S0, [R0]
3693E6:  VMUL.F32        S0, S8, S0
3693EA:  VSTR            S0, [SP,#0xA0+var_64]
3693EE:  VLDR            S0, [R11,#0x28]
3693F2:  VCMPE.F32       S0, S2
3693F6:  VMRS            APSR_nzcv, FPSCR
3693FA:  BLE             loc_36940A
3693FC:  LDR             R0, [R5,#0x10]
3693FE:  STR             R0, [SP,#0xA0+var_90]
369400:  LDR             R0, [R5,#0x14]
369402:  STR             R0, [SP,#0xA0+var_8C]
369404:  LDR             R0, [R5,#0x18]
369406:  STR             R0, [SP,#0xA0+var_88]
369408:  B               loc_36941E
36940A:  VSTR            S0, [SP,#0xA0+var_90]
36940E:  LDRD.W          R0, R1, [R11,#0x2C]
369412:  STRD.W          R0, R1, [SP,#0xA0+var_8C]
369416:  ADD             R0, SP, #0xA0+var_90
369418:  MOV             R1, R0
36941A:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
36941E:  ADD             R4, SP, #0xA0+var_84
369420:  LDR             R3, [SP,#0xA0+var_94]
369422:  ADD             R1, SP, #0xA0+var_90
369424:  MOVS            R2, #1
369426:  MOV             R0, R4
369428:  BLX             j__Z21RwV3dTransformVectorsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformVectors(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
36942C:  ADD             R0, SP, #0xA0+var_78
36942E:  ADD             R1, SP, #0xA0+var_6C
369430:  MOV             R2, R4
369432:  BLX             j__Z16RotateVecIntoVecP5RwV3dS0_S0_; RotateVecIntoVec(RwV3d *,RwV3d *,RwV3d *)
369436:  VLDR            S20, [R11,#0x20]
36943A:  BLX             rand
36943E:  SMMUL.W         R1, R0, R9
369442:  ASRS            R2, R1, #0xC
369444:  ADD.W           R1, R2, R1,LSR#31
369448:  MOVW            R2, #0x2710
36944C:  MLS.W           R0, R1, R2, R0
369450:  VMOV            S0, R0
369454:  VCVT.F32.S32    S0, S0
369458:  VLDR            S2, [R11,#0x24]
36945C:  VLDR            S6, [SP,#0xA0+var_70]
369460:  VMUL.F32        S0, S0, S16
369464:  VADD.F32        S0, S0, S18
369468:  VMUL.F32        S0, S2, S0
36946C:  VLDR            S2, [SP,#0xA0+var_78]
369470:  VADD.F32        S0, S20, S0
369474:  VMUL.F32        S4, S2, S0
369478:  VLDR            S2, [SP,#0xA0+var_74]
36947C:  VMUL.F32        S2, S2, S0
369480:  VMUL.F32        S0, S6, S0
369484:  VSTR            S4, [R5,#0x1C]
369488:  VSTR            S2, [R5,#0x20]
36948C:  VSTR            S0, [R5,#0x24]
369490:  LDR.W           R0, [R8,#8]
369494:  VMOV            R1, S24; float
369498:  MOV             R2, R5; FxEmitterPrt_c *
36949A:  VLDR            S6, [R0,#0x6C]
36949E:  VADD.F32        S4, S6, S4
3694A2:  VSTR            S4, [R5,#0x1C]
3694A6:  LDR.W           R0, [R8,#8]
3694AA:  VLDR            S4, [R0,#0x70]
3694AE:  VADD.F32        S2, S4, S2
3694B2:  VSTR            S2, [R5,#0x20]
3694B6:  LDR.W           R0, [R8,#8]
3694BA:  VLDR            S2, [R0,#0x74]
3694BE:  VADD.F32        S0, S2, S0
3694C2:  VSTR            S0, [R5,#0x24]
3694C6:  LDR.W           R0, [R8,#4]; this
3694CA:  BLX             j__ZN13FxEmitterBP_c14UpdateParticleEfP14FxEmitterPrt_c; FxEmitterBP_c::UpdateParticle(float,FxEmitterPrt_c *)
3694CE:  LDR.W           R0, [R8,#4]
3694D2:  MOV             R1, R5; ListItem_c *
3694D4:  ADDS            R0, #0x20 ; ' '; this
3694D6:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
3694DA:  MOV             R0, R5
3694DC:  ADD             SP, SP, #0x40 ; '@'
3694DE:  VPOP            {D8-D15}
3694E2:  ADD             SP, SP, #4
3694E4:  POP.W           {R8-R11}
3694E8:  POP             {R4-R7,PC}
