; =========================================================
; Game Engine Function: _ZN24CTaskSimpleGoToPointFine10ProcessPedEP4CPed
; Address            : 0x517890 - 0x517958
; =========================================================

517890:  PUSH            {R4-R7,LR}
517892:  ADD             R7, SP, #0xC
517894:  PUSH.W          {R11}
517898:  VPUSH           {D8-D9}; float
51789C:  MOV             R4, R1
51789E:  MOV             R5, R0
5178A0:  LDR             R0, [R4,#0x14]
5178A2:  VLDR            S4, [R5,#0x18]
5178A6:  ADD.W           R1, R0, #0x30 ; '0'
5178AA:  CMP             R0, #0
5178AC:  VLDR            S0, [R5,#0xC]
5178B0:  VMUL.F32        S4, S4, S4
5178B4:  VLDR            S2, [R5,#0x10]
5178B8:  IT EQ
5178BA:  ADDEQ           R1, R4, #4
5178BC:  VLDR            S6, [R1]
5178C0:  VLDR            S8, [R1,#4]
5178C4:  VSUB.F32        S18, S0, S6
5178C8:  VSUB.F32        S16, S2, S8
5178CC:  VMUL.F32        S2, S18, S18
5178D0:  VMUL.F32        S0, S16, S16
5178D4:  VADD.F32        S0, S2, S0
5178D8:  VLDR            S2, =0.0
5178DC:  VADD.F32        S0, S0, S2
5178E0:  VCMPE.F32       S0, S4
5178E4:  VMRS            APSR_nzcv, FPSCR
5178E8:  BLE             loc_5178F6
5178EA:  MOV             R0, R5; this
5178EC:  MOV             R1, R4; CPed *
5178EE:  BLX             j__ZN15CTaskSimpleGoTo16HasCircledTargetEP4CPed; CTaskSimpleGoTo::HasCircledTarget(CPed *)
5178F2:  CMP             R0, #1
5178F4:  BNE             loc_517922
5178F6:  MOV             R0, R5; this
5178F8:  MOV             R1, R4; CPed *
5178FA:  BLX             j__ZN15CTaskSimpleGoTo6QuitIKEP4CPed; CTaskSimpleGoTo::QuitIK(CPed *)
5178FE:  MOV             R0, R4
517900:  MOVS            R1, #1
517902:  MOVS            R6, #1
517904:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
517908:  LDR             R0, [R4]
51790A:  LDR             R1, [R0,#0x60]
51790C:  MOV             R0, R4
51790E:  BLX             R1
517910:  LDR             R1, [R5,#8]
517912:  MOV             R0, R4
517914:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
517918:  LDR             R0, [R4]
51791A:  LDR             R1, [R0,#0x60]
51791C:  MOV             R0, R4
51791E:  BLX             R1
517920:  B               loc_51794C
517922:  MOV             R0, R5; this
517924:  MOV             R1, R4; CPed *
517926:  BLX             j__ZN24CTaskSimpleGoToPointFine18SetBlendedMoveAnimEP4CPed; CTaskSimpleGoToPointFine::SetBlendedMoveAnim(CPed *)
51792A:  VMOV            R0, S18; this
51792E:  MOVS            R2, #0; float
517930:  VMOV            R1, S16; float
517934:  MOVS            R3, #0; float
517936:  MOVS            R6, #0
517938:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
51793C:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
517940:  STR.W           R0, [R4,#0x560]
517944:  MOV             R0, R5; this
517946:  MOV             R1, R4; CPed *
517948:  BLX             j__ZN15CTaskSimpleGoTo7SetUpIKEP4CPed; CTaskSimpleGoTo::SetUpIK(CPed *)
51794C:  MOV             R0, R6
51794E:  VPOP            {D8-D9}
517952:  POP.W           {R11}
517956:  POP             {R4-R7,PC}
