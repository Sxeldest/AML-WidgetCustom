; =========================================================
; Game Engine Function: _ZN11CTheScripts18UseSwitchJumpTableEPi
; Address            : 0x33502C - 0x3350FA
; =========================================================

33502C:  PUSH            {R4-R7,LR}
33502E:  ADD             R7, SP, #0xC
335030:  PUSH.W          {R11}
335034:  LDR             R1, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x335042)
335036:  MOV.W           LR, #0
33503A:  STR.W           LR, [R0]
33503E:  ADD             R1, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
335040:  LDR             R1, [R1]; CTheScripts::NumberOfEntriesInSwitchTable ...
335042:  LDRH            R1, [R1]; CTheScripts::NumberOfEntriesInSwitchTable
335044:  ADDS            R1, #0xFF
335046:  UXTB            R4, R1
335048:  CMP             R4, #2
33504A:  BCC             loc_335082
33504C:  LDR             R2, =(_ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr - 0x335054)
33504E:  LDR             R3, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x335056)
335050:  ADD             R2, PC; _ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr
335052:  ADD             R3, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
335054:  LDR             R2, [R2]; CTheScripts::ValueToCheckInSwitchStatement ...
335056:  LDR             R5, [R3]; CTheScripts::SwitchJumpTable ...
335058:  LDR.W           R12, [R2]; CTheScripts::ValueToCheckInSwitchStatement
33505C:  MOVS            R2, #0
33505E:  LSRS            R3, R4, #1
335060:  LDR.W           R4, [R5,R3,LSL#3]
335064:  CMP             R12, R4
335066:  BEQ             loc_3350BA
335068:  ITE GT
33506A:  MOVGT           R2, R3
33506C:  MOVLE           R1, R3
33506E:  UXTB            R3, R1
335070:  UXTB.W          LR, R2
335074:  SUB.W           R6, R3, LR
335078:  UXTAB.W         R4, R3, R2
33507C:  CMP             R6, #1
33507E:  BGT             loc_33505E
335080:  B               loc_335084
335082:  MOV             R3, R4
335084:  LDR             R1, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x33508C)
335086:  LDR             R2, =(_ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr - 0x33508E)
335088:  ADD             R1, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
33508A:  ADD             R2, PC; _ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr
33508C:  LDR             R1, [R1]; CTheScripts::SwitchJumpTable ...
33508E:  LDR             R2, [R2]; CTheScripts::ValueToCheckInSwitchStatement ...
335090:  LDR.W           R1, [R1,R3,LSL#3]
335094:  LDR             R2, [R2]; CTheScripts::ValueToCheckInSwitchStatement
335096:  CMP             R2, R1
335098:  BNE             loc_3350A0
33509A:  LDR             R1, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x3350A0)
33509C:  ADD             R1, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
33509E:  B               loc_3350BE
3350A0:  LDR             R1, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x3350A8)
3350A2:  LDR             R3, =(_ZN11CTheScripts20SwitchDefaultAddressE_ptr - 0x3350AA)
3350A4:  ADD             R1, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
3350A6:  ADD             R3, PC; _ZN11CTheScripts20SwitchDefaultAddressE_ptr
3350A8:  LDR             R1, [R1]; CTheScripts::SwitchJumpTable ...
3350AA:  ADD.W           R1, R1, LR,LSL#3
3350AE:  LDR.W           R6, [R1],#4; CTheScripts::SwitchJumpTable
3350B2:  CMP             R2, R6
3350B4:  IT NE
3350B6:  LDRNE           R1, [R3]; CTheScripts::SwitchDefaultAddress ...
3350B8:  B               loc_3350C6
3350BA:  LDR             R1, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x3350C0)
3350BC:  ADD             R1, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
3350BE:  LDR             R1, [R1]; CTheScripts::SwitchJumpTable ...
3350C0:  ADD.W           R1, R1, R3,LSL#3
3350C4:  ADDS            R1, #4
3350C6:  LDR             R2, =(_ZN11CTheScripts20SwitchDefaultAddressE_ptr - 0x3350D0)
3350C8:  LDR             R3, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x3350D4)
3350CA:  LDR             R6, =(_ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr - 0x3350D8)
3350CC:  ADD             R2, PC; _ZN11CTheScripts20SwitchDefaultAddressE_ptr
3350CE:  LDR             R5, =(_ZN11CTheScripts19SwitchDefaultExistsE_ptr - 0x3350DA)
3350D0:  ADD             R3, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
3350D2:  LDR             R4, =(_ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr - 0x3350DE)
3350D4:  ADD             R6, PC; _ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr
3350D6:  ADD             R5, PC; _ZN11CTheScripts19SwitchDefaultExistsE_ptr
3350D8:  LDR             R1, [R1]; CTheScripts::SwitchDefaultAddress
3350DA:  ADD             R4, PC; _ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr
3350DC:  STR             R1, [R0]
3350DE:  LDR             R0, [R6]; CTheScripts::NumberOfEntriesStillToReadForSwitch ...
3350E0:  MOVS            R6, #0
3350E2:  LDR             R2, [R2]; CTheScripts::SwitchDefaultAddress ...
3350E4:  LDR             R3, [R3]; CTheScripts::NumberOfEntriesInSwitchTable ...
3350E6:  LDR             R4, [R4]; CTheScripts::ValueToCheckInSwitchStatement ...
3350E8:  LDR             R1, [R5]; CTheScripts::SwitchDefaultExists ...
3350EA:  STRH            R6, [R0]; CTheScripts::NumberOfEntriesStillToReadForSwitch
3350EC:  STR             R6, [R4]; CTheScripts::ValueToCheckInSwitchStatement
3350EE:  STRB            R6, [R1]; CTheScripts::SwitchDefaultExists
3350F0:  STR             R6, [R2]; CTheScripts::SwitchDefaultAddress
3350F2:  STRH            R6, [R3]; CTheScripts::NumberOfEntriesInSwitchTable
3350F4:  POP.W           {R11}
3350F8:  POP             {R4-R7,PC}
