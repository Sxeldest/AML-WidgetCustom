; =========================================================
; Game Engine Function: sub_63A74
; Address            : 0x63A74 - 0x63B2A
; =========================================================

63A74:  PUSH            {R4-R7,LR}
63A76:  ADD             R7, SP, #0xC
63A78:  PUSH.W          {R11}
63A7C:  MOV             R4, R0
63A7E:  CBZ             R1, loc_63A8C
63A80:  MOV             R0, R1; s
63A82:  MOV             R5, R1
63A84:  BLX             strlen
63A88:  CMP             R0, #5
63A8A:  BHI             loc_63A9E
63A8C:  VMOV.F32        S2, #1.0
63A90:  MOV.W           R0, #0x3F800000
63A94:  STRD.W          R0, R0, [R4]
63A98:  VMOV.F32        S0, S2
63A9C:  B               loc_63B1C
63A9E:  MOV             R6, R5
63AA0:  LDRB.W          R0, [R6],#1
63AA4:  CMP             R0, #0x23 ; '#'
63AA6:  IT NE
63AA8:  MOVNE           R6, R5
63AAA:  MOV             R0, R6; s
63AAC:  BLX             strlen
63AB0:  MOV             R5, R0
63AB2:  MOV             R0, R6; nptr
63AB4:  MOVS            R1, #0; endptr
63AB6:  MOVS            R2, #0x10; base
63AB8:  BLX             strtoul
63ABC:  CMP             R5, #8
63ABE:  BEQ             loc_63AD0
63AC0:  VMOV.F32        S0, #1.0
63AC4:  CMP             R5, #6
63AC6:  BEQ             loc_63AE2
63AC8:  MOVS            R0, #0xFF
63ACA:  MOVS            R2, #0xFF
63ACC:  MOVS            R1, #0xFF
63ACE:  B               loc_63AEC
63AD0:  LSRS            R1, R0, #0x18
63AD2:  VLDR            S2, =0.0039216
63AD6:  VMOV            S0, R1
63ADA:  VCVT.F32.S32    S0, S0
63ADE:  VMUL.F32        S0, S0, S2
63AE2:  UXTB            R1, R0
63AE4:  UBFX.W          R2, R0, #8, #8
63AE8:  UBFX.W          R0, R0, #0x10, #8
63AEC:  VMOV            S2, R2
63AF0:  VLDR            S8, =0.0039216
63AF4:  VMOV            S4, R0
63AF8:  VMOV            S6, R1
63AFC:  VCVT.F32.S32    S4, S4
63B00:  VCVT.F32.S32    S2, S2
63B04:  VCVT.F32.S32    S6, S6
63B08:  VMUL.F32        S4, S4, S8
63B0C:  VMUL.F32        S10, S2, S8
63B10:  VMUL.F32        S2, S6, S8
63B14:  VSTR            S4, [R4]
63B18:  VSTR            S10, [R4,#4]
63B1C:  VSTR            S2, [R4,#8]
63B20:  VSTR            S0, [R4,#0xC]
63B24:  POP.W           {R11}
63B28:  POP             {R4-R7,PC}
