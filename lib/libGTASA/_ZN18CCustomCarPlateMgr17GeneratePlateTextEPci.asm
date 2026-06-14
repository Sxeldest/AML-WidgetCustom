; =========================================================
; Game Engine Function: _ZN18CCustomCarPlateMgr17GeneratePlateTextEPci
; Address            : 0x5A4F9C - 0x5A50DA
; =========================================================

5A4F9C:  PUSH            {R4-R7,LR}
5A4F9E:  ADD             R7, SP, #0xC
5A4FA0:  PUSH.W          {R8,R9,R11}
5A4FA4:  VPUSH           {D8-D10}
5A4FA8:  MOV             R9, R1
5A4FAA:  MOV             R5, R0
5A4FAC:  CMP.W           R9, #4
5A4FB0:  BGE             loc_5A4FB6
5A4FB2:  MOVS            R0, #0
5A4FB4:  B               loc_5A50D0
5A4FB6:  BLX.W           rand
5A4FBA:  UXTH            R0, R0
5A4FBC:  VLDR            S16, =0.000015259
5A4FC0:  VMOV            S0, R0
5A4FC4:  VMOV.F32        S18, #23.0
5A4FC8:  VCVT.F32.S32    S0, S0
5A4FCC:  VMUL.F32        S0, S0, S16
5A4FD0:  VMUL.F32        S0, S0, S18
5A4FD4:  VCVT.S32.F32    S0, S0
5A4FD8:  VMOV            R0, S0
5A4FDC:  ADDS            R0, #0x41 ; 'A'
5A4FDE:  STRB            R0, [R5]
5A4FE0:  BLX.W           rand
5A4FE4:  UXTH            R0, R0
5A4FE6:  VMOV            S0, R0
5A4FEA:  VCVT.F32.S32    S0, S0
5A4FEE:  VMUL.F32        S0, S0, S16
5A4FF2:  VMUL.F32        S0, S0, S18
5A4FF6:  VCVT.S32.F32    S0, S0
5A4FFA:  VMOV            R0, S0
5A4FFE:  ADDS            R0, #0x41 ; 'A'
5A5000:  STRB            R0, [R5,#1]
5A5002:  BLX.W           rand
5A5006:  UXTH            R0, R0
5A5008:  VMOV.F32        S20, #9.0
5A500C:  VMOV            S0, R0
5A5010:  VCVT.F32.S32    S0, S0
5A5014:  VMUL.F32        S0, S0, S16
5A5018:  VMUL.F32        S0, S0, S20
5A501C:  VCVT.S32.F32    S0, S0
5A5020:  VMOV            R0, S0
5A5024:  ADDS            R0, #0x30 ; '0'
5A5026:  STRB            R0, [R5,#2]
5A5028:  BLX.W           rand
5A502C:  UXTH            R0, R0
5A502E:  CMP.W           R9, #4
5A5032:  VMOV            S0, R0
5A5036:  VCVT.F32.S32    S0, S0
5A503A:  VMUL.F32        S0, S0, S16
5A503E:  VMUL.F32        S0, S0, S20
5A5042:  VCVT.S32.F32    S0, S0
5A5046:  VMOV            R0, S0
5A504A:  ADD.W           R0, R0, #0x30 ; '0'
5A504E:  STRB            R0, [R5,#3]
5A5050:  BEQ             loc_5A50CE
5A5052:  MOVS            R6, #0
5A5054:  MOV.W           R8, #0x20 ; ' '
5A5058:  ADDS            R4, R5, R6
5A505A:  STRB.W          R8, [R4,#4]
5A505E:  BLX.W           rand
5A5062:  UXTH            R0, R0
5A5064:  VMOV            S0, R0
5A5068:  VCVT.F32.S32    S0, S0
5A506C:  VMUL.F32        S0, S0, S16
5A5070:  VMUL.F32        S0, S0, S20
5A5074:  VCVT.S32.F32    S0, S0
5A5078:  VMOV            R0, S0
5A507C:  ADDS            R0, #0x30 ; '0'
5A507E:  STRB            R0, [R4,#5]
5A5080:  BLX.W           rand
5A5084:  UXTH            R0, R0
5A5086:  VMOV            S0, R0
5A508A:  VCVT.F32.S32    S0, S0
5A508E:  VMUL.F32        S0, S0, S16
5A5092:  VMUL.F32        S0, S0, S18
5A5096:  VCVT.S32.F32    S0, S0
5A509A:  VMOV            R0, S0
5A509E:  ADDS            R0, #0x41 ; 'A'
5A50A0:  STRB            R0, [R4,#6]
5A50A2:  BLX.W           rand
5A50A6:  UXTH            R0, R0
5A50A8:  VMOV            S0, R0
5A50AC:  VCVT.F32.S32    S0, S0
5A50B0:  VMUL.F32        S0, S0, S16
5A50B4:  VMUL.F32        S0, S0, S18
5A50B8:  VCVT.S32.F32    S0, S0
5A50BC:  VMOV            R0, S0
5A50C0:  ADDS            R0, #0x41 ; 'A'
5A50C2:  STRB            R0, [R4,#7]
5A50C4:  ADD.W           R0, R6, #8
5A50C8:  ADDS            R6, #4
5A50CA:  CMP             R0, R9
5A50CC:  BLT             loc_5A5058
5A50CE:  MOVS            R0, #1
5A50D0:  VPOP            {D8-D10}
5A50D4:  POP.W           {R8,R9,R11}
5A50D8:  POP             {R4-R7,PC}
