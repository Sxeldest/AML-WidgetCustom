; =========================================================
; Game Engine Function: _ZNK10CPlayerPed8IsHiddenEv
; Address            : 0x4C65EC - 0x4C6616
; =========================================================

4C65EC:  PUSH            {R4,R6,R7,LR}
4C65EE:  ADD             R7, SP, #8
4C65F0:  LDRB.W          R1, [R0,#0x485]
4C65F4:  MOVS            R4, #0
4C65F6:  LSLS            R1, R1, #0x1F
4C65F8:  BNE             loc_4C6612
4C65FA:  BLX             j__ZNK9CPhysical16GetLightingTotalEv; CPhysical::GetLightingTotal(void)
4C65FE:  VLDR            S0, =0.05
4C6602:  VMOV            S2, R0
4C6606:  VCMPE.F32       S2, S0
4C660A:  VMRS            APSR_nzcv, FPSCR
4C660E:  IT LE
4C6610:  MOVLE           R4, #1
4C6612:  MOV             R0, R4
4C6614:  POP             {R4,R6,R7,PC}
