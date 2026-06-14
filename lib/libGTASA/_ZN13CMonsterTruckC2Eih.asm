; =========================================================
; Game Engine Function: _ZN13CMonsterTruckC2Eih
; Address            : 0x5744CC - 0x57450A
; =========================================================

5744CC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CMonsterTruck::CMonsterTruck(int, unsigned char)'
5744CE:  ADD             R7, SP, #8
5744D0:  MOVS            R3, #0; unsigned __int8
5744D2:  MOV             R4, R0
5744D4:  BLX             j__ZN11CAutomobileC2Eihh_0; CAutomobile::CAutomobile(int,uchar,uchar)
5744D8:  LDR             R0, =(_ZTV13CMonsterTruck_ptr - 0x5744E6)
5744DA:  VMOV.F32        Q8, #1.0
5744DE:  ADDW            R1, R4, #0x99C
5744E2:  ADD             R0, PC; _ZTV13CMonsterTruck_ptr
5744E4:  VST1.32         {D16-D17}, [R1]
5744E8:  LDR             R0, [R0]; `vtable for'CMonsterTruck ...
5744EA:  ADDS            R0, #8
5744EC:  STR             R0, [R4]
5744EE:  MOV             R0, R4; this
5744F0:  BLX             j__ZN13CMonsterTruck20SetupSuspensionLinesEv; CMonsterTruck::SetupSuspensionLines(void)
5744F4:  LDRB.W          R0, [R4,#0x87C]
5744F8:  MOVS            R1, #1
5744FA:  STR.W           R1, [R4,#0x5A4]
5744FE:  ORR.W           R0, R0, #0x80
574502:  STRB.W          R0, [R4,#0x87C]
574506:  MOV             R0, R4
574508:  POP             {R4,R6,R7,PC}
