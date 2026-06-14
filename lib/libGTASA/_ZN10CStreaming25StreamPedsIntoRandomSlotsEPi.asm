; =========================================================
; Game Engine Function: _ZN10CStreaming25StreamPedsIntoRandomSlotsEPi
; Address            : 0x2D91AC - 0x2D93E8
; =========================================================

2D91AC:  PUSH            {R4-R7,LR}
2D91AE:  ADD             R7, SP, #0xC
2D91B0:  PUSH.W          {R8-R11}
2D91B4:  SUB             SP, SP, #0x3C
2D91B6:  MOV             R4, R0
2D91B8:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D91C2)
2D91BA:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D91C4)
2D91BC:  MOVS            R5, #0
2D91BE:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D91C0:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D91C2:  LDR.W           R11, [R0]; CStreaming::ms_pedsLoaded ...
2D91C6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D91D0)
2D91C8:  STR.W           R11, [SP,#0x58+var_4C]
2D91CC:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D91CE:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D91D0:  STR             R0, [SP,#0x58+var_20]
2D91D2:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D91D8)
2D91D4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D91D6:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D91D8:  STR             R0, [SP,#0x58+var_28]
2D91DA:  LDR             R0, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2D91E0)
2D91DC:  ADD             R0, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2D91DE:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList ...
2D91E0:  STR             R0, [SP,#0x58+var_40]
2D91E2:  LDR             R0, [R1]; CStreamingInfo::ms_pArrayBase ...
2D91E4:  STR             R0, [SP,#0x58+var_44]
2D91E6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D91EE)
2D91E8:  LDR             R1, =(_ZN10CStreaming16ms_numPedsLoadedE_ptr - 0x2D91F0)
2D91EA:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D91EC:  ADD             R1, PC; _ZN10CStreaming16ms_numPedsLoadedE_ptr
2D91EE:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D91F0:  STR             R0, [SP,#0x58+var_48]
2D91F2:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D91FC)
2D91F4:  LDR.W           R10, [R1]; CStreaming::ms_numPedsLoaded ...
2D91F8:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D91FA:  LDR             R1, =(_ZN10CStreaming16ms_numPedsLoadedE_ptr - 0x2D9202)
2D91FC:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D91FE:  ADD             R1, PC; _ZN10CStreaming16ms_numPedsLoadedE_ptr
2D9200:  STR             R0, [SP,#0x58+var_24]
2D9202:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D920C)
2D9204:  LDR.W           R9, [R1]; CStreaming::ms_numPedsLoaded ...
2D9208:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D920A:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D9214)
2D920C:  LDR.W           R8, [R0]; CStreaming::ms_pedsLoaded ...
2D9210:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D9212:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9218)
2D9214:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9216:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D9218:  STR             R0, [SP,#0x58+var_2C]
2D921A:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9220)
2D921C:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D921E:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D9220:  STR             R0, [SP,#0x58+var_30]
2D9222:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9228)
2D9224:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D9226:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D9228:  STR             R0, [SP,#0x58+var_3C]
2D922A:  LDR             R0, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2D9230)
2D922C:  ADD             R0, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2D922E:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList ...
2D9230:  STR             R0, [SP,#0x58+var_54]
2D9232:  LDR             R0, [R1]; CStreamingInfo::ms_pArrayBase ...
2D9234:  STR             R0, [SP,#0x58+var_50]
2D9236:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D923E)
2D9238:  LDR             R1, =(_ZN10CStreaming16ms_numPedsLoadedE_ptr - 0x2D9240)
2D923A:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D923C:  ADD             R1, PC; _ZN10CStreaming16ms_numPedsLoadedE_ptr
2D923E:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D9240:  STR             R0, [SP,#0x58+var_58]
2D9242:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9248)
2D9244:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9246:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D9248:  STR             R0, [SP,#0x58+var_34]
2D924A:  LDR             R0, [R1]; CStreaming::ms_numPedsLoaded ...
2D924C:  STR             R0, [SP,#0x58+var_38]
2D924E:  B               loc_2D926C
2D9250:  LSLS            R1, R3, #0x1C; int
2D9252:  IT PL
2D9254:  BLXPL           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D9258:  LDR             R1, [SP,#0x58+var_34]
2D925A:  MOV.W           R0, #0xFFFFFFFF
2D925E:  STR.W           R0, [R1,R5,LSL#2]
2D9262:  LDR             R1, [SP,#0x58+var_38]
2D9264:  LDR             R0, [R1]
2D9266:  SUBS            R0, #1
2D9268:  STR             R0, [R1]
2D926A:  B               loc_2D93D8
2D926C:  LDR.W           R1, [R4,R5,LSL#2]
2D9270:  CMP             R1, #0
2D9272:  BLT             loc_2D930A
2D9274:  LDR.W           R0, [R11,R5,LSL#2]; this
2D9278:  CMP             R0, #0
2D927A:  BLT.W           loc_2D93BE
2D927E:  ADD.W           R2, R0, R0,LSL#2
2D9282:  LDR             R1, [SP,#0x58+var_20]
2D9284:  ADD.W           R1, R1, R2,LSL#2
2D9288:  LDRB            R6, [R1,#6]
2D928A:  AND.W           R3, R6, #0xFD
2D928E:  TST.W           R6, #4
2D9292:  STRB            R3, [R1,#6]
2D9294:  BNE.W           loc_2D93A6
2D9298:  LDR             R6, [SP,#0x58+var_28]
2D929A:  ADD.W           R6, R6, R2,LSL#2
2D929E:  LDRB            R6, [R6,#0x10]
2D92A0:  CMP             R6, #1
2D92A2:  BNE             loc_2D939E
2D92A4:  LDRH            R0, [R1]
2D92A6:  MOVW            R3, #0xFFFF
2D92AA:  CMP             R0, R3
2D92AC:  BNE             loc_2D93A6
2D92AE:  LDR             R0, [SP,#0x58+var_40]
2D92B0:  MOVW            R3, #0xCCCD
2D92B4:  LDR.W           R12, [SP,#0x58+var_44]
2D92B8:  MOVT            R3, #0xCCCC
2D92BC:  LDR             R0, [R0]
2D92BE:  LDR.W           LR, [R12]
2D92C2:  LDRH            R6, [R0]
2D92C4:  STRH            R6, [R1]
2D92C6:  SUB.W           R6, R1, LR
2D92CA:  LSRS            R6, R6, #2
2D92CC:  MUL.W           R11, R6, R3
2D92D0:  SUB.W           R3, R0, LR
2D92D4:  MOVW            R6, #0xCCCD
2D92D8:  LSRS            R3, R3, #2
2D92DA:  MOVT            R6, #0xCCCC
2D92DE:  MUL.W           LR, R3, R6
2D92E2:  LDR             R3, [SP,#0x58+var_48]
2D92E4:  ADD.W           R2, R3, R2,LSL#2
2D92E8:  STRH.W          LR, [R2,#2]
2D92EC:  STRH.W          R11, [R0]
2D92F0:  LDRSH.W         R0, [R1]
2D92F4:  LDR.W           R1, [R12]
2D92F8:  ADD.W           R0, R0, R0,LSL#2
2D92FC:  ADD.W           R0, R1, R0,LSL#2
2D9300:  STRH.W          R11, [R0,#2]
2D9304:  LDR.W           R11, [SP,#0x58+var_4C]
2D9308:  B               loc_2D93A6
2D930A:  ADDS            R0, R1, #2
2D930C:  BNE             loc_2D93D8
2D930E:  LDR             R0, [SP,#0x58+var_2C]
2D9310:  LDR.W           R0, [R0,R5,LSL#2]; this
2D9314:  CMP             R0, #0
2D9316:  BLT             loc_2D93D8
2D9318:  ADD.W           R2, R0, R0,LSL#2
2D931C:  LDR             R1, [SP,#0x58+var_30]
2D931E:  ADD.W           R1, R1, R2,LSL#2
2D9322:  LDRB            R6, [R1,#6]
2D9324:  AND.W           R3, R6, #0xFD
2D9328:  TST.W           R6, #4
2D932C:  STRB            R3, [R1,#6]
2D932E:  BNE             loc_2D9258
2D9330:  LDR             R6, [SP,#0x58+var_3C]
2D9332:  ADD.W           R6, R6, R2,LSL#2
2D9336:  LDRB            R6, [R6,#0x10]
2D9338:  CMP             R6, #1
2D933A:  BNE             loc_2D9250
2D933C:  LDRH            R0, [R1]
2D933E:  MOVW            R3, #0xFFFF
2D9342:  CMP             R0, R3
2D9344:  BNE.W           loc_2D9258
2D9348:  LDR             R0, [SP,#0x58+var_54]
2D934A:  LDR             R3, [SP,#0x58+var_50]
2D934C:  LDR             R0, [R0]
2D934E:  LDR.W           R12, [R3]
2D9352:  MOV             R3, #0xCCCCCCCD
2D935A:  LDRH            R6, [R0]
2D935C:  STRH            R6, [R1]
2D935E:  SUB.W           R6, R1, R12
2D9362:  LSRS            R6, R6, #2
2D9364:  MUL.W           LR, R6, R3
2D9368:  SUB.W           R3, R0, R12
2D936C:  MOVW            R6, #0xCCCD
2D9370:  LSRS            R3, R3, #2
2D9372:  MOVT            R6, #0xCCCC
2D9376:  MUL.W           R12, R3, R6
2D937A:  LDR             R3, [SP,#0x58+var_58]
2D937C:  ADD.W           R2, R3, R2,LSL#2
2D9380:  STRH.W          R12, [R2,#2]
2D9384:  STRH.W          LR, [R0]
2D9388:  LDRSH.W         R0, [R1]
2D938C:  LDR             R1, [SP,#0x58+var_50]
2D938E:  ADD.W           R0, R0, R0,LSL#2
2D9392:  LDR             R1, [R1]
2D9394:  ADD.W           R0, R1, R0,LSL#2
2D9398:  STRH.W          LR, [R0,#2]
2D939C:  B               loc_2D9258
2D939E:  LSLS            R1, R3, #0x1C; int
2D93A0:  IT PL
2D93A2:  BLXPL           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D93A6:  LDR             R0, [SP,#0x58+var_24]
2D93A8:  MOV.W           R1, #0xFFFFFFFF
2D93AC:  STR.W           R1, [R0,R5,LSL#2]
2D93B0:  LDR.W           R0, [R10]; CStreaming::ms_numPedsLoaded
2D93B4:  SUBS            R0, #1
2D93B6:  STR.W           R0, [R10]; CStreaming::ms_numPedsLoaded
2D93BA:  LDR.W           R1, [R4,R5,LSL#2]
2D93BE:  MOV             R0, R1; this
2D93C0:  MOVS            R1, #8; int
2D93C2:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D93C6:  LDR.W           R0, [R4,R5,LSL#2]
2D93CA:  STR.W           R0, [R8,R5,LSL#2]
2D93CE:  LDR.W           R0, [R9]; CStreaming::ms_numPedsLoaded
2D93D2:  ADDS            R0, #1
2D93D4:  STR.W           R0, [R9]; CStreaming::ms_numPedsLoaded
2D93D8:  ADDS            R5, #1
2D93DA:  CMP             R5, #8
2D93DC:  BNE.W           loc_2D926C
2D93E0:  ADD             SP, SP, #0x3C ; '<'
2D93E2:  POP.W           {R8-R11}
2D93E6:  POP             {R4-R7,PC}
