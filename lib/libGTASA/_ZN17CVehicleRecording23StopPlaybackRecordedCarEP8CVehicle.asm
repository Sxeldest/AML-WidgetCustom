; =========================================================
; Game Engine Function: _ZN17CVehicleRecording23StopPlaybackRecordedCarEP8CVehicle
; Address            : 0x322100 - 0x322422
; =========================================================

322100:  PUSH            {R4-R7,LR}
322102:  ADD             R7, SP, #0xC
322104:  PUSH.W          {R11}
322108:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32210E)
32210A:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32210C:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32210E:  LDRB            R1, [R1]; CVehicleRecording::bPlaybackGoingOn
322110:  CBZ             R1, loc_322120
322112:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322118)
322114:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322116:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322118:  LDR             R2, [R1]; CVehicleRecording::pVehicleForPlayback
32211A:  CMP             R2, R0
32211C:  BEQ.W           loc_3222BA
322120:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322126)
322122:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322124:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322126:  LDRB            R1, [R1,#(byte_7B4F25 - 0x7B4F24)]
322128:  CBZ             R1, loc_32213A
32212A:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322130)
32212C:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32212E:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322130:  LDR.W           R2, [R1,#(dword_7B4DA8 - 0x7B4DA4)]!
322134:  CMP             R2, R0
322136:  BEQ.W           loc_3222C8
32213A:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322140)
32213C:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32213E:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322140:  LDRB            R1, [R1,#(byte_7B4F26 - 0x7B4F24)]
322142:  CBZ             R1, loc_322154
322144:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32214A)
322146:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322148:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
32214A:  LDR.W           R2, [R1,#(dword_7B4DAC - 0x7B4DA4)]!
32214E:  CMP             R2, R0
322150:  BEQ.W           loc_3222D8
322154:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32215A)
322156:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322158:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32215A:  LDRB            R1, [R1,#(byte_7B4F27 - 0x7B4F24)]
32215C:  CBZ             R1, loc_32216E
32215E:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322164)
322160:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322162:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322164:  LDR.W           R2, [R1,#(dword_7B4DB0 - 0x7B4DA4)]!
322168:  CMP             R2, R0
32216A:  BEQ.W           loc_3222E8
32216E:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322174)
322170:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322172:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322174:  LDRB            R1, [R1,#(byte_7B4F28 - 0x7B4F24)]
322176:  CBZ             R1, loc_322188
322178:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32217E)
32217A:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32217C:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
32217E:  LDR.W           R2, [R1,#(dword_7B4DB4 - 0x7B4DA4)]!
322182:  CMP             R2, R0
322184:  BEQ.W           loc_3222F8
322188:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32218E)
32218A:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32218C:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32218E:  LDRB            R1, [R1,#(byte_7B4F29 - 0x7B4F24)]
322190:  CBZ             R1, loc_3221A2
322192:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322198)
322194:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322196:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322198:  LDR.W           R2, [R1,#(dword_7B4DB8 - 0x7B4DA4)]!
32219C:  CMP             R2, R0
32219E:  BEQ.W           loc_322308
3221A2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3221A8)
3221A4:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3221A6:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3221A8:  LDRB            R1, [R1,#(byte_7B4F2A - 0x7B4F24)]
3221AA:  CBZ             R1, loc_3221BC
3221AC:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3221B2)
3221AE:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3221B0:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3221B2:  LDR.W           R2, [R1,#(dword_7B4DBC - 0x7B4DA4)]!
3221B6:  CMP             R2, R0
3221B8:  BEQ.W           loc_322318
3221BC:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3221C2)
3221BE:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3221C0:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3221C2:  LDRB            R1, [R1,#(byte_7B4F2B - 0x7B4F24)]
3221C4:  CBZ             R1, loc_3221D6
3221C6:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3221CC)
3221C8:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3221CA:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3221CC:  LDR.W           R2, [R1,#(dword_7B4DC0 - 0x7B4DA4)]!
3221D0:  CMP             R2, R0
3221D2:  BEQ.W           loc_322328
3221D6:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3221DC)
3221D8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3221DA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3221DC:  LDRB            R1, [R1,#(byte_7B4F2C - 0x7B4F24)]
3221DE:  CBZ             R1, loc_3221F0
3221E0:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3221E6)
3221E2:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3221E4:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3221E6:  LDR.W           R2, [R1,#(dword_7B4DC4 - 0x7B4DA4)]!
3221EA:  CMP             R2, R0
3221EC:  BEQ.W           loc_322338
3221F0:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3221F6)
3221F2:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3221F4:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3221F6:  LDRB            R1, [R1,#(byte_7B4F2D - 0x7B4F24)]
3221F8:  CBZ             R1, loc_32220A
3221FA:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322200)
3221FC:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3221FE:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322200:  LDR.W           R2, [R1,#(dword_7B4DC8 - 0x7B4DA4)]!
322204:  CMP             R2, R0
322206:  BEQ.W           loc_322348
32220A:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322210)
32220C:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32220E:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322210:  LDRB            R1, [R1,#(byte_7B4F2E - 0x7B4F24)]
322212:  CBZ             R1, loc_322224
322214:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32221A)
322216:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322218:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
32221A:  LDR.W           R2, [R1,#(dword_7B4DCC - 0x7B4DA4)]!
32221E:  CMP             R2, R0
322220:  BEQ.W           loc_322358
322224:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32222A)
322226:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322228:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32222A:  LDRB            R1, [R1,#(byte_7B4F2F - 0x7B4F24)]
32222C:  CBZ             R1, loc_32223E
32222E:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322234)
322230:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322232:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322234:  LDR.W           R2, [R1,#(dword_7B4DD0 - 0x7B4DA4)]!
322238:  CMP             R2, R0
32223A:  BEQ.W           loc_322368
32223E:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322244)
322240:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322242:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322244:  LDRB            R1, [R1,#(byte_7B4F30 - 0x7B4F24)]
322246:  CBZ             R1, loc_322258
322248:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32224E)
32224A:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32224C:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
32224E:  LDR.W           R2, [R1,#(dword_7B4DD4 - 0x7B4DA4)]!
322252:  CMP             R2, R0
322254:  BEQ.W           loc_322378
322258:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32225E)
32225A:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32225C:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32225E:  LDRB            R1, [R1,#(byte_7B4F31 - 0x7B4F24)]
322260:  CBZ             R1, loc_322272
322262:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322268)
322264:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322266:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322268:  LDR.W           R2, [R1,#(dword_7B4DD8 - 0x7B4DA4)]!
32226C:  CMP             R2, R0
32226E:  BEQ.W           loc_322388
322272:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322278)
322274:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322276:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322278:  LDRB            R1, [R1,#(byte_7B4F32 - 0x7B4F24)]
32227A:  CBZ             R1, loc_32228C
32227C:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322282)
32227E:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322280:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322282:  LDR.W           R2, [R1,#(dword_7B4DDC - 0x7B4DA4)]!
322286:  CMP             R2, R0
322288:  BEQ.W           loc_322398
32228C:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322292)
32228E:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322290:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322292:  LDRB            R1, [R1,#(byte_7B4F33 - 0x7B4F24)]
322294:  CMP             R1, #0
322296:  BEQ.W           loc_3223F8
32229A:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3222A0)
32229C:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32229E:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3222A0:  LDR.W           R2, [R1,#(dword_7B4DE0 - 0x7B4DA4)]!
3222A4:  CMP             R2, R0
3222A6:  BNE.W           loc_3223F8
3222AA:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3222B4)
3222AC:  MOV.W           LR, #0xF
3222B0:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3222B2:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
3222B4:  ADD.W           R12, R3, #0xF
3222B8:  B               loc_3223A6
3222BA:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3222C4)
3222BC:  MOV.W           LR, #0
3222C0:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3222C2:  LDR.W           R12, [R3]; CVehicleRecording::bPlaybackGoingOn ...
3222C6:  B               loc_3223A6
3222C8:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3222D2)
3222CA:  MOV.W           LR, #1
3222CE:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3222D0:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
3222D2:  ADD.W           R12, R3, #1
3222D6:  B               loc_3223A6
3222D8:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3222E2)
3222DA:  MOV.W           LR, #2
3222DE:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3222E0:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
3222E2:  ADD.W           R12, R3, #2
3222E6:  B               loc_3223A6
3222E8:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3222F2)
3222EA:  MOV.W           LR, #3
3222EE:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3222F0:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
3222F2:  ADD.W           R12, R3, #3
3222F6:  B               loc_3223A6
3222F8:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322302)
3222FA:  MOV.W           LR, #4
3222FE:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322300:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322302:  ADD.W           R12, R3, #4
322306:  B               loc_3223A6
322308:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322312)
32230A:  MOV.W           LR, #5
32230E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322310:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322312:  ADD.W           R12, R3, #5
322316:  B               loc_3223A6
322318:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322322)
32231A:  MOV.W           LR, #6
32231E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322320:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322322:  ADD.W           R12, R3, #6
322326:  B               loc_3223A6
322328:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322332)
32232A:  MOV.W           LR, #7
32232E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322330:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322332:  ADD.W           R12, R3, #7
322336:  B               loc_3223A6
322338:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322342)
32233A:  MOV.W           LR, #8
32233E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322340:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322342:  ADD.W           R12, R3, #8
322346:  B               loc_3223A6
322348:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322352)
32234A:  MOV.W           LR, #9
32234E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322350:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322352:  ADD.W           R12, R3, #9
322356:  B               loc_3223A6
322358:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322362)
32235A:  MOV.W           LR, #0xA
32235E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322360:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322362:  ADD.W           R12, R3, #0xA
322366:  B               loc_3223A6
322368:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322372)
32236A:  MOV.W           LR, #0xB
32236E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322370:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322372:  ADD.W           R12, R3, #0xB
322376:  B               loc_3223A6
322378:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322382)
32237A:  MOV.W           LR, #0xC
32237E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322380:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322382:  ADD.W           R12, R3, #0xC
322386:  B               loc_3223A6
322388:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322392)
32238A:  MOV.W           LR, #0xD
32238E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322390:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
322392:  ADD.W           R12, R3, #0xD
322396:  B               loc_3223A6
322398:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3223A2)
32239A:  MOV.W           LR, #0xE
32239E:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3223A0:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
3223A2:  ADD.W           R12, R3, #0xE
3223A6:  CMP             R0, #0
3223A8:  LDR             R3, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x3223C2)
3223AA:  ITTTT NE
3223AC:  MOVNE           R5, #0xFF
3223AE:  STRBNE.W        R5, [R0,#0x428]
3223B2:  LDRNE           R0, [R2,#0x44]
3223B4:  BICNE.W         R0, R0, #4
3223B8:  MOV.W           R4, #0
3223BC:  LDR             R5, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x3223C4)
3223BE:  ADD             R3, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
3223C0:  ADD             R5, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
3223C2:  IT NE
3223C4:  STRNE           R0, [R2,#0x44]
3223C6:  LDR             R0, =(_ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr - 0x3223CE)
3223C8:  STR             R4, [R1]; CVehicleRecording::pVehicleForPlayback ...
3223CA:  ADD             R0, PC; _ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr
3223CC:  LDR             R1, [R5]; CVehicleRecording::PlaybackBufferSize ...
3223CE:  LDR             R2, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x3223D6)
3223D0:  LDR             R0, [R0]; CVehicleRecording::PlayBackStreamingIndex ...
3223D2:  ADD             R2, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
3223D4:  STR.W           R4, [R1,LR,LSL#2]
3223D8:  LDR.W           R5, [R0,LR,LSL#2]
3223DC:  LDR             R0, [R3]; CVehicleRecording::StreamingArray ...
3223DE:  LDR             R2, [R2]; CVehicleRecording::pPlaybackBuffer ...
3223E0:  ADD.W           R0, R0, R5,LSL#4
3223E4:  STRB.W          R4, [R12]; CVehicleRecording::bPlaybackGoingOn ...
3223E8:  LDRB            R1, [R0,#0xC]
3223EA:  STR.W           R4, [R2,LR,LSL#2]
3223EE:  SUBS            R1, #1; void *
3223F0:  TST.W           R1, #0xFF
3223F4:  STRB            R1, [R0,#0xC]
3223F6:  BEQ             loc_3223FE
3223F8:  POP.W           {R11}
3223FC:  POP             {R4-R7,PC}
3223FE:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x322404)
322400:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
322402:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
322404:  ADD.W           R6, R0, R5,LSL#4
322408:  LDR             R0, [R6,#4]; this
32240A:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
32240E:  MOVW            R0, #0x649B
322412:  STR             R4, [R6,#4]
322414:  ADD             R0, R5; this
322416:  POP.W           {R11}
32241A:  POP.W           {R4-R7,LR}
32241E:  B.W             sub_18CCA8
