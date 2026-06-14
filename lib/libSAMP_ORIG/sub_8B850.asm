; =========================================================
; Game Engine Function: sub_8B850
; Address            : 0x8B850 - 0x8B910
; =========================================================

8B850:  PUSH            {R7,LR}
8B852:  MOV             R7, SP
8B854:  LDR             R1, =(dword_1ACF68 - 0x8B85E)
8B856:  MOVW            R3, #0x19AC
8B85A:  ADD             R1, PC; dword_1ACF68
8B85C:  LDR             R2, [R1]
8B85E:  LDR             R1, [R2,R3]
8B860:  ADD             R2, R3
8B862:  LDRB.W          R3, [R2,#0x16B]
8B866:  CBZ             R3, loc_8B86E
8B868:  LDRB.W          R3, [R2,#0x16A]
8B86C:  CBZ             R3, loc_8B8D8
8B86E:  LDRB.W          R3, [R1,#0x10C]
8B872:  LSLS            R3, R3, #0x1F
8B874:  BEQ             loc_8B90C
8B876:  LDR.W           LR, [R1,#0x2FC]
8B87A:  LSLS            R3, R0, #0x19
8B87C:  BMI             loc_8B884
8B87E:  LDR             R3, [R2,#8]
8B880:  CMP             R3, LR
8B882:  BNE             loc_8B90C
8B884:  LSLS            R3, R0, #0x1A
8B886:  BMI             loc_8B89A
8B888:  LDR.W           R12, [R2,#0x24]
8B88C:  CMP.W           R12, #0
8B890:  ITT NE
8B892:  LDRNE.W         R3, [R1,#0x108]
8B896:  CMPNE           R12, R3
8B898:  BNE             loc_8B8EC
8B89A:  LDR.W           R2, [R2,#0x108]
8B89E:  CMP             R2, #0
8B8A0:  ITT NE
8B8A2:  LDRNE.W         R2, [R2,#0x2FC]
8B8A6:  CMPNE           R2, #0
8B8A8:  BEQ             loc_8B8B6
8B8AA:  LDRB.W          R3, [R2,#0x7B]
8B8AE:  CMP             R3, #0
8B8B0:  IT NE
8B8B2:  CMPNE           R2, LR
8B8B4:  BNE             loc_8B8FC
8B8B6:  LSLS            R0, R0, #0x18
8B8B8:  BMI             loc_8B8C4
8B8BA:  LDR.W           R0, [R1,#0x16C]
8B8BE:  ANDS.W          R0, R0, #4
8B8C2:  BNE             loc_8B90C
8B8C4:  LDR             R0, [R1,#0x48]
8B8C6:  LDR.W           R2, [R1,#0x108]
8B8CA:  CMP             R2, R0
8B8CC:  BNE             loc_8B8D4
8B8CE:  LDRB.W          R0, [R1,#0x7C]
8B8D2:  CBNZ            R0, loc_8B90C
8B8D4:  MOVS            R0, #1
8B8D6:  POP             {R7,PC}
8B8D8:  LDR.W           R0, [R2,#0x10C]
8B8DC:  CBZ             R0, loc_8B90C
8B8DE:  LDR.W           R1, [R1,#0x108]
8B8E2:  SUBS            R0, R0, R1
8B8E4:  CLZ.W           R0, R0
8B8E8:  LSRS            R0, R0, #5
8B8EA:  POP             {R7,PC}
8B8EC:  LDRB.W          R3, [R2,#0x31]
8B8F0:  CMP             R3, #0
8B8F2:  BNE             loc_8B89A
8B8F4:  LDR             R3, [R1,#0x48]
8B8F6:  CMP             R12, R3
8B8F8:  BEQ             loc_8B89A
8B8FA:  B               loc_8B90C
8B8FC:  LDR             R2, [R2,#8]
8B8FE:  LSLS            R3, R2, #4
8B900:  BMI             loc_8B90C
8B902:  LSLS            R3, R0, #0x1C
8B904:  BMI             loc_8B8B6
8B906:  ANDS.W          R2, R2, #0x4000000
8B90A:  BEQ             loc_8B8B6
8B90C:  MOVS            R0, #0
8B90E:  POP             {R7,PC}
