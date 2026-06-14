; =========================================================
; Game Engine Function: _ZNK29CTaskComplexGoToPointShooting5CloneEv
; Address            : 0x528864 - 0x528950
; =========================================================

528864:  PUSH            {R4-R7,LR}
528866:  ADD             R7, SP, #0xC
528868:  PUSH.W          {R8-R11}
52886C:  SUB             SP, SP, #4
52886E:  VPUSH           {D8-D9}
528872:  MOV             R5, R0
528874:  MOVS            R0, #dword_38; this
528876:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52887A:  ADD.W           R11, R5, #0x14
52887E:  VLDR            S16, [R5,#0x2C]
528882:  VLDR            S18, [R5,#0x30]
528886:  MOV             R4, R0
528888:  LDRD.W          R8, R6, [R5,#0xC]
52888C:  LDM.W           R11, {R9-R11}
528890:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528894:  LDR             R0, =(_ZTV27CTaskComplexGoToPointAiming_ptr - 0x5288A4)
528896:  ADD.W           R1, R4, #0x14
52889A:  STR.W           R8, [R4,#0xC]
52889E:  CMP             R6, #0
5288A0:  ADD             R0, PC; _ZTV27CTaskComplexGoToPointAiming_ptr
5288A2:  STM.W           R1, {R9-R11}
5288A6:  MOV             R1, R4
5288A8:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAiming ...
5288AA:  ADD.W           R8, R5, #0x20 ; ' '
5288AE:  ADD.W           R0, R0, #8
5288B2:  STR             R0, [R4]
5288B4:  STR.W           R6, [R1,#0x10]!; CEntity **
5288B8:  ITT NE
5288BA:  MOVNE           R0, R6; this
5288BC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5288C0:  VLDR            S0, [R8]
5288C4:  VLDR            S2, [R4,#0x20]
5288C8:  VCMP.F32        S2, S0
5288CC:  VMRS            APSR_nzcv, FPSCR
5288D0:  BNE             loc_528912
5288D2:  VLDR            S0, [R5,#0x24]
5288D6:  VLDR            S2, [R4,#0x24]
5288DA:  VCMP.F32        S2, S0
5288DE:  VMRS            APSR_nzcv, FPSCR
5288E2:  BNE             loc_528912
5288E4:  VLDR            S0, [R5,#0x28]
5288E8:  VLDR            S2, [R4,#0x28]
5288EC:  VCMP.F32        S2, S0
5288F0:  VMRS            APSR_nzcv, FPSCR
5288F4:  BNE             loc_528912
5288F6:  VLDR            S0, [R4,#0x2C]
5288FA:  VCMP.F32        S0, S16
5288FE:  VMRS            APSR_nzcv, FPSCR
528902:  BNE             loc_528912
528904:  VLDR            S0, [R4,#0x30]
528908:  VCMP.F32        S0, S18
52890C:  VMRS            APSR_nzcv, FPSCR
528910:  BEQ             loc_528938
528912:  ADD.W           R0, R4, #0x20 ; ' '
528916:  VLDR            D16, [R8]
52891A:  LDR.W           R1, [R8,#8]
52891E:  STR             R1, [R0,#8]
528920:  VSTR            D16, [R0]
528924:  LDRB.W          R0, [R4,#0x34]
528928:  VSTR            S16, [R4,#0x2C]
52892C:  VSTR            S18, [R4,#0x30]
528930:  ORR.W           R0, R0, #1
528934:  STRB.W          R0, [R4,#0x34]
528938:  LDR             R0, =(_ZTV29CTaskComplexGoToPointShooting_ptr - 0x52893E)
52893A:  ADD             R0, PC; _ZTV29CTaskComplexGoToPointShooting_ptr
52893C:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointShooting ...
52893E:  ADDS            R0, #8
528940:  STR             R0, [R4]
528942:  MOV             R0, R4
528944:  VPOP            {D8-D9}
528948:  ADD             SP, SP, #4
52894A:  POP.W           {R8-R11}
52894E:  POP             {R4-R7,PC}
