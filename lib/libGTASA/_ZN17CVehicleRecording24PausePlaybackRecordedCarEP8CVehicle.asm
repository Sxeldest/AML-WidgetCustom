; =========================================================
; Game Engine Function: _ZN17CVehicleRecording24PausePlaybackRecordedCarEP8CVehicle
; Address            : 0x3229F8 - 0x322BAC
; =========================================================

3229F8:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x3229FE)
3229FA:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
3229FC:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
3229FE:  LDRB            R1, [R1]; CVehicleRecording::bPlaybackGoingOn
322A00:  CBZ             R1, loc_322A12
322A02:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322A08)
322A04:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322A06:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322A08:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback
322A0A:  CMP             R1, R0
322A0C:  BNE             loc_322A12
322A0E:  MOVS            R0, #0
322A10:  B               loc_322BA0
322A12:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322A18)
322A14:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322A16:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322A18:  LDRB            R1, [R1,#(byte_7B4F25 - 0x7B4F24)]
322A1A:  CBZ             R1, loc_322A2C
322A1C:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322A22)
322A1E:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322A20:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322A22:  LDR             R1, [R1,#(dword_7B4DA8 - 0x7B4DA4)]
322A24:  CMP             R1, R0
322A26:  BNE             loc_322A2C
322A28:  MOVS            R0, #1
322A2A:  B               loc_322BA0
322A2C:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322A32)
322A2E:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322A30:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322A32:  LDRB            R1, [R1,#(byte_7B4F26 - 0x7B4F24)]
322A34:  CBZ             R1, loc_322A46
322A36:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322A3C)
322A38:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322A3A:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322A3C:  LDR             R1, [R1,#(dword_7B4DAC - 0x7B4DA4)]
322A3E:  CMP             R1, R0
322A40:  BNE             loc_322A46
322A42:  MOVS            R0, #2
322A44:  B               loc_322BA0
322A46:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322A4C)
322A48:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322A4A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322A4C:  LDRB            R1, [R1,#(byte_7B4F27 - 0x7B4F24)]
322A4E:  CBZ             R1, loc_322A60
322A50:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322A56)
322A52:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322A54:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322A56:  LDR             R1, [R1,#(dword_7B4DB0 - 0x7B4DA4)]
322A58:  CMP             R1, R0
322A5A:  BNE             loc_322A60
322A5C:  MOVS            R0, #3
322A5E:  B               loc_322BA0
322A60:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322A66)
322A62:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322A64:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322A66:  LDRB            R1, [R1,#(byte_7B4F28 - 0x7B4F24)]
322A68:  CBZ             R1, loc_322A7A
322A6A:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322A70)
322A6C:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322A6E:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322A70:  LDR             R1, [R1,#(dword_7B4DB4 - 0x7B4DA4)]
322A72:  CMP             R1, R0
322A74:  BNE             loc_322A7A
322A76:  MOVS            R0, #4
322A78:  B               loc_322BA0
322A7A:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322A80)
322A7C:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322A7E:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322A80:  LDRB            R1, [R1,#(byte_7B4F29 - 0x7B4F24)]
322A82:  CBZ             R1, loc_322A94
322A84:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322A8A)
322A86:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322A88:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322A8A:  LDR             R1, [R1,#(dword_7B4DB8 - 0x7B4DA4)]
322A8C:  CMP             R1, R0
322A8E:  BNE             loc_322A94
322A90:  MOVS            R0, #5
322A92:  B               loc_322BA0
322A94:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322A9A)
322A96:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322A98:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322A9A:  LDRB            R1, [R1,#(byte_7B4F2A - 0x7B4F24)]
322A9C:  CBZ             R1, loc_322AAE
322A9E:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322AA4)
322AA0:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322AA2:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322AA4:  LDR             R1, [R1,#(dword_7B4DBC - 0x7B4DA4)]
322AA6:  CMP             R1, R0
322AA8:  BNE             loc_322AAE
322AAA:  MOVS            R0, #6
322AAC:  B               loc_322BA0
322AAE:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322AB4)
322AB0:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322AB2:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322AB4:  LDRB            R1, [R1,#(byte_7B4F2B - 0x7B4F24)]
322AB6:  CBZ             R1, loc_322AC8
322AB8:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322ABE)
322ABA:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322ABC:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322ABE:  LDR             R1, [R1,#(dword_7B4DC0 - 0x7B4DA4)]
322AC0:  CMP             R1, R0
322AC2:  BNE             loc_322AC8
322AC4:  MOVS            R0, #7
322AC6:  B               loc_322BA0
322AC8:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322ACE)
322ACA:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322ACC:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322ACE:  LDRB            R1, [R1,#(byte_7B4F2C - 0x7B4F24)]
322AD0:  CBZ             R1, loc_322AE2
322AD2:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322AD8)
322AD4:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322AD6:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322AD8:  LDR             R1, [R1,#(dword_7B4DC4 - 0x7B4DA4)]
322ADA:  CMP             R1, R0
322ADC:  BNE             loc_322AE2
322ADE:  MOVS            R0, #8
322AE0:  B               loc_322BA0
322AE2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322AE8)
322AE4:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322AE6:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322AE8:  LDRB            R1, [R1,#(byte_7B4F2D - 0x7B4F24)]
322AEA:  CBZ             R1, loc_322AFC
322AEC:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322AF2)
322AEE:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322AF0:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322AF2:  LDR             R1, [R1,#(dword_7B4DC8 - 0x7B4DA4)]
322AF4:  CMP             R1, R0
322AF6:  BNE             loc_322AFC
322AF8:  MOVS            R0, #9
322AFA:  B               loc_322BA0
322AFC:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322B02)
322AFE:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322B00:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322B02:  LDRB            R1, [R1,#(byte_7B4F2E - 0x7B4F24)]
322B04:  CBZ             R1, loc_322B16
322B06:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322B0C)
322B08:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322B0A:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322B0C:  LDR             R1, [R1,#(dword_7B4DCC - 0x7B4DA4)]
322B0E:  CMP             R1, R0
322B10:  BNE             loc_322B16
322B12:  MOVS            R0, #0xA
322B14:  B               loc_322BA0
322B16:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322B1C)
322B18:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322B1A:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322B1C:  LDRB            R1, [R1,#(byte_7B4F2F - 0x7B4F24)]
322B1E:  CBZ             R1, loc_322B30
322B20:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322B26)
322B22:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322B24:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322B26:  LDR             R1, [R1,#(dword_7B4DD0 - 0x7B4DA4)]
322B28:  CMP             R1, R0
322B2A:  BNE             loc_322B30
322B2C:  MOVS            R0, #0xB
322B2E:  B               loc_322BA0
322B30:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322B36)
322B32:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322B34:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322B36:  LDRB            R1, [R1,#(byte_7B4F30 - 0x7B4F24)]
322B38:  CBZ             R1, loc_322B4A
322B3A:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322B40)
322B3C:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322B3E:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322B40:  LDR             R1, [R1,#(dword_7B4DD4 - 0x7B4DA4)]
322B42:  CMP             R1, R0
322B44:  BNE             loc_322B4A
322B46:  MOVS            R0, #0xC
322B48:  B               loc_322BA0
322B4A:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322B50)
322B4C:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322B4E:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322B50:  LDRB            R1, [R1,#(byte_7B4F31 - 0x7B4F24)]
322B52:  CBZ             R1, loc_322B64
322B54:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322B5A)
322B56:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322B58:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322B5A:  LDR             R1, [R1,#(dword_7B4DD8 - 0x7B4DA4)]
322B5C:  CMP             R1, R0
322B5E:  BNE             loc_322B64
322B60:  MOVS            R0, #0xD
322B62:  B               loc_322BA0
322B64:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322B6A)
322B66:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322B68:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322B6A:  LDRB            R1, [R1,#(byte_7B4F32 - 0x7B4F24)]
322B6C:  CBZ             R1, loc_322B7E
322B6E:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322B74)
322B70:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322B72:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322B74:  LDR             R1, [R1,#(dword_7B4DDC - 0x7B4DA4)]
322B76:  CMP             R1, R0
322B78:  BNE             loc_322B7E
322B7A:  MOVS            R0, #0xE
322B7C:  B               loc_322BA0
322B7E:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322B88)
322B80:  MOVS            R3, #0x10
322B82:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322B8A)
322B84:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322B86:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322B88:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322B8A:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322B8C:  LDR             R1, [R1,#(dword_7B4DE0 - 0x7B4DA4)]
322B8E:  LDRB            R2, [R2,#(byte_7B4F33 - 0x7B4F24)]
322B90:  CMP             R1, R0
322B92:  MOV.W           R0, #0x10
322B96:  IT EQ
322B98:  MOVEQ           R0, #0xF
322B9A:  CMP             R2, #0
322B9C:  IT EQ
322B9E:  MOVEQ           R0, R3
322BA0:  LDR             R1, =(_ZN17CVehicleRecording15bPlaybackPausedE_ptr - 0x322BA8)
322BA2:  MOVS            R2, #1
322BA4:  ADD             R1, PC; _ZN17CVehicleRecording15bPlaybackPausedE_ptr
322BA6:  LDR             R1, [R1]; CVehicleRecording::bPlaybackPaused ...
322BA8:  STRB            R2, [R1,R0]
322BAA:  BX              LR
