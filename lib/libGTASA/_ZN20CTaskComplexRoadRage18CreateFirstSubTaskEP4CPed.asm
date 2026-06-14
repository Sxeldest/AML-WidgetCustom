; =========================================================
; Game Engine Function: _ZN20CTaskComplexRoadRage18CreateFirstSubTaskEP4CPed
; Address            : 0x4E79DC - 0x4E7ACE
; =========================================================

4E79DC:  PUSH            {R4-R7,LR}
4E79DE:  ADD             R7, SP, #0xC
4E79E0:  PUSH.W          {R11}
4E79E4:  VPUSH           {D8-D9}
4E79E8:  MOV             R5, R0
4E79EA:  MOV             R4, R1
4E79EC:  LDR             R0, [R5,#0xC]
4E79EE:  CMP             R0, #0
4E79F0:  ITT NE
4E79F2:  LDRNE.W         R1, [R4,#0x590]
4E79F6:  CMPNE           R1, #0
4E79F8:  BEQ             loc_4E7A0A
4E79FA:  LDRB.W          R1, [R4,#0x485]
4E79FE:  LSLS            R1, R1, #0x1F
4E7A00:  ITT NE
4E7A02:  LDRNE.W         R0, [R0,#0x59C]
4E7A06:  CMPNE           R0, #6
4E7A08:  BNE             loc_4E7A16
4E7A0A:  MOVS            R0, #0
4E7A0C:  VPOP            {D8-D9}
4E7A10:  POP.W           {R11}
4E7A14:  POP             {R4-R7,PC}
4E7A16:  LDR.W           R0, [R4,#0x59C]
4E7A1A:  SUBS            R0, #7
4E7A1C:  CMP             R0, #9
4E7A1E:  BHI             loc_4E7A32
4E7A20:  MOV             R0, R4
4E7A22:  MOVS            R1, #0x16
4E7A24:  MOV.W           R2, #0x7D0
4E7A28:  BLX             j__ZN4CPed17GiveDelayedWeaponE11eWeaponTypej; CPed::GiveDelayedWeapon(eWeaponType,uint)
4E7A2C:  MOV             R0, R4
4E7A2E:  MOVS            R1, #0x16
4E7A30:  B               loc_4E7A96
4E7A32:  BLX             rand
4E7A36:  UXTH            R0, R0
4E7A38:  VLDR            S16, =0.000015259
4E7A3C:  VMOV            S0, R0
4E7A40:  VLDR            S18, =100.0
4E7A44:  VCVT.F32.S32    S0, S0
4E7A48:  VMUL.F32        S0, S0, S16
4E7A4C:  VMUL.F32        S0, S0, S18
4E7A50:  VCVT.S32.F32    S0, S0
4E7A54:  VMOV            R0, S0
4E7A58:  CMP             R0, #0x31 ; '1'
4E7A5A:  BGT             loc_4E7A9A
4E7A5C:  BLX             rand
4E7A60:  UXTH            R0, R0
4E7A62:  MOVS            R6, #6
4E7A64:  VMOV            S0, R0
4E7A68:  MOVS            R2, #1
4E7A6A:  VCVT.F32.S32    S0, S0
4E7A6E:  VMUL.F32        S0, S0, S16
4E7A72:  VMUL.F32        S0, S0, S18
4E7A76:  VCVT.S32.F32    S0, S0
4E7A7A:  VMOV            R0, S0
4E7A7E:  CMP             R0, #0x43 ; 'C'
4E7A80:  IT LT
4E7A82:  MOVLT           R6, #2
4E7A84:  CMP             R0, #0x22 ; '"'
4E7A86:  IT LT
4E7A88:  MOVLT           R6, #5
4E7A8A:  MOV             R0, R4
4E7A8C:  MOV             R1, R6
4E7A8E:  BLX             j__ZN4CPed17GiveDelayedWeaponE11eWeaponTypej; CPed::GiveDelayedWeapon(eWeaponType,uint)
4E7A92:  MOV             R0, R4
4E7A94:  MOV             R1, R6
4E7A96:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
4E7A9A:  LDR             R0, =(g_InterestingEvents_ptr - 0x4E7AA4)
4E7A9C:  MOVS            R1, #0x12
4E7A9E:  MOV             R2, R4
4E7AA0:  ADD             R0, PC; g_InterestingEvents_ptr
4E7AA2:  LDR             R0, [R0]; g_InterestingEvents
4E7AA4:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
4E7AA8:  LDR             R0, [R5,#0xC]
4E7AAA:  MOV.W           R1, #0x2C0
4E7AAE:  MOV             R2, R4; CPed *
4E7AB0:  LDR.W           R0, [R0,#0x484]
4E7AB4:  TST.W           R0, #0x100
4E7AB8:  MOV             R0, R5; this
4E7ABA:  IT EQ
4E7ABC:  MOVEQ.W         R1, #0x3E8; int
4E7AC0:  VPOP            {D8-D9}
4E7AC4:  POP.W           {R11}
4E7AC8:  POP.W           {R4-R7,LR}
4E7ACC:  B               _ZNK20CTaskComplexRoadRage13CreateSubTaskEiP4CPed; CTaskComplexRoadRage::CreateSubTask(int,CPed *)
