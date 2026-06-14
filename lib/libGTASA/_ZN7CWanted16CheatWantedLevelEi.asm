; =========================================================
; Game Engine Function: _ZN7CWanted16CheatWantedLevelEi
; Address            : 0x422178 - 0x422212
; =========================================================

422178:  PUSH            {R4,R6,R7,LR}
42217A:  ADD             R7, SP, #8
42217C:  MOV             R4, R0
42217E:  LDR             R0, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x422184)
422180:  ADD             R0, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
422182:  LDR             R0, [R0]; CWanted::MaximumWantedLevel ...
422184:  LDR             R0, [R0]; CWanted::MaximumWantedLevel
422186:  CMP             R0, R1
422188:  BGE             loc_4221A8
42218A:  CMP             R1, #6
42218C:  BHI             loc_4221A8
42218E:  LDR             R0, =(_ZN7CWanted19nMaximumWantedLevelE_ptr - 0x422196)
422190:  LDR             R2, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x42219A)
422192:  ADD             R0, PC; _ZN7CWanted19nMaximumWantedLevelE_ptr
422194:  LDR             R3, =(unk_617CD0 - 0x42219C)
422196:  ADD             R2, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
422198:  ADD             R3, PC; unk_617CD0
42219A:  LDR             R0, [R0]; CWanted::nMaximumWantedLevel ...
42219C:  LDR             R2, [R2]; CWanted::MaximumWantedLevel ...
42219E:  LDR.W           R3, [R3,R1,LSL#2]
4221A2:  STR             R3, [R0]; CWanted::nMaximumWantedLevel
4221A4:  MOV             R0, R1
4221A6:  STR             R1, [R2]; CWanted::MaximumWantedLevel
4221A8:  LDR             R2, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4221AE)
4221AA:  ADD             R2, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4221AC:  LDR             R2, [R2]; CCheat::m_aCheatsActive ...
4221AE:  LDRB.W          R2, [R2,#(byte_79683D - 0x7967F4)]
4221B2:  CBNZ            R2, loc_42220A
4221B4:  MOVS            R2, #0
4221B6:  CMP             R0, R1
4221B8:  STR             R2, [R4,#0x6C]
4221BA:  STR             R2, [R4,#0x50]
4221BC:  STR.W           R2, [R4,#0x88]
4221C0:  STR.W           R2, [R4,#0xA4]
4221C4:  STR.W           R2, [R4,#0xC0]
4221C8:  STR.W           R2, [R4,#0xDC]
4221CC:  STR.W           R2, [R4,#0xF8]
4221D0:  STR.W           R2, [R4,#0x114]
4221D4:  STR.W           R2, [R4,#0x130]
4221D8:  STR.W           R2, [R4,#0x14C]
4221DC:  STR.W           R2, [R4,#0x168]
4221E0:  STR.W           R2, [R4,#0x184]
4221E4:  STR.W           R2, [R4,#0x1A0]
4221E8:  STR.W           R2, [R4,#0x1BC]
4221EC:  STR.W           R2, [R4,#0x1D8]
4221F0:  STR             R2, [R4,#0x34]
4221F2:  IT LT
4221F4:  MOVLT           R1, R0
4221F6:  CMP             R1, #6
4221F8:  BHI             loc_422204
4221FA:  LDR             R0, =(unk_617CF0 - 0x422200)
4221FC:  ADD             R0, PC; unk_617CF0
4221FE:  LDR.W           R0, [R0,R1,LSL#2]
422202:  STR             R0, [R4]
422204:  MOV             R0, R4; this
422206:  BLX             j__ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
42220A:  MOV             R0, R4; this
42220C:  POP.W           {R4,R6,R7,LR}
422210:  B               _ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
