; =========================================================
; Game Engine Function: _ZN15CAESoundManager7ServiceEv
; Address            : 0x3A80D8 - 0x3A8BEE
; =========================================================

3A80D8:  PUSH            {R4-R7,LR}
3A80DA:  ADD             R7, SP, #0xC
3A80DC:  PUSH.W          {R8-R11}
3A80E0:  SUB             SP, SP, #4
3A80E2:  VPUSH           {D8-D11}
3A80E6:  SUB             SP, SP, #0x58; float
3A80E8:  MOV             R10, R0
3A80EA:  MOVS            R0, #0
3A80EC:  MOV.W           R1, #0x3F800000
3A80F0:  STR             R0, [SP,#0x98+var_58+4]
3A80F2:  STR             R1, [SP,#0x98+var_58]
3A80F4:  MOVW            R6, #0xFFFF
3A80F8:  STR             R0, [SP,#0x98+var_50]
3A80FA:  LDRH.W          R0, [R10]
3A80FE:  CBZ             R0, loc_3A811C
3A8100:  MOVW            R0, #0x87FC
3A8104:  MOVS            R1, #0
3A8106:  ADD             R0, R10
3A8108:  MOVS            R2, #0
3A810A:  LDR             R3, [R0]
3A810C:  ADDS            R2, #1
3A810E:  STRH.W          R6, [R3,R1,LSL#1]
3A8112:  SXTH            R1, R2
3A8114:  LDRH.W          R3, [R10]
3A8118:  CMP             R1, R3
3A811A:  BLT             loc_3A810A
3A811C:  LDR.W           R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3A8128)
3A8120:  LDR.W           R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3A812A)
3A8124:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3A8126:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3A8128:  LDR             R0, [R0]; CTimer::m_UserPause ...
3A812A:  LDR             R1, [R1]; CTimer::m_CodePause ...
3A812C:  LDRB            R0, [R0]; CTimer::m_UserPause
3A812E:  LDRB            R1, [R1]; CTimer::m_CodePause
3A8130:  ORRS            R0, R1
3A8132:  LSLS            R0, R0, #0x18
3A8134:  BNE             loc_3A8140
3A8136:  MOVW            R0, #0x8CB5
3A813A:  LDRB.W          R0, [R10,R0]
3A813E:  CBZ             R0, loc_3A8182
3A8140:  LDR.W           R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x3A8154)
3A8144:  MOVW            R2, #0x8CB0
3A8148:  MOVW            R6, #0x8CB4
3A814C:  LDR.W           R1, [R10,R2]
3A8150:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
3A8152:  LDRB.W          R5, [R10,R6]
3A8156:  ADD.W           R3, R10, R2
3A815A:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
3A815C:  CMP             R5, #0
3A815E:  LDR             R2, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
3A8160:  ADD.W           R0, R10, R6
3A8164:  BEQ             loc_3A8170
3A8166:  SUB.W           R8, R2, R1
3A816A:  STR             R2, [R3]
3A816C:  MOVS            R1, #1
3A816E:  B               loc_3A81B6
3A8170:  MOVW            R6, #0x8CB8
3A8174:  MOV.W           R8, #0
3A8178:  STR.W           R1, [R10,R6]
3A817C:  MOVS            R1, #1
3A817E:  STR             R2, [R3]
3A8180:  B               loc_3A81B6
3A8182:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3A8196)
3A8186:  MOVW            R1, #0x8CB4
3A818A:  LDRB.W          R2, [R10,R1]
3A818E:  MOVW            R3, #0x8CB8
3A8192:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3A8194:  ADD             R3, R10
3A8196:  CMP             R2, #0
3A8198:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3A819A:  MOVW            R6, #0x8CB0
3A819E:  IT EQ
3A81A0:  ADDEQ.W         R3, R10, R6
3A81A4:  LDR             R2, [R3]
3A81A6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3A81A8:  STR.W           R0, [R10,R6]
3A81AC:  SUB.W           R8, R0, R2
3A81B0:  ADD.W           R0, R10, R1
3A81B4:  MOVS            R1, #0
3A81B6:  LDR.W           R3, =(AEAudioHardware_ptr - 0x3A81C4)
3A81BA:  MOVW            R4, #0x87F8
3A81BE:  STRB            R1, [R0]
3A81C0:  ADD             R3, PC; AEAudioHardware_ptr
3A81C2:  LDR.W           R2, [R10,R4]; __int16 *
3A81C6:  LDRSH.W         R1, [R10,#2]; __int16
3A81CA:  LDR             R5, [R3]; AEAudioHardware
3A81CC:  MOV             R0, R5; this
3A81CE:  BLX             j__ZN16CAEAudioHardware19GetChannelPlayTimesEsPs; CAEAudioHardware::GetChannelPlayTimes(short,short *)
3A81D2:  ADD.W           R1, R10, #0x8800; __int16 *
3A81D6:  MOV             R0, R5; this
3A81D8:  BLX             j__ZN16CAEAudioHardware29GetVirtualChannelSoundLengthsEPs; CAEAudioHardware::GetVirtualChannelSoundLengths(short *)
3A81DC:  MOVW            R0, #0x8A58
3A81E0:  ADD.W           R1, R10, R0; __int16 *
3A81E4:  MOV             R0, R5; this
3A81E6:  BLX             j__ZN16CAEAudioHardware36GetVirtualChannelSoundLoopStartTimesEPs; CAEAudioHardware::GetVirtualChannelSoundLoopStartTimes(short *)
3A81EA:  ADD.W           R9, R10, R4
3A81EE:  VLDR            S0, =100.0
3A81F2:  MOVS            R0, #0
3A81F4:  MOV.W           R1, #0x4400
3A81F8:  MOVW            R2, #0x452C
3A81FC:  ADD.W           R3, R10, R0,LSL#1
3A8200:  LDRH.W          R6, [R3,#0x5C]
3A8204:  CBZ             R6, loc_3A824A
3A8206:  LDRH.W          R6, [R3,#0x5E]
3A820A:  CMP             R6, #0
3A820C:  ITT NE
3A820E:  LDRHNE.W        R6, [R3,#0x5A]
3A8212:  TSTNE.W         R6, #0x20
3A8216:  BEQ             loc_3A824A
3A8218:  BIC.W           R6, R6, #0x20 ; ' '
3A821C:  STRH.W          R6, [R3,#0x5A]
3A8220:  LDRH.W          R6, [R3,#0x62]
3A8224:  CBNZ            R6, loc_3A824A
3A8226:  LDRSH.W         R6, [R10,R1,LSL#1]
3A822A:  LDRSH.W         R5, [R3,#0x60]
3A822E:  SMULBB.W        R6, R6, R5
3A8232:  VMOV            S2, R6
3A8236:  VCVT.F32.S32    S2, S2
3A823A:  VDIV.F32        S2, S2, S0
3A823E:  VCVT.S32.F32    S2, S2
3A8242:  VMOV            R6, S2
3A8246:  STRH.W          R6, [R3,#0x60]
3A824A:  ADDS            R1, #1
3A824C:  ADDS            R0, #0x3A ; ':'
3A824E:  CMP             R1, R2
3A8250:  BNE             loc_3A81FC
3A8252:  LDRH.W          R0, [R10]
3A8256:  CBZ             R0, loc_3A82BC
3A8258:  LDR.W           R1, =(AEAudioHardware_ptr - 0x3A826A)
3A825C:  MOVW            R0, #0x87F4
3A8260:  ADD.W           R4, R10, R0
3A8264:  MOVS            R0, #0
3A8266:  ADD             R1, PC; AEAudioHardware_ptr
3A8268:  MOVS            R6, #0x74 ; 't'
3A826A:  MOVS            R5, #0
3A826C:  LDR.W           R11, [R1]; AEAudioHardware
3A8270:  LDR             R1, [R4]
3A8272:  MOVW            R2, #0xFFFF
3A8276:  LDRH.W          R1, [R1,R0,LSL#1]
3A827A:  CMP             R1, R2
3A827C:  BEQ             loc_3A82B0
3A827E:  SXTH            R1, R1
3A8280:  ADD.W           R3, R10, #4
3A8284:  LDR.W           R2, [R9]
3A8288:  SMLABB.W        R1, R1, R6, R3
3A828C:  LDRH.W          R2, [R2,R0,LSL#1]
3A8290:  STRH.W          R2, [R1,#0x5C]
3A8294:  LDR             R1, [R4]
3A8296:  LDRSH.W         R0, [R1,R0,LSL#1]
3A829A:  SMLABB.W        R0, R0, R6, R3
3A829E:  LDRH.W          R0, [R0,#0x68]
3A82A2:  CBZ             R0, loc_3A82B0
3A82A4:  LDRSH.W         R1, [R10,#2]; __int16
3A82A8:  UXTH            R2, R5; unsigned __int16
3A82AA:  MOV             R0, R11; this
3A82AC:  BLX             j__ZN16CAEAudioHardware9StopSoundEst; CAEAudioHardware::StopSound(short,ushort)
3A82B0:  ADDS            R5, #1
3A82B2:  LDRH.W          R1, [R10]
3A82B6:  SXTH            R0, R5
3A82B8:  CMP             R0, R1
3A82BA:  BLT             loc_3A8270
3A82BC:  LDR.W           R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3A82D0)
3A82C0:  SXTH.W          R2, R8
3A82C4:  LDR.W           R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3A82D6)
3A82C8:  VMOV            S0, R2
3A82CC:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3A82CE:  VLDR            S18, =0.0
3A82D2:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3A82D4:  MOVW            R2, #0x8CB5
3A82D8:  LDR             R0, [R0]; CTimer::m_UserPause ...
3A82DA:  MOVS            R5, #0
3A82DC:  LDR             R1, [R1]; CTimer::m_CodePause ...
3A82DE:  MOV.W           R6, #0x8800
3A82E2:  MOVW            R8, #0x8A58
3A82E6:  ADD             R2, R10
3A82E8:  LDRB            R0, [R0]; CTimer::m_UserPause
3A82EA:  VCVT.F32.S32    S16, S0
3A82EE:  LDRB            R1, [R1]; CTimer::m_CodePause
3A82F0:  STR             R2, [SP,#0x98+var_60]
3A82F2:  ORRS            R0, R1
3A82F4:  LSLS            R3, R0, #0x18
3A82F6:  B               loc_3A83AA
3A82F8:  CBNZ            R3, loc_3A8300
3A82FA:  LDR             R0, [SP,#0x98+var_60]
3A82FC:  LDRB            R0, [R0]
3A82FE:  CBZ             R0, loc_3A8338
3A8300:  LDRB.W          R0, [R11,#0x5A]
3A8304:  LSLS            R0, R0, #0x1B
3A8306:  BMI             loc_3A8338
3A8308:  ADD.W           R0, R10, R6
3A830C:  LDRSH.W         R1, [R10,R6]
3A8310:  LDRH.W          R4, [R0,#0x258]
3A8314:  LDRH.W          R0, [R11,#0x62]
3A8318:  STRH.W          R1, [R11,#0x74]
3A831C:  CMP             R0, #0
3A831E:  BNE             loc_3A83C6
3A8320:  LDRH.W          R0, [R11,#0x6C]
3A8324:  CBNZ            R0, loc_3A8354
3A8326:  LDRSH.W         R0, [R11,#0x60]
3A832A:  VLDR            S0, [R11,#0x68]
3A832E:  VMOV            S2, R0
3A8332:  VMUL.F32        S0, S0, S18
3A8336:  B               loc_3A836E
3A8338:  ADD.W           R0, R10, R6
3A833C:  LDRSH.W         R1, [R10,R6]
3A8340:  LDRH.W          R4, [R0,#0x258]
3A8344:  LDRH.W          R0, [R11,#0x62]
3A8348:  STRH.W          R1, [R11,#0x74]
3A834C:  CBNZ            R0, loc_3A83C6
3A834E:  LDRH.W          R0, [R11,#0x6C]
3A8352:  CBZ             R0, loc_3A835E
3A8354:  MOVW            R0, #0xFFFF
3A8358:  STRH.W          R0, [R11,#0x60]
3A835C:  B               loc_3A83C6
3A835E:  LDRSH.W         R0, [R11,#0x60]
3A8362:  VLDR            S0, [R11,#0x68]
3A8366:  VMOV            S2, R0
3A836A:  VMUL.F32        S0, S0, S16
3A836E:  VCVT.F32.S32    S2, S2
3A8372:  VADD.F32        S0, S0, S2
3A8376:  VCVT.S32.F32    S0, S0
3A837A:  VMOV            R0, S0
3A837E:  STRH.W          R0, [R11,#0x60]
3A8382:  CMP             R1, R0
3A8384:  BGT             loc_3A83C6
3A8386:  CMP             R1, #0
3A8388:  MOVW            R2, #0xFFFF
3A838C:  BEQ             loc_3A83A4
3A838E:  MOVW            R2, #0xFFFF
3A8392:  CMP             R4, R2
3A8394:  MOVW            R2, #0xFFFF
3A8398:  BEQ             loc_3A83A4
3A839A:  STR             R3, [SP,#0x98+var_5C]
3A839C:  BLX             __aeabi_idivmod
3A83A0:  LDR             R3, [SP,#0x98+var_5C]
3A83A2:  ADDS            R2, R1, R4
3A83A4:  STRH.W          R2, [R11,#0x60]
3A83A8:  B               loc_3A83C6
3A83AA:  ADD.W           R11, R10, R5
3A83AE:  LDRH.W          R0, [R11,#0x5C]
3A83B2:  CMP             R0, #0
3A83B4:  ITT NE
3A83B6:  LDRHNE.W        R0, [R11,#0x5E]
3A83BA:  CMPNE           R0, #0
3A83BC:  BEQ             loc_3A83C6
3A83BE:  LDRB.W          R0, [R11,#0x58]
3A83C2:  CMP             R0, #0
3A83C4:  BEQ             loc_3A82F8
3A83C6:  ADDS            R6, #2
3A83C8:  ADDS            R5, #0x74 ; 't'
3A83CA:  CMP             R6, R8
3A83CC:  BNE             loc_3A83AA
3A83CE:  LDRH.W          R0, [R10]
3A83D2:  MOVW            R5, #0xFFFF
3A83D6:  CBZ             R0, loc_3A8402
3A83D8:  MOVW            R1, #0x87F4
3A83DC:  MOVS            R3, #0
3A83DE:  ADD             R1, R10
3A83E0:  MOVS            R2, #0
3A83E2:  LDR.W           R6, [R9]
3A83E6:  ADDS            R2, #1
3A83E8:  LDRH.W          R6, [R6,R3,LSL#1]
3A83EC:  CMP             R6, R5
3A83EE:  ITTT EQ
3A83F0:  LDREQ           R0, [R1]
3A83F2:  STRHEQ.W        R5, [R0,R3,LSL#1]
3A83F6:  LDRHEQ.W        R0, [R10]
3A83FA:  SXTH            R3, R2
3A83FC:  UXTH            R6, R0
3A83FE:  CMP             R3, R6
3A8400:  BLT             loc_3A83E2
3A8402:  ADD.W           R4, R10, #0x60 ; '`'
3A8406:  MOVW            R6, #0xFFFF
3A840A:  MOV.W           R5, #0x12C
3A840E:  LDRH.W          R0, [R4,#-4]
3A8412:  CBZ             R0, loc_3A8428
3A8414:  LDRB.W          R0, [R4,#-8]
3A8418:  CBNZ            R0, loc_3A8428
3A841A:  LDRH            R0, [R4]
3A841C:  CMP             R0, R6
3A841E:  ITT EQ
3A8420:  SUBEQ.W         R0, R4, #0x5C ; '\'; this
3A8424:  BLXEQ           j__ZN8CAESound16SoundHasFinishedEv; CAESound::SoundHasFinished(void)
3A8428:  SUBS            R5, #1
3A842A:  ADD.W           R4, R4, #0x74 ; 't'
3A842E:  BNE             loc_3A840E
3A8430:  ADD.W           R5, R10, #0x5A ; 'Z'
3A8434:  MOV.W           R4, #0x12C
3A8438:  MOV.W           R8, #1
3A843C:  MOV             R6, R5
3A843E:  LDRH            R0, [R6,#2]
3A8440:  CBZ             R0, loc_3A84A8
3A8442:  LDRH            R0, [R6]
3A8444:  SUB.W           R9, R6, #0x56 ; 'V'
3A8448:  LDRH.W          R11, [R6,#6]
3A844C:  TST.W           R0, #0x80
3A8450:  BEQ             loc_3A846E
3A8452:  LDR.W           R1, [R6,#-0x4E]
3A8456:  CBZ             R1, loc_3A84A0
3A8458:  LDR             R0, [R1,#0x14]
3A845A:  ADD.W           R3, R0, #0x30 ; '0'
3A845E:  CMP             R0, #0
3A8460:  IT EQ
3A8462:  ADDEQ           R3, R1, #4
3A8464:  MOV             R0, R9
3A8466:  LDM             R3, {R1-R3}
3A8468:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3A846C:  LDRH            R0, [R6]
3A846E:  LSLS            R0, R0, #0x1D
3A8470:  BPL             loc_3A84A8
3A8472:  LDR.W           R0, [R6,#-0x52]
3A8476:  CBZ             R0, loc_3A84A8
3A8478:  LDR             R1, [R0]
3A847A:  SXTH.W          R2, R11
3A847E:  LDR             R3, [R1]
3A8480:  MOV             R1, R9
3A8482:  BLX             R3
3A8484:  SUB.W           R0, R6, #0x36 ; '6'
3A8488:  VLDR            S0, [R0]
3A848C:  VCMP.F32        S0, #0.0
3A8490:  VMRS            APSR_nzcv, FPSCR
3A8494:  ITT EQ
3A8496:  LDREQ.W         R0, [R6,#-0x3A]
3A849A:  STREQ.W         R0, [R6,#0xE]
3A849E:  B               loc_3A84A8
3A84A0:  STRH.W          R8, [R6,#0x12]
3A84A4:  LSLS            R0, R0, #0x1D
3A84A6:  BMI             loc_3A8472
3A84A8:  SUBS            R4, #1
3A84AA:  ADD.W           R6, R6, #0x74 ; 't'
3A84AE:  BNE             loc_3A843E
3A84B0:  ADD             R4, SP, #0x98+var_4C
3A84B2:  MOV.W           R6, #0x12C
3A84B6:  LDRH            R0, [R5,#2]
3A84B8:  CMP             R0, #0
3A84BA:  BEQ             loc_3A8548
3A84BC:  LDRB            R0, [R5]
3A84BE:  LSLS            R0, R0, #0x1F
3A84C0:  BNE             loc_3A852C
3A84C2:  SUB.W           R1, R5, #0x32 ; '2'; CVector *
3A84C6:  MOV             R0, R4; this
3A84C8:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CVector *)
3A84CC:  VLDR            S0, [SP,#0x98+var_4C]
3A84D0:  SUB.W           R0, R5, #0x3E ; '>'
3A84D4:  VLDR            S2, [SP,#0x98+var_48]
3A84D8:  SUB.W           R1, R5, #0x42 ; 'B'; float
3A84DC:  VMUL.F32        S0, S0, S0
3A84E0:  VLDR            S4, [SP,#0x98+var_44]
3A84E4:  VMUL.F32        S2, S2, S2
3A84E8:  VLDR            S16, [R1]
3A84EC:  VMUL.F32        S4, S4, S4
3A84F0:  VADD.F32        S0, S0, S2
3A84F4:  VLDR            S2, [R0]
3A84F8:  VADD.F32        S0, S0, S4
3A84FC:  VSQRT.F32       S0, S0
3A8500:  VDIV.F32        S0, S0, S2
3A8504:  VMOV            R0, S0; this
3A8508:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
3A850C:  VMOV            S0, R0
3A8510:  MOV             R0, R4; this
3A8512:  VADD.F32        S16, S16, S0
3A8516:  BLX             j__ZN19CAEAudioEnvironment29GetDirectionalMikeAttenuationERK7CVector; CAEAudioEnvironment::GetDirectionalMikeAttenuation(CVector const&)
3A851A:  VMOV            S0, R0
3A851E:  VADD.F32        S0, S16, S0
3A8522:  B               loc_3A8534
3A8524:  DCFS 100.0
3A8528:  DCFS 0.0
3A852C:  SUB.W           R0, R5, #0x42 ; 'B'
3A8530:  VLDR            S0, [R0]
3A8534:  ADD.W           R0, R5, #0x16
3A8538:  VLDR            S2, [R0]
3A853C:  ADD.W           R0, R5, #0xA
3A8540:  VSUB.F32        S0, S0, S2
3A8544:  VSTR            S0, [R0]
3A8548:  SUBS            R6, #1
3A854A:  ADD.W           R5, R5, #0x74 ; 't'
3A854E:  BNE             loc_3A84B6
3A8550:  LDRH.W          R1, [R10]
3A8554:  MOVW            R0, #0x87FC
3A8558:  ADD.W           R11, R10, R0
3A855C:  CBZ             R1, loc_3A85AA
3A855E:  MOVW            R0, #0x87F4
3A8562:  MOVS            R6, #0
3A8564:  ADD             R0, R10
3A8566:  MOVS            R2, #0x74 ; 't'
3A8568:  MOVS            R3, #0
3A856A:  MOV.W           R12, #0
3A856E:  MOVW            R4, #0xFFFF
3A8572:  LDR             R5, [R0]
3A8574:  LDRSH.W         R5, [R5,R6,LSL#1]
3A8578:  UXTH            R6, R5
3A857A:  CMP             R6, R4
3A857C:  BEQ             loc_3A859E
3A857E:  SMLABB.W        R5, R5, R2, R10
3A8582:  LDRB.W          R5, [R5,#0x5A]
3A8586:  LSLS            R5, R5, #0x1E
3A8588:  BPL             loc_3A859E
3A858A:  LDR.W           R1, [R11]
3A858E:  SXTH.W          R5, R12
3A8592:  ADD.W           R12, R12, #1
3A8596:  STRH.W          R6, [R1,R5,LSL#1]
3A859A:  LDRH.W          R1, [R10]
3A859E:  ADDS            R3, #1
3A85A0:  UXTH            R5, R1
3A85A2:  SXTH            R6, R3
3A85A4:  CMP             R6, R5
3A85A6:  BLT             loc_3A8572
3A85A8:  B               loc_3A85AE
3A85AA:  MOV.W           R12, #0
3A85AE:  MOVS            R1, #0
3A85B0:  MOV.W           R9, #0x74 ; 't'
3A85B4:  MLA.W           R3, R1, R9, R10
3A85B8:  LDRH.W          R0, [R3,#0x5C]
3A85BC:  CMP             R0, #0
3A85BE:  BEQ             loc_3A867A
3A85C0:  LDRH.W          R0, [R3,#0x62]
3A85C4:  CBZ             R0, loc_3A85CE
3A85C6:  LDRB.W          R0, [R3,#0x5A]
3A85CA:  LSLS            R0, R0, #0x1E
3A85CC:  BMI             loc_3A867A
3A85CE:  LDRB.W          R0, [R3,#0x58]
3A85D2:  CMP             R0, #0
3A85D4:  BNE             loc_3A867A
3A85D6:  LDRH.W          R0, [R3,#0x5A]
3A85DA:  MOVW            R4, #0xFFFF
3A85DE:  LDRH.W          R8, [R10]
3A85E2:  UBFX.W          LR, R0, #3, #1
3A85E6:  MOVW            R0, #0xFFFF
3A85EA:  ADD.W           R6, R8, R0
3A85EE:  VLDR            S0, [R3,#0x64]
3A85F2:  SXTH.W          R3, R12
3A85F6:  SXTH            R0, R6
3A85F8:  CMP             R3, R0
3A85FA:  BGT             loc_3A8614
3A85FC:  LDR.W           R5, [R11]
3A8600:  MOV             R0, R6
3A8602:  SXTH            R2, R0
3A8604:  LDRH.W          R2, [R5,R2,LSL#1]
3A8608:  CMP             R2, R4
3A860A:  BNE             loc_3A8614
3A860C:  SUBS            R0, #1
3A860E:  SXTH            R0, R0
3A8610:  CMP             R0, R3
3A8612:  BGE             loc_3A8602
3A8614:  SXTH            R6, R0
3A8616:  MOV             R4, R12
3A8618:  CMP             R6, R3
3A861A:  BLT             loc_3A864C
3A861C:  LDR.W           R5, [R11]
3A8620:  LDRSH.W         R2, [R5,R6,LSL#1]
3A8624:  SMLABB.W        R2, R2, R9, R10
3A8628:  LDRH.W          R12, [R2,#0x5A]
3A862C:  VLDR            S2, [R2,#0x64]
3A8630:  VCMPE.F32       S0, S2
3A8634:  UBFX.W          R2, R12, #3, #1
3A8638:  VMRS            APSR_nzcv, FPSCR
3A863C:  BGE             loc_3A8642
3A863E:  CMP             LR, R2
3A8640:  BLS             loc_3A864C
3A8642:  SUBS            R0, #1
3A8644:  SXTH            R6, R0
3A8646:  CMP             R6, R3
3A8648:  MOV             R0, R6
3A864A:  BGE             loc_3A8620
3A864C:  SUB.W           R0, R8, #1
3A8650:  MOV             R12, R4
3A8652:  CMP             R0, R6
3A8654:  BEQ             loc_3A867A
3A8656:  LDR.W           R4, [R11]
3A865A:  ADDS            R3, R6, #1
3A865C:  B               loc_3A8670
3A865E:  ADD.W           R2, R4, R5,LSL#1
3A8662:  SUBS            R0, #1
3A8664:  LDRH.W          R2, [R2,#-2]
3A8668:  STRH.W          R2, [R4,R5,LSL#1]
3A866C:  LDR.W           R4, [R11]
3A8670:  SXTH            R5, R0
3A8672:  CMP             R3, R5
3A8674:  BLT             loc_3A865E
3A8676:  STRH.W          R1, [R4,R3,LSL#1]
3A867A:  ADDS            R1, #1
3A867C:  CMP.W           R1, #0x12C
3A8680:  BNE             loc_3A85B4
3A8682:  LDRH.W          R12, [R10]
3A8686:  CMP.W           R12, #0
3A868A:  BEQ.W           loc_3A8B8A
3A868E:  MOVW            R0, #0x87F4
3A8692:  ADD.W           R9, R10, R0
3A8696:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3A86A2)
3A869A:  MOVS            R1, #0
3A869C:  MOVS            R4, #0
3A869E:  ADD             R0, PC; AEAudioHardware_ptr
3A86A0:  LDR             R0, [R0]; AEAudioHardware
3A86A2:  STR             R0, [SP,#0x98+var_5C]
3A86A4:  LDR.W           R0, [R9]
3A86A8:  LDRSH.W         LR, [R0,R1,LSL#1]
3A86AC:  MOVW            R0, #0xFFFF
3A86B0:  UXTH.W          R3, LR
3A86B4:  CMP             R3, R0
3A86B6:  BEQ             loc_3A8718
3A86B8:  MOVS.W          R0, R12,LSL#16
3A86BC:  BEQ             loc_3A86DC
3A86BE:  UXTH.W          R5, R12
3A86C2:  LDR.W           R0, [R11]
3A86C6:  MOVS            R6, #0
3A86C8:  MOVS            R2, #0
3A86CA:  LDRH.W          R8, [R0,R6,LSL#1]
3A86CE:  CMP             R3, R8
3A86D0:  BEQ             loc_3A86DE
3A86D2:  ADDS            R2, #1
3A86D4:  SXTH            R6, R2
3A86D6:  CMP             R6, R5
3A86D8:  BLT             loc_3A86CA
3A86DA:  B               loc_3A86DE
3A86DC:  MOVS            R6, #0
3A86DE:  UXTH.W          R0, R12
3A86E2:  CMP             R6, R0
3A86E4:  BNE             loc_3A870C
3A86E6:  MOVS            R0, #0x74 ; 't'
3A86E8:  MOVS            R2, #0
3A86EA:  SMLABB.W        R0, LR, R0, R10
3A86EE:  STRH.W          R2, [R0,#0x62]
3A86F2:  MOVW            R2, #0xFFFF
3A86F6:  LDR.W           R0, [R9]
3A86FA:  STRH.W          R2, [R0,R1,LSL#1]
3A86FE:  UXTH            R2, R4; unsigned __int16
3A8700:  LDRSH.W         R1, [R10,#2]; __int16
3A8704:  LDR             R0, [SP,#0x98+var_5C]; this
3A8706:  BLX             j__ZN16CAEAudioHardware9StopSoundEst; CAEAudioHardware::StopSound(short,ushort)
3A870A:  B               loc_3A8718
3A870C:  LDR.W           R0, [R11]
3A8710:  MOVW            R1, #0xFFFF
3A8714:  STRH.W          R1, [R0,R6,LSL#1]
3A8718:  ADDS            R4, #1
3A871A:  LDRH.W          R12, [R10]
3A871E:  SXTH            R1, R4
3A8720:  CMP             R1, R12
3A8722:  BLT             loc_3A86A4
3A8724:  CMP.W           R12, #0
3A8728:  MOVW            R4, #0xFFFF
3A872C:  BEQ.W           loc_3A8B8A
3A8730:  MOVW            R0, #0x87F4
3A8734:  ADD.W           LR, R10, R0
3A8738:  LDR.W           R0, =(TheCamera_ptr - 0x3A874A)
3A873C:  VMOV.F32        S16, #1.0
3A8740:  VMOV.F32        S18, #0.5
3A8744:  MOVS            R1, #0
3A8746:  ADD             R0, PC; TheCamera_ptr
3A8748:  MOV.W           R8, #0
3A874C:  MOV.W           R9, #0
3A8750:  STR.W           LR, [SP,#0x98+var_64]
3A8754:  LDR             R0, [R0]; TheCamera
3A8756:  STR             R0, [SP,#0x98+var_70]
3A8758:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3A8760)
3A875C:  ADD             R0, PC; AEAudioHardware_ptr
3A875E:  LDR             R0, [R0]; AEAudioHardware
3A8760:  STR             R0, [SP,#0x98+var_68]
3A8762:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3A876A)
3A8766:  ADD             R0, PC; AEAudioHardware_ptr
3A8768:  LDR             R0, [R0]; AEAudioHardware
3A876A:  STR             R0, [SP,#0x98+var_6C]
3A876C:  LDR.W           R0, [R11]
3A8770:  LDRH.W          R2, [R0,R1,LSL#1]
3A8774:  CMP             R2, R4
3A8776:  BEQ.W           loc_3A892C
3A877A:  UXTH.W          R3, R12
3A877E:  SXTH.W          R0, R9
3A8782:  CMP             R0, R3
3A8784:  BGE.W           loc_3A892C
3A8788:  LDR.W           R6, [LR]
3A878C:  LDRH.W          R5, [R6,R0,LSL#1]
3A8790:  CMP             R5, R4
3A8792:  BEQ             loc_3A87A2
3A8794:  ADD.W           R9, R9, #1
3A8798:  SXTH.W          R0, R9
3A879C:  CMP             R0, R3
3A879E:  BLT             loc_3A878C
3A87A0:  B               loc_3A892C
3A87A2:  STRH.W          R2, [R6,R0,LSL#1]
3A87A6:  ADD.W           R2, R10, #4
3A87AA:  MOVS            R3, #0x74 ; 't'
3A87AC:  LDR.W           R0, [R11]
3A87B0:  MOVS            R6, #1
3A87B2:  LDRSH.W         R0, [R0,R1,LSL#1]
3A87B6:  SMLABB.W        R0, R0, R3, R2
3A87BA:  STRH.W          R6, [R0,#0x5E]
3A87BE:  LDR.W           R0, [R11]
3A87C2:  LDRSH.W         R4, [R0,R1,LSL#1]
3A87C6:  SMLABB.W        R5, R4, R3, R2
3A87CA:  LDRH.W          R0, [R5,#0x56]!
3A87CE:  ADD.W           R1, R5, #0xE
3A87D2:  TST.W           R0, #1
3A87D6:  VLDR            S20, [R1]
3A87DA:  BNE             loc_3A8802
3A87DC:  MOV             R6, R5
3A87DE:  SMLABB.W        R5, R4, R3, R10
3A87E2:  LDRD.W          R3, R2, [R5,#0x44]; unsigned int
3A87E6:  LDRD.W          R1, R0, [R5,#0x4C]; float
3A87EA:  VLDR            S0, [R5,#0x54]
3A87EE:  MOV             R5, R6
3A87F0:  VSTR            S0, [SP,#0x98+var_98]
3A87F4:  BLX             j__ZN19CAEAudioEnvironment27GetDopplerRelativeFrequencyEffjjf; CAEAudioEnvironment::GetDopplerRelativeFrequency(float,float,uint,uint,float)
3A87F8:  VMOV            S0, R0
3A87FC:  LDRH            R0, [R5]
3A87FE:  VMUL.F32        S20, S20, S0
3A8802:  VMOV.F32        S22, S16
3A8806:  LSLS            R0, R0, #0x1B; this
3A8808:  BMI             loc_3A8836
3A880A:  BLX             j__ZN6CTimer21GetIsSlowMotionActiveEv; CTimer::GetIsSlowMotionActive(void)
3A880E:  CMP             R0, #1
3A8810:  BNE             loc_3A8832
3A8812:  LDR             R1, [SP,#0x98+var_70]
3A8814:  VMOV.F32        S22, S18
3A8818:  LDRB.W          R0, [R1,#0x57]
3A881C:  ADD.W           R0, R0, R0,LSL#5
3A8820:  ADD.W           R0, R1, R0,LSL#4
3A8824:  LDRH.W          R0, [R0,#0x17E]
3A8828:  CMP             R0, #0x2E ; '.'
3A882A:  IT EQ
3A882C:  VMOVEQ.F32      S22, S16
3A8830:  B               loc_3A8836
3A8832:  VMOV.F32        S22, S16
3A8836:  MOVS            R0, #0x74 ; 't'
3A8838:  LDRSH.W         R1, [R10,#2]; __int16
3A883C:  SMLABB.W        R4, R4, R0, R10
3A8840:  LDRH            R0, [R5]
3A8842:  MOVS            R6, #8
3A8844:  LDRH            R3, [R4,#6]; unsigned __int16
3A8846:  VLDR            S0, [R4,#0x20]
3A884A:  LDRH            R2, [R4,#4]
3A884C:  STR             R5, [SP,#0x98+var_5C]
3A884E:  LDRSH.W         R5, [R4,#0x60]
3A8852:  STRD.W          R2, R5, [SP,#0x98+var_98]; unsigned __int16
3A8856:  MOVS            R2, #0x10
3A8858:  AND.W           R5, R6, R0,LSR#2
3A885C:  AND.W           R6, R0, #1
3A8860:  ORRS            R6, R5
3A8862:  AND.W           R2, R2, R0,LSR#2
3A8866:  ORRS            R2, R6
3A8868:  MOVS            R6, #4
3A886A:  AND.W           R6, R6, R0,LSR#6
3A886E:  UXTH.W          R5, R9
3A8872:  ORRS            R2, R6
3A8874:  MOVS            R6, #2
3A8876:  AND.W           R6, R6, R0,LSR#8
3A887A:  ORRS            R2, R6
3A887C:  MOVS            R6, #0x40 ; '@'
3A887E:  AND.W           R6, R6, R0,LSR#4
3A8882:  ORRS            R2, R6
3A8884:  MOVS            R6, #0x80
3A8886:  AND.W           R6, R6, R0,LSR#4
3A888A:  ORRS            R2, R6
3A888C:  MOV.W           R6, #0x100
3A8890:  AND.W           R6, R6, R0,LSR#4
3A8894:  AND.W           R0, R0, #0x11
3A8898:  CMP             R0, #0x11
3A889A:  MOV.W           R0, #0
3A889E:  IT EQ
3A88A0:  MOVEQ           R0, #1
3A88A2:  ORRS            R2, R6
3A88A4:  ORR.W           R0, R2, R0,LSL#9
3A88A8:  LDR             R6, [SP,#0x98+var_68]
3A88AA:  VSTR            S0, [SP,#0x98+var_8C]
3A88AE:  MOV             R2, R5; unsigned __int16
3A88B0:  SXTH            R0, R0
3A88B2:  STR             R0, [SP,#0x98+var_90]; __int16
3A88B4:  MOV             R0, R6; this
3A88B6:  BLX             j__ZN16CAEAudioHardware9PlaySoundEstttssf; CAEAudioHardware::PlaySound(short,ushort,ushort,ushort,short,short,float)
3A88BA:  LDR             R3, [R4,#0x64]; float
3A88BC:  MOVS            R0, #0
3A88BE:  LDRSH.W         R1, [R10,#2]; __int16
3A88C2:  MOV             R2, R5; unsigned __int16
3A88C4:  STR             R0, [SP,#0x98+var_98]; unsigned __int8
3A88C6:  MOV             R0, R6; this
3A88C8:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
3A88CC:  LDR             R0, [SP,#0x98+var_5C]
3A88CE:  VMUL.F32        S20, S20, S22
3A88D2:  ADD.W           R1, R4, #0x28 ; '('; CVector *
3A88D6:  LDRB            R0, [R0]
3A88D8:  LSLS            R0, R0, #0x1F
3A88DA:  BNE             loc_3A88EC
3A88DC:  ADD             R4, SP, #0x98+var_58
3A88DE:  MOV             R0, R4; this
3A88E0:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CVector *)
3A88E4:  MOV             R3, R4
3A88E6:  MOVW            R4, #0xFFFF
3A88EA:  B               loc_3A88FE
3A88EC:  VLDR            D16, [R1]
3A88F0:  ADD             R3, SP, #0x98+var_58; CVector *
3A88F2:  LDR             R0, [R1,#8]
3A88F4:  MOVW            R4, #0xFFFF
3A88F8:  STR             R0, [SP,#0x98+var_50]
3A88FA:  VSTR            D16, [SP,#0x98+var_58]
3A88FE:  LDR             R6, [SP,#0x98+var_6C]
3A8900:  MOVS            R0, #0
3A8902:  LDRSH.W         R1, [R10,#2]; __int16
3A8906:  MOV             R2, R5; unsigned __int16
3A8908:  STR             R0, [SP,#0x98+var_98]; unsigned __int8
3A890A:  MOV             R0, R6; this
3A890C:  BLX             j__ZN16CAEAudioHardware18SetChannelPositionEstP7CVectorh; CAEAudioHardware::SetChannelPosition(short,ushort,CVector *,uchar)
3A8910:  VMOV            R3, S20; float
3A8914:  LDRSH.W         R1, [R10,#2]; __int16
3A8918:  MOV             R0, R6; this
3A891A:  MOV             R2, R5; unsigned __int16
3A891C:  BLX             j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
3A8920:  LDRH.W          R12, [R10]
3A8924:  ADD.W           R9, R9, #1
3A8928:  LDR.W           LR, [SP,#0x98+var_64]
3A892C:  ADD.W           R8, R8, #1
3A8930:  UXTH.W          R0, R12
3A8934:  SXTH.W          R1, R8
3A8938:  CMP             R1, R0
3A893A:  BLT.W           loc_3A876C
3A893E:  MOVS.W          R0, R12,LSL#16
3A8942:  BEQ.W           loc_3A8B8A
3A8946:  MOVW            R0, #0x87F4
3A894A:  ADD.W           R2, R10, R0
3A894E:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3A895E)
3A8950:  VMOV.F32        S16, #1.0
3A8954:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3A8962)
3A8956:  VMOV.F32        S18, #0.5
3A895A:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3A895C:  MOVS            R6, #0
3A895E:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3A8960:  MOV.W           R8, #0
3A8964:  LDR             R0, [R0]; CTimer::m_UserPause ...
3A8966:  STR             R0, [SP,#0x98+var_5C]
3A8968:  LDR             R0, [R1]; CTimer::m_CodePause ...
3A896A:  STR             R0, [SP,#0x98+var_64]
3A896C:  LDR             R0, =(AEAudioHardware_ptr - 0x3A8974)
3A896E:  STR             R2, [SP,#0x98+var_68]
3A8970:  ADD             R0, PC; AEAudioHardware_ptr
3A8972:  LDR             R0, [R0]; AEAudioHardware
3A8974:  STR             R0, [SP,#0x98+var_7C]
3A8976:  LDR             R0, =(TheCamera_ptr - 0x3A897C)
3A8978:  ADD             R0, PC; TheCamera_ptr
3A897A:  LDR             R0, [R0]; TheCamera
3A897C:  STR             R0, [SP,#0x98+var_88]
3A897E:  LDR             R0, =(AEAudioHardware_ptr - 0x3A8984)
3A8980:  ADD             R0, PC; AEAudioHardware_ptr
3A8982:  LDR             R0, [R0]; AEAudioHardware
3A8984:  STR             R0, [SP,#0x98+var_80]
3A8986:  LDR             R0, =(AEAudioHardware_ptr - 0x3A898C)
3A8988:  ADD             R0, PC; AEAudioHardware_ptr
3A898A:  LDR             R0, [R0]; AEAudioHardware
3A898C:  STR             R0, [SP,#0x98+var_6C]
3A898E:  LDR             R0, =(AEAudioHardware_ptr - 0x3A8994)
3A8990:  ADD             R0, PC; AEAudioHardware_ptr
3A8992:  LDR             R0, [R0]; AEAudioHardware
3A8994:  STR             R0, [SP,#0x98+var_70]
3A8996:  LDR             R0, =(AEAudioHardware_ptr - 0x3A899C)
3A8998:  ADD             R0, PC; AEAudioHardware_ptr
3A899A:  LDR             R0, [R0]; AEAudioHardware
3A899C:  STR             R0, [SP,#0x98+var_74]
3A899E:  LDR             R0, =(TheCamera_ptr - 0x3A89A4)
3A89A0:  ADD             R0, PC; TheCamera_ptr
3A89A2:  LDR             R0, [R0]; TheCamera
3A89A4:  STR             R0, [SP,#0x98+var_84]
3A89A6:  LDR             R0, =(AEAudioHardware_ptr - 0x3A89AC)
3A89A8:  ADD             R0, PC; AEAudioHardware_ptr
3A89AA:  LDR             R0, [R0]; AEAudioHardware
3A89AC:  STR             R0, [SP,#0x98+var_78]
3A89AE:  MOVS            R0, #0
3A89B0:  LDR             R1, [R2]
3A89B2:  LDRH.W          R0, [R1,R0,LSL#1]
3A89B6:  CMP             R0, R4
3A89B8:  BEQ.W           loc_3A8B78
3A89BC:  SXTH            R0, R0
3A89BE:  MOVS            R1, #0x74 ; 't'
3A89C0:  SMLABB.W        R11, R0, R1, R10
3A89C4:  LDRH.W          R0, [R11,#0x5C]
3A89C8:  CMP             R0, #0
3A89CA:  BEQ.W           loc_3A8B78
3A89CE:  LDR             R0, [SP,#0x98+var_5C]
3A89D0:  LDR             R1, [SP,#0x98+var_64]
3A89D2:  LDRB            R0, [R0]
3A89D4:  LDRB            R1, [R1]
3A89D6:  ORRS            R0, R1
3A89D8:  LSLS            R0, R0, #0x18
3A89DA:  BNE             loc_3A89E4
3A89DC:  LDR             R0, [SP,#0x98+var_60]
3A89DE:  LDRB            R0, [R0]
3A89E0:  CMP             R0, #0
3A89E2:  BEQ             loc_3A8A92
3A89E4:  MOV             R9, R11
3A89E6:  LDRH.W          R0, [R10,#2]
3A89EA:  LDRB.W          R1, [R9,#0x5A]!
3A89EE:  TST.W           R1, #0x10
3A89F2:  BNE             loc_3A8A1C
3A89F4:  STR             R6, [SP,#0x98+var_98]; unsigned __int8
3A89F6:  MOVS            R3, #0
3A89F8:  LDR             R6, [SP,#0x98+var_70]
3A89FA:  UXTH.W          R5, R8
3A89FE:  SXTH            R1, R0; __int16
3A8A00:  MOV             R2, R5; unsigned __int16
3A8A02:  MOVT            R3, #0xC2C8; float
3A8A06:  MOV             R0, R6; this
3A8A08:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
3A8A0C:  LDRSH.W         R1, [R10,#2]; __int16
3A8A10:  MOV             R0, R6; this
3A8A12:  MOV             R2, R5; unsigned __int16
3A8A14:  MOVS            R3, #0; float
3A8A16:  BLX             j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
3A8A1A:  B               loc_3A8B38
3A8A1C:  SXTH            R1, R0; __int16
3A8A1E:  LDR.W           R3, [R11,#0x64]; float
3A8A22:  LDR             R0, [SP,#0x98+var_74]; this
3A8A24:  UXTH.W          R5, R8
3A8A28:  MOV             R2, R5; unsigned __int16
3A8A2A:  STR             R6, [SP,#0x98+var_98]; float
3A8A2C:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
3A8A30:  LDRH.W          R0, [R9]
3A8A34:  LDRH.W          R4, [R10,#2]
3A8A38:  VLDR            S20, [R11,#0x68]
3A8A3C:  TST.W           R0, #1
3A8A40:  BNE             loc_3A8A62
3A8A42:  LDRD.W          R3, R2, [R11,#0x44]; unsigned int
3A8A46:  LDRD.W          R1, R0, [R11,#0x4C]; float
3A8A4A:  VLDR            S0, [R11,#0x54]
3A8A4E:  VSTR            S0, [SP,#0x98+var_98]
3A8A52:  BLX             j__ZN19CAEAudioEnvironment27GetDopplerRelativeFrequencyEffjjf; CAEAudioEnvironment::GetDopplerRelativeFrequency(float,float,uint,uint,float)
3A8A56:  VMOV            S0, R0
3A8A5A:  LDRH.W          R0, [R9]
3A8A5E:  VMUL.F32        S20, S20, S0
3A8A62:  VMOV.F32        S0, S16
3A8A66:  LSLS            R0, R0, #0x1B; this
3A8A68:  BMI             loc_3A8B14
3A8A6A:  BLX             j__ZN6CTimer21GetIsSlowMotionActiveEv; CTimer::GetIsSlowMotionActive(void)
3A8A6E:  CMP             R0, #1
3A8A70:  BNE             loc_3A8B10
3A8A72:  LDR             R1, [SP,#0x98+var_84]
3A8A74:  VMOV.F32        S0, S18
3A8A78:  LDRB.W          R0, [R1,#0x57]
3A8A7C:  ADD.W           R0, R0, R0,LSL#5
3A8A80:  ADD.W           R0, R1, R0,LSL#4
3A8A84:  LDRH.W          R0, [R0,#0x17E]
3A8A88:  CMP             R0, #0x2E ; '.'
3A8A8A:  IT EQ
3A8A8C:  VMOVEQ.F32      S0, S16
3A8A90:  B               loc_3A8B14
3A8A92:  LDRSH.W         R1, [R10,#2]; __int16
3A8A96:  UXTH.W          R5, R8
3A8A9A:  LDR.W           R3, [R11,#0x64]; float
3A8A9E:  MOV             R2, R5; unsigned __int16
3A8AA0:  LDR             R0, [SP,#0x98+var_7C]; this
3A8AA2:  STR             R6, [SP,#0x98+var_98]; float
3A8AA4:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
3A8AA8:  MOV             R9, R11
3A8AAA:  LDRH.W          R4, [R10,#2]
3A8AAE:  LDRH.W          R0, [R9,#0x5A]!
3A8AB2:  ADD.W           R1, R9, #0xE
3A8AB6:  TST.W           R0, #1
3A8ABA:  VLDR            S20, [R1]
3A8ABE:  BNE             loc_3A8AE0
3A8AC0:  LDRD.W          R3, R2, [R11,#0x44]; unsigned int
3A8AC4:  LDRD.W          R1, R0, [R11,#0x4C]; float
3A8AC8:  VLDR            S0, [R11,#0x54]
3A8ACC:  VSTR            S0, [SP,#0x98+var_98]
3A8AD0:  BLX             j__ZN19CAEAudioEnvironment27GetDopplerRelativeFrequencyEffjjf; CAEAudioEnvironment::GetDopplerRelativeFrequency(float,float,uint,uint,float)
3A8AD4:  VMOV            S0, R0
3A8AD8:  LDRH.W          R0, [R9]
3A8ADC:  VMUL.F32        S20, S20, S0
3A8AE0:  VMOV.F32        S0, S16
3A8AE4:  LSLS            R0, R0, #0x1B; this
3A8AE6:  BMI             loc_3A8B22
3A8AE8:  BLX             j__ZN6CTimer21GetIsSlowMotionActiveEv; CTimer::GetIsSlowMotionActive(void)
3A8AEC:  CMP             R0, #1
3A8AEE:  BNE             loc_3A8B1E
3A8AF0:  LDR             R1, [SP,#0x98+var_88]
3A8AF2:  VMOV.F32        S0, S18
3A8AF6:  LDRB.W          R0, [R1,#0x57]
3A8AFA:  ADD.W           R0, R0, R0,LSL#5
3A8AFE:  ADD.W           R0, R1, R0,LSL#4
3A8B02:  LDRH.W          R0, [R0,#0x17E]
3A8B06:  CMP             R0, #0x2E ; '.'
3A8B08:  IT EQ
3A8B0A:  VMOVEQ.F32      S0, S16
3A8B0E:  B               loc_3A8B22
3A8B10:  VMOV.F32        S0, S16
3A8B14:  VMUL.F32        S0, S20, S0
3A8B18:  SXTH            R1, R4
3A8B1A:  LDR             R0, [SP,#0x98+var_78]
3A8B1C:  B               loc_3A8B2A
3A8B1E:  VMOV.F32        S0, S16
3A8B22:  VMUL.F32        S0, S20, S0
3A8B26:  LDR             R0, [SP,#0x98+var_80]; this
3A8B28:  SXTH            R1, R4; __int16
3A8B2A:  VMOV            R3, S0; float
3A8B2E:  MOV             R2, R5; unsigned __int16
3A8B30:  BLX             j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
3A8B34:  MOVW            R4, #0xFFFF
3A8B38:  LDRB.W          R0, [R9]
3A8B3C:  ADD.W           R1, R11, #0x28 ; '('; CVector *
3A8B40:  LSLS            R0, R0, #0x1F
3A8B42:  BNE             loc_3A8B50
3A8B44:  ADD             R5, SP, #0x98+var_58
3A8B46:  MOV             R0, R5; this
3A8B48:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CVector *)
3A8B4C:  MOVS            R6, #0
3A8B4E:  B               loc_3A8B60
3A8B50:  VLDR            D16, [R1]
3A8B54:  ADD             R5, SP, #0x98+var_58
3A8B56:  LDR             R0, [R1,#8]
3A8B58:  MOVS            R6, #0
3A8B5A:  STR             R0, [SP,#0x98+var_50]
3A8B5C:  VSTR            D16, [SP,#0x98+var_58]
3A8B60:  LDRSH.W         R1, [R10,#2]; __int16
3A8B64:  UXTH.W          R2, R8; unsigned __int16
3A8B68:  LDR             R0, [SP,#0x98+var_6C]; this
3A8B6A:  MOV             R3, R5; CVector *
3A8B6C:  STR             R6, [SP,#0x98+var_98]; unsigned __int8
3A8B6E:  BLX             j__ZN16CAEAudioHardware18SetChannelPositionEstP7CVectorh; CAEAudioHardware::SetChannelPosition(short,ushort,CVector *,uchar)
3A8B72:  LDRH.W          R12, [R10]
3A8B76:  LDR             R2, [SP,#0x98+var_68]
3A8B78:  ADD.W           R8, R8, #1
3A8B7C:  UXTH.W          R1, R12
3A8B80:  SXTH.W          R0, R8
3A8B84:  CMP             R0, R1
3A8B86:  BLT.W           loc_3A89B0
3A8B8A:  LDR             R0, =(AEAudioHardware_ptr - 0x3A8B90)
3A8B8C:  ADD             R0, PC; AEAudioHardware_ptr
3A8B8E:  LDR             R0, [R0]; AEAudioHardware ; this
3A8B90:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
3A8B94:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3A8B9E)
3A8B96:  MOVS            R2, #1
3A8B98:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3A8BA2)
3A8B9A:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3A8B9C:  LDR             R4, [SP,#0x98+var_60]
3A8B9E:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3A8BA0:  LDR             R0, [R0]; CTimer::m_UserPause ...
3A8BA2:  LDR             R1, [R1]; CTimer::m_CodePause ...
3A8BA4:  LDRB            R0, [R0]; CTimer::m_UserPause
3A8BA6:  LDRB            R1, [R1]; CTimer::m_CodePause
3A8BA8:  ORR.W           R3, R1, R0
3A8BAC:  ADD.W           R0, R10, #0x58 ; 'X'
3A8BB0:  MOV.W           R1, #0x12C
3A8BB4:  LSLS            R3, R3, #0x18
3A8BB6:  LDRH            R6, [R0,#4]
3A8BB8:  CBZ             R6, loc_3A8BD8
3A8BBA:  LDRB            R6, [R0]
3A8BBC:  STRH            R2, [R0,#6]
3A8BBE:  SXTB            R5, R6
3A8BC0:  CMP             R5, #1
3A8BC2:  BLT             loc_3A8BD8
3A8BC4:  CMP             R3, #0
3A8BC6:  ITT EQ
3A8BC8:  LDRBEQ          R5, [R4]
3A8BCA:  CMPEQ           R5, #0
3A8BCC:  BEQ             loc_3A8BD4
3A8BCE:  LDRB            R5, [R0,#2]
3A8BD0:  LSLS            R5, R5, #0x1B
3A8BD2:  BPL             loc_3A8BD8
3A8BD4:  ADDS            R6, #0xFF
3A8BD6:  STRB            R6, [R0]
3A8BD8:  SUBS            R1, #1
3A8BDA:  ADD.W           R0, R0, #0x74 ; 't'
3A8BDE:  BNE             loc_3A8BB6
3A8BE0:  ADD             SP, SP, #0x58 ; 'X'
3A8BE2:  VPOP            {D8-D11}
3A8BE6:  ADD             SP, SP, #4
3A8BE8:  POP.W           {R8-R11}
3A8BEC:  POP             {R4-R7,PC}
