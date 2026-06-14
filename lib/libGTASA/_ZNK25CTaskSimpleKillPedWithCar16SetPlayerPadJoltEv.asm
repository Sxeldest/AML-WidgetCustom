; =========================================================
; Game Engine Function: _ZNK25CTaskSimpleKillPedWithCar16SetPlayerPadJoltEv
; Address            : 0x50B984 - 0x50BA4E
; =========================================================

50B984:  PUSH            {R4,R5,R7,LR}
50B986:  ADD             R7, SP, #8
50B988:  MOV             R4, R0
50B98A:  MOV.W           R0, #0xFFFFFFFF; int
50B98E:  MOVS            R1, #0; bool
50B990:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
50B994:  LDR             R1, [R4,#8]
50B996:  CMP             R0, R1
50B998:  IT NE
50B99A:  POPNE           {R4,R5,R7,PC}
50B99C:  VLDR            S0, [R0,#0x48]
50B9A0:  VLDR            S2, [R0,#0x4C]
50B9A4:  VMUL.F32        S0, S0, S0
50B9A8:  VLDR            S4, [R0,#0x50]
50B9AC:  VMUL.F32        S2, S2, S2
50B9B0:  VLDR            S10, =250.0
50B9B4:  VMUL.F32        S4, S4, S4
50B9B8:  VADD.F32        S0, S0, S2
50B9BC:  VADD.F32        S0, S0, S4
50B9C0:  VSQRT.F32       S2, S0
50B9C4:  VLDR            S0, =100.0
50B9C8:  VMUL.F32        S4, S2, S0
50B9CC:  VLDR            S2, =2000.0
50B9D0:  VMUL.F32        S6, S4, S2
50B9D4:  VLDR            S4, [R1,#0x90]
50B9D8:  VDIV.F32        S8, S6, S4
50B9DC:  VLDR            S6, =80.0
50B9E0:  VADD.F32        S8, S8, S6
50B9E4:  VCMPE.F32       S8, S10
50B9E8:  VMRS            APSR_nzcv, FPSCR
50B9EC:  BLE             loc_50B9F2
50B9EE:  MOVS            R4, #0xFA
50B9F0:  B               loc_50BA2E
50B9F2:  VLDR            S8, [R1,#0x48]
50B9F6:  VLDR            S10, [R1,#0x4C]
50B9FA:  VMUL.F32        S8, S8, S8
50B9FE:  VLDR            S12, [R1,#0x50]
50BA02:  VMUL.F32        S10, S10, S10
50BA06:  VMUL.F32        S12, S12, S12
50BA0A:  VADD.F32        S8, S8, S10
50BA0E:  VADD.F32        S8, S8, S12
50BA12:  VSQRT.F32       S8, S8
50BA16:  VMUL.F32        S0, S8, S0
50BA1A:  VMUL.F32        S0, S0, S2
50BA1E:  VDIV.F32        S0, S0, S4
50BA22:  VADD.F32        S0, S0, S6
50BA26:  VCVT.U32.F32    S0, S0
50BA2A:  VMOV            R4, S0
50BA2E:  MOVW            R0, #0x9C40
50BA32:  MOV             R1, R4
50BA34:  BLX             __aeabi_uidiv
50BA38:  SXTH            R5, R0
50BA3A:  MOVS            R0, #0; this
50BA3C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
50BA40:  MOV             R1, R5; __int16
50BA42:  MOV             R2, R4; unsigned __int8
50BA44:  MOVS            R3, #0; unsigned int
50BA46:  POP.W           {R4,R5,R7,LR}
50BA4A:  B.W             sub_18F134
