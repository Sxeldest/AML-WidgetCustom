; =========================================================
; Game Engine Function: sub_1A3CD8
; Address            : 0x1A3CD8 - 0x1A3D46
; =========================================================

1A3CD8:  PUSH            {R4-R7,LR}
1A3CDA:  ADD             R7, SP, #0xC
1A3CDC:  PUSH.W          {R8-R11}
1A3CE0:  SUB             SP, SP, #4
1A3CE2:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x1A3CEA)
1A3CE4:  MOVS            R5, #0
1A3CE6:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
1A3CE8:  LDR.W           R11, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
1A3CEC:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x1A3CF2)
1A3CEE:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
1A3CF0:  LDR.W           R8, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
1A3CF4:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x1A3CFA)
1A3CF6:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
1A3CF8:  LDR             R4, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
1A3CFA:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x1A3D00)
1A3CFC:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
1A3CFE:  LDR.W           R10, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
1A3D02:  ADD.W           R9, R11, R5
1A3D06:  LDR.W           R0, [R9,#0x70]; this
1A3D0A:  CBZ             R0, loc_1A3D1C
1A3D0C:  ADD.W           R1, R10, R5
1A3D10:  ADDS            R1, #0x70 ; 'p'; CEntity **
1A3D12:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
1A3D16:  MOVS            R0, #0
1A3D18:  STR.W           R0, [R9,#0x70]
1A3D1C:  ADD.W           R6, R8, R5
1A3D20:  LDR             R0, [R6,#0x78]
1A3D22:  CBZ             R0, loc_1A3D2E
1A3D24:  LDR             R1, [R0]
1A3D26:  LDR             R1, [R1,#4]
1A3D28:  BLX             R1
1A3D2A:  MOVS            R0, #0
1A3D2C:  STR             R0, [R6,#0x78]
1A3D2E:  ADDS            R0, R4, R5
1A3D30:  MOV.W           R1, #0xFFFFFFFF
1A3D34:  SUBS            R5, #0x10
1A3D36:  STR             R1, [R0,#0x7C]
1A3D38:  ADDS.W          R0, R5, #0x80
1A3D3C:  BNE             loc_1A3D02
1A3D3E:  ADD             SP, SP, #4
1A3D40:  POP.W           {R8-R11}
1A3D44:  POP             {R4-R7,PC}
