; =========================================================
; Game Engine Function: _ZN7CMatrix7RotateZEf
; Address            : 0x44F49E - 0x44F56E
; =========================================================

44F49E:  PUSH            {R4-R7,LR}
44F4A0:  ADD             R7, SP, #0xC
44F4A2:  PUSH.W          {R11}
44F4A6:  VPUSH           {D8-D9}
44F4AA:  MOV             R5, R1
44F4AC:  MOV             R4, R0
44F4AE:  MOV             R0, R5; x
44F4B0:  BLX             cosf
44F4B4:  MOV             R6, R0
44F4B6:  MOV             R0, R5; x
44F4B8:  BLX             sinf
44F4BC:  VLDR            S0, [R4]
44F4C0:  VMOV            S10, R6
44F4C4:  VLDR            S2, [R4,#4]
44F4C8:  VMOV            S8, R0
44F4CC:  VLDR            S4, [R4,#0x10]
44F4D0:  VMUL.F32        S11, S10, S0
44F4D4:  VLDR            S6, [R4,#0x14]
44F4D8:  VMUL.F32        S1, S10, S2
44F4DC:  VLDR            S3, [R4,#0x20]
44F4E0:  VMUL.F32        S2, S8, S2
44F4E4:  VLDR            S5, [R4,#0x24]
44F4E8:  VMUL.F32        S0, S8, S0
44F4EC:  VLDR            S13, [R4,#0x30]
44F4F0:  VMUL.F32        S12, S8, S6
44F4F4:  VLDR            S15, [R4,#0x34]
44F4F8:  VMUL.F32        S14, S10, S4
44F4FC:  VMUL.F32        S7, S8, S5
44F500:  VMUL.F32        S9, S10, S3
44F504:  VMUL.F32        S6, S10, S6
44F508:  VMUL.F32        S4, S8, S4
44F50C:  VMUL.F32        S5, S10, S5
44F510:  VMUL.F32        S18, S10, S13
44F514:  VMUL.F32        S3, S8, S3
44F518:  VMUL.F32        S16, S8, S15
44F51C:  VMUL.F32        S10, S10, S15
44F520:  VMUL.F32        S8, S8, S13
44F524:  VSUB.F32        S2, S11, S2
44F528:  VADD.F32        S0, S0, S1
44F52C:  VSUB.F32        S12, S14, S12
44F530:  VADD.F32        S4, S4, S6
44F534:  VSUB.F32        S6, S9, S7
44F538:  VADD.F32        S14, S3, S5
44F53C:  VSUB.F32        S1, S18, S16
44F540:  VADD.F32        S8, S8, S10
44F544:  VSTR            S2, [R4]
44F548:  VSTR            S0, [R4,#4]
44F54C:  VSTR            S12, [R4,#0x10]
44F550:  VSTR            S4, [R4,#0x14]
44F554:  VSTR            S6, [R4,#0x20]
44F558:  VSTR            S14, [R4,#0x24]
44F55C:  VSTR            S1, [R4,#0x30]
44F560:  VSTR            S8, [R4,#0x34]
44F564:  VPOP            {D8-D9}
44F568:  POP.W           {R11}
44F56C:  POP             {R4-R7,PC}
