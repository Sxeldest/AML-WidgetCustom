; =========================================================
; Game Engine Function: _ZN9CRenderer25ScanSectorList_ListModelsEii
; Address            : 0x411D08 - 0x411F56
; =========================================================

411D08:  PUSH            {R4,R5,R7,LR}
411D0A:  ADD             R7, SP, #8
411D0C:  LDR             R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x411D1C)
411D0E:  AND.W           R3, R0, #0xF
411D12:  BFI.W           R3, R1, #4, #4
411D16:  CMP             R1, #0x77 ; 'w'
411D18:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
411D1A:  IT LE
411D1C:  CMPLE           R0, #0x77 ; 'w'
411D1E:  LDR             R4, [R2]; CWorld::ms_aRepeatSectors ...
411D20:  ADD.W           R2, R3, R3,LSL#1
411D24:  ADD.W           R5, R4, R2,LSL#2
411D28:  BGT             loc_411DEA
411D2A:  ORR.W           R4, R1, R0
411D2E:  CMP.W           R4, #0xFFFFFFFF
411D32:  BLE             loc_411DEA
411D34:  LDR.W           R12, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x411D40)
411D38:  CMP             R0, #0
411D3A:  LDR             R4, =(PC_Scratch_ptr - 0x411D46)
411D3C:  ADD             R12, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
411D3E:  LDR.W           LR, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x411D4C)
411D42:  ADD             R4, PC; PC_Scratch_ptr
411D44:  LDR.W           R3, [R12]; CWorld::ms_aRepeatSectors ...
411D48:  ADD             LR, PC; _ZN6CWorld11ms_aSectorsE_ptr
411D4A:  LDR             R4, [R4]; PC_Scratch
411D4C:  ADD.W           R3, R3, R2,LSL#2
411D50:  LDR.W           R12, [LR]; CWorld::ms_aSectors ...
411D54:  ADD.W           R2, R3, #8
411D58:  ADD.W           R3, R3, #4
411D5C:  STRD.W          R2, R5, [R4,#(dword_A887C4 - 0xA887C0)]
411D60:  MOV.W           R5, #0x77 ; 'w'
411D64:  STR             R3, [R4,#(dword_A887CC - 0xA887C0)]
411D66:  MOV.W           R3, #0
411D6A:  IT LE
411D6C:  MOVLE           R0, R3
411D6E:  CMP             R0, #0x77 ; 'w'
411D70:  IT GE
411D72:  MOVGE           R0, R5
411D74:  CMP             R1, #0
411D76:  IT GT
411D78:  MOVGT           R3, R1
411D7A:  CMP             R3, #0x77 ; 'w'
411D7C:  IT GE
411D7E:  MOVGE           R3, R5
411D80:  RSB.W           R1, R3, R3,LSL#4
411D84:  ADD.W           R0, R0, R1,LSL#3
411D88:  ADD.W           R0, R12, R0,LSL#3
411D8C:  STR             R0, [R4]
411D8E:  ADDS            R1, R0, #4
411D90:  STR             R1, [R4,#(dword_A887D0 - 0xA887C0)]
411D92:  CMP             R0, #0
411D94:  ITT NE
411D96:  LDRNE           R0, [R0]
411D98:  CMPNE           R0, #0
411D9A:  BEQ             loc_411E0C
411D9C:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411DA4)
411D9E:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x411DAA)
411DA0:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411DA2:  LDR.W           R12, =(dword_962E94 - 0x411DAE)
411DA6:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
411DA8:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
411DAA:  ADD             R12, PC; dword_962E94
411DAC:  LDR.W           LR, [R2]; CGame::currArea ...
411DB0:  LDRD.W          R3, R0, [R0]
411DB4:  LDRH            R2, [R1]; CWorld::ms_nCurrentScanCode
411DB6:  LDRH            R4, [R3,#0x30]
411DB8:  CMP             R4, R2
411DBA:  BEQ             loc_411DDA
411DBC:  LDRB.W          R4, [R3,#0x33]
411DC0:  STRH            R2, [R3,#0x30]
411DC2:  CMP             R4, #0xD
411DC4:  ITT NE
411DC6:  LDRNE.W         R2, [LR]; CGame::currArea
411DCA:  CMPNE           R2, R4
411DCC:  BNE             loc_411DDA
411DCE:  LDR.W           R2, [R12]
411DD2:  STR.W           R3, [R2],#4
411DD6:  STR.W           R2, [R12]
411DDA:  CMP             R0, #0
411DDC:  BNE             loc_411DB0
411DDE:  LDR             R0, =(PC_Scratch_ptr - 0x411DE4)
411DE0:  ADD             R0, PC; PC_Scratch_ptr
411DE2:  LDR             R0, [R0]; PC_Scratch
411DE4:  LDR             R2, [R0,#(dword_A887C4 - 0xA887C0)]
411DE6:  CBNZ            R2, loc_411E0C
411DE8:  B               loc_411E52
411DEA:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x411DF4)
411DEC:  MOVS            R4, #0
411DEE:  LDR             R0, =(PC_Scratch_ptr - 0x411DF6)
411DF0:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
411DF2:  ADD             R0, PC; PC_Scratch_ptr
411DF4:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
411DF6:  LDR             R0, [R0]; PC_Scratch
411DF8:  ADD.W           R1, R1, R2,LSL#2
411DFC:  ADD.W           R2, R1, #8
411E00:  ADDS            R1, #4
411E02:  STRD.W          R4, R2, [R0]
411E06:  STRD.W          R5, R1, [R0,#(dword_A887C8 - 0xA887C0)]
411E0A:  STR             R4, [R0,#(dword_A887D0 - 0xA887C0)]
411E0C:  LDR             R0, [R2]
411E0E:  CBZ             R0, loc_411E52
411E10:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411E18)
411E12:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x411E1E)
411E14:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411E16:  LDR.W           R12, =(dword_962E94 - 0x411E22)
411E1A:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
411E1C:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
411E1E:  ADD             R12, PC; dword_962E94
411E20:  LDR.W           LR, [R2]; CGame::currArea ...
411E24:  LDRD.W          R3, R0, [R0]
411E28:  LDRH            R2, [R1]; CWorld::ms_nCurrentScanCode
411E2A:  LDRH            R4, [R3,#0x30]
411E2C:  CMP             R4, R2
411E2E:  BEQ             loc_411E4E
411E30:  LDRB.W          R4, [R3,#0x33]
411E34:  STRH            R2, [R3,#0x30]
411E36:  CMP             R4, #0xD
411E38:  ITT NE
411E3A:  LDRNE.W         R2, [LR]; CGame::currArea
411E3E:  CMPNE           R2, R4
411E40:  BNE             loc_411E4E
411E42:  LDR.W           R2, [R12]
411E46:  STR.W           R3, [R2],#4
411E4A:  STR.W           R2, [R12]
411E4E:  CMP             R0, #0
411E50:  BNE             loc_411E24
411E52:  LDR             R0, =(PC_Scratch_ptr - 0x411E58)
411E54:  ADD             R0, PC; PC_Scratch_ptr
411E56:  LDR             R0, [R0]; PC_Scratch
411E58:  LDR             R0, [R0,#(dword_A887C8 - 0xA887C0)]
411E5A:  CMP             R0, #0
411E5C:  ITT NE
411E5E:  LDRNE           R0, [R0]
411E60:  CMPNE           R0, #0
411E62:  BEQ             loc_411EA6
411E64:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411E6C)
411E66:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x411E72)
411E68:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411E6A:  LDR.W           R12, =(dword_962E94 - 0x411E76)
411E6E:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
411E70:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
411E72:  ADD             R12, PC; dword_962E94
411E74:  LDR.W           LR, [R2]; CGame::currArea ...
411E78:  LDRD.W          R3, R0, [R0]
411E7C:  LDRH            R2, [R1]; CWorld::ms_nCurrentScanCode
411E7E:  LDRH            R4, [R3,#0x30]
411E80:  CMP             R4, R2
411E82:  BEQ             loc_411EA2
411E84:  LDRB.W          R4, [R3,#0x33]
411E88:  STRH            R2, [R3,#0x30]
411E8A:  CMP             R4, #0xD
411E8C:  ITT NE
411E8E:  LDRNE.W         R2, [LR]; CGame::currArea
411E92:  CMPNE           R2, R4
411E94:  BNE             loc_411EA2
411E96:  LDR.W           R2, [R12]
411E9A:  STR.W           R3, [R2],#4
411E9E:  STR.W           R2, [R12]
411EA2:  CMP             R0, #0
411EA4:  BNE             loc_411E78
411EA6:  LDR             R0, =(PC_Scratch_ptr - 0x411EAC)
411EA8:  ADD             R0, PC; PC_Scratch_ptr
411EAA:  LDR             R0, [R0]; PC_Scratch
411EAC:  LDR             R0, [R0,#(dword_A887CC - 0xA887C0)]
411EAE:  CMP             R0, #0
411EB0:  ITT NE
411EB2:  LDRNE           R0, [R0]
411EB4:  CMPNE           R0, #0
411EB6:  BEQ             loc_411EFA
411EB8:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411EC0)
411EBA:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x411EC6)
411EBC:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411EBE:  LDR.W           R12, =(dword_962E94 - 0x411ECA)
411EC2:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
411EC4:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
411EC6:  ADD             R12, PC; dword_962E94
411EC8:  LDR.W           LR, [R2]; CGame::currArea ...
411ECC:  LDRD.W          R3, R0, [R0]
411ED0:  LDRH            R2, [R1]; CWorld::ms_nCurrentScanCode
411ED2:  LDRH            R4, [R3,#0x30]
411ED4:  CMP             R4, R2
411ED6:  BEQ             loc_411EF6
411ED8:  LDRB.W          R4, [R3,#0x33]
411EDC:  STRH            R2, [R3,#0x30]
411EDE:  CMP             R4, #0xD
411EE0:  ITT NE
411EE2:  LDRNE.W         R2, [LR]; CGame::currArea
411EE6:  CMPNE           R2, R4
411EE8:  BNE             loc_411EF6
411EEA:  LDR.W           R2, [R12]
411EEE:  STR.W           R3, [R2],#4
411EF2:  STR.W           R2, [R12]
411EF6:  CMP             R0, #0
411EF8:  BNE             loc_411ECC
411EFA:  LDR             R0, =(PC_Scratch_ptr - 0x411F00)
411EFC:  ADD             R0, PC; PC_Scratch_ptr
411EFE:  LDR             R0, [R0]; PC_Scratch
411F00:  LDR             R0, [R0,#(dword_A887D0 - 0xA887C0)]
411F02:  CMP             R0, #0
411F04:  ITT NE
411F06:  LDRNE           R0, [R0]
411F08:  CMPNE           R0, #0
411F0A:  BEQ             locret_411F54
411F0C:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411F14)
411F0E:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x411F1A)
411F10:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411F12:  LDR.W           R12, =(dword_962E94 - 0x411F1E)
411F16:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
411F18:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
411F1A:  ADD             R12, PC; dword_962E94
411F1C:  LDR.W           LR, [R2]; CGame::currArea ...
411F20:  B               loc_411F28
411F22:  CMP             R0, #0
411F24:  IT EQ
411F26:  POPEQ           {R4,R5,R7,PC}
411F28:  LDRD.W          R3, R0, [R0]
411F2C:  LDRH            R2, [R1]; CWorld::ms_nCurrentScanCode
411F2E:  LDRH            R4, [R3,#0x30]
411F30:  CMP             R4, R2
411F32:  BEQ             loc_411F22
411F34:  LDRB.W          R4, [R3,#0x33]
411F38:  STRH            R2, [R3,#0x30]
411F3A:  CMP             R4, #0xD
411F3C:  ITT NE
411F3E:  LDRNE.W         R2, [LR]; CGame::currArea
411F42:  CMPNE           R2, R4
411F44:  BNE             loc_411F22
411F46:  LDR.W           R2, [R12]
411F4A:  STR.W           R3, [R2],#4
411F4E:  STR.W           R2, [R12]
411F52:  B               loc_411F22
411F54:  POP             {R4,R5,R7,PC}
