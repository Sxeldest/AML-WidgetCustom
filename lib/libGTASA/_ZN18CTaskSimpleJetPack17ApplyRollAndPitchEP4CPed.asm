; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack17ApplyRollAndPitchEP4CPed
; Address            : 0x531DC4 - 0x531E82
; =========================================================

531DC4:  PUSH            {R4-R7,LR}
531DC6:  ADD             R7, SP, #0xC
531DC8:  PUSH.W          {R8-R10}
531DCC:  VPUSH           {D8-D9}
531DD0:  MOV             R5, R1
531DD2:  MOV             R4, R0
531DD4:  LDRB.W          R0, [R5,#0x484]
531DD8:  LSLS            R0, R0, #0x1E
531DDA:  BNE             loc_531E78
531DDC:  VLDR            S16, =180.0
531DE0:  MOVS            R3, #2
531DE2:  VLDR            S0, [R4,#0x18]
531DE6:  ADDW            R10, R5, #0x484
531DEA:  VLDR            S18, =3.1416
531DEE:  VMUL.F32        S0, S0, S16
531DF2:  LDR             R0, =(_ZN6CPedIK7ZaxisIKE_ptr - 0x531DFC)
531DF4:  LDR.W           R1, [R5,#0x4B0]
531DF8:  ADD             R0, PC; _ZN6CPedIK7ZaxisIKE_ptr
531DFA:  LDR             R6, [R1,#0x10]
531DFC:  LDR.W           R8, [R0]; CPedIK::ZaxisIK ...
531E00:  VDIV.F32        S0, S0, S18
531E04:  MOV             R0, R6
531E06:  MOV             R1, R8
531E08:  VMOV            R2, S0
531E0C:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
531E10:  VLDR            S0, [R4,#0x1C]
531E14:  MOVS            R3, #2
531E16:  LDR             R0, =(_ZN6CPedIK7YaxisIKE_ptr - 0x531E20)
531E18:  VMUL.F32        S0, S0, S16
531E1C:  ADD             R0, PC; _ZN6CPedIK7YaxisIKE_ptr
531E1E:  LDR.W           R9, [R0]; CPedIK::YaxisIK ...
531E22:  MOV             R0, R6
531E24:  MOV             R1, R9
531E26:  VDIV.F32        S0, S0, S18
531E2A:  VMOV            R2, S0
531E2E:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
531E32:  VLDR            S0, [R4,#0x18]
531E36:  MOV             R1, R8
531E38:  LDR.W           R0, [R5,#0x4B4]
531E3C:  MOVS            R3, #2
531E3E:  VMUL.F32        S0, S0, S16
531E42:  LDR             R5, [R0,#0x10]
531E44:  MOV             R0, R5
531E46:  VDIV.F32        S0, S0, S18
531E4A:  VMOV            R2, S0
531E4E:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
531E52:  VLDR            S0, [R4,#0x1C]
531E56:  MOV             R0, R5
531E58:  MOV             R1, R9
531E5A:  MOVS            R3, #2
531E5C:  VMUL.F32        S0, S0, S16
531E60:  VDIV.F32        S0, S0, S18
531E64:  VMOV            R2, S0
531E68:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
531E6C:  LDR.W           R0, [R10,#4]
531E70:  ORR.W           R0, R0, #0x4000
531E74:  STR.W           R0, [R10,#4]
531E78:  VPOP            {D8-D9}
531E7C:  POP.W           {R8-R10}
531E80:  POP             {R4-R7,PC}
