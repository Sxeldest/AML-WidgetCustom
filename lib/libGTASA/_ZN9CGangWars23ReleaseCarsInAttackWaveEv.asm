; =========================================================
; Game Engine Function: _ZN9CGangWars23ReleaseCarsInAttackWaveEv
; Address            : 0x30B500 - 0x30B574
; =========================================================

30B500:  PUSH            {R4-R7,LR}
30B502:  ADD             R7, SP, #0xC
30B504:  PUSH.W          {R8,R9,R11}
30B508:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x30B50E)
30B50A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
30B50C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
30B50E:  LDR             R4, [R0]; CPools::ms_pVehiclePool
30B510:  LDR             R0, [R4,#8]
30B512:  CBZ             R0, loc_30B56E
30B514:  MOVW            R1, #0xA2C
30B518:  MOVW            R8, #0xFA04
30B51C:  MUL.W           R5, R0, R1
30B520:  MOVW            R9, #0xFA00
30B524:  SUBS            R6, R0, #1
30B526:  MOVT            R8, #0xFFFF
30B52A:  MOVT            R9, #0xFFFF
30B52E:  LDR             R0, [R4,#4]
30B530:  LDRSB           R0, [R0,R6]
30B532:  CMP             R0, #0
30B534:  BLT             loc_30B564
30B536:  LDR             R0, [R4]
30B538:  ADDS            R1, R0, R5
30B53A:  SUBW            R0, R1, #0xA2C; this
30B53E:  CMP             R0, #0
30B540:  ITT NE
30B542:  LDRNE.W         R2, [R1,R8]
30B546:  TSTNE.W         R2, #0x800
30B54A:  BEQ             loc_30B564
30B54C:  LDR.W           R3, [R1,R9]
30B550:  SUB.W           R1, R1, #0x600
30B554:  BIC.W           R2, R2, #0x800
30B558:  STRD.W          R3, R2, [R1]
30B55C:  MOVS            R1, #1; int
30B55E:  MOVS            R2, #0; bool
30B560:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
30B564:  SUBS            R6, #1
30B566:  SUBW            R5, R5, #0xA2C
30B56A:  ADDS            R0, R6, #1
30B56C:  BNE             loc_30B52E
30B56E:  POP.W           {R8,R9,R11}
30B572:  POP             {R4-R7,PC}
