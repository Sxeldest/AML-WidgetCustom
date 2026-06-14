; =========================================================
; Game Engine Function: _ZNK30CTaskComplexKillPedGroupOnFoot13CreateSubTaskEiP4CPed
; Address            : 0x4E8344 - 0x4E8440
; =========================================================

4E8344:  PUSH            {R4,R5,R7,LR}
4E8346:  ADD             R7, SP, #8
4E8348:  SUB             SP, SP, #0x18
4E834A:  MOV             R5, R0
4E834C:  CMP             R1, #0xC8
4E834E:  BEQ             loc_4E83C0
4E8350:  CMP.W           R1, #0x1A6
4E8354:  BEQ             loc_4E83D2
4E8356:  CMP.W           R1, #0x3E8
4E835A:  BNE             loc_4E8438
4E835C:  MOVS            R0, #dword_38; this
4E835E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E8362:  MOV             R4, R0
4E8364:  LDR             R5, [R5,#0x10]
4E8366:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E836A:  LDR             R0, =(_ZTV25CTaskComplexKillPedOnFoot_ptr - 0x4E8378)
4E836C:  MOVS            R1, #0
4E836E:  MOVS            R2, #1
4E8370:  STRD.W          R1, R1, [R4,#0x14]
4E8374:  ADD             R0, PC; _ZTV25CTaskComplexKillPedOnFoot_ptr
4E8376:  STR             R1, [R4,#0x1C]
4E8378:  STRB.W          R2, [R4,#0x20]
4E837C:  MOV.W           R2, #0xFFFFFFFF
4E8380:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedOnFoot ...
4E8382:  CMP             R5, #0
4E8384:  STR             R2, [R4,#0x28]
4E8386:  STRH            R1, [R4,#0x34]
4E8388:  ADD.W           R0, R0, #8
4E838C:  STR             R1, [R4,#0x30]
4E838E:  LDRB            R2, [R4,#0xC]
4E8390:  STR             R1, [R4,#0x2C]
4E8392:  MOV             R1, R4
4E8394:  STR             R0, [R4]
4E8396:  BIC.W           R0, R2, #0x74 ; 't'
4E839A:  ORR.W           R0, R0, #4
4E839E:  STRB            R0, [R4,#0xC]
4E83A0:  STR.W           R5, [R1,#0x10]!; CEntity **
4E83A4:  BEQ             loc_4E83AE
4E83A6:  MOV             R0, R5; this
4E83A8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E83AC:  LDRB            R0, [R4,#0xC]
4E83AE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E83B8)
4E83B0:  AND.W           R0, R0, #0xF7
4E83B4:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E83B6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4E83B8:  LDR             R1, [R1]; unsigned int
4E83BA:  STRB            R0, [R4,#0xC]
4E83BC:  STR             R1, [R4,#0x24]
4E83BE:  B               loc_4E843A
4E83C0:  MOVS            R0, #byte_8; this
4E83C2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E83C6:  MOV             R4, R0
4E83C8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E83CC:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4E83D2)
4E83CE:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4E83D0:  B               loc_4E8430
4E83D2:  MOVS            R0, #dword_34; this
4E83D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E83D8:  MOV             R4, R0
4E83DA:  BLX             rand
4E83DE:  UXTH            R0, R0
4E83E0:  VLDR            S2, =0.000015259
4E83E4:  VMOV            S0, R0
4E83E8:  LDR             R0, =(aLookabout - 0x4E83F6); "LookAbout"
4E83EA:  MOVS            R1, #0
4E83EC:  MOVS            R2, #9; int
4E83EE:  VCVT.F32.S32    S0, S0
4E83F2:  ADD             R0, PC; "LookAbout"
4E83F4:  STRD.W          R0, R1, [SP,#0x20+var_14]; int
4E83F8:  MOV.W           R0, #0x1A6
4E83FC:  STR             R0, [SP,#0x20+var_18]; int
4E83FE:  MOVS            R0, #0xC0800000
4E8404:  MOVS            R1, #0; int
4E8406:  MOV.W           R3, #0x40800000; int
4E840A:  VMUL.F32        S0, S0, S2
4E840E:  VLDR            S2, =1000.0
4E8412:  VMUL.F32        S0, S0, S2
4E8416:  VCVT.S32.F32    S0, S0
4E841A:  STR             R0, [SP,#0x20+var_20]; float
4E841C:  VMOV            R0, S0
4E8420:  ADDW            R0, R0, #0xBB8
4E8424:  STR             R0, [SP,#0x20+var_1C]; int
4E8426:  MOV             R0, R4; int
4E8428:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
4E842C:  LDR             R0, =(_ZTV20CTaskSimpleLookAbout_ptr - 0x4E8432)
4E842E:  ADD             R0, PC; _ZTV20CTaskSimpleLookAbout_ptr
4E8430:  LDR             R0, [R0]; `vtable for'CTaskSimpleLookAbout
4E8432:  ADDS            R0, #8
4E8434:  STR             R0, [R4]
4E8436:  B               loc_4E843A
4E8438:  MOVS            R4, #0
4E843A:  MOV             R0, R4
4E843C:  ADD             SP, SP, #0x18
4E843E:  POP             {R4,R5,R7,PC}
