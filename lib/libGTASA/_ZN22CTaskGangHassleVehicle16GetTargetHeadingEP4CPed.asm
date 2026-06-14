; =========================================================
; Game Engine Function: _ZN22CTaskGangHassleVehicle16GetTargetHeadingEP4CPed
; Address            : 0x519290 - 0x5192DA
; =========================================================

519290:  LDRD.W          R1, R0, [R0,#0x10]
519294:  SUBS            R0, #1; switch 5 cases
519296:  CMP             R0, #4
519298:  LDR             R1, [R1,#0x14]
51929A:  VLDR            D0, [R1]
51929E:  BHI             def_5192A4; jumptable 005192A4 default case, case 2
5192A0:  VLDR            D16, [R1,#0x10]
5192A4:  TBB.W           [PC,R0]; switch jump
5192A8:  DCB 3; jump table for switch statement
5192A9:  DCB 0xB
5192AA:  DCB 3
5192AB:  DCB 6
5192AC:  DCB 9
5192AD:  ALIGN 2
5192AE:  VNEG.F32        D0, D0; jumptable 005192A4 cases 1,3
5192B2:  B               def_5192A4; jumptable 005192A4 default case, case 2
5192B4:  VMOV            D0, D16; jumptable 005192A4 case 4
5192B8:  B               def_5192A4; jumptable 005192A4 default case, case 2
5192BA:  VNEG.F32        D0, D16; jumptable 005192A4 case 5
5192BE:  PUSH            {R7,LR}; jumptable 005192A4 default case, case 2
5192C0:  MOV             R7, SP
5192C2:  VMOV            R0, S0; this
5192C6:  MOVS            R2, #0; float
5192C8:  VMOV            R1, S1; float
5192CC:  MOVS            R3, #0; float
5192CE:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5192D2:  POP.W           {R7,LR}
5192D6:  B.W             j_j__ZN8CGeneral16LimitRadianAngleEf; j_CGeneral::LimitRadianAngle(float)
