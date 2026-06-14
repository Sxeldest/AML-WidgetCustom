; =========================================================
; Game Engine Function: _ZN31CTaskSimpleWaitUntilPedIsOutCar10ProcessPedEP4CPed
; Address            : 0x5066E8 - 0x506752
; =========================================================

5066E8:  PUSH            {R4-R7,LR}
5066EA:  ADD             R7, SP, #0xC
5066EC:  PUSH.W          {R11}
5066F0:  SUB             SP, SP, #0x28
5066F2:  MOV             R4, R0
5066F4:  MOV             R5, R1
5066F6:  LDR             R0, [R4,#8]
5066F8:  CBZ             R0, loc_506748
5066FA:  LDRB            R1, [R4,#0xC]
5066FC:  CBZ             R1, loc_506738
5066FE:  MOVS            R0, #0
506700:  ADD             R6, SP, #0x38+var_30
506702:  STRB            R0, [R4,#0xC]
506704:  MOV.W           R0, #0x41000000
506708:  STR             R0, [SP,#0x38+var_38]; float
50670A:  MOV             R0, R6; this
50670C:  MOVS            R1, #0; int
50670E:  MOVS            R2, #0; bool
506710:  MOVS            R3, #0; bool
506712:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
506716:  MOV             R1, R5; CPed *
506718:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
50671C:  LDRD.W          R0, R1, [R4,#0x10]; float
506720:  MOVS            R2, #0; float
506722:  MOVS            R3, #0; float
506724:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
506728:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
50672C:  STR.W           R0, [R5,#0x560]
506730:  MOV             R0, R6; this
506732:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
506736:  LDR             R0, [R4,#8]
506738:  LDRB.W          R0, [R0,#0x485]
50673C:  LSLS            R0, R0, #0x1F
50673E:  MOV.W           R0, #0
506742:  IT EQ
506744:  MOVEQ           R0, #1
506746:  B               loc_50674A
506748:  MOVS            R0, #1
50674A:  ADD             SP, SP, #0x28 ; '('
50674C:  POP.W           {R11}
506750:  POP             {R4-R7,PC}
