; =========================================================
; Game Engine Function: _ZN22CInformGroupEventQueue5FlushEv
; Address            : 0x370364 - 0x3703CA
; =========================================================

370364:  PUSH            {R4-R7,LR}
370366:  ADD             R7, SP, #0xC
370368:  PUSH.W          {R8-R11}
37036C:  SUB             SP, SP, #4
37036E:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x37037A)
370370:  MOV.W           R8, #0
370374:  MOVS            R6, #0
370376:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370378:  LDR.W           R10, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
37037C:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x370382)
37037E:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370380:  LDR.W           R11, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
370384:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x37038A)
370386:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370388:  LDR             R4, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
37038A:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x370390)
37038C:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
37038E:  LDR             R5, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
370390:  LDR.W           R0, [R10,R6]; this
370394:  CBZ             R0, loc_3703A0
370396:  ADDS            R1, R5, R6; CEntity **
370398:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37039C:  STR.W           R8, [R5,R6]
3703A0:  ADD.W           R9, R11, R6
3703A4:  LDR.W           R0, [R9,#8]
3703A8:  CBZ             R0, loc_3703B4
3703AA:  LDR             R1, [R0]
3703AC:  LDR             R1, [R1,#4]
3703AE:  BLX             R1
3703B0:  STR.W           R8, [R9,#8]
3703B4:  ADDS            R0, R4, R6
3703B6:  ADDS            R6, #0x10
3703B8:  MOV.W           R1, #0xFFFFFFFF
3703BC:  CMP             R6, #0x80
3703BE:  STR             R1, [R0,#0xC]
3703C0:  BNE             loc_370390
3703C2:  ADD             SP, SP, #4
3703C4:  POP.W           {R8-R11}
3703C8:  POP             {R4-R7,PC}
