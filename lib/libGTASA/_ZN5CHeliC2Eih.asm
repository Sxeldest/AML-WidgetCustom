; =========================================================
; Game Engine Function: _ZN5CHeliC2Eih
; Address            : 0x571050 - 0x571176
; =========================================================

571050:  PUSH            {R4-R7,LR}
571052:  ADD             R7, SP, #0xC
571054:  PUSH.W          {R8}
571058:  VPUSH           {D8-D9}
57105C:  MOVS            R3, #1; unsigned __int8
57105E:  MOV             R5, R1
571060:  MOV             R4, R0
571062:  MOV.W           R8, #1
571066:  BLX             j__ZN11CAutomobileC2Eihh_0; CAutomobile::CAutomobile(int,uchar,uchar)
57106A:  LDR             R0, =(_ZTV5CHeli_ptr - 0x57107E)
57106C:  ADR             R1, dword_571180
57106E:  VLD1.64         {D16-D17}, [R1@128]
571072:  MOVS            R1, #3
571074:  MOVS            R6, #0
571076:  ADDW            R2, R4, #0x9BC
57107A:  ADD             R0, PC; _ZTV5CHeli_ptr
57107C:  STR.W           R1, [R4,#0x5A4]
571080:  STR.W           R6, [R4,#0xA14]
571084:  VMOV.I32        Q4, #0
571088:  LDR             R1, [R4,#0x44]
57108A:  LDRB.W          R3, [R4,#0x99C]
57108E:  VST1.32         {D16-D17}, [R2]
571092:  ADD.W           R2, R4, #0x9A0
571096:  ORR.W           R1, R1, #0x1000000
57109A:  LDR             R0, [R0]; `vtable for'CHeli ...
57109C:  VST1.32         {D8-D9}, [R2]
5710A0:  ADDW            R2, R4, #0x9AC
5710A4:  ADDS            R0, #8
5710A6:  VST1.32         {D8-D9}, [R2]
5710AA:  AND.W           R2, R3, #0xFC
5710AE:  STRB.W          R2, [R4,#0x99C]
5710B2:  STR             R1, [R4,#0x44]
5710B4:  STR             R0, [R4]
5710B6:  MOVW            R0, #0x1A9
5710BA:  CMP             R5, R0
5710BC:  BNE             loc_5710E4
5710BE:  ADDW            R0, R4, #0x5B4
5710C2:  MOVS            R1, #2
5710C4:  MOVS            R2, #0
5710C6:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
5710CA:  MOV             R0, #0x3F71463B
5710D2:  STR.W           R0, [R4,#0x5FC]
5710D6:  MOVS            R0, #0x13
5710D8:  STR.W           R6, [R4,#0x600]
5710DC:  STRB.W          R8, [R4,#0x606]
5710E0:  STRH.W          R0, [R4,#0x604]
5710E4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5710F4)
5710E6:  MOVS            R1, #4
5710E8:  ADDW            R2, R4, #0x9F4
5710EC:  STR.W           R6, [R4,#0x9CE]
5710F0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5710F2:  STRB.W          R1, [R4,#0x9CD]
5710F6:  LDR.W           R1, [R4,#0x430]
5710FA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5710FC:  ORR.W           R1, R1, #0x40 ; '@'
571100:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
571102:  VST1.32         {D8-D9}, [R2]
571106:  ADDW            R2, R4, #0x9E4
57110A:  VST1.32         {D8-D9}, [R2]
57110E:  ADDW            R2, R4, #0x9D4
571112:  VST1.32         {D8-D9}, [R2]
571116:  STR.W           R0, [R4,#0xA04]
57111A:  STR.W           R1, [R4,#0x430]
57111E:  MOVS            R1, #0xA
571120:  STRB.W          R1, [R4,#0x3E3]
571124:  MOVS            R1, #0x10
571126:  STRB.W          R1, [R4,#0xA24]
57112A:  STR.W           R6, [R4,#0xA18]
57112E:  STR.W           R0, [R4,#0xA1C]
571132:  STR.W           R6, [R4,#0xA20]
571136:  STRB.W          R6, [R4,#0x9CC]
57113A:  STRB.W          R6, [R4,#0xA25]
57113E:  BLX             rand
571142:  VMOV            S0, R0
571146:  VLDR            S2, =4.6566e-10
57114A:  VMOV.F32        S4, #6.0
57114E:  ADDW            R0, R4, #0xA28
571152:  VCVT.F32.S32    S0, S0
571156:  VMUL.F32        S0, S0, S2
57115A:  VMOV.F32        S2, #2.0
57115E:  VMUL.F32        S0, S0, S4
571162:  VADD.F32        S0, S0, S2
571166:  VSTR            S0, [R0]
57116A:  MOV             R0, R4
57116C:  VPOP            {D8-D9}
571170:  POP.W           {R8}
571174:  POP             {R4-R7,PC}
