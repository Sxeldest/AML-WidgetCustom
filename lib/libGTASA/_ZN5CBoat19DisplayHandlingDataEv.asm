; =========================================================
; Game Engine Function: _ZN5CBoat19DisplayHandlingDataEv
; Address            : 0x56C6F4 - 0x56C756
; =========================================================

56C6F4:  PUSH            {R4,R5,R7,LR}
56C6F6:  ADD             R7, SP, #8
56C6F8:  SUB             SP, SP, #0x48
56C6FA:  MOV             R4, R0
56C6FC:  LDR             R0, =(__stack_chk_guard_ptr - 0x56C706)
56C6FE:  ADD             R5, SP, #0x50+var_4C
56C700:  ADR             R1, aThrust32f; "Thrust %3.2f"
56C702:  ADD             R0, PC; __stack_chk_guard_ptr
56C704:  LDR             R0, [R0]; __stack_chk_guard
56C706:  LDR             R0, [R0]
56C708:  STR             R0, [SP,#0x50+var_C]
56C70A:  LDR.W           R0, [R4,#0x388]
56C70E:  VLDR            S0, [R0,#4]
56C712:  VLDR            S2, [R0,#0x7C]
56C716:  MOV             R0, R5
56C718:  VMUL.F32        S0, S2, S0
56C71C:  VCVT.F64.F32    D16, S0
56C720:  VMOV            R2, R3, D16
56C724:  BL              sub_5E6BC0
56C728:  LDR.W           R0, [R4,#0x388]
56C72C:  ADR             R1, aRudderAngle32f; "Rudder Angle  %3.2f"
56C72E:  VLDR            S0, [R0,#0xA0]
56C732:  MOV             R0, R5
56C734:  VCVT.F64.F32    D16, S0
56C738:  VMOV            R2, R3, D16
56C73C:  BL              sub_5E6BC0
56C740:  LDR             R0, =(__stack_chk_guard_ptr - 0x56C748)
56C742:  LDR             R1, [SP,#0x50+var_C]
56C744:  ADD             R0, PC; __stack_chk_guard_ptr
56C746:  LDR             R0, [R0]; __stack_chk_guard
56C748:  LDR             R0, [R0]
56C74A:  SUBS            R0, R0, R1
56C74C:  ITT EQ
56C74E:  ADDEQ           SP, SP, #0x48 ; 'H'
56C750:  POPEQ           {R4,R5,R7,PC}
56C752:  BLX             __stack_chk_fail
