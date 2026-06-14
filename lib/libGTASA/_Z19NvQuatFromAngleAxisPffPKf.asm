; =========================================================
; Game Engine Function: _Z19NvQuatFromAngleAxisPffPKf
; Address            : 0x2793C0 - 0x279420
; =========================================================

2793C0:  PUSH            {R4-R7,LR}
2793C2:  ADD             R7, SP, #0xC
2793C4:  PUSH.W          {R11}
2793C8:  VPUSH           {D8}
2793CC:  VMOV.F32        S0, #0.5
2793D0:  MOV             R5, R0
2793D2:  VMOV            S2, R1
2793D6:  MOV             R4, R2
2793D8:  VMUL.F32        S0, S2, S0
2793DC:  VMOV            R6, S0
2793E0:  MOV             R0, R6; x
2793E2:  BLX             sinf
2793E6:  VMOV            S16, R0
2793EA:  VLDR            S0, [R4]
2793EE:  MOV             R0, R6; x
2793F0:  VMUL.F32        S0, S16, S0
2793F4:  VSTR            S0, [R5]
2793F8:  VLDR            S0, [R4,#4]
2793FC:  VMUL.F32        S0, S16, S0
279400:  VSTR            S0, [R5,#4]
279404:  BLX             cosf
279408:  VLDR            S0, [R4,#8]
27940C:  STR             R0, [R5,#0xC]
27940E:  VMUL.F32        S0, S16, S0
279412:  VSTR            S0, [R5,#8]
279416:  VPOP            {D8}
27941A:  POP.W           {R11}
27941E:  POP             {R4-R7,PC}
