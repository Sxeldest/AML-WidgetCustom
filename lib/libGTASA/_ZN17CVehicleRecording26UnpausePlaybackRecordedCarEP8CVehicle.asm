; =========================================================
; Game Engine Function: _ZN17CVehicleRecording26UnpausePlaybackRecordedCarEP8CVehicle
; Address            : 0x322C30 - 0x322DE4
; =========================================================

322C30:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322C36)
322C32:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322C34:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322C36:  LDRB            R1, [R1]; CVehicleRecording::bPlaybackGoingOn
322C38:  CBZ             R1, loc_322C4A
322C3A:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322C40)
322C3C:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322C3E:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322C40:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback
322C42:  CMP             R1, R0
322C44:  BNE             loc_322C4A
322C46:  MOVS            R0, #0
322C48:  B               loc_322DD8
322C4A:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322C50)
322C4C:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322C4E:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322C50:  LDRB            R1, [R1,#(byte_7B4F25 - 0x7B4F24)]
322C52:  CBZ             R1, loc_322C64
322C54:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322C5A)
322C56:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322C58:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322C5A:  LDR             R1, [R1,#(dword_7B4DA8 - 0x7B4DA4)]
322C5C:  CMP             R1, R0
322C5E:  BNE             loc_322C64
322C60:  MOVS            R0, #1
322C62:  B               loc_322DD8
322C64:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322C6A)
322C66:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322C68:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322C6A:  LDRB            R1, [R1,#(byte_7B4F26 - 0x7B4F24)]
322C6C:  CBZ             R1, loc_322C7E
322C6E:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322C74)
322C70:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322C72:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322C74:  LDR             R1, [R1,#(dword_7B4DAC - 0x7B4DA4)]
322C76:  CMP             R1, R0
322C78:  BNE             loc_322C7E
322C7A:  MOVS            R0, #2
322C7C:  B               loc_322DD8
322C7E:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322C84)
322C80:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322C82:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322C84:  LDRB            R1, [R1,#(byte_7B4F27 - 0x7B4F24)]
322C86:  CBZ             R1, loc_322C98
322C88:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322C8E)
322C8A:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322C8C:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322C8E:  LDR             R1, [R1,#(dword_7B4DB0 - 0x7B4DA4)]
322C90:  CMP             R1, R0
322C92:  BNE             loc_322C98
322C94:  MOVS            R0, #3
322C96:  B               loc_322DD8
322C98:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322C9E)
322C9A:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322C9C:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322C9E:  LDRB            R1, [R1,#(byte_7B4F28 - 0x7B4F24)]
322CA0:  CBZ             R1, loc_322CB2
322CA2:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322CA8)
322CA4:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322CA6:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322CA8:  LDR             R1, [R1,#(dword_7B4DB4 - 0x7B4DA4)]
322CAA:  CMP             R1, R0
322CAC:  BNE             loc_322CB2
322CAE:  MOVS            R0, #4
322CB0:  B               loc_322DD8
322CB2:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322CB8)
322CB4:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322CB6:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322CB8:  LDRB            R1, [R1,#(byte_7B4F29 - 0x7B4F24)]
322CBA:  CBZ             R1, loc_322CCC
322CBC:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322CC2)
322CBE:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322CC0:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322CC2:  LDR             R1, [R1,#(dword_7B4DB8 - 0x7B4DA4)]
322CC4:  CMP             R1, R0
322CC6:  BNE             loc_322CCC
322CC8:  MOVS            R0, #5
322CCA:  B               loc_322DD8
322CCC:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322CD2)
322CCE:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322CD0:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322CD2:  LDRB            R1, [R1,#(byte_7B4F2A - 0x7B4F24)]
322CD4:  CBZ             R1, loc_322CE6
322CD6:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322CDC)
322CD8:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322CDA:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322CDC:  LDR             R1, [R1,#(dword_7B4DBC - 0x7B4DA4)]
322CDE:  CMP             R1, R0
322CE0:  BNE             loc_322CE6
322CE2:  MOVS            R0, #6
322CE4:  B               loc_322DD8
322CE6:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322CEC)
322CE8:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322CEA:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322CEC:  LDRB            R1, [R1,#(byte_7B4F2B - 0x7B4F24)]
322CEE:  CBZ             R1, loc_322D00
322CF0:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322CF6)
322CF2:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322CF4:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322CF6:  LDR             R1, [R1,#(dword_7B4DC0 - 0x7B4DA4)]
322CF8:  CMP             R1, R0
322CFA:  BNE             loc_322D00
322CFC:  MOVS            R0, #7
322CFE:  B               loc_322DD8
322D00:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322D06)
322D02:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322D04:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322D06:  LDRB            R1, [R1,#(byte_7B4F2C - 0x7B4F24)]
322D08:  CBZ             R1, loc_322D1A
322D0A:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322D10)
322D0C:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322D0E:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322D10:  LDR             R1, [R1,#(dword_7B4DC4 - 0x7B4DA4)]
322D12:  CMP             R1, R0
322D14:  BNE             loc_322D1A
322D16:  MOVS            R0, #8
322D18:  B               loc_322DD8
322D1A:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322D20)
322D1C:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322D1E:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322D20:  LDRB            R1, [R1,#(byte_7B4F2D - 0x7B4F24)]
322D22:  CBZ             R1, loc_322D34
322D24:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322D2A)
322D26:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322D28:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322D2A:  LDR             R1, [R1,#(dword_7B4DC8 - 0x7B4DA4)]
322D2C:  CMP             R1, R0
322D2E:  BNE             loc_322D34
322D30:  MOVS            R0, #9
322D32:  B               loc_322DD8
322D34:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322D3A)
322D36:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322D38:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322D3A:  LDRB            R1, [R1,#(byte_7B4F2E - 0x7B4F24)]
322D3C:  CBZ             R1, loc_322D4E
322D3E:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322D44)
322D40:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322D42:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322D44:  LDR             R1, [R1,#(dword_7B4DCC - 0x7B4DA4)]
322D46:  CMP             R1, R0
322D48:  BNE             loc_322D4E
322D4A:  MOVS            R0, #0xA
322D4C:  B               loc_322DD8
322D4E:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322D54)
322D50:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322D52:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322D54:  LDRB            R1, [R1,#(byte_7B4F2F - 0x7B4F24)]
322D56:  CBZ             R1, loc_322D68
322D58:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322D5E)
322D5A:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322D5C:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322D5E:  LDR             R1, [R1,#(dword_7B4DD0 - 0x7B4DA4)]
322D60:  CMP             R1, R0
322D62:  BNE             loc_322D68
322D64:  MOVS            R0, #0xB
322D66:  B               loc_322DD8
322D68:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322D6E)
322D6A:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322D6C:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322D6E:  LDRB            R1, [R1,#(byte_7B4F30 - 0x7B4F24)]
322D70:  CBZ             R1, loc_322D82
322D72:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322D78)
322D74:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322D76:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322D78:  LDR             R1, [R1,#(dword_7B4DD4 - 0x7B4DA4)]
322D7A:  CMP             R1, R0
322D7C:  BNE             loc_322D82
322D7E:  MOVS            R0, #0xC
322D80:  B               loc_322DD8
322D82:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322D88)
322D84:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322D86:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322D88:  LDRB            R1, [R1,#(byte_7B4F31 - 0x7B4F24)]
322D8A:  CBZ             R1, loc_322D9C
322D8C:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322D92)
322D8E:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322D90:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322D92:  LDR             R1, [R1,#(dword_7B4DD8 - 0x7B4DA4)]
322D94:  CMP             R1, R0
322D96:  BNE             loc_322D9C
322D98:  MOVS            R0, #0xD
322D9A:  B               loc_322DD8
322D9C:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322DA2)
322D9E:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322DA0:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
322DA2:  LDRB            R1, [R1,#(byte_7B4F32 - 0x7B4F24)]
322DA4:  CBZ             R1, loc_322DB6
322DA6:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322DAC)
322DA8:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322DAA:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322DAC:  LDR             R1, [R1,#(dword_7B4DDC - 0x7B4DA4)]
322DAE:  CMP             R1, R0
322DB0:  BNE             loc_322DB6
322DB2:  MOVS            R0, #0xE
322DB4:  B               loc_322DD8
322DB6:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322DC0)
322DB8:  MOVS            R3, #0x10
322DBA:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322DC2)
322DBC:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322DBE:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322DC0:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322DC2:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
322DC4:  LDR             R1, [R1,#(dword_7B4DE0 - 0x7B4DA4)]
322DC6:  LDRB            R2, [R2,#(byte_7B4F33 - 0x7B4F24)]
322DC8:  CMP             R1, R0
322DCA:  MOV.W           R0, #0x10
322DCE:  IT EQ
322DD0:  MOVEQ           R0, #0xF
322DD2:  CMP             R2, #0
322DD4:  IT EQ
322DD6:  MOVEQ           R0, R3
322DD8:  LDR             R1, =(_ZN17CVehicleRecording15bPlaybackPausedE_ptr - 0x322DE0)
322DDA:  MOVS            R2, #0
322DDC:  ADD             R1, PC; _ZN17CVehicleRecording15bPlaybackPausedE_ptr
322DDE:  LDR             R1, [R1]; CVehicleRecording::bPlaybackPaused ...
322DE0:  STRB            R2, [R1,R0]
322DE2:  BX              LR
