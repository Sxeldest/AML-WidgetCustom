; =========================================================
; Game Engine Function: _ZN9CPopCycle28PedIsAcceptableInCurrentZoneEi
; Address            : 0x4CC130 - 0x4CC1B8
; =========================================================

4CC130:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CC136)
4CC132:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CC134:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
4CC136:  LDR.W           R12, [R1]; CPopCycle::m_pCurrZoneInfo
4CC13A:  CMP.W           R12, #0
4CC13E:  BEQ             loc_4CC1B4
4CC140:  PUSH            {R4-R7,LR}
4CC142:  ADD             R7, SP, #0x14+var_8
4CC144:  PUSH.W          {R8}
4CC148:  LDR             R2, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4CC14E)
4CC14A:  ADD             R2, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4CC14C:  LDR             R2, [R2]; CCheat::m_aCheatsActive ...
4CC14E:  LDRB.W          LR, [R2,#(byte_796823 - 0x7967F4)]
4CC152:  LDRB.W          R1, [R2,#(byte_796824 - 0x7967F4)]
4CC156:  LDRB.W          R3, [R2,#(byte_796825 - 0x7967F4)]
4CC15A:  ORR.W           R1, R1, LR
4CC15E:  LDRB.W          R4, [R2,#(byte_796826 - 0x7967F4)]
4CC162:  ORRS            R1, R3
4CC164:  LDRB.W          R8, [R2,#(byte_796842 - 0x7967F4)]
4CC168:  LDRB.W          R6, [R2,#(byte_796847 - 0x7967F4)]
4CC16C:  ORRS            R1, R4
4CC16E:  LDRB.W          R5, [R2,#(byte_796829 - 0x7967F4)]
4CC172:  LDRB.W          R2, [R2,#(byte_796828 - 0x7967F4)]
4CC176:  ORRS            R1, R2
4CC178:  ORRS            R1, R5
4CC17A:  ORR.W           R1, R1, R8
4CC17E:  ORRS            R1, R6
4CC180:  LSLS            R1, R1, #0x18
4CC182:  POP.W           {R8}
4CC186:  POP.W           {R4-R7,LR}
4CC18A:  BEQ             loc_4CC190
4CC18C:  MOVS            R0, #1
4CC18E:  BX              LR
4CC190:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CC196)
4CC192:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CC194:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CC196:  LDR.W           R0, [R1,R0,LSL#2]
4CC19A:  LDRB.W          R0, [R0,#0x52]
4CC19E:  CMP             R0, #0
4CC1A0:  BEQ             loc_4CC18C
4CC1A2:  SUBS            R0, #1
4CC1A4:  MOVS            R2, #1
4CC1A6:  LDRB.W          R1, [R12,#0x10]
4CC1AA:  LSL.W           R0, R2, R0
4CC1AE:  ANDS            R0, R1
4CC1B0:  LSLS            R0, R0, #0x1C
4CC1B2:  BNE             loc_4CC18C
4CC1B4:  MOVS            R0, #0
4CC1B6:  BX              LR
