; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo24SetAtomicRenderCallbacksEv
; Address            : 0x3870C4 - 0x38710A
; =========================================================

3870C4:  LDR             R1, [R0,#0x54]
3870C6:  SUBS            R2, R1, #4; switch 5 cases
3870C8:  CMP             R2, #4
3870CA:  BHI             def_3870CC; jumptable 003870CC default case, case 7
3870CC:  TBB.W           [PC,R2]; switch jump
3870D0:  DCB 3; jump table for switch statement
3870D1:  DCB 6
3870D2:  DCB 0xA
3870D3:  DCB 0x11
3870D4:  DCB 3
3870D5:  ALIGN 2
3870D6:  LDR             R1, =(_ZN17CVehicleModelInfo30SetAtomicRendererCB_BigVehicleEP8RpAtomicPv_ptr - 0x3870DC); jumptable 003870CC cases 4,8
3870D8:  ADD             R1, PC; _ZN17CVehicleModelInfo30SetAtomicRendererCB_BigVehicleEP8RpAtomicPv_ptr
3870DA:  B               loc_3870E8
3870DC:  LDR             R1, =(_ZN17CVehicleModelInfo24SetAtomicRendererCB_BoatEP8RpAtomicPv_ptr - 0x3870E4); jumptable 003870CC case 5
3870DE:  LDR             R0, [R0,#0x34]
3870E0:  ADD             R1, PC; _ZN17CVehicleModelInfo24SetAtomicRendererCB_BoatEP8RpAtomicPv_ptr
3870E2:  B               loc_387102
3870E4:  LDR             R1, =(_ZN17CVehicleModelInfo25SetAtomicRendererCB_TrainEP8RpAtomicPv_ptr - 0x3870EA); jumptable 003870CC case 6
3870E6:  ADD             R1, PC; _ZN17CVehicleModelInfo25SetAtomicRendererCB_TrainEP8RpAtomicPv_ptr
3870E8:  LDR             R0, [R0,#0x34]
3870EA:  MOVS            R2, #0
3870EC:  LDR             R1, [R1]; CVehicleModelInfo::SetAtomicRendererCB_BigVehicle(RpAtomic *,void *)
3870EE:  B.W             sub_18E45C
3870F2:  LDR             R0, [R0,#0x34]; jumptable 003870CC default case, case 7
3870F4:  CMP             R1, #3
3870F6:  BNE             loc_3870FE
3870F8:  LDR             R1, =(_ZN17CVehicleModelInfo28SetAtomicRendererCB_RealHeliEP8RpAtomicPv_ptr - 0x3870FE)
3870FA:  ADD             R1, PC; _ZN17CVehicleModelInfo28SetAtomicRendererCB_RealHeliEP8RpAtomicPv_ptr
3870FC:  B               loc_387102
3870FE:  LDR             R1, =(_ZN17CVehicleModelInfo19SetAtomicRendererCBEP8RpAtomicPv_ptr - 0x387104)
387100:  ADD             R1, PC; _ZN17CVehicleModelInfo19SetAtomicRendererCBEP8RpAtomicPv_ptr
387102:  LDR             R1, [R1]; CVehicleModelInfo::SetAtomicRendererCB(RpAtomic *,void *)
387104:  MOV             R2, R0
387106:  B.W             sub_18E45C
