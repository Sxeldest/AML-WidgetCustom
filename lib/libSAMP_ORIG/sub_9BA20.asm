; =========================================================
; Game Engine Function: sub_9BA20
; Address            : 0x9BA20 - 0x9BABC
; =========================================================

9BA20:  PUSH            {R4-R7,LR}
9BA22:  ADD             R7, SP, #0xC
9BA24:  PUSH.W          {R8,R9,R11}
9BA28:  VPUSH           {D8-D9}
9BA2C:  SUB             SP, SP, #8
9BA2E:  VMOV.I32        Q8, #0
9BA32:  MOV             R8, R0
9BA34:  ADR             R0, dword_9BAC0
9BA36:  MOVS            R4, #0
9BA38:  VLD1.64         {D18-D19}, [R0@128]
9BA3C:  MOV             R0, R8
9BA3E:  VMOV.F32        S18, #12.0
9BA42:  ADD.W           R5, R8, #0x2C ; ','
9BA46:  VST1.32         {D16-D17}, [R0]!
9BA4A:  ADD.W           R9, SP, #0x30+var_2C
9BA4E:  MOV             R6, SP
9BA50:  STR             R4, [R0]
9BA52:  ADD.W           R0, R8, #0x14
9BA56:  VST1.32         {D18-D19}, [R0]!
9BA5A:  STR             R4, [R0]
9BA5C:  ADD.W           R0, R8, #0x28 ; '('
9BA60:  VST1.32         {D16-D17}, [R0]!
9BA64:  VST1.32         {D16-D17}, [R0]!
9BA68:  VST1.32         {D16-D17}, [R0]!
9BA6C:  VST1.32         {D16-D17}, [R0]!
9BA70:  VST1.32         {D16-D17}, [R0]!
9BA74:  VLDR            S16, =3.1416
9BA78:  VST1.32         {D16-D17}, [R0]
9BA7C:  VMOV            S0, R4
9BA80:  MOV             R1, R9
9BA82:  MOV             R2, R6
9BA84:  VCVT.F32.S32    S0, S0
9BA88:  VADD.F32        S0, S0, S0
9BA8C:  VMUL.F32        S0, S0, S16
9BA90:  VDIV.F32        S0, S0, S18
9BA94:  VMOV            R0, S0
9BA98:  BLX             sincosf
9BA9C:  LDRD.W          R0, R1, [SP,#0x30+var_30]
9BAA0:  ADDS            R4, #1
9BAA2:  STR.W           R0, [R5,#-4]
9BAA6:  CMP             R4, #0xC
9BAA8:  STR.W           R1, [R5],#8
9BAAC:  BNE             loc_9BA7C
9BAAE:  MOV             R0, R8
9BAB0:  ADD             SP, SP, #8
9BAB2:  VPOP            {D8-D9}
9BAB6:  POP.W           {R8,R9,R11}
9BABA:  POP             {R4-R7,PC}
