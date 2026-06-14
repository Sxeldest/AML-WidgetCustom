; =========================================================
; Game Engine Function: _ZN48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUseC2EP8CVehicleiRK7CVectori
; Address            : 0x50240C - 0x502484
; =========================================================

50240C:  PUSH            {R4-R7,LR}
50240E:  ADD             R7, SP, #0xC
502410:  PUSH.W          {R8,R9,R11}
502414:  SUB             SP, SP, #8
502416:  MOV             R6, R3
502418:  MOV             R8, R2
50241A:  MOV             R5, R1
50241C:  MOV             R4, R0
50241E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
502422:  LDR             R0, =(_ZTV48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse_ptr - 0x502428)
502424:  ADD             R0, PC; _ZTV48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse_ptr
502426:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse ...
502428:  ADDS            R0, #8
50242A:  STR             R0, [R4]
50242C:  MOVS            R0, #word_2C; this
50242E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
502432:  LDR             R1, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x502440)
502434:  MOV.W           R9, #0
502438:  STRD.W          R9, R9, [SP,#0x20+var_20]; bool
50243C:  ADD             R1, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
50243E:  LDR             R2, [R1]; CTaskSimpleGoTo::ms_fTargetRadius ...
502440:  LDR             R1, [R7,#arg_0]; int
502442:  LDR             R3, [R2]; float
502444:  MOV             R2, R6; CVector *
502446:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
50244A:  STR             R0, [R4,#8]
50244C:  MOVS            R0, #dword_14; this
50244E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
502452:  MOV             R6, R0
502454:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
502458:  LDR             R0, =(_ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr - 0x502462)
50245A:  MOV             R1, R6
50245C:  CMP             R5, #0
50245E:  ADD             R0, PC; _ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr
502460:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarWaitForDoorNotToBeInUse ...
502462:  ADD.W           R0, R0, #8
502466:  STR             R0, [R6]
502468:  STRD.W          R8, R9, [R6,#0xC]
50246C:  STR.W           R5, [R1,#8]!; CEntity **
502470:  ITT NE
502472:  MOVNE           R0, R5; this
502474:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
502478:  STR             R6, [R4,#0xC]
50247A:  MOV             R0, R4
50247C:  ADD             SP, SP, #8
50247E:  POP.W           {R8,R9,R11}
502482:  POP             {R4-R7,PC}
