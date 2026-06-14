; =========================================================
; Game Engine Function: _ZN17CVehicleRecording24StartPlaybackRecordedCarEP8CVehiclejbb
; Address            : 0x321CAC - 0x321F5C
; =========================================================

321CAC:  PUSH            {R4-R7,LR}
321CAE:  ADD             R7, SP, #0xC
321CB0:  PUSH.W          {R8-R11}
321CB4:  SUB             SP, SP, #0xC
321CB6:  MOV             R10, R0
321CB8:  LDR             R0, =(_ZN17CVehicleRecording16NumPlayBackFilesE_ptr - 0x321CC0)
321CBA:  MOV             R6, R2
321CBC:  ADD             R0, PC; _ZN17CVehicleRecording16NumPlayBackFilesE_ptr
321CBE:  LDR             R0, [R0]; CVehicleRecording::NumPlayBackFiles ...
321CC0:  LDR             R0, [R0]; CVehicleRecording::NumPlayBackFiles
321CC2:  CMP             R0, #1
321CC4:  BLT             loc_321CDC
321CC6:  LDR             R2, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x321CCE)
321CC8:  MOVS            R5, #0
321CCA:  ADD             R2, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
321CCC:  LDR             R2, [R2]; CVehicleRecording::StreamingArray ...
321CCE:  LDR             R4, [R2]; CVehicleRecording::StreamingArray
321CD0:  CMP             R4, R1
321CD2:  BEQ             loc_321CDE
321CD4:  ADDS            R5, #1
321CD6:  ADDS            R2, #0x10
321CD8:  CMP             R5, R0
321CDA:  BLT             loc_321CCE
321CDC:  MOVS            R5, #0
321CDE:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321CE4)
321CE0:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321CE2:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321CE4:  LDRB            R2, [R2]; CVehicleRecording::bPlaybackGoingOn
321CE6:  STRD.W          R3, R6, [SP,#0x28+var_24]
321CEA:  CMP             R2, #0
321CEC:  BEQ             loc_321D96
321CEE:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321CF4)
321CF0:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321CF2:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321CF4:  LDRB            R2, [R2,#(byte_7B4F25 - 0x7B4F24)]
321CF6:  CMP             R2, #0
321CF8:  BEQ             loc_321D9A
321CFA:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D00)
321CFC:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321CFE:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D00:  LDRB            R2, [R2,#(byte_7B4F26 - 0x7B4F24)]
321D02:  CMP             R2, #0
321D04:  BEQ             loc_321D9E
321D06:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D0C)
321D08:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D0A:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D0C:  LDRB            R2, [R2,#(byte_7B4F27 - 0x7B4F24)]
321D0E:  CMP             R2, #0
321D10:  BEQ             loc_321DA2
321D12:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D18)
321D14:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D16:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D18:  LDRB            R2, [R2,#(byte_7B4F28 - 0x7B4F24)]
321D1A:  CMP             R2, #0
321D1C:  BEQ             loc_321DA6
321D1E:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D24)
321D20:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D22:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D24:  LDRB            R2, [R2,#(byte_7B4F29 - 0x7B4F24)]
321D26:  CMP             R2, #0
321D28:  BEQ             loc_321DAA
321D2A:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D30)
321D2C:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D2E:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D30:  LDRB            R2, [R2,#(byte_7B4F2A - 0x7B4F24)]
321D32:  CBZ             R2, loc_321DAE
321D34:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D3A)
321D36:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D38:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D3A:  LDRB            R2, [R2,#(byte_7B4F2B - 0x7B4F24)]
321D3C:  CBZ             R2, loc_321DB2
321D3E:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D44)
321D40:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D42:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D44:  LDRB            R2, [R2,#(byte_7B4F2C - 0x7B4F24)]
321D46:  CBZ             R2, loc_321DB6
321D48:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D4E)
321D4A:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D4C:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D4E:  LDRB            R2, [R2,#(byte_7B4F2D - 0x7B4F24)]
321D50:  CBZ             R2, loc_321DBA
321D52:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D58)
321D54:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D56:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D58:  LDRB            R2, [R2,#(byte_7B4F2E - 0x7B4F24)]
321D5A:  CBZ             R2, loc_321DBE
321D5C:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D62)
321D5E:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D60:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D62:  LDRB            R2, [R2,#(byte_7B4F2F - 0x7B4F24)]
321D64:  CBZ             R2, loc_321DC2
321D66:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D6C)
321D68:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D6A:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D6C:  LDRB            R2, [R2,#(byte_7B4F30 - 0x7B4F24)]
321D6E:  CBZ             R2, loc_321DC6
321D70:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D76)
321D72:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D74:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D76:  LDRB            R2, [R2,#(byte_7B4F31 - 0x7B4F24)]
321D78:  CBZ             R2, loc_321DCA
321D7A:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D80)
321D7C:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D7E:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D80:  LDRB            R2, [R2,#(byte_7B4F32 - 0x7B4F24)]
321D82:  CBZ             R2, loc_321DCE
321D84:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321D8C)
321D86:  MOVS            R4, #0x10
321D88:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321D8A:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
321D8C:  LDRB            R2, [R2,#(byte_7B4F33 - 0x7B4F24)]
321D8E:  CMP             R2, #0
321D90:  IT EQ
321D92:  MOVEQ           R4, #0xF
321D94:  B               loc_321DD0
321D96:  MOVS            R4, #0
321D98:  B               loc_321DD0
321D9A:  MOVS            R4, #1
321D9C:  B               loc_321DD0
321D9E:  MOVS            R4, #2
321DA0:  B               loc_321DD0
321DA2:  MOVS            R4, #3
321DA4:  B               loc_321DD0
321DA6:  MOVS            R4, #4
321DA8:  B               loc_321DD0
321DAA:  MOVS            R4, #5
321DAC:  B               loc_321DD0
321DAE:  MOVS            R4, #6
321DB0:  B               loc_321DD0
321DB2:  MOVS            R4, #7
321DB4:  B               loc_321DD0
321DB6:  MOVS            R4, #8
321DB8:  B               loc_321DD0
321DBA:  MOVS            R4, #9
321DBC:  B               loc_321DD0
321DBE:  MOVS            R4, #0xA
321DC0:  B               loc_321DD0
321DC2:  MOVS            R4, #0xB
321DC4:  B               loc_321DD0
321DC6:  MOVS            R4, #0xC
321DC8:  B               loc_321DD0
321DCA:  MOVS            R4, #0xD
321DCC:  B               loc_321DD0
321DCE:  MOVS            R4, #0xE
321DD0:  LDR             R2, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x321DD6)
321DD2:  ADD             R2, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
321DD4:  LDR             R2, [R2]; CVehicleRecording::StreamingArray ...
321DD6:  ADD.W           R9, R2, R5,LSL#4
321DDA:  LDR.W           R2, [R9,#4]!
321DDE:  CBNZ            R2, loc_321E0E
321DE0:  CMP             R0, #1
321DE2:  BLT             loc_321DFA
321DE4:  LDR             R2, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x321DEA)
321DE6:  ADD             R2, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
321DE8:  LDR             R3, [R2]; CVehicleRecording::StreamingArray ...
321DEA:  MOVS            R2, #0
321DEC:  LDR             R6, [R3]; CVehicleRecording::StreamingArray
321DEE:  CMP             R6, R1
321DF0:  BEQ             loc_321DFC
321DF2:  ADDS            R2, #1
321DF4:  ADDS            R3, #0x10
321DF6:  CMP             R2, R0
321DF8:  BLT             loc_321DEC
321DFA:  MOVS            R2, #0; int
321DFC:  MOVW            R0, #0x649B
321E00:  MOVS            R1, #0xC; int
321E02:  ADD             R0, R2; this
321E04:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
321E08:  MOVS            R0, #0; this
321E0A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
321E0E:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x321E14)
321E10:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
321E12:  LDR.W           R8, [R0]; CVehicleRecording::pVehicleForPlayback ...
321E16:  MOV             R0, R10; this
321E18:  ADD.W           R11, R8, R4,LSL#2
321E1C:  STR.W           R10, [R8,R4,LSL#2]
321E20:  MOV             R1, R11; CEntity **
321E22:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
321E26:  LDR             R0, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x321E32)
321E28:  MOV.W           R12, #0
321E2C:  LDR             R3, =(_ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr - 0x321E36)
321E2E:  ADD             R0, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
321E30:  LDR             R2, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x321E40)
321E32:  ADD             R3, PC; _ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr
321E34:  LDR             R1, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x321E44)
321E36:  LDR             R6, [R0]; CVehicleRecording::PlaybackIndex ...
321E38:  MOV.W           R0, #0x3F800000
321E3C:  ADD             R2, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
321E3E:  LDR             R3, [R3]; CVehicleRecording::PlayBackStreamingIndex ...
321E40:  ADD             R1, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
321E42:  STR.W           R12, [R6,R4,LSL#2]
321E46:  LDR             R6, =(_ZN17CVehicleRecording19PlaybackRunningTimeE_ptr - 0x321E4E)
321E48:  LDR             R2, [R2]; CVehicleRecording::StreamingArray ...
321E4A:  ADD             R6, PC; _ZN17CVehicleRecording19PlaybackRunningTimeE_ptr
321E4C:  STR.W           R5, [R3,R4,LSL#2]
321E50:  ADD.W           R2, R2, R5,LSL#4
321E54:  LDR             R6, [R6]; CVehicleRecording::PlaybackRunningTime ...
321E56:  LDR             R1, [R1]; CVehicleRecording::PlaybackBufferSize ...
321E58:  LDR.W           R3, [R9]
321E5C:  STR.W           R12, [R6,R4,LSL#2]
321E60:  LDR             R6, =(_ZN17CVehicleRecording13PlaybackSpeedE_ptr - 0x321E66)
321E62:  ADD             R6, PC; _ZN17CVehicleRecording13PlaybackSpeedE_ptr
321E64:  LDR             R6, [R6]; CVehicleRecording::PlaybackSpeed ...
321E66:  STR.W           R0, [R6,R4,LSL#2]
321E6A:  LDR             R0, =(_ZN17CVehicleRecording15bPlaybackLoopedE_ptr - 0x321E72)
321E6C:  LDR             R6, [SP,#0x28+var_24]
321E6E:  ADD             R0, PC; _ZN17CVehicleRecording15bPlaybackLoopedE_ptr
321E70:  LDR             R0, [R0]; CVehicleRecording::bPlaybackLooped ...
321E72:  STRB            R6, [R0,R4]
321E74:  LDR             R0, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x321E7C)
321E76:  LDR             R6, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321E7E)
321E78:  ADD             R0, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
321E7A:  ADD             R6, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321E7C:  LDR             R0, [R0]; CVehicleRecording::pPlaybackBuffer ...
321E7E:  LDR             R6, [R6]; CVehicleRecording::bPlaybackGoingOn ...
321E80:  STR.W           R3, [R0,R4,LSL#2]
321E84:  LDR             R0, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x321E8C)
321E86:  LDR             R3, [R2,#8]
321E88:  ADD             R0, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
321E8A:  STR.W           R3, [R1,R4,LSL#2]
321E8E:  LDRB            R1, [R2,#0xC]
321E90:  LDR             R3, =(_ZN17CVehicleRecording15bPlaybackPausedE_ptr - 0x321E9E)
321E92:  ADDS            R1, #1
321E94:  LDR             R0, [R0]; CVehicleRecording::bUseCarAI ...
321E96:  STRB            R1, [R2,#0xC]
321E98:  MOVS            R1, #1
321E9A:  ADD             R3, PC; _ZN17CVehicleRecording15bPlaybackPausedE_ptr
321E9C:  STRB            R1, [R6,R4]
321E9E:  LDR             R1, [SP,#0x28+var_20]
321EA0:  STRB            R1, [R0,R4]
321EA2:  CMP             R1, #1
321EA4:  LDR.W           R0, [R8,R4,LSL#2]
321EA8:  LDR             R3, [R3]; CVehicleRecording::bPlaybackPaused ...
321EAA:  STRB.W          R12, [R3,R4]
321EAE:  BNE             loc_321F32
321EB0:  LDR             R1, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x321EBC)
321EB2:  MOVS            R2, #0x22 ; '"'
321EB4:  STRB.W          R2, [R0,#0x3BE]
321EB8:  ADD             R1, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
321EBA:  LDR.W           R2, [R10,#0x14]
321EBE:  LDR             R0, [R1]; CVehicleRecording::PlaybackBufferSize ...
321EC0:  ADD.W           R1, R2, #0x30 ; '0'
321EC4:  CMP             R2, #0
321EC6:  LDR.W           R0, [R0,R4,LSL#2]
321ECA:  IT EQ
321ECC:  ADDEQ.W         R1, R10, #4
321ED0:  CMP             R0, #1
321ED2:  BLT             loc_321F46
321ED4:  LDR             R2, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x321EDC)
321ED6:  LDR             R3, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x321EE2)
321ED8:  ADD             R2, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
321EDA:  VLDR            D16, [R1,#4]
321EDE:  ADD             R3, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
321EE0:  VLDR            S2, [R1]
321EE4:  LDR             R2, [R2]; CVehicleRecording::pPlaybackBuffer ...
321EE6:  LDR             R3, [R3]; CVehicleRecording::PlaybackIndex ...
321EE8:  VLDR            S0, =1000000.0
321EEC:  LDR.W           R1, [R2,R4,LSL#2]
321EF0:  MOVS            R2, #0
321EF2:  ADDS            R6, R1, R2
321EF4:  VLDR            S4, [R6,#0x14]
321EF8:  VLDR            D17, [R6,#0x18]
321EFC:  VSUB.F32        S4, S2, S4
321F00:  VSUB.F32        D17, D16, D17
321F04:  VMUL.F32        D3, D17, D17
321F08:  VMUL.F32        S4, S4, S4
321F0C:  VADD.F32        S4, S4, S6
321F10:  VADD.F32        S4, S4, S7
321F14:  VSQRT.F32       S4, S4
321F18:  VCMPE.F32       S4, S0
321F1C:  VMRS            APSR_nzcv, FPSCR
321F20:  ITT LT
321F22:  STRLT.W         R2, [R3,R4,LSL#2]
321F26:  VMOVLT.F32      S0, S4
321F2A:  ADDS            R2, #0x20 ; ' '
321F2C:  CMP             R2, R0
321F2E:  BLT             loc_321EF2
321F30:  B               loc_321F46
321F32:  LDR             R1, [R0,#0x44]
321F34:  ORR.W           R1, R1, #4
321F38:  STR             R1, [R0,#0x44]
321F3A:  LDR.W           R0, [R11]; CVehicleRecording::pVehicleForPlayback ...
321F3E:  LDR             R1, [R0,#0x44]
321F40:  BIC.W           R1, R1, #8
321F44:  STR             R1, [R0,#0x44]
321F46:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x321F4C)
321F48:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
321F4A:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
321F4C:  LDR.W           R0, [R0,R4,LSL#2]
321F50:  STRB.W          R4, [R0,#0x428]
321F54:  ADD             SP, SP, #0xC
321F56:  POP.W           {R8-R11}
321F5A:  POP             {R4-R7,PC}
