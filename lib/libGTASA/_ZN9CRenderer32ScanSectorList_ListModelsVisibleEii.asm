; =========================================================
; Game Engine Function: _ZN9CRenderer32ScanSectorList_ListModelsVisibleEii
; Address            : 0x411FBC - 0x4120E4
; =========================================================

411FBC:  PUSH            {R4-R7,LR}
411FBE:  ADD             R7, SP, #0xC
411FC0:  PUSH.W          {R8-R11}
411FC4:  SUB             SP, SP, #4
411FC6:  LDR             R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x411FD6)
411FC8:  AND.W           R3, R0, #0xF
411FCC:  BFI.W           R3, R1, #4, #4
411FD0:  CMP             R1, #0x77 ; 'w'
411FD2:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
411FD4:  IT LE
411FD6:  CMPLE           R0, #0x77 ; 'w'
411FD8:  ADD.W           R3, R3, R3,LSL#1
411FDC:  LDR             R2, [R2]; CWorld::ms_aRepeatSectors ...
411FDE:  ADD.W           R2, R2, R3,LSL#2
411FE2:  BGT             loc_412042
411FE4:  ORR.W           R6, R1, R0
411FE8:  CMP             R6, #0
411FEA:  BLT             loc_412042
411FEC:  LDR             R6, =(PC_Scratch_ptr - 0x411FF6)
411FEE:  CMP             R0, #0
411FF0:  LDR             R5, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x411FFA)
411FF2:  ADD             R6, PC; PC_Scratch_ptr
411FF4:  LDR             R4, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x411FFE)
411FF6:  ADD             R5, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
411FF8:  LDR             R6, [R6]; PC_Scratch
411FFA:  ADD             R4, PC; _ZN6CWorld11ms_aSectorsE_ptr
411FFC:  LDR             R5, [R5]; CWorld::ms_aRepeatSectors ...
411FFE:  LDR             R4, [R4]; CWorld::ms_aSectors ...
412000:  ADD.W           R3, R5, R3,LSL#2
412004:  ADD.W           R5, R3, #8
412008:  STRD.W          R5, R2, [R6,#(dword_A887C4 - 0xA887C0)]
41200C:  ADD.W           R2, R3, #4
412010:  STR             R2, [R6,#(dword_A887CC - 0xA887C0)]
412012:  MOV.W           R2, #0
412016:  MOV.W           R3, #0x77 ; 'w'
41201A:  IT LE
41201C:  MOVLE           R0, R2
41201E:  CMP             R0, #0x77 ; 'w'
412020:  IT GE
412022:  MOVGE           R0, R3
412024:  CMP             R1, #0
412026:  IT GT
412028:  MOVGT           R2, R1
41202A:  CMP             R2, #0x77 ; 'w'
41202C:  IT GE
41202E:  MOVGE           R2, R3
412030:  RSB.W           R1, R2, R2,LSL#4
412034:  ADD.W           R0, R0, R1,LSL#3
412038:  ADD.W           R0, R4, R0,LSL#3
41203C:  STR             R0, [R6]
41203E:  ADDS            R0, #4
412040:  B               loc_412062
412042:  LDR             R0, =(PC_Scratch_ptr - 0x41204A)
412044:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x41204C)
412046:  ADD             R0, PC; PC_Scratch_ptr
412048:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
41204A:  LDR             R6, [R0]; PC_Scratch
41204C:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
41204E:  ADD.W           R1, R0, R3,LSL#2
412052:  MOVS            R0, #0
412054:  ADD.W           R3, R1, #8
412058:  ADDS            R1, #4
41205A:  STRD.W          R0, R3, [R6]
41205E:  STRD.W          R2, R1, [R6,#(dword_A887C8 - 0xA887C0)]
412062:  LDR             R1, =(PC_Scratch_ptr - 0x412070)
412064:  MOV.W           R10, #5
412068:  LDR.W           R9, =(dword_962E94 - 0x412072)
41206C:  ADD             R1, PC; PC_Scratch_ptr
41206E:  ADD             R9, PC; dword_962E94
412070:  LDR             R5, [R1]; PC_Scratch
412072:  STR             R0, [R5,#(dword_A887D0 - 0xA887C0)]
412074:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x41207A)
412076:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
412078:  LDR.W           R11, [R0]; CWorld::ms_nCurrentScanCode ...
41207C:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x412082)
41207E:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
412080:  LDR.W           R8, [R0]; CGame::currArea ...
412084:  RSB.W           R0, R10, #0
412088:  ADDS            R0, #1
41208A:  CMP             R0, #1
41208C:  BEQ             loc_4120DC
41208E:  LDR             R1, [R5]
412090:  CMP             R1, #0
412092:  BEQ             loc_412088
412094:  RSB.W           R10, R0, #0
412098:  LDR             R6, [R1]
41209A:  ADDS            R5, #4
41209C:  B               loc_4120D6
41209E:  MOV             R0, R4; this
4120A0:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
4120A4:  CMP             R0, #1
4120A6:  ITTT EQ
4120A8:  LDREQ.W         R0, [R9]
4120AC:  STREQ.W         R4, [R0],#4
4120B0:  STREQ.W         R0, [R9]
4120B4:  B               loc_4120D6
4120B6:  LDRD.W          R4, R6, [R6]
4120BA:  LDRH.W          R0, [R11]; CWorld::ms_nCurrentScanCode
4120BE:  LDRH            R1, [R4,#0x30]
4120C0:  CMP             R1, R0
4120C2:  BEQ             loc_4120D6
4120C4:  LDRB.W          R1, [R4,#0x33]
4120C8:  STRH            R0, [R4,#0x30]
4120CA:  CMP             R1, #0xD
4120CC:  ITT NE
4120CE:  LDRNE.W         R0, [R8]; CGame::currArea
4120D2:  CMPNE           R0, R1
4120D4:  BEQ             loc_41209E
4120D6:  CMP             R6, #0
4120D8:  BNE             loc_4120B6
4120DA:  B               loc_412084
4120DC:  ADD             SP, SP, #4
4120DE:  POP.W           {R8-R11}
4120E2:  POP             {R4-R7,PC}
