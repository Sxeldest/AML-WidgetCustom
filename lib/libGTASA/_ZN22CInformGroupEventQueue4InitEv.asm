; =========================================================
; Game Engine Function: _ZN22CInformGroupEventQueue4InitEv
; Address            : 0x3702EC - 0x370352
; =========================================================

3702EC:  PUSH            {R4-R7,LR}
3702EE:  ADD             R7, SP, #0xC
3702F0:  PUSH.W          {R8-R11}
3702F4:  SUB             SP, SP, #4
3702F6:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x370302)
3702F8:  MOV.W           R8, #0
3702FC:  MOVS            R6, #0
3702FE:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370300:  LDR.W           R10, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
370304:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x37030A)
370306:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370308:  LDR.W           R11, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
37030C:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x370312)
37030E:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370310:  LDR             R4, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
370312:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x370318)
370314:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370316:  LDR             R5, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
370318:  LDR.W           R0, [R10,R6]; this
37031C:  CBZ             R0, loc_370328
37031E:  ADDS            R1, R5, R6; CEntity **
370320:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
370324:  STR.W           R8, [R5,R6]
370328:  ADD.W           R9, R11, R6
37032C:  LDR.W           R0, [R9,#8]
370330:  CBZ             R0, loc_37033C
370332:  LDR             R1, [R0]
370334:  LDR             R1, [R1,#4]
370336:  BLX             R1
370338:  STR.W           R8, [R9,#8]
37033C:  ADDS            R0, R4, R6
37033E:  ADDS            R6, #0x10
370340:  MOV.W           R1, #0xFFFFFFFF
370344:  CMP             R6, #0x80
370346:  STR             R1, [R0,#0xC]
370348:  BNE             loc_370318
37034A:  ADD             SP, SP, #4
37034C:  POP.W           {R8-R11}
370350:  POP             {R4-R7,PC}
