; =========================================================
; Game Engine Function: _ZN10Interior_c17Shop_AddShelfInfoEiii
; Address            : 0x44E5B8 - 0x44E642
; =========================================================

44E5B8:  PUSH            {R4-R7,LR}
44E5BA:  ADD             R7, SP, #0xC
44E5BC:  PUSH.W          {R8,R9,R11}
44E5C0:  SUB             SP, SP, #8
44E5C2:  MOV             R8, R0
44E5C4:  LDR             R0, =(dword_6AE3FC - 0x44E5CE)
44E5C6:  MOV             R9, R3
44E5C8:  MOV             R6, R2
44E5CA:  ADD             R0, PC; dword_6AE3FC
44E5CC:  MOV             R4, R1
44E5CE:  LDR             R5, [R0]
44E5D0:  CMP             R5, #2
44E5D2:  BLT             loc_44E632
44E5D4:  BLX             rand
44E5D8:  UXTH            R0, R0
44E5DA:  VLDR            S2, =0.000015259
44E5DE:  VMOV            S0, R0
44E5E2:  VCVT.F32.S32    S0, S0
44E5E6:  VMUL.F32        S0, S0, S2
44E5EA:  VLDR            S2, =100.0
44E5EE:  VMUL.F32        S0, S0, S2
44E5F2:  VCVT.S32.F32    S0, S0
44E5F6:  VMOV            R0, S0
44E5FA:  CMP             R0, #0x3C ; '<'
44E5FC:  BLE             loc_44E62C
44E5FE:  VMOV            S0, R4
44E602:  MOVS            R5, #0
44E604:  VMOV            S2, R6
44E608:  MOV             R0, R8; this
44E60A:  VCVT.F32.S32    S0, S0
44E60E:  MOVS            R1, #8; int
44E610:  VCVT.F32.S32    S2, S2
44E614:  STRD.W          R9, R5, [SP,#0x20+var_20]; int
44E618:  VMOV            R2, S0; float
44E61C:  VMOV            R3, S2; float
44E620:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44E624:  LDR             R0, =(dword_6AE3FC - 0x44E62A)
44E626:  ADD             R0, PC; dword_6AE3FC
44E628:  STR             R5, [R0]
44E62A:  B               loc_44E632
44E62C:  LDR             R0, =(dword_6AE3FC - 0x44E632)
44E62E:  ADD             R0, PC; dword_6AE3FC
44E630:  LDR             R5, [R0]
44E632:  LDR             R0, =(dword_6AE3FC - 0x44E63A)
44E634:  ADDS            R1, R5, #1
44E636:  ADD             R0, PC; dword_6AE3FC
44E638:  STR             R1, [R0]
44E63A:  ADD             SP, SP, #8
44E63C:  POP.W           {R8,R9,R11}
44E640:  POP             {R4-R7,PC}
