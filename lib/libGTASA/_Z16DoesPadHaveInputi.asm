; =========================================================
; Game Engine Function: _Z16DoesPadHaveInputi
; Address            : 0x5E5578 - 0x5E56E6
; =========================================================

5E5578:  PUSH            {R4,R5,R7,LR}
5E557A:  ADD             R7, SP, #8
5E557C:  VPUSH           {D8}
5E5580:  MOVS            R1, #0
5E5582:  MOV             R4, R0
5E5584:  MOVS            R5, #0
5E5586:  BLX.W           j__Z21OS_GamepadIsConnectedjP13OSGamepadType; OS_GamepadIsConnected(uint,OSGamepadType *)
5E558A:  CMP             R0, #1
5E558C:  BNE.W           loc_5E56DA
5E5590:  MOV             R0, R4; unsigned int
5E5592:  MOVS            R1, #0; unsigned int
5E5594:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5598:  CMP             R0, #0
5E559A:  BNE.W           loc_5E56D8
5E559E:  MOV             R0, R4; unsigned int
5E55A0:  MOVS            R1, #1; unsigned int
5E55A2:  MOVS            R5, #1
5E55A4:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E55A8:  CMP             R0, #0
5E55AA:  BNE.W           loc_5E56DA
5E55AE:  MOV             R0, R4; unsigned int
5E55B0:  MOVS            R1, #2; unsigned int
5E55B2:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E55B6:  CMP             R0, #0
5E55B8:  BNE.W           loc_5E56D8
5E55BC:  MOV             R0, R4; unsigned int
5E55BE:  MOVS            R1, #3; unsigned int
5E55C0:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E55C4:  CMP             R0, #0
5E55C6:  BNE.W           loc_5E56D8
5E55CA:  MOV             R0, R4; unsigned int
5E55CC:  MOVS            R1, #4; unsigned int
5E55CE:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E55D2:  CMP             R0, #0
5E55D4:  BNE.W           loc_5E56D8
5E55D8:  MOV             R0, R4; unsigned int
5E55DA:  MOVS            R1, #5; unsigned int
5E55DC:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E55E0:  CMP             R0, #0
5E55E2:  BNE             loc_5E56D8
5E55E4:  MOV             R0, R4; unsigned int
5E55E6:  MOVS            R1, #6; unsigned int
5E55E8:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E55EC:  CMP             R0, #0
5E55EE:  BNE             loc_5E56D8
5E55F0:  MOV             R0, R4; unsigned int
5E55F2:  MOVS            R1, #7; unsigned int
5E55F4:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E55F8:  CMP             R0, #0
5E55FA:  BNE             loc_5E56D8
5E55FC:  MOV             R0, R4; unsigned int
5E55FE:  MOVS            R1, #8; unsigned int
5E5600:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5604:  CMP             R0, #0
5E5606:  BNE             loc_5E56D8
5E5608:  MOV             R0, R4; unsigned int
5E560A:  MOVS            R1, #9; unsigned int
5E560C:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5610:  CMP             R0, #0
5E5612:  BNE             loc_5E56D8
5E5614:  MOV             R0, R4; unsigned int
5E5616:  MOVS            R1, #0xA; unsigned int
5E5618:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E561C:  CMP             R0, #0
5E561E:  BNE             loc_5E56D8
5E5620:  MOV             R0, R4; unsigned int
5E5622:  MOVS            R1, #0xB; unsigned int
5E5624:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5628:  CMP             R0, #0
5E562A:  BNE             loc_5E56D8
5E562C:  MOV             R0, R4; unsigned int
5E562E:  MOVS            R1, #0xC; unsigned int
5E5630:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5634:  CMP             R0, #0
5E5636:  BNE             loc_5E56D8
5E5638:  MOV             R0, R4; unsigned int
5E563A:  MOVS            R1, #0x40 ; '@'; unsigned int
5E563C:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E5640:  BIC.W           R0, R0, #0x80000000
5E5644:  VLDR            S16, =0.4
5E5648:  VMOV            S0, R0
5E564C:  VCMPE.F32       S0, S16
5E5650:  VMRS            APSR_nzcv, FPSCR
5E5654:  BGT             loc_5E56D8
5E5656:  MOV             R0, R4; unsigned int
5E5658:  MOVS            R1, #0x41 ; 'A'; unsigned int
5E565A:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E565E:  BIC.W           R0, R0, #0x80000000
5E5662:  VMOV            S0, R0
5E5666:  VCMPE.F32       S0, S16
5E566A:  VMRS            APSR_nzcv, FPSCR
5E566E:  BGT             loc_5E56D8
5E5670:  MOV             R0, R4; unsigned int
5E5672:  MOVS            R1, #0x42 ; 'B'; unsigned int
5E5674:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E5678:  BIC.W           R0, R0, #0x80000000
5E567C:  VMOV            S0, R0
5E5680:  VCMPE.F32       S0, S16
5E5684:  VMRS            APSR_nzcv, FPSCR
5E5688:  BGT             loc_5E56D8
5E568A:  MOV             R0, R4; unsigned int
5E568C:  MOVS            R1, #0x43 ; 'C'; unsigned int
5E568E:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E5692:  BIC.W           R0, R0, #0x80000000
5E5696:  VMOV            S0, R0
5E569A:  VCMPE.F32       S0, S16
5E569E:  VMRS            APSR_nzcv, FPSCR
5E56A2:  BGT             loc_5E56D8
5E56A4:  MOV             R0, R4; unsigned int
5E56A6:  MOVS            R1, #0x44 ; 'D'; unsigned int
5E56A8:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E56AC:  BIC.W           R0, R0, #0x80000000
5E56B0:  VMOV            S0, R0
5E56B4:  VCMPE.F32       S0, S16
5E56B8:  VMRS            APSR_nzcv, FPSCR
5E56BC:  BGT             loc_5E56D8
5E56BE:  MOV             R0, R4; unsigned int
5E56C0:  MOVS            R1, #0x45 ; 'E'; unsigned int
5E56C2:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E56C6:  BIC.W           R0, R0, #0x80000000
5E56CA:  VMOV            S0, R0
5E56CE:  VCMPE.F32       S0, S16
5E56D2:  VMRS            APSR_nzcv, FPSCR
5E56D6:  BLE             loc_5E56E2
5E56D8:  MOVS            R5, #1
5E56DA:  MOV             R0, R5
5E56DC:  VPOP            {D8}
5E56E0:  POP             {R4,R5,R7,PC}
5E56E2:  MOVS            R5, #0
5E56E4:  B               loc_5E56DA
