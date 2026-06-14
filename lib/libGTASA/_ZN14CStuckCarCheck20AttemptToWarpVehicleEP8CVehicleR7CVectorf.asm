; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck20AttemptToWarpVehicleEP8CVehicleR7CVectorf
; Address            : 0x328690 - 0x328764
; =========================================================

328690:  PUSH            {R4-R7,LR}
328692:  ADD             R7, SP, #0xC
328694:  PUSH.W          {R8,R9,R11}
328698:  VPUSH           {D8}
32869C:  SUB             SP, SP, #0x30
32869E:  LDR             R0, =(TheCamera_ptr - 0x3286AA)
3286A0:  MOV             R5, R2
3286A2:  MOV             R8, R1
3286A4:  MOV             R1, R5; CVector *
3286A6:  ADD             R0, PC; TheCamera_ptr
3286A8:  MOV.W           R2, #0x40800000; float
3286AC:  MOV             R9, R3
3286AE:  LDR             R0, [R0]; TheCamera ; this
3286B0:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
3286B4:  MOVS            R4, #0
3286B6:  CMP             R0, #0
3286B8:  BNE             loc_328756
3286BA:  VMOV.F32        S0, #-4.0
3286BE:  VLDR            S4, [R5]
3286C2:  VMOV.F32        S2, #4.0
3286C6:  VLDR            S6, [R5,#4]
3286CA:  VLDR            S8, [R5,#8]
3286CE:  ADD             R0, SP, #0x50+var_30; this
3286D0:  ADD             R1, SP, #0x50+var_3C; CVector *
3286D2:  SUB.W           R2, R7, #-var_22; CVector *
3286D6:  MOVS            R3, #(stderr+2); __int16 *
3286D8:  MOVS            R6, #1
3286DA:  VADD.F32        S10, S6, S0
3286DE:  VADD.F32        S12, S4, S0
3286E2:  VADD.F32        S6, S6, S2
3286E6:  VADD.F32        S4, S4, S2
3286EA:  VADD.F32        S0, S8, S0
3286EE:  VADD.F32        S2, S8, S2
3286F2:  VSTR            S10, [SP,#0x50+var_2C]
3286F6:  VSTR            S12, [SP,#0x50+var_30]
3286FA:  VSTR            S6, [SP,#0x50+var_38]
3286FE:  VSTR            S4, [SP,#0x50+var_3C]
328702:  VSTR            S0, [SP,#0x50+var_28]
328706:  VSTR            S2, [SP,#0x50+var_34]
32870A:  STRD.W          R4, R6, [SP,#0x50+var_50]; __int16
32870E:  STRD.W          R6, R6, [SP,#0x50+var_48]; unsigned __int8
328712:  BLX             j__ZN6CWorld35FindMissionEntitiesIntersectingCubeERK7CVectorS2_PssPP7CEntitybbb; CWorld::FindMissionEntitiesIntersectingCube(CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool)
328716:  LDRH.W          R0, [R7,#var_22]
32871A:  CBNZ            R0, loc_328756
32871C:  LDM.W           R5, {R1-R3}; float
328720:  MOV             R0, R8; this
328722:  VMOV            S16, R9
328726:  STRD.W          R6, R6, [SP,#0x50+var_50]; float
32872A:  BLX             j__ZN8CCarCtrl20SetCoordsOfScriptCarEP8CVehiclefffhh; CCarCtrl::SetCoordsOfScriptCar(CVehicle *,float,float,float,uchar,uchar)
32872E:  VLDR            S0, =3.1416
328732:  VLDR            S2, =180.0
328736:  VMUL.F32        S0, S16, S0
32873A:  LDR.W           R0, [R8,#0x14]; this
32873E:  CMP             R0, #0
328740:  VDIV.F32        S0, S0, S2
328744:  BEQ             loc_328750
328746:  VMOV            R1, S0; x
32874A:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
32874E:  B               loc_328754
328750:  VSTR            S0, [R8,#0x10]
328754:  MOVS            R4, #1
328756:  MOV             R0, R4
328758:  ADD             SP, SP, #0x30 ; '0'
32875A:  VPOP            {D8}
32875E:  POP.W           {R8,R9,R11}
328762:  POP             {R4-R7,PC}
