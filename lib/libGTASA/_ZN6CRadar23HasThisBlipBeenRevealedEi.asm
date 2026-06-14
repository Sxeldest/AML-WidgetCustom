; =========================================================
; Game Engine Function: _ZN6CRadar23HasThisBlipBeenRevealedEi
; Address            : 0x4415CC - 0x44161C
; =========================================================

4415CC:  LDR             R1, =(gMobileMenu_ptr - 0x4415D2)
4415CE:  ADD             R1, PC; gMobileMenu_ptr
4415D0:  LDR             R1, [R1]; gMobileMenu
4415D2:  LDRB.W          R1, [R1,#(byte_6E00D8 - 0x6E006C)]
4415D6:  CBZ             R1, loc_441618
4415D8:  LDR             R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x4415E2)
4415DA:  ADD.W           R0, R0, R0,LSL#2
4415DE:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
4415E0:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
4415E2:  ADD.W           R1, R1, R0,LSL#3
4415E6:  LDRB.W          R1, [R1,#0x25]
4415EA:  LSLS            R1, R1, #0x1D
4415EC:  BPL             loc_441618
4415EE:  LDR             R1, =(_ZN9CTheZones13ZonesRevealedE_ptr - 0x4415F4)
4415F0:  ADD             R1, PC; _ZN9CTheZones13ZonesRevealedE_ptr
4415F2:  LDR             R1, [R1]; CTheZones::ZonesRevealed ...
4415F4:  LDR             R1, [R1]; CTheZones::ZonesRevealed
4415F6:  CMP             R1, #0x4F ; 'O'
4415F8:  BHI             loc_441618
4415FA:  PUSH            {R7,LR}
4415FC:  MOV             R7, SP
4415FE:  LDR             R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x441604)
441600:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
441602:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
441604:  ADD.W           R1, R1, R0,LSL#3
441608:  LDRD.W          R0, R1, [R1,#8]; float
44160C:  BLX             j__ZN9CTheZones30GetCurrentZoneLockedOrUnlockedEff; CTheZones::GetCurrentZoneLockedOrUnlocked(float,float)
441610:  CMP             R0, #0
441612:  IT NE
441614:  MOVNE           R0, #1
441616:  POP             {R7,PC}
441618:  MOVS            R0, #1
44161A:  BX              LR
