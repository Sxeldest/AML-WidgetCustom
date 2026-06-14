; =========================================================
; Game Engine Function: _ZN11CQuaternion3SetEfff
; Address            : 0x450160 - 0x450236
; =========================================================

450160:  PUSH            {R4-R7,LR}
450162:  ADD             R7, SP, #0xC
450164:  PUSH.W          {R8-R10}
450168:  VPUSH           {D8-D14}
45016C:  VMOV.F32        S16, #0.5
450170:  MOV             R4, R0
450172:  VMOV            S0, R1
450176:  MOV             R8, R3
450178:  MOV             R6, R2
45017A:  VMUL.F32        S0, S0, S16
45017E:  VMOV            R5, S0
450182:  MOV             R0, R5; x
450184:  BLX             cosf
450188:  VMOV            S0, R6
45018C:  MOV             R9, R0
45018E:  VMUL.F32        S0, S0, S16
450192:  VMOV            R6, S0
450196:  MOV             R0, R6; x
450198:  BLX             cosf
45019C:  VMOV            S0, R8
4501A0:  MOV             R10, R0
4501A2:  MOV             R0, R5; x
4501A4:  VMUL.F32        S16, S0, S16
4501A8:  BLX             sinf
4501AC:  MOV             R5, R0
4501AE:  MOV             R0, R6; x
4501B0:  BLX             sinf
4501B4:  VMOV            R6, S16
4501B8:  VMOV            S16, R0
4501BC:  VMOV            S18, R5
4501C0:  VMOV            S20, R10
4501C4:  VMOV            S22, R9
4501C8:  VMUL.F32        S24, S18, S16
4501CC:  VMUL.F32        S26, S22, S20
4501D0:  MOV             R0, R6; x
4501D2:  BLX             cosf
4501D6:  VMOV            S28, R0
4501DA:  MOV             R0, R6; x
4501DC:  VMUL.F32        S16, S22, S16
4501E0:  VMUL.F32        S18, S20, S18
4501E4:  BLX             sinf
4501E8:  VMOV            S0, R0
4501EC:  VMUL.F32        S2, S28, S24
4501F0:  VMUL.F32        S4, S26, S0
4501F4:  VMUL.F32        S6, S0, S24
4501F8:  VMUL.F32        S10, S0, S16
4501FC:  VMUL.F32        S8, S28, S26
450200:  VMUL.F32        S12, S28, S18
450204:  VMUL.F32        S0, S18, S0
450208:  VMUL.F32        S14, S28, S16
45020C:  VSUB.F32        S2, S4, S2
450210:  VADD.F32        S4, S8, S6
450214:  VADD.F32        S6, S12, S10
450218:  VSUB.F32        S0, S14, S0
45021C:  VSTR            S2, [R4]
450220:  VSTR            S6, [R4,#4]
450224:  VSTR            S0, [R4,#8]
450228:  VSTR            S4, [R4,#0xC]
45022C:  VPOP            {D8-D14}
450230:  POP.W           {R8-R10}
450234:  POP             {R4-R7,PC}
