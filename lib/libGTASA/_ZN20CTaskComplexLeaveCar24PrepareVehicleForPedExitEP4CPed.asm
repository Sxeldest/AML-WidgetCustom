; =========================================================
; Game Engine Function: _ZN20CTaskComplexLeaveCar24PrepareVehicleForPedExitEP4CPed
; Address            : 0x4F92E8 - 0x4F9376
; =========================================================

4F92E8:  PUSH            {R4-R7,LR}
4F92EA:  ADD             R7, SP, #0xC
4F92EC:  PUSH.W          {R11}
4F92F0:  MOV             R5, R0
4F92F2:  MOV             R4, R1
4F92F4:  LDRD.W          R0, R1, [R5,#0xC]; CVehicle *
4F92F8:  MOVS            R2, #1; int
4F92FA:  MOVS            R6, #1
4F92FC:  BLX             j__ZN13CCarEnterExit15ComputeDoorFlagERK8CVehicleib; CCarEnterExit::ComputeDoorFlag(CVehicle const&,int,bool)
4F9300:  STRB.W          R0, [R5,#0x20]
4F9304:  UXTB            R1, R0; unsigned __int8
4F9306:  LDR             R2, [R5,#0xC]
4F9308:  MOV             R0, R2; this
4F930A:  BLX             j__ZN8CVehicle18SetGettingOutFlagsEh; CVehicle::SetGettingOutFlags(uchar)
4F930E:  LDR             R0, [R5,#0xC]
4F9310:  STRB.W          R6, [R5,#0x21]
4F9314:  LDRB.W          R1, [R0,#0x489]
4F9318:  ADDS            R1, #1
4F931A:  STRB.W          R1, [R0,#0x489]
4F931E:  LDR             R0, [R5,#0xC]
4F9320:  LDR.W           R0, [R0,#0x464]; this
4F9324:  CBZ             R0, loc_4F9348
4F9326:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F932A:  CBNZ            R0, loc_4F9348
4F932C:  LDR             R0, [R5,#0xC]
4F932E:  LDR.W           R1, [R0,#0x464]
4F9332:  CMP             R1, R4
4F9334:  BNE             loc_4F9348
4F9336:  LDRB            R1, [R5,#0x18]
4F9338:  CMP             R1, #0
4F933A:  ITTTT NE
4F933C:  MOVNE           R1, #0
4F933E:  STRBNE.W        R1, [R0,#0x3D4]
4F9342:  LDRNE           R0, [R5,#0xC]
4F9344:  STRBNE.W        R1, [R0,#0x3BE]
4F9348:  MOV             R0, R4; this
4F934A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F934E:  CMP             R0, #1
4F9350:  BNE             loc_4F935C
4F9352:  LDR             R0, [R5,#0xC]
4F9354:  LDR.W           R1, [R0,#0x464]
4F9358:  CMP             R1, R4
4F935A:  BEQ             loc_4F9362
4F935C:  POP.W           {R11}
4F9360:  POP             {R4-R7,PC}
4F9362:  LDRB.W          R1, [R0,#0x3A]
4F9366:  MOVS            R2, #9
4F9368:  BFI.W           R1, R2, #3, #0x1D
4F936C:  STRB.W          R1, [R0,#0x3A]
4F9370:  POP.W           {R11}
4F9374:  POP             {R4-R7,PC}
