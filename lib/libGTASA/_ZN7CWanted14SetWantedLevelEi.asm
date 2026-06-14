; =========================================================
; Game Engine Function: _ZN7CWanted14SetWantedLevelEi
; Address            : 0x422100 - 0x42216C
; =========================================================

422100:  LDR             R2, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x422106)
422102:  ADD             R2, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
422104:  LDR             R2, [R2]; CCheat::m_aCheatsActive ...
422106:  LDRB.W          R2, [R2,#(byte_79683D - 0x7967F4)]
42210A:  CMP             R2, #0
42210C:  IT NE
42210E:  BXNE            LR
422110:  LDR             R2, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x422118)
422112:  MOVS            R3, #0
422114:  ADD             R2, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
422116:  LDR             R2, [R2]; CWanted::MaximumWantedLevel ...
422118:  LDR             R2, [R2]; CWanted::MaximumWantedLevel
42211A:  STR             R3, [R0,#0x6C]
42211C:  CMP             R2, R1
42211E:  STR             R3, [R0,#0x50]
422120:  STR.W           R3, [R0,#0x88]
422124:  STR.W           R3, [R0,#0xA4]
422128:  STR.W           R3, [R0,#0xC0]
42212C:  STR.W           R3, [R0,#0xDC]
422130:  STR.W           R3, [R0,#0xF8]
422134:  STR.W           R3, [R0,#0x114]
422138:  STR.W           R3, [R0,#0x130]
42213C:  STR.W           R3, [R0,#0x14C]
422140:  STR.W           R3, [R0,#0x168]
422144:  STR.W           R3, [R0,#0x184]
422148:  STR.W           R3, [R0,#0x1A0]
42214C:  STR.W           R3, [R0,#0x1BC]
422150:  STR.W           R3, [R0,#0x1D8]
422154:  STR             R3, [R0,#0x34]
422156:  IT LT
422158:  MOVLT           R1, R2
42215A:  CMP             R1, #6
42215C:  IT HI
42215E:  BHI             _ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
422160:  LDR             R2, =(unk_617CF0 - 0x422166)
422162:  ADD             R2, PC; unk_617CF0
422164:  LDR.W           R1, [R2,R1,LSL#2]
422168:  STR             R1, [R0]
42216A:  B               _ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
