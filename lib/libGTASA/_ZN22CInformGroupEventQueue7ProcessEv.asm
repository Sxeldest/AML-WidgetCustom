; =========================================================
; Game Engine Function: _ZN22CInformGroupEventQueue7ProcessEv
; Address            : 0x37066C - 0x3706B6
; =========================================================

37066C:  PUSH            {R4,R6,R7,LR}
37066E:  ADD             R7, SP, #8
370670:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x370676)
370672:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370674:  LDR             R4, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
370676:  MOV             R0, R4; this
370678:  BLX             j__ZN17CInformGroupEvent7ProcessEv; CInformGroupEvent::Process(void)
37067C:  ADD.W           R0, R4, #0x10; this
370680:  BLX             j__ZN17CInformGroupEvent7ProcessEv; CInformGroupEvent::Process(void)
370684:  ADD.W           R0, R4, #0x20 ; ' '; this
370688:  BLX             j__ZN17CInformGroupEvent7ProcessEv; CInformGroupEvent::Process(void)
37068C:  ADD.W           R0, R4, #0x30 ; '0'; this
370690:  BLX             j__ZN17CInformGroupEvent7ProcessEv; CInformGroupEvent::Process(void)
370694:  ADD.W           R0, R4, #0x40 ; '@'; this
370698:  BLX             j__ZN17CInformGroupEvent7ProcessEv; CInformGroupEvent::Process(void)
37069C:  ADD.W           R0, R4, #0x50 ; 'P'; this
3706A0:  BLX             j__ZN17CInformGroupEvent7ProcessEv; CInformGroupEvent::Process(void)
3706A4:  ADD.W           R0, R4, #0x60 ; '`'; this
3706A8:  BLX             j__ZN17CInformGroupEvent7ProcessEv; CInformGroupEvent::Process(void)
3706AC:  ADD.W           R0, R4, #0x70 ; 'p'; this
3706B0:  POP.W           {R4,R6,R7,LR}
3706B4:  B               _ZN17CInformGroupEvent7ProcessEv; CInformGroupEvent::Process(void)
