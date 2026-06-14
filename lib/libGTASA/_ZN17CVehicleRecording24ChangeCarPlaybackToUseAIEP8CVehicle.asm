; =========================================================
; Game Engine Function: _ZN17CVehicleRecording24ChangeCarPlaybackToUseAIEP8CVehicle
; Address            : 0x322E68 - 0x3230C6
; =========================================================

322E68:  PUSH            {R4-R7,LR}
322E6A:  ADD             R7, SP, #0xC
322E6C:  PUSH.W          {R11}
322E70:  MOV             R6, R0
322E72:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322E78)
322E74:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322E76:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322E78:  LDRB            R0, [R0]; CVehicleRecording::bPlaybackGoingOn
322E7A:  CBZ             R0, loc_322E8C
322E7C:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322E82)
322E7E:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322E80:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322E82:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback
322E84:  CMP             R0, R6
322E86:  BNE             loc_322E8C
322E88:  MOVS            R0, #0
322E8A:  B               loc_32301A
322E8C:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322E92)
322E8E:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322E90:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322E92:  LDRB            R0, [R0,#(byte_7B4F25 - 0x7B4F24)]
322E94:  CBZ             R0, loc_322EA6
322E96:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322E9C)
322E98:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322E9A:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322E9C:  LDR             R0, [R0,#(dword_7B4DA8 - 0x7B4DA4)]
322E9E:  CMP             R0, R6
322EA0:  BNE             loc_322EA6
322EA2:  MOVS            R0, #1
322EA4:  B               loc_32301A
322EA6:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322EAC)
322EA8:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322EAA:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322EAC:  LDRB            R0, [R0,#(byte_7B4F26 - 0x7B4F24)]
322EAE:  CBZ             R0, loc_322EC0
322EB0:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322EB6)
322EB2:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322EB4:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322EB6:  LDR             R0, [R0,#(dword_7B4DAC - 0x7B4DA4)]
322EB8:  CMP             R0, R6
322EBA:  BNE             loc_322EC0
322EBC:  MOVS            R0, #2
322EBE:  B               loc_32301A
322EC0:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322EC6)
322EC2:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322EC4:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322EC6:  LDRB            R0, [R0,#(byte_7B4F27 - 0x7B4F24)]
322EC8:  CBZ             R0, loc_322EDA
322ECA:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322ED0)
322ECC:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322ECE:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322ED0:  LDR             R0, [R0,#(dword_7B4DB0 - 0x7B4DA4)]
322ED2:  CMP             R0, R6
322ED4:  BNE             loc_322EDA
322ED6:  MOVS            R0, #3
322ED8:  B               loc_32301A
322EDA:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322EE0)
322EDC:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322EDE:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322EE0:  LDRB            R0, [R0,#(byte_7B4F28 - 0x7B4F24)]
322EE2:  CBZ             R0, loc_322EF4
322EE4:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322EEA)
322EE6:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322EE8:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322EEA:  LDR             R0, [R0,#(dword_7B4DB4 - 0x7B4DA4)]
322EEC:  CMP             R0, R6
322EEE:  BNE             loc_322EF4
322EF0:  MOVS            R0, #4
322EF2:  B               loc_32301A
322EF4:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322EFA)
322EF6:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322EF8:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322EFA:  LDRB            R0, [R0,#(byte_7B4F29 - 0x7B4F24)]
322EFC:  CBZ             R0, loc_322F0E
322EFE:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322F04)
322F00:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322F02:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322F04:  LDR             R0, [R0,#(dword_7B4DB8 - 0x7B4DA4)]
322F06:  CMP             R0, R6
322F08:  BNE             loc_322F0E
322F0A:  MOVS            R0, #5
322F0C:  B               loc_32301A
322F0E:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322F14)
322F10:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322F12:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322F14:  LDRB            R0, [R0,#(byte_7B4F2A - 0x7B4F24)]
322F16:  CBZ             R0, loc_322F28
322F18:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322F1E)
322F1A:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322F1C:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322F1E:  LDR             R0, [R0,#(dword_7B4DBC - 0x7B4DA4)]
322F20:  CMP             R0, R6
322F22:  BNE             loc_322F28
322F24:  MOVS            R0, #6
322F26:  B               loc_32301A
322F28:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322F2E)
322F2A:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322F2C:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322F2E:  LDRB            R0, [R0,#(byte_7B4F2B - 0x7B4F24)]
322F30:  CBZ             R0, loc_322F42
322F32:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322F38)
322F34:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322F36:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322F38:  LDR             R0, [R0,#(dword_7B4DC0 - 0x7B4DA4)]
322F3A:  CMP             R0, R6
322F3C:  BNE             loc_322F42
322F3E:  MOVS            R0, #7
322F40:  B               loc_32301A
322F42:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322F48)
322F44:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322F46:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322F48:  LDRB            R0, [R0,#(byte_7B4F2C - 0x7B4F24)]
322F4A:  CBZ             R0, loc_322F5C
322F4C:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322F52)
322F4E:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322F50:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322F52:  LDR             R0, [R0,#(dword_7B4DC4 - 0x7B4DA4)]
322F54:  CMP             R0, R6
322F56:  BNE             loc_322F5C
322F58:  MOVS            R0, #8
322F5A:  B               loc_32301A
322F5C:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322F62)
322F5E:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322F60:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322F62:  LDRB            R0, [R0,#(byte_7B4F2D - 0x7B4F24)]
322F64:  CBZ             R0, loc_322F76
322F66:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322F6C)
322F68:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322F6A:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322F6C:  LDR             R0, [R0,#(dword_7B4DC8 - 0x7B4DA4)]
322F6E:  CMP             R0, R6
322F70:  BNE             loc_322F76
322F72:  MOVS            R0, #9
322F74:  B               loc_32301A
322F76:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322F7C)
322F78:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322F7A:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322F7C:  LDRB            R0, [R0,#(byte_7B4F2E - 0x7B4F24)]
322F7E:  CBZ             R0, loc_322F90
322F80:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322F86)
322F82:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322F84:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322F86:  LDR             R0, [R0,#(dword_7B4DCC - 0x7B4DA4)]
322F88:  CMP             R0, R6
322F8A:  BNE             loc_322F90
322F8C:  MOVS            R0, #0xA
322F8E:  B               loc_32301A
322F90:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322F96)
322F92:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322F94:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322F96:  LDRB            R0, [R0,#(byte_7B4F2F - 0x7B4F24)]
322F98:  CBZ             R0, loc_322FAA
322F9A:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322FA0)
322F9C:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322F9E:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322FA0:  LDR             R0, [R0,#(dword_7B4DD0 - 0x7B4DA4)]
322FA2:  CMP             R0, R6
322FA4:  BNE             loc_322FAA
322FA6:  MOVS            R0, #0xB
322FA8:  B               loc_32301A
322FAA:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322FB0)
322FAC:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322FAE:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322FB0:  LDRB            R0, [R0,#(byte_7B4F30 - 0x7B4F24)]
322FB2:  CBZ             R0, loc_322FC4
322FB4:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322FBA)
322FB6:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322FB8:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322FBA:  LDR             R0, [R0,#(dword_7B4DD4 - 0x7B4DA4)]
322FBC:  CMP             R0, R6
322FBE:  BNE             loc_322FC4
322FC0:  MOVS            R0, #0xC
322FC2:  B               loc_32301A
322FC4:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322FCA)
322FC6:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322FC8:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322FCA:  LDRB            R0, [R0,#(byte_7B4F31 - 0x7B4F24)]
322FCC:  CBZ             R0, loc_322FDE
322FCE:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322FD4)
322FD0:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322FD2:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322FD4:  LDR             R0, [R0,#(dword_7B4DD8 - 0x7B4DA4)]
322FD6:  CMP             R0, R6
322FD8:  BNE             loc_322FDE
322FDA:  MOVS            R0, #0xD
322FDC:  B               loc_32301A
322FDE:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x322FE4)
322FE0:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
322FE2:  LDR             R0, [R0]; CVehicleRecording::bPlaybackGoingOn ...
322FE4:  LDRB            R0, [R0,#(byte_7B4F32 - 0x7B4F24)]
322FE6:  CBZ             R0, loc_322FF8
322FE8:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322FEE)
322FEA:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322FEC:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
322FEE:  LDR             R0, [R0,#(dword_7B4DDC - 0x7B4DA4)]
322FF0:  CMP             R0, R6
322FF2:  BNE             loc_322FF8
322FF4:  MOVS            R0, #0xE
322FF6:  B               loc_32301A
322FF8:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323002)
322FFA:  MOVS            R2, #0x10
322FFC:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323004)
322FFE:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323000:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323002:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
323004:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
323006:  LDR             R0, [R0,#(dword_7B4DE0 - 0x7B4DA4)]
323008:  LDRB            R1, [R1,#(byte_7B4F33 - 0x7B4F24)]
32300A:  CMP             R0, R6
32300C:  MOV.W           R0, #0x10
323010:  IT EQ
323012:  MOVEQ           R0, #0xF
323014:  CMP             R1, #0
323016:  IT EQ
323018:  MOVEQ           R0, R2
32301A:  LDR             R1, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x323024)
32301C:  MOVS            R3, #1
32301E:  LDR             R2, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x323026)
323020:  ADD             R1, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
323022:  ADD             R2, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
323024:  LDR             R1, [R1]; CVehicleRecording::bUseCarAI ...
323026:  LDR             R2, [R2]; CVehicleRecording::PlaybackBufferSize ...
323028:  STRB            R3, [R1,R0]
32302A:  MOVS            R1, #0x22 ; '"'
32302C:  LDR             R3, [R6,#0x14]
32302E:  STRB.W          R1, [R6,#0x3BE]
323032:  LDR.W           R1, [R2,R0,LSL#2]
323036:  ADD.W           R2, R3, #0x30 ; '0'
32303A:  CMP             R3, #0
32303C:  IT EQ
32303E:  ADDEQ           R2, R6, #4
323040:  CMP             R1, #1
323042:  BLT             loc_3230A0
323044:  LDR             R3, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x32304C)
323046:  LDR             R4, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x323052)
323048:  ADD             R3, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
32304A:  VLDR            D16, [R2,#4]
32304E:  ADD             R4, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
323050:  VLDR            S2, [R2]
323054:  LDR             R3, [R3]; CVehicleRecording::pPlaybackBuffer ...
323056:  LDR             R4, [R4]; CVehicleRecording::PlaybackIndex ...
323058:  VLDR            S0, =1000000.0
32305C:  LDR.W           R2, [R3,R0,LSL#2]
323060:  MOVS            R3, #0
323062:  ADDS            R5, R2, R3
323064:  VLDR            S4, [R5,#0x14]
323068:  VLDR            D17, [R5,#0x18]
32306C:  VSUB.F32        S4, S2, S4
323070:  VSUB.F32        D17, D16, D17
323074:  VMUL.F32        D3, D17, D17
323078:  VMUL.F32        S4, S4, S4
32307C:  VADD.F32        S4, S4, S6
323080:  VADD.F32        S4, S4, S7
323084:  VSQRT.F32       S4, S4
323088:  VCMPE.F32       S4, S0
32308C:  VMRS            APSR_nzcv, FPSCR
323090:  ITT LT
323092:  STRLT.W         R3, [R4,R0,LSL#2]
323096:  VMOVLT.F32      S0, S4
32309A:  ADDS            R3, #0x20 ; ' '
32309C:  CMP             R3, R1
32309E:  BLT             loc_323062
3230A0:  LDR             R1, [R6,#0x44]
3230A2:  LDR             R0, [R6]
3230A4:  BIC.W           R1, R1, #4
3230A8:  STR             R1, [R6,#0x44]
3230AA:  MOVS            R1, #0
3230AC:  LDR             R2, [R0,#0x60]
3230AE:  MOV             R0, R6
3230B0:  BLX             R2
3230B2:  LDRB.W          R0, [R6,#0x3A]
3230B6:  MOVS            R1, #3
3230B8:  BFI.W           R0, R1, #3, #0x1D
3230BC:  STRB.W          R0, [R6,#0x3A]
3230C0:  POP.W           {R11}
3230C4:  POP             {R4-R7,PC}
