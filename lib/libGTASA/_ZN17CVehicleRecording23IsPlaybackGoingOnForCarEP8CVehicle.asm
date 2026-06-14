; =========================================================
; Game Engine Function: _ZN17CVehicleRecording23IsPlaybackGoingOnForCarEP8CVehicle
; Address            : 0x3225C4 - 0x32273C
; =========================================================

3225C4:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3225CA)
3225C6:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3225C8:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3225CA:  LDRB            R1, [R1]; CVehicleRecording::bPlaybackGoingOn
3225CC:  CBZ             R1, loc_3225DC
3225CE:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3225D4)
3225D0:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3225D2:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3225D4:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback
3225D6:  CMP             R1, R0
3225D8:  BEQ.W           loc_322714
3225DC:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3225E2)
3225DE:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3225E0:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3225E2:  LDRB            R1, [R1,#(byte_7B4F25 - 0x7B4F24)]
3225E4:  CBZ             R1, loc_3225F4
3225E6:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3225EC)
3225E8:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3225EA:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3225EC:  LDR             R1, [R1,#(dword_7B4DA8 - 0x7B4DA4)]
3225EE:  CMP             R1, R0
3225F0:  BEQ.W           loc_322714
3225F4:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3225FA)
3225F6:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3225F8:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3225FA:  LDRB            R1, [R1,#(byte_7B4F26 - 0x7B4F24)]
3225FC:  CBZ             R1, loc_32260C
3225FE:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322604)
322600:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322602:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322604:  LDR             R1, [R1,#(dword_7B4DAC - 0x7B4DA4)]
322606:  CMP             R1, R0
322608:  BEQ.W           loc_322714
32260C:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322612)
32260E:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322610:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322612:  LDRB            R1, [R1,#(byte_7B4F27 - 0x7B4F24)]
322614:  CBZ             R1, loc_322622
322616:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32261C)
322618:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32261A:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
32261C:  LDR             R1, [R1,#(dword_7B4DB0 - 0x7B4DA4)]
32261E:  CMP             R1, R0
322620:  BEQ             loc_322714
322622:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322628)
322624:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322626:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322628:  LDRB            R1, [R1,#(byte_7B4F28 - 0x7B4F24)]
32262A:  CBZ             R1, loc_322638
32262C:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322632)
32262E:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322630:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322632:  LDR             R1, [R1,#(dword_7B4DB4 - 0x7B4DA4)]
322634:  CMP             R1, R0
322636:  BEQ             loc_322714
322638:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32263E)
32263A:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32263C:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32263E:  LDRB            R1, [R1,#(byte_7B4F29 - 0x7B4F24)]
322640:  CBZ             R1, loc_32264E
322642:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322648)
322644:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322646:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322648:  LDR             R1, [R1,#(dword_7B4DB8 - 0x7B4DA4)]
32264A:  CMP             R1, R0
32264C:  BEQ             loc_322714
32264E:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322654)
322650:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322652:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322654:  LDRB            R1, [R1,#(byte_7B4F2A - 0x7B4F24)]
322656:  CBZ             R1, loc_322664
322658:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32265E)
32265A:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32265C:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
32265E:  LDR             R1, [R1,#(dword_7B4DBC - 0x7B4DA4)]
322660:  CMP             R1, R0
322662:  BEQ             loc_322714
322664:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32266A)
322666:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322668:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
32266A:  LDRB            R1, [R1,#(byte_7B4F2B - 0x7B4F24)]
32266C:  CBZ             R1, loc_32267A
32266E:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322674)
322670:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322672:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322674:  LDR             R1, [R1,#(dword_7B4DC0 - 0x7B4DA4)]
322676:  CMP             R1, R0
322678:  BEQ             loc_322714
32267A:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322680)
32267C:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32267E:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322680:  LDRB            R1, [R1,#(byte_7B4F2C - 0x7B4F24)]
322682:  CBZ             R1, loc_322690
322684:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32268A)
322686:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322688:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
32268A:  LDR             R1, [R1,#(dword_7B4DC4 - 0x7B4DA4)]
32268C:  CMP             R1, R0
32268E:  BEQ             loc_322714
322690:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322696)
322692:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322694:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322696:  LDRB            R1, [R1,#(byte_7B4F2D - 0x7B4F24)]
322698:  CBZ             R1, loc_3226A6
32269A:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3226A0)
32269C:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32269E:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3226A0:  LDR             R1, [R1,#(dword_7B4DC8 - 0x7B4DA4)]
3226A2:  CMP             R1, R0
3226A4:  BEQ             loc_322714
3226A6:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3226AC)
3226A8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3226AA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3226AC:  LDRB            R1, [R1,#(byte_7B4F2E - 0x7B4F24)]
3226AE:  CBZ             R1, loc_3226BC
3226B0:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3226B6)
3226B2:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3226B4:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3226B6:  LDR             R1, [R1,#(dword_7B4DCC - 0x7B4DA4)]
3226B8:  CMP             R1, R0
3226BA:  BEQ             loc_322714
3226BC:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3226C2)
3226BE:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3226C0:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3226C2:  LDRB            R1, [R1,#(byte_7B4F2F - 0x7B4F24)]
3226C4:  CBZ             R1, loc_3226D2
3226C6:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3226CC)
3226C8:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3226CA:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3226CC:  LDR             R1, [R1,#(dword_7B4DD0 - 0x7B4DA4)]
3226CE:  CMP             R1, R0
3226D0:  BEQ             loc_322714
3226D2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3226D8)
3226D4:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3226D6:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3226D8:  LDRB            R1, [R1,#(byte_7B4F30 - 0x7B4F24)]
3226DA:  CBZ             R1, loc_3226E8
3226DC:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3226E2)
3226DE:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3226E0:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3226E2:  LDR             R1, [R1,#(dword_7B4DD4 - 0x7B4DA4)]
3226E4:  CMP             R1, R0
3226E6:  BEQ             loc_322714
3226E8:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3226EE)
3226EA:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3226EC:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3226EE:  LDRB            R1, [R1,#(byte_7B4F31 - 0x7B4F24)]
3226F0:  CBZ             R1, loc_3226FE
3226F2:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3226F8)
3226F4:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3226F6:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
3226F8:  LDR             R1, [R1,#(dword_7B4DD8 - 0x7B4DA4)]
3226FA:  CMP             R1, R0
3226FC:  BEQ             loc_322714
3226FE:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322704)
322700:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322702:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322704:  LDRB            R1, [R1,#(byte_7B4F32 - 0x7B4F24)]
322706:  CBZ             R1, loc_322718
322708:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32270E)
32270A:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32270C:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
32270E:  LDR             R1, [R1,#(dword_7B4DDC - 0x7B4DA4)]
322710:  CMP             R1, R0
322712:  BNE             loc_322718
322714:  MOVS            R0, #1
322716:  BX              LR
322718:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322722)
32271A:  MOVS            R3, #0
32271C:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322724)
32271E:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322720:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322722:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322724:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322726:  LDR             R1, [R1,#(dword_7B4DE0 - 0x7B4DA4)]
322728:  LDRB            R2, [R2,#(byte_7B4F33 - 0x7B4F24)]
32272A:  CMP             R1, R0
32272C:  IT EQ
32272E:  MOVEQ           R3, #1
322730:  CMP             R2, #0
322732:  IT NE
322734:  MOVNE           R2, #1
322736:  AND.W           R0, R2, R3
32273A:  BX              LR
