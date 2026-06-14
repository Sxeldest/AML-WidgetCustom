; =========================================================
; Game Engine Function: _ZN4CPed18CreateDeadPedMoneyEv
; Address            : 0x320D80 - 0x320DEE
; =========================================================

320D80:  PUSH            {R4,R6,R7,LR}
320D82:  ADD             R7, SP, #8
320D84:  MOV             R4, R0
320D86:  BLX             j__ZN13CLocalisation16StealFromDeadPedEv; CLocalisation::StealFromDeadPed(void)
320D8A:  CBZ             R0, locret_320DA4
320D8C:  LDR.W           R0, [R4,#0x59C]
320D90:  CMP             R0, #0x13
320D92:  BHI             loc_320DA6
320D94:  MOVS            R1, #1
320D96:  LSL.W           R0, R1, R0
320D9A:  MOVS            R1, #0xC0040
320DA0:  TST             R0, R1
320DA2:  BEQ             loc_320DA6
320DA4:  POP             {R4,R6,R7,PC}
320DA6:  LDRB.W          R0, [R4,#0x448]
320DAA:  LDR.W           R1, [R4,#0x488]
320DAE:  EOR.W           R0, R0, #2
320DB2:  AND.W           R1, R1, #0x20000
320DB6:  ORRS            R0, R1
320DB8:  IT NE
320DBA:  MOVNE           R0, #1
320DBC:  CMP             R0, #0
320DBE:  BEQ             locret_320DA4
320DC0:  LDR.W           R0, [R4,#0x484]
320DC4:  ANDS.W          R0, R0, #0x100
320DC8:  BNE             locret_320DA4
320DCA:  LDRH.W          R3, [R4,#0x75E]
320DCE:  CMP             R3, #0xA
320DD0:  IT CC
320DD2:  POPCC           {R4,R6,R7,PC}
320DD4:  LDR             R0, [R4,#0x14]
320DD6:  ADD.W           R2, R0, #0x30 ; '0'
320DDA:  CMP             R0, #0
320DDC:  IT EQ
320DDE:  ADDEQ           R2, R4, #4
320DE0:  LDM             R2, {R0-R2}
320DE2:  BLX             j__ZN8CPickups15CreateSomeMoneyE7CVectori; CPickups::CreateSomeMoney(CVector,int)
320DE6:  MOVS            R0, #0
320DE8:  STRH.W          R0, [R4,#0x75E]
320DEC:  POP             {R4,R6,R7,PC}
