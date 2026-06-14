; =========================================================
; Game Engine Function: _ZN17CVehicleRecording16SetPlaybackSpeedEP8CVehiclef
; Address            : 0x3227C0 - 0x322974
; =========================================================

3227C0:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3227C6)
3227C2:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3227C4:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
3227C6:  LDRB            R2, [R2]; CVehicleRecording::bPlaybackGoingOn
3227C8:  CBZ             R2, loc_3227DA
3227CA:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3227D0)
3227CC:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3227CE:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
3227D0:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback
3227D2:  CMP             R2, R0
3227D4:  BNE             loc_3227DA
3227D6:  MOVS            R0, #0
3227D8:  B               loc_322960
3227DA:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3227E0)
3227DC:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3227DE:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
3227E0:  LDRB            R2, [R2,#(byte_7B4F25 - 0x7B4F24)]
3227E2:  CBZ             R2, loc_3227F4
3227E4:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3227EA)
3227E6:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3227E8:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
3227EA:  LDR             R2, [R2,#(dword_7B4DA8 - 0x7B4DA4)]
3227EC:  CMP             R2, R0
3227EE:  BNE             loc_3227F4
3227F0:  MOVS            R0, #1
3227F2:  B               loc_322960
3227F4:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3227FA)
3227F6:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3227F8:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
3227FA:  LDRB            R2, [R2,#(byte_7B4F26 - 0x7B4F24)]
3227FC:  CBZ             R2, loc_32280E
3227FE:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322804)
322800:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322802:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
322804:  LDR             R2, [R2,#(dword_7B4DAC - 0x7B4DA4)]
322806:  CMP             R2, R0
322808:  BNE             loc_32280E
32280A:  MOVS            R0, #2
32280C:  B               loc_322960
32280E:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322814)
322810:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322812:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322814:  LDRB            R2, [R2,#(byte_7B4F27 - 0x7B4F24)]
322816:  CBZ             R2, loc_322828
322818:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32281E)
32281A:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32281C:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
32281E:  LDR             R2, [R2,#(dword_7B4DB0 - 0x7B4DA4)]
322820:  CMP             R2, R0
322822:  BNE             loc_322828
322824:  MOVS            R0, #3
322826:  B               loc_322960
322828:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32282E)
32282A:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32282C:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
32282E:  LDRB            R2, [R2,#(byte_7B4F28 - 0x7B4F24)]
322830:  CBZ             R2, loc_322842
322832:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322838)
322834:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322836:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
322838:  LDR             R2, [R2,#(dword_7B4DB4 - 0x7B4DA4)]
32283A:  CMP             R2, R0
32283C:  BNE             loc_322842
32283E:  MOVS            R0, #4
322840:  B               loc_322960
322842:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322848)
322844:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322846:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322848:  LDRB            R2, [R2,#(byte_7B4F29 - 0x7B4F24)]
32284A:  CBZ             R2, loc_32285C
32284C:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322852)
32284E:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322850:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
322852:  LDR             R2, [R2,#(dword_7B4DB8 - 0x7B4DA4)]
322854:  CMP             R2, R0
322856:  BNE             loc_32285C
322858:  MOVS            R0, #5
32285A:  B               loc_322960
32285C:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322862)
32285E:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322860:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322862:  LDRB            R2, [R2,#(byte_7B4F2A - 0x7B4F24)]
322864:  CBZ             R2, loc_322876
322866:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32286C)
322868:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32286A:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
32286C:  LDR             R2, [R2,#(dword_7B4DBC - 0x7B4DA4)]
32286E:  CMP             R2, R0
322870:  BNE             loc_322876
322872:  MOVS            R0, #6
322874:  B               loc_322960
322876:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32287C)
322878:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32287A:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
32287C:  LDRB            R2, [R2,#(byte_7B4F2B - 0x7B4F24)]
32287E:  CBZ             R2, loc_322890
322880:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322886)
322882:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322884:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
322886:  LDR             R2, [R2,#(dword_7B4DC0 - 0x7B4DA4)]
322888:  CMP             R2, R0
32288A:  BNE             loc_322890
32288C:  MOVS            R0, #7
32288E:  B               loc_322960
322890:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322896)
322892:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322894:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322896:  LDRB            R2, [R2,#(byte_7B4F2C - 0x7B4F24)]
322898:  CBZ             R2, loc_3228AA
32289A:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3228A0)
32289C:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32289E:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
3228A0:  LDR             R2, [R2,#(dword_7B4DC4 - 0x7B4DA4)]
3228A2:  CMP             R2, R0
3228A4:  BNE             loc_3228AA
3228A6:  MOVS            R0, #8
3228A8:  B               loc_322960
3228AA:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3228B0)
3228AC:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3228AE:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
3228B0:  LDRB            R2, [R2,#(byte_7B4F2D - 0x7B4F24)]
3228B2:  CBZ             R2, loc_3228C4
3228B4:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3228BA)
3228B6:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3228B8:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
3228BA:  LDR             R2, [R2,#(dword_7B4DC8 - 0x7B4DA4)]
3228BC:  CMP             R2, R0
3228BE:  BNE             loc_3228C4
3228C0:  MOVS            R0, #9
3228C2:  B               loc_322960
3228C4:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3228CA)
3228C6:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3228C8:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
3228CA:  LDRB            R2, [R2,#(byte_7B4F2E - 0x7B4F24)]
3228CC:  CBZ             R2, loc_3228DE
3228CE:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3228D4)
3228D0:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3228D2:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
3228D4:  LDR             R2, [R2,#(dword_7B4DCC - 0x7B4DA4)]
3228D6:  CMP             R2, R0
3228D8:  BNE             loc_3228DE
3228DA:  MOVS            R0, #0xA
3228DC:  B               loc_322960
3228DE:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3228E4)
3228E0:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3228E2:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
3228E4:  LDRB            R2, [R2,#(byte_7B4F2F - 0x7B4F24)]
3228E6:  CBZ             R2, loc_3228F8
3228E8:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3228EE)
3228EA:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3228EC:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
3228EE:  LDR             R2, [R2,#(dword_7B4DD0 - 0x7B4DA4)]
3228F0:  CMP             R2, R0
3228F2:  BNE             loc_3228F8
3228F4:  MOVS            R0, #0xB
3228F6:  B               loc_322960
3228F8:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3228FE)
3228FA:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3228FC:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
3228FE:  LDRB            R2, [R2,#(byte_7B4F30 - 0x7B4F24)]
322900:  CBZ             R2, loc_322912
322902:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322908)
322904:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322906:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
322908:  LDR             R2, [R2,#(dword_7B4DD4 - 0x7B4DA4)]
32290A:  CMP             R2, R0
32290C:  BNE             loc_322912
32290E:  MOVS            R0, #0xC
322910:  B               loc_322960
322912:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322918)
322914:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322916:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322918:  LDRB            R2, [R2,#(byte_7B4F31 - 0x7B4F24)]
32291A:  CBZ             R2, loc_32292C
32291C:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322922)
32291E:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322920:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
322922:  LDR             R2, [R2,#(dword_7B4DD8 - 0x7B4DA4)]
322924:  CMP             R2, R0
322926:  BNE             loc_32292C
322928:  MOVS            R0, #0xD
32292A:  B               loc_322960
32292C:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322932)
32292E:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322930:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322932:  LDRB            R2, [R2,#(byte_7B4F32 - 0x7B4F24)]
322934:  CBZ             R2, loc_322946
322936:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32293C)
322938:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32293A:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
32293C:  LDR             R2, [R2,#(dword_7B4DDC - 0x7B4DA4)]
32293E:  CMP             R2, R0
322940:  BNE             loc_322946
322942:  MOVS            R0, #0xE
322944:  B               loc_322960
322946:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32294C)
322948:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32294A:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
32294C:  LDRB            R2, [R2,#(byte_7B4F33 - 0x7B4F24)]
32294E:  CBZ             R2, locret_322972
322950:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322956)
322952:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322954:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
322956:  LDR             R2, [R2,#(dword_7B4DE0 - 0x7B4DA4)]
322958:  CMP             R2, R0
32295A:  IT NE
32295C:  BXNE            LR
32295E:  MOVS            R0, #0xF
322960:  VMOV            S0, R1
322964:  LDR             R1, =(_ZN17CVehicleRecording13PlaybackSpeedE_ptr - 0x32296A)
322966:  ADD             R1, PC; _ZN17CVehicleRecording13PlaybackSpeedE_ptr
322968:  LDR             R1, [R1]; CVehicleRecording::PlaybackSpeed ...
32296A:  ADD.W           R0, R1, R0,LSL#2
32296E:  VSTR            S0, [R0]
322972:  BX              LR
