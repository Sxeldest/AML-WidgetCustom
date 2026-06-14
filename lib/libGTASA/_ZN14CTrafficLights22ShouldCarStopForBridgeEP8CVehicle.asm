; =========================================================
; Game Engine Function: _ZN14CTrafficLights22ShouldCarStopForBridgeEP8CVehicle
; Address            : 0x3637A0 - 0x36383A
; =========================================================

3637A0:  PUSH            {R4,R6,R7,LR}
3637A2:  ADD             R7, SP, #8
3637A4:  MOV             R4, R0
3637A6:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3637AA:  CMP             R0, #3
3637AC:  BEQ             loc_363836
3637AE:  MOV             R0, R4; this
3637B0:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3637B4:  CMP             R0, #5
3637B6:  BEQ             loc_363836
3637B8:  LDRH.W          R0, [R4,#0x3AA]
3637BC:  MOVW            R3, #0xFFFF
3637C0:  CMP             R0, R3
3637C2:  BEQ             loc_363836
3637C4:  LDR             R1, =(ThePaths_ptr - 0x3637CC)
3637C6:  LSRS            R2, R0, #0xA
3637C8:  ADD             R1, PC; ThePaths_ptr
3637CA:  LDR             R1, [R1]; ThePaths
3637CC:  ADD.W           R1, R1, R2,LSL#2
3637D0:  LDR.W           R1, [R1,#0x804]
3637D4:  CMP             R1, #0
3637D6:  ITT NE
3637D8:  LDRHNE.W        R1, [R4,#0x3A8]
3637DC:  CMPNE           R1, R3
3637DE:  BEQ             loc_363836
3637E0:  LDR             R3, =(ThePaths_ptr - 0x3637E6)
3637E2:  ADD             R3, PC; ThePaths_ptr
3637E4:  LDR             R4, [R3]; ThePaths
3637E6:  LSRS            R3, R1, #0xA
3637E8:  ADD.W           R4, R4, R3,LSL#2
3637EC:  LDR.W           R4, [R4,#0x804]
3637F0:  CBZ             R4, loc_363836
3637F2:  LDR             R4, =(ThePaths_ptr - 0x3637FC)
3637F4:  BFC.W           R0, #0xA, #0x16
3637F8:  ADD             R4, PC; ThePaths_ptr
3637FA:  RSB.W           R0, R0, R0,LSL#3
3637FE:  LDR             R4, [R4]; ThePaths
363800:  ADD.W           R2, R4, R2,LSL#2
363804:  LDR.W           R2, [R2,#0x924]
363808:  ADD.W           R0, R2, R0,LSL#1
36380C:  LDRB            R0, [R0,#0xC]
36380E:  LSLS            R0, R0, #0x1D
363810:  BPL             loc_363836
363812:  LDR             R0, =(ThePaths_ptr - 0x36381C)
363814:  BFC.W           R1, #0xA, #0x16
363818:  ADD             R0, PC; ThePaths_ptr
36381A:  RSB.W           R1, R1, R1,LSL#3
36381E:  LDR             R0, [R0]; ThePaths
363820:  ADD.W           R0, R0, R3,LSL#2
363824:  LDR.W           R0, [R0,#0x924]
363828:  ADD.W           R0, R0, R1,LSL#1
36382C:  LDRB            R0, [R0,#0xC]
36382E:  LSLS            R0, R0, #0x1D
363830:  ITT PL
363832:  MOVPL           R0, #1
363834:  POPPL           {R4,R6,R7,PC}
363836:  MOVS            R0, #0
363838:  POP             {R4,R6,R7,PC}
