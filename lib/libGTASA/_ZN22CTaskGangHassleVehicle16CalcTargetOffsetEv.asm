; =========================================================
; Game Engine Function: _ZN22CTaskGangHassleVehicle16CalcTargetOffsetEv
; Address            : 0x5188C8 - 0x518974
; =========================================================

5188C8:  LDRD.W          R2, R1, [R0,#0x10]
5188CC:  MOVS            R3, #0
5188CE:  CMP             R1, #5; switch 6 cases
5188D0:  STRD.W          R3, R3, [R0,#0x24]
5188D4:  STR             R3, [R0,#0x2C]
5188D6:  IT HI
5188D8:  BXHI            LR
5188DA:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5188E4)
5188DC:  LDRSH.W         R2, [R2,#0x26]
5188E0:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5188E2:  LDR             R3, [R3]; CModelInfo::ms_modelInfoPtrs ...
5188E4:  LDR.W           R2, [R3,R2,LSL#2]
5188E8:  LDR             R2, [R2,#0x2C]
5188EA:  VLDR            S4, [R2]
5188EE:  VLDR            S0, [R2,#4]
5188F2:  VLDR            S6, [R2,#0xC]
5188F6:  VLDR            S2, [R2,#0x10]
5188FA:  TBB.W           [PC,R1]; switch jump
5188FE:  DCB 3; jump table for switch statement
5188FF:  DCB 8
518900:  DCB 0x17
518901:  DCB 0x1C
518902:  DCB 0x2B
518903:  DCB 0x30
518904:  VLDR            S0, [R0,#0x20]; jumptable 005188FA case 0
518908:  VSUB.F32        S0, S4, S0
51890C:  B               loc_518916
51890E:  VLDR            S0, [R0,#0x20]; jumptable 005188FA case 1
518912:  VADD.F32        S0, S6, S0
518916:  VLDR            S6, =0.0
51891A:  VMOV.F32        S4, #0.5
51891E:  VADD.F32        S6, S0, S6
518922:  VMUL.F32        S0, S2, S4
518926:  VSTR            S6, [R0,#0x24]
51892A:  B               loc_518966
51892C:  VLDR            S2, [R0,#0x20]; jumptable 005188FA case 2
518930:  VSUB.F32        S2, S4, S2
518934:  B               loc_51893E
518936:  VLDR            S2, [R0,#0x20]; jumptable 005188FA case 3
51893A:  VADD.F32        S2, S6, S2
51893E:  VLDR            S6, =0.0
518942:  VMOV.F32        S4, #0.5
518946:  VADD.F32        S2, S2, S6
51894A:  VMUL.F32        S0, S0, S4
51894E:  VSTR            S2, [R0,#0x24]
518952:  B               loc_518966
518954:  VLDR            S2, [R0,#0x20]; jumptable 005188FA case 4
518958:  VSUB.F32        S0, S0, S2
51895C:  B               loc_518966
51895E:  VLDR            S0, [R0,#0x20]; jumptable 005188FA case 5
518962:  VADD.F32        S0, S2, S0
518966:  VLDR            S2, =0.0
51896A:  VADD.F32        S0, S0, S2
51896E:  VSTR            S0, [R0,#0x28]
518972:  BX              LR
