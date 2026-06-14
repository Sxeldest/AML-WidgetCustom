; =========================================================
; Game Engine Function: _ZN7CMatrix14SetRotateXOnlyEf
; Address            : 0x44EFC2 - 0x44F016
; =========================================================

44EFC2:  PUSH            {R4-R7,LR}
44EFC4:  ADD             R7, SP, #0xC
44EFC6:  PUSH.W          {R8}
44EFCA:  VPUSH           {D8}
44EFCE:  MOV             R4, R1
44EFD0:  MOV             R5, R0
44EFD2:  MOV.W           R8, #0
44EFD6:  MOV             R0, R4; x
44EFD8:  STR.W           R8, [R5,#4]
44EFDC:  BLX             sinf
44EFE0:  MOV             R6, R0
44EFE2:  MOV.W           R0, #0x3F800000
44EFE6:  VMOV            S0, R6
44EFEA:  STR             R0, [R5]
44EFEC:  MOV             R0, R4; x
44EFEE:  STR.W           R8, [R5,#8]
44EFF2:  STR.W           R8, [R5,#0x10]
44EFF6:  VNEG.F32        S16, S0
44EFFA:  STR.W           R8, [R5,#0x20]
44EFFE:  BLX             cosf
44F002:  STRD.W          R0, R6, [R5,#0x14]
44F006:  STR             R0, [R5,#0x28]
44F008:  VSTR            S16, [R5,#0x24]
44F00C:  VPOP            {D8}
44F010:  POP.W           {R8}
44F014:  POP             {R4-R7,PC}
