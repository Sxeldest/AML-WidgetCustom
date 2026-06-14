; =========================================================
; Game Engine Function: _ZN17CVehicleRecording22SkipForwardInRecordingEP8CVehiclef
; Address            : 0x323E64 - 0x32410A
; =========================================================

323E64:  PUSH            {R4,R5,R7,LR}
323E66:  ADD             R7, SP, #8
323E68:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323E6E)
323E6A:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323E6C:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323E6E:  LDRB            R2, [R2]; CVehicleRecording::bPlaybackGoingOn
323E70:  CBZ             R2, loc_323E82
323E72:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323E78)
323E74:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323E76:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323E78:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback
323E7A:  CMP             R2, R0
323E7C:  BNE             loc_323E82
323E7E:  MOVS            R4, #0
323E80:  B               loc_32400E
323E82:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323E88)
323E84:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323E86:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323E88:  LDRB            R2, [R2,#(byte_7B4F25 - 0x7B4F24)]
323E8A:  CBZ             R2, loc_323E9C
323E8C:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323E92)
323E8E:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323E90:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323E92:  LDR             R2, [R2,#(dword_7B4DA8 - 0x7B4DA4)]
323E94:  CMP             R2, R0
323E96:  BNE             loc_323E9C
323E98:  MOVS            R4, #1
323E9A:  B               loc_32400E
323E9C:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323EA2)
323E9E:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323EA0:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323EA2:  LDRB            R2, [R2,#(byte_7B4F26 - 0x7B4F24)]
323EA4:  CBZ             R2, loc_323EB6
323EA6:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323EAC)
323EA8:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323EAA:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323EAC:  LDR             R2, [R2,#(dword_7B4DAC - 0x7B4DA4)]
323EAE:  CMP             R2, R0
323EB0:  BNE             loc_323EB6
323EB2:  MOVS            R4, #2
323EB4:  B               loc_32400E
323EB6:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323EBC)
323EB8:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323EBA:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323EBC:  LDRB            R2, [R2,#(byte_7B4F27 - 0x7B4F24)]
323EBE:  CBZ             R2, loc_323ED0
323EC0:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323EC6)
323EC2:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323EC4:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323EC6:  LDR             R2, [R2,#(dword_7B4DB0 - 0x7B4DA4)]
323EC8:  CMP             R2, R0
323ECA:  BNE             loc_323ED0
323ECC:  MOVS            R4, #3
323ECE:  B               loc_32400E
323ED0:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323ED6)
323ED2:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323ED4:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323ED6:  LDRB            R2, [R2,#(byte_7B4F28 - 0x7B4F24)]
323ED8:  CBZ             R2, loc_323EEA
323EDA:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323EE0)
323EDC:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323EDE:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323EE0:  LDR             R2, [R2,#(dword_7B4DB4 - 0x7B4DA4)]
323EE2:  CMP             R2, R0
323EE4:  BNE             loc_323EEA
323EE6:  MOVS            R4, #4
323EE8:  B               loc_32400E
323EEA:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323EF0)
323EEC:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323EEE:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323EF0:  LDRB            R2, [R2,#(byte_7B4F29 - 0x7B4F24)]
323EF2:  CBZ             R2, loc_323F04
323EF4:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323EFA)
323EF6:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323EF8:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323EFA:  LDR             R2, [R2,#(dword_7B4DB8 - 0x7B4DA4)]
323EFC:  CMP             R2, R0
323EFE:  BNE             loc_323F04
323F00:  MOVS            R4, #5
323F02:  B               loc_32400E
323F04:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323F0A)
323F06:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323F08:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323F0A:  LDRB            R2, [R2,#(byte_7B4F2A - 0x7B4F24)]
323F0C:  CBZ             R2, loc_323F1E
323F0E:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323F14)
323F10:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323F12:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323F14:  LDR             R2, [R2,#(dword_7B4DBC - 0x7B4DA4)]
323F16:  CMP             R2, R0
323F18:  BNE             loc_323F1E
323F1A:  MOVS            R4, #6
323F1C:  B               loc_32400E
323F1E:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323F24)
323F20:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323F22:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323F24:  LDRB            R2, [R2,#(byte_7B4F2B - 0x7B4F24)]
323F26:  CBZ             R2, loc_323F38
323F28:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323F2E)
323F2A:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323F2C:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323F2E:  LDR             R2, [R2,#(dword_7B4DC0 - 0x7B4DA4)]
323F30:  CMP             R2, R0
323F32:  BNE             loc_323F38
323F34:  MOVS            R4, #7
323F36:  B               loc_32400E
323F38:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323F3E)
323F3A:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323F3C:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323F3E:  LDRB            R2, [R2,#(byte_7B4F2C - 0x7B4F24)]
323F40:  CBZ             R2, loc_323F52
323F42:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323F48)
323F44:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323F46:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323F48:  LDR             R2, [R2,#(dword_7B4DC4 - 0x7B4DA4)]
323F4A:  CMP             R2, R0
323F4C:  BNE             loc_323F52
323F4E:  MOVS            R4, #8
323F50:  B               loc_32400E
323F52:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323F58)
323F54:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323F56:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323F58:  LDRB            R2, [R2,#(byte_7B4F2D - 0x7B4F24)]
323F5A:  CBZ             R2, loc_323F6C
323F5C:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323F62)
323F5E:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323F60:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323F62:  LDR             R2, [R2,#(dword_7B4DC8 - 0x7B4DA4)]
323F64:  CMP             R2, R0
323F66:  BNE             loc_323F6C
323F68:  MOVS            R4, #9
323F6A:  B               loc_32400E
323F6C:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323F72)
323F6E:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323F70:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323F72:  LDRB            R2, [R2,#(byte_7B4F2E - 0x7B4F24)]
323F74:  CBZ             R2, loc_323F86
323F76:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323F7C)
323F78:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323F7A:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323F7C:  LDR             R2, [R2,#(dword_7B4DCC - 0x7B4DA4)]
323F7E:  CMP             R2, R0
323F80:  BNE             loc_323F86
323F82:  MOVS            R4, #0xA
323F84:  B               loc_32400E
323F86:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323F8C)
323F88:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323F8A:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323F8C:  LDRB            R2, [R2,#(byte_7B4F2F - 0x7B4F24)]
323F8E:  CBZ             R2, loc_323FA0
323F90:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323F96)
323F92:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323F94:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323F96:  LDR             R2, [R2,#(dword_7B4DD0 - 0x7B4DA4)]
323F98:  CMP             R2, R0
323F9A:  BNE             loc_323FA0
323F9C:  MOVS            R4, #0xB
323F9E:  B               loc_32400E
323FA0:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323FA6)
323FA2:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323FA4:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323FA6:  LDRB            R2, [R2,#(byte_7B4F30 - 0x7B4F24)]
323FA8:  CBZ             R2, loc_323FBA
323FAA:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323FB0)
323FAC:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323FAE:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323FB0:  LDR             R2, [R2,#(dword_7B4DD4 - 0x7B4DA4)]
323FB2:  CMP             R2, R0
323FB4:  BNE             loc_323FBA
323FB6:  MOVS            R4, #0xC
323FB8:  B               loc_32400E
323FBA:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323FC0)
323FBC:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323FBE:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323FC0:  LDRB            R2, [R2,#(byte_7B4F31 - 0x7B4F24)]
323FC2:  CBZ             R2, loc_323FD4
323FC4:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323FCA)
323FC6:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323FC8:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323FCA:  LDR             R2, [R2,#(dword_7B4DD8 - 0x7B4DA4)]
323FCC:  CMP             R2, R0
323FCE:  BNE             loc_323FD4
323FD0:  MOVS            R4, #0xD
323FD2:  B               loc_32400E
323FD4:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323FDA)
323FD6:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323FD8:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
323FDA:  LDRB            R2, [R2,#(byte_7B4F32 - 0x7B4F24)]
323FDC:  CBZ             R2, loc_323FEE
323FDE:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323FE4)
323FE0:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323FE2:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323FE4:  LDR             R2, [R2,#(dword_7B4DDC - 0x7B4DA4)]
323FE6:  CMP             R2, R0
323FE8:  BNE             loc_323FEE
323FEA:  MOVS            R4, #0xE
323FEC:  B               loc_32400E
323FEE:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323FFA)
323FF0:  MOVS            R4, #0x10
323FF2:  LDR             R3, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323FFC)
323FF4:  MOVS            R5, #0x10
323FF6:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323FF8:  ADD             R3, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323FFA:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
323FFC:  LDR             R3, [R3]; CVehicleRecording::bPlaybackGoingOn ...
323FFE:  LDR             R2, [R2,#(dword_7B4DE0 - 0x7B4DA4)]
324000:  LDRB            R3, [R3,#(byte_7B4F33 - 0x7B4F24)]
324002:  CMP             R2, R0
324004:  IT EQ
324006:  MOVEQ           R4, #0xF
324008:  CMP             R3, #0
32400A:  IT EQ
32400C:  MOVEQ           R4, R5
32400E:  LDR             R2, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x32401A)
324010:  VMOV            S0, R1
324014:  LDR             R0, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x32401E)
324016:  ADD             R2, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
324018:  LDR             R1, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x324024)
32401A:  ADD             R0, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
32401C:  LDR.W           LR, [R2]; CVehicleRecording::PlaybackBufferSize ...
324020:  ADD             R1, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
324022:  LDR             R2, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x32402A)
324024:  LDR             R0, [R0]; CVehicleRecording::PlaybackIndex ...
324026:  ADD             R2, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
324028:  LDR             R1, [R1]; CVehicleRecording::pPlaybackBuffer ...
32402A:  LDR.W           R12, [R2]; CVehicleRecording::PlaybackIndex ...
32402E:  LDR             R2, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x324038)
324030:  LDR.W           R5, [R0,R4,LSL#2]
324034:  ADD             R2, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
324036:  LDR.W           R0, [R1,R4,LSL#2]
32403A:  LDR             R2, [R2]; CVehicleRecording::PlaybackIndex ...
32403C:  ADDS            R1, R0, R5
32403E:  VCMPE.F32       S0, #0.0
324042:  VMRS            APSR_nzcv, FPSCR
324046:  BLE             loc_324088
324048:  LDR.W           R3, [LR,R4,LSL#2]
32404C:  SUBS            R3, #0x20 ; ' '
32404E:  CMP             R5, R3
324050:  BCS             loc_3240C2
324052:  ADD.W           R3, R5, #0x20 ; ' '
324056:  ADD             R5, R0
324058:  ADDS            R1, R0, R3
32405A:  STR.W           R3, [R12,R4,LSL#2]
32405E:  VLDR            D17, [R5,#0x14]
324062:  MOV             R5, R3
324064:  VLDR            D16, [R1,#0x14]
324068:  VSUB.F32        D16, D17, D16
32406C:  VMUL.F32        D1, D16, D16
324070:  VADD.F32        S2, S2, S3
324074:  VSQRT.F32       S2, S2
324078:  VSUB.F32        S0, S0, S2
32407C:  VCMPE.F32       S0, #0.0
324080:  VMRS            APSR_nzcv, FPSCR
324084:  BGT             loc_32403E
324086:  B               loc_3240C4
324088:  CMP             R5, #0x21 ; '!'
32408A:  BCC             loc_3240C2
32408C:  SUB.W           R3, R5, #0x20 ; ' '
324090:  ADD             R5, R0
324092:  ADDS            R1, R0, R3
324094:  STR.W           R3, [R2,R4,LSL#2]
324098:  VLDR            D17, [R5,#0x14]
32409C:  MOV             R5, R3
32409E:  VLDR            D16, [R1,#0x14]
3240A2:  VSUB.F32        D16, D17, D16
3240A6:  VMUL.F32        D1, D16, D16
3240AA:  VADD.F32        S2, S2, S3
3240AE:  VSQRT.F32       S2, S2
3240B2:  VADD.F32        S0, S0, S2
3240B6:  VCMPE.F32       S0, #0.0
3240BA:  VMRS            APSR_nzcv, FPSCR
3240BE:  BLT             loc_32403E
3240C0:  B               loc_3240C4
3240C2:  MOV             R3, R5
3240C4:  VLDR            S0, [R1]
3240C8:  LDR             R1, =(_ZN17CVehicleRecording19PlaybackRunningTimeE_ptr - 0x3240D4)
3240CA:  LDR             R2, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x3240D6)
3240CC:  VCVT.F32.U32    S0, S0
3240D0:  ADD             R1, PC; _ZN17CVehicleRecording19PlaybackRunningTimeE_ptr
3240D2:  ADD             R2, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
3240D4:  LDR             R1, [R1]; CVehicleRecording::PlaybackRunningTime ...
3240D6:  LDR             R2, [R2]; CVehicleRecording::bUseCarAI ...
3240D8:  ADD.W           R1, R1, R4,LSL#2
3240DC:  VSTR            S0, [R1]
3240E0:  LDRB            R1, [R2,R4]
3240E2:  CMP             R1, #0
3240E4:  IT EQ
3240E6:  POPEQ           {R4,R5,R7,PC}
3240E8:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3240F0)
3240EA:  MOVS            R2, #0
3240EC:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3240EE:  LDR             R5, [R1]; CVehicleRecording::pVehicleForPlayback ...
3240F0:  ADDS            R1, R0, R3
3240F2:  LDR.W           R0, [R5,R4,LSL#2]
3240F6:  BLX             j__ZN17CVehicleRecording17RestoreInfoForCarEP8CVehicleP22CVehicleStateEachFrameb; CVehicleRecording::RestoreInfoForCar(CVehicle *,CVehicleStateEachFrame *,bool)
3240FA:  LDR.W           R0, [R5,R4,LSL#2]
3240FE:  LDR             R1, [R0]
324100:  LDR             R2, [R1,#0x60]
324102:  MOVS            R1, #0
324104:  POP.W           {R4,R5,R7,LR}
324108:  BX              R2
