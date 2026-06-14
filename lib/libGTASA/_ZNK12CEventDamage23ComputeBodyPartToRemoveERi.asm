; =========================================================
; Game Engine Function: _ZNK12CEventDamage23ComputeBodyPartToRemoveERi
; Address            : 0x372D6C - 0x372E26
; =========================================================

372D6C:  PUSH            {R4,R6,R7,LR}
372D6E:  ADD             R7, SP, #8
372D70:  MOV             R4, R1
372D72:  MOVS            R1, #0
372D74:  STR             R1, [R4]
372D76:  LDR             R1, [R0,#0x18]
372D78:  CMP             R1, #0x33 ; '3'; switch 52 cases
372D7A:  BHI.W           def_372D7E; jumptable 00372D7E default case, cases 17-23,28,29,32,37,39-45,47-50
372D7E:  TBB.W           [PC,R1]; switch jump
372D82:  DCB 0x1A; jump table for switch statement
372D83:  DCB 0x1A
372D84:  DCB 0x1A
372D85:  DCB 0x1A
372D86:  DCB 0x1A
372D87:  DCB 0x1A
372D88:  DCB 0x1A
372D89:  DCB 0x1A
372D8A:  DCB 0x1A
372D8B:  DCB 0x1A
372D8C:  DCB 0x1A
372D8D:  DCB 0x1A
372D8E:  DCB 0x1A
372D8F:  DCB 0x1A
372D90:  DCB 0x1A
372D91:  DCB 0x1A
372D92:  DCB 0x2E
372D93:  DCB 0x51
372D94:  DCB 0x51
372D95:  DCB 0x51
372D96:  DCB 0x51
372D97:  DCB 0x51
372D98:  DCB 0x51
372D99:  DCB 0x51
372D9A:  DCB 0x1E
372D9B:  DCB 0x1E
372D9C:  DCB 0x1E
372D9D:  DCB 0x1E
372D9E:  DCB 0x51
372D9F:  DCB 0x51
372DA0:  DCB 0x1E
372DA1:  DCB 0x1E
372DA2:  DCB 0x51
372DA3:  DCB 0x1E
372DA4:  DCB 0x1E
372DA5:  DCB 0x2E
372DA6:  DCB 0x2E
372DA7:  DCB 0x51
372DA8:  DCB 0x1E
372DA9:  DCB 0x51
372DAA:  DCB 0x51
372DAB:  DCB 0x51
372DAC:  DCB 0x51
372DAD:  DCB 0x51
372DAE:  DCB 0x51
372DAF:  DCB 0x51
372DB0:  DCB 0x1A
372DB1:  DCB 0x51
372DB2:  DCB 0x51
372DB3:  DCB 0x51
372DB4:  DCB 0x51
372DB5:  DCB 0x2E
372DB6:  LDRB.W          R0, [R0,#0x3D]; jumptable 00372D7E cases 0-15,46
372DBA:  CBZ             R0, def_372D7E; jumptable 00372D7E default case, cases 17-23,28,29,32,37,39-45,47-50
372DBC:  B               loc_372DD6; jumptable 00372DCC case 9
372DBE:  LDRB.W          R1, [R0,#0x3D]; jumptable 00372D7E cases 24-27,30,31,33,34,38
372DC2:  CBZ             R1, def_372D7E; jumptable 00372D7E default case, cases 17-23,28,29,32,37,39-45,47-50
372DC4:  LDR             R0, [R0,#0x1C]
372DC6:  SUBS            R0, #5; switch 5 cases
372DC8:  CMP             R0, #4
372DCA:  BHI             def_372D7E; jumptable 00372D7E default case, cases 17-23,28,29,32,37,39-45,47-50
372DCC:  TBB.W           [PC,R0]; switch jump
372DD0:  DCB 5; jump table for switch statement
372DD1:  DCB 0x24
372DD2:  DCB 0x26
372DD3:  DCB 0x28
372DD4:  DCB 3
372DD5:  ALIGN 2
372DD6:  MOVS            R0, #2; jumptable 00372DCC case 9
372DD8:  B               loc_372E22
372DDA:  MOVS            R0, #3; jumptable 00372DCC case 5
372DDC:  B               loc_372E22
372DDE:  LDRB.W          R0, [R0,#0x3D]; jumptable 00372D7E cases 16,35,36,51
372DE2:  CMP             R0, #0
372DE4:  IT EQ
372DE6:  POPEQ           {R4,R6,R7,PC}
372DE8:  BLX             rand
372DEC:  UXTH            R0, R0
372DEE:  VLDR            S2, =0.000015259
372DF2:  VMOV            S0, R0
372DF6:  LDR             R0, =(unk_610260 - 0x372E04)
372DF8:  VMOV.F32        S4, #5.0
372DFC:  VCVT.F32.S32    S0, S0
372E00:  ADD             R0, PC; unk_610260
372E02:  VMUL.F32        S0, S0, S2
372E06:  VMUL.F32        S0, S0, S4
372E0A:  VCVT.S32.F32    S0, S0
372E0E:  VMOV            R1, S0
372E12:  LDR.W           R0, [R0,R1,LSL#2]
372E16:  B               loc_372E22
372E18:  MOVS            R0, #4; jumptable 00372DCC case 6
372E1A:  B               loc_372E22
372E1C:  MOVS            R0, #7; jumptable 00372DCC case 7
372E1E:  B               loc_372E22
372E20:  MOVS            R0, #8; jumptable 00372DCC case 8
372E22:  STR             R0, [R4]
372E24:  POP             {R4,R6,R7,PC}; jumptable 00372D7E default case, cases 17-23,28,29,32,37,39-45,47-50
