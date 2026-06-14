; =========================================================
; Game Engine Function: _ZN9CPhysical21UnsetIsInSafePositionEv
; Address            : 0x3FE6D4 - 0x3FE734
; =========================================================

3FE6D4:  PUSH            {R4,R5,R7,LR}
3FE6D6:  ADD             R7, SP, #8
3FE6D8:  MOV             R4, R0
3FE6DA:  ADD.W           R5, R4, #0x48 ; 'H'
3FE6DE:  VLDR            S0, [R4,#0x58]
3FE6E2:  VLDR            S2, [R4,#0x5C]
3FE6E6:  VLD1.32         {D16-D17}, [R5]
3FE6EA:  VNEG.F32        S0, S0
3FE6EE:  VNEG.F32        S2, S2
3FE6F2:  VNEG.F32        Q8, Q8
3FE6F6:  VST1.32         {D16-D17}, [R5]
3FE6FA:  VSTR            S0, [R4,#0x58]
3FE6FE:  VSTR            S2, [R4,#0x5C]
3FE702:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
3FE706:  VLDR            S0, [R4,#0x58]
3FE70A:  VLDR            S2, [R4,#0x5C]
3FE70E:  VLD1.32         {D16-D17}, [R5]
3FE712:  VNEG.F32        S0, S0
3FE716:  VNEG.F32        S2, S2
3FE71A:  VNEG.F32        Q8, Q8
3FE71E:  LDR             R0, [R4,#0x1C]
3FE720:  BIC.W           R0, R0, #0x20 ; ' '
3FE724:  STR             R0, [R4,#0x1C]
3FE726:  VST1.32         {D16-D17}, [R5]
3FE72A:  VSTR            S0, [R4,#0x58]
3FE72E:  VSTR            S2, [R4,#0x5C]
3FE732:  POP             {R4,R5,R7,PC}
