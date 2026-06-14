; =========================================================
; Game Engine Function: _ZN17CVehicleRecording35SkipToEndAndStopPlaybackRecordedCarEP8CVehicle
; Address            : 0x32315C - 0x3234CC
; =========================================================

32315C:  PUSH            {R4-R7,LR}
32315E:  ADD             R7, SP, #0xC
323160:  PUSH.W          {R8-R11}
323164:  SUB             SP, SP, #4
323166:  MOV             R9, R0
323168:  LDR.W           R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323170)
32316C:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32316E:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
323170:  LDRB            R0, [R0]; CVehicleRecording::bPlaybackGoingOn
323172:  CBZ             R0, loc_323188
323174:  LDR.W           R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32317C)
323178:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32317A:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
32317E:  LDR.W           R0, [R10]; CVehicleRecording::pVehicleForPlayback
323182:  CMP             R0, R9
323184:  BEQ.W           loc_323344
323188:  LDR.W           R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323190)
32318C:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32318E:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
323190:  LDRB            R0, [R0,#(byte_7B4F25 - 0x7B4F24)]
323192:  CBZ             R0, loc_3231A8
323194:  LDR.W           R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32319C)
323198:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32319A:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
32319E:  LDR.W           R0, [R10,#(dword_7B4DA8 - 0x7B4DA4)]!
3231A2:  CMP             R0, R9
3231A4:  BEQ.W           loc_323352
3231A8:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3231AE)
3231AA:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3231AC:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
3231AE:  LDRB            R0, [R0,#(byte_7B4F26 - 0x7B4F24)]
3231B0:  CBZ             R0, loc_3231C4
3231B2:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3231B8)
3231B4:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3231B6:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
3231BA:  LDR.W           R0, [R10,#(dword_7B4DAC - 0x7B4DA4)]!
3231BE:  CMP             R0, R9
3231C0:  BEQ.W           loc_323362
3231C4:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3231CA)
3231C6:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3231C8:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
3231CA:  LDRB            R0, [R0,#(byte_7B4F27 - 0x7B4F24)]
3231CC:  CBZ             R0, loc_3231E0
3231CE:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3231D4)
3231D0:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3231D2:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
3231D6:  LDR.W           R0, [R10,#(dword_7B4DB0 - 0x7B4DA4)]!
3231DA:  CMP             R0, R9
3231DC:  BEQ.W           loc_323372
3231E0:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3231E6)
3231E2:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3231E4:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
3231E6:  LDRB            R0, [R0,#(byte_7B4F28 - 0x7B4F24)]
3231E8:  CBZ             R0, loc_3231FC
3231EA:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3231F0)
3231EC:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3231EE:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
3231F2:  LDR.W           R0, [R10,#(dword_7B4DB4 - 0x7B4DA4)]!
3231F6:  CMP             R0, R9
3231F8:  BEQ.W           loc_323382
3231FC:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323202)
3231FE:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323200:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
323202:  LDRB            R0, [R0,#(byte_7B4F29 - 0x7B4F24)]
323204:  CBZ             R0, loc_323218
323206:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32320C)
323208:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32320A:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
32320E:  LDR.W           R0, [R10,#(dword_7B4DB8 - 0x7B4DA4)]!
323212:  CMP             R0, R9
323214:  BEQ.W           loc_323392
323218:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32321E)
32321A:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32321C:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
32321E:  LDRB            R0, [R0,#(byte_7B4F2A - 0x7B4F24)]
323220:  CBZ             R0, loc_323234
323222:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323228)
323224:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323226:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
32322A:  LDR.W           R0, [R10,#(dword_7B4DBC - 0x7B4DA4)]!
32322E:  CMP             R0, R9
323230:  BEQ.W           loc_3233A2
323234:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32323A)
323236:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323238:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
32323A:  LDRB            R0, [R0,#(byte_7B4F2B - 0x7B4F24)]
32323C:  CBZ             R0, loc_323250
32323E:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323244)
323240:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323242:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
323246:  LDR.W           R0, [R10,#(dword_7B4DC0 - 0x7B4DA4)]!
32324A:  CMP             R0, R9
32324C:  BEQ.W           loc_3233B2
323250:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323256)
323252:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323254:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
323256:  LDRB            R0, [R0,#(byte_7B4F2C - 0x7B4F24)]
323258:  CBZ             R0, loc_32326C
32325A:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323260)
32325C:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32325E:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
323262:  LDR.W           R0, [R10,#(dword_7B4DC4 - 0x7B4DA4)]!
323266:  CMP             R0, R9
323268:  BEQ.W           loc_3233C2
32326C:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323272)
32326E:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323270:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
323272:  LDRB            R0, [R0,#(byte_7B4F2D - 0x7B4F24)]
323274:  CBZ             R0, loc_323288
323276:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32327C)
323278:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32327A:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
32327E:  LDR.W           R0, [R10,#(dword_7B4DC8 - 0x7B4DA4)]!
323282:  CMP             R0, R9
323284:  BEQ.W           loc_3233D2
323288:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32328E)
32328A:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32328C:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
32328E:  LDRB            R0, [R0,#(byte_7B4F2E - 0x7B4F24)]
323290:  CBZ             R0, loc_3232A4
323292:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323298)
323294:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323296:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
32329A:  LDR.W           R0, [R10,#(dword_7B4DCC - 0x7B4DA4)]!
32329E:  CMP             R0, R9
3232A0:  BEQ.W           loc_3233E2
3232A4:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3232AA)
3232A6:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3232A8:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
3232AA:  LDRB            R0, [R0,#(byte_7B4F2F - 0x7B4F24)]
3232AC:  CBZ             R0, loc_3232C0
3232AE:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3232B4)
3232B0:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3232B2:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
3232B6:  LDR.W           R0, [R10,#(dword_7B4DD0 - 0x7B4DA4)]!
3232BA:  CMP             R0, R9
3232BC:  BEQ.W           loc_3233F2
3232C0:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3232C6)
3232C2:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3232C4:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
3232C6:  LDRB            R0, [R0,#(byte_7B4F30 - 0x7B4F24)]
3232C8:  CBZ             R0, loc_3232DC
3232CA:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3232D0)
3232CC:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3232CE:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
3232D2:  LDR.W           R0, [R10,#(dword_7B4DD4 - 0x7B4DA4)]!
3232D6:  CMP             R0, R9
3232D8:  BEQ.W           loc_323402
3232DC:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3232E2)
3232DE:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3232E0:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
3232E2:  LDRB            R0, [R0,#(byte_7B4F31 - 0x7B4F24)]
3232E4:  CBZ             R0, loc_3232F8
3232E6:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3232EC)
3232E8:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3232EA:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
3232EE:  LDR.W           R0, [R10,#(dword_7B4DD8 - 0x7B4DA4)]!
3232F2:  CMP             R0, R9
3232F4:  BEQ.W           loc_323412
3232F8:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3232FE)
3232FA:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3232FC:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
3232FE:  LDRB            R0, [R0,#(byte_7B4F32 - 0x7B4F24)]
323300:  CBZ             R0, loc_323314
323302:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323308)
323304:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323306:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
32330A:  LDR.W           R0, [R10,#(dword_7B4DDC - 0x7B4DA4)]!
32330E:  CMP             R0, R9
323310:  BEQ.W           loc_323422
323314:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32331A)
323316:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323318:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
32331A:  LDRB            R0, [R0,#(byte_7B4F33 - 0x7B4F24)]
32331C:  CMP             R0, #0
32331E:  BEQ.W           loc_32349E
323322:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323328)
323324:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323326:  LDR.W           R10, [R0]; CVehicleRecording::pVehicleForPlayback ...
32332A:  LDR.W           R0, [R10,#(dword_7B4DE0 - 0x7B4DA4)]!
32332E:  CMP             R0, R9
323330:  BNE.W           loc_32349E
323334:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32333E)
323336:  MOV.W           R11, #0xF
32333A:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32333C:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32333E:  ADD.W           R8, R1, #0xF
323342:  B               loc_323430
323344:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32334E)
323346:  MOV.W           R11, #0
32334A:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32334C:  LDR.W           R8, [R1]; CVehicleRecording::bPlaybackGoingOn ...
323350:  B               loc_323430
323352:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32335C)
323354:  MOV.W           R11, #1
323358:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32335A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32335C:  ADD.W           R8, R1, #1
323360:  B               loc_323430
323362:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32336C)
323364:  MOV.W           R11, #2
323368:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32336A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32336C:  ADD.W           R8, R1, #2
323370:  B               loc_323430
323372:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32337C)
323374:  MOV.W           R11, #3
323378:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32337A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32337C:  ADD.W           R8, R1, #3
323380:  B               loc_323430
323382:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32338C)
323384:  MOV.W           R11, #4
323388:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32338A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32338C:  ADD.W           R8, R1, #4
323390:  B               loc_323430
323392:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32339C)
323394:  MOV.W           R11, #5
323398:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32339A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32339C:  ADD.W           R8, R1, #5
3233A0:  B               loc_323430
3233A2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3233AC)
3233A4:  MOV.W           R11, #6
3233A8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3233AA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3233AC:  ADD.W           R8, R1, #6
3233B0:  B               loc_323430
3233B2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3233BC)
3233B4:  MOV.W           R11, #7
3233B8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3233BA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3233BC:  ADD.W           R8, R1, #7
3233C0:  B               loc_323430
3233C2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3233CC)
3233C4:  MOV.W           R11, #8
3233C8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3233CA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3233CC:  ADD.W           R8, R1, #8
3233D0:  B               loc_323430
3233D2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3233DC)
3233D4:  MOV.W           R11, #9
3233D8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3233DA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3233DC:  ADD.W           R8, R1, #9
3233E0:  B               loc_323430
3233E2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3233EC)
3233E4:  MOV.W           R11, #0xA
3233E8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3233EA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3233EC:  ADD.W           R8, R1, #0xA
3233F0:  B               loc_323430
3233F2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3233FC)
3233F4:  MOV.W           R11, #0xB
3233F8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3233FA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3233FC:  ADD.W           R8, R1, #0xB
323400:  B               loc_323430
323402:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32340C)
323404:  MOV.W           R11, #0xC
323408:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32340A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32340C:  ADD.W           R8, R1, #0xC
323410:  B               loc_323430
323412:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32341C)
323414:  MOV.W           R11, #0xD
323418:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32341A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32341C:  ADD.W           R8, R1, #0xD
323420:  B               loc_323430
323422:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32342C)
323424:  MOV.W           R11, #0xE
323428:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32342A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32342C:  ADD.W           R8, R1, #0xE
323430:  LDR             R1, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x32343A)
323432:  MOVS            R4, #0
323434:  LDR             R2, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x32343E)
323436:  ADD             R1, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
323438:  LDR             R3, [R0,#0x44]
32343A:  ADD             R2, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
32343C:  LDR             R5, [R1]; CVehicleRecording::PlaybackBufferSize ...
32343E:  BIC.W           R1, R3, #4
323442:  LDR             R6, [R2]; CVehicleRecording::pPlaybackBuffer ...
323444:  MOVS            R2, #0
323446:  STR             R1, [R0,#0x44]
323448:  LDR.W           R0, [R5,R11,LSL#2]
32344C:  LDR.W           R1, [R6,R11,LSL#2]
323450:  ADD             R0, R1
323452:  SUB.W           R1, R0, #0x20 ; ' '
323456:  MOV             R0, R9
323458:  BLX             j__ZN17CVehicleRecording17RestoreInfoForCarEP8CVehicleP22CVehicleStateEachFrameb; CVehicleRecording::RestoreInfoForCar(CVehicle *,CVehicleStateEachFrame *,bool)
32345C:  LDR.W           R0, [R10]; CVehicleRecording::pVehicleForPlayback ...
323460:  LDR             R1, [R0]
323462:  LDR             R2, [R1,#0x60]
323464:  MOVS            R1, #0
323466:  BLX             R2
323468:  LDR             R0, =(_ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr - 0x323472)
32346A:  MOVS            R2, #0xFF
32346C:  LDR             R1, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x323478)
32346E:  ADD             R0, PC; _ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr
323470:  STR.W           R4, [R10]; CVehicleRecording::pVehicleForPlayback ...
323474:  ADD             R1, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
323476:  STR.W           R4, [R6,R11,LSL#2]
32347A:  LDR             R0, [R0]; CVehicleRecording::PlayBackStreamingIndex ...
32347C:  STR.W           R4, [R5,R11,LSL#2]
323480:  STRB.W          R4, [R8]; CVehicleRecording::bPlaybackGoingOn ...
323484:  STRB.W          R2, [R9,#0x428]
323488:  LDR.W           R5, [R0,R11,LSL#2]
32348C:  LDR             R0, [R1]; CVehicleRecording::StreamingArray ...
32348E:  ADD.W           R0, R0, R5,LSL#4
323492:  LDRB            R1, [R0,#0xC]
323494:  SUBS            R1, #1; void *
323496:  STRB            R1, [R0,#0xC]
323498:  TST.W           R1, #0xFF
32349C:  BEQ             loc_3234A6
32349E:  ADD             SP, SP, #4
3234A0:  POP.W           {R8-R11}
3234A4:  POP             {R4-R7,PC}
3234A6:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x3234AC)
3234A8:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
3234AA:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
3234AC:  ADD.W           R6, R0, R5,LSL#4
3234B0:  LDR             R0, [R6,#4]; this
3234B2:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
3234B6:  MOVW            R0, #0x649B
3234BA:  STR             R4, [R6,#4]
3234BC:  ADD             R0, R5; this
3234BE:  ADD             SP, SP, #4
3234C0:  POP.W           {R8-R11}
3234C4:  POP.W           {R4-R7,LR}
3234C8:  B.W             sub_18CCA8
