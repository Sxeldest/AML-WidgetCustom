; =========================================================
; Game Engine Function: _ZN23CTaskInteriorBeInOffice18GetInfoForPedToUseEPi
; Address            : 0x528F14 - 0x52902E
; =========================================================

528F14:  PUSH            {R4-R7,LR}
528F16:  ADD             R7, SP, #0xC
528F18:  PUSH.W          {R8,R9,R11}
528F1C:  VPUSH           {D8-D10}
528F20:  MOV             R5, R0
528F22:  MOV             R8, R1
528F24:  MOV             R6, R5
528F26:  LDR.W           R0, [R6,#0x14]!
528F2A:  SUBS            R4, R6, #4
528F2C:  CBZ             R0, loc_528F46
528F2E:  LDRB            R0, [R0]
528F30:  CMP             R0, #6
528F32:  BNE             loc_528F46
528F34:  LDR             R0, [R5,#0xC]
528F36:  MOVS            R1, #7
528F38:  MOV             R2, R6
528F3A:  MOV             R3, R4
528F3C:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528F40:  VLDR            S16, =5000.0
528F44:  B               loc_528F86
528F46:  LDR             R0, [R5,#0xC]
528F48:  MOVS            R1, #6
528F4A:  MOV             R2, R6
528F4C:  MOV             R3, R4
528F4E:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528F52:  BLX             rand
528F56:  UXTH            R0, R0
528F58:  VLDR            S2, =0.000015259
528F5C:  VMOV            S0, R0
528F60:  VCVT.F32.S32    S0, S0
528F64:  VMUL.F32        S0, S0, S2
528F68:  VLDR            S2, =100.0
528F6C:  VMUL.F32        S0, S0, S2
528F70:  VCVT.S32.F32    S0, S0
528F74:  VMOV            R0, S0
528F78:  CMP             R0, #0x14
528F7A:  BLE             loc_528F82
528F7C:  MOV.W           R0, #0xFFFFFFFF
528F80:  B               loc_528FAE
528F82:  VLDR            S16, =25000.0
528F86:  BLX             rand
528F8A:  UXTH            R0, R0
528F8C:  VLDR            S2, =0.000015259
528F90:  VMOV            S0, R0
528F94:  MOVW            R1, #0x1388
528F98:  VCVT.F32.S32    S0, S0
528F9C:  VMUL.F32        S0, S0, S2
528FA0:  VMUL.F32        S0, S16, S0
528FA4:  VCVT.S32.F32    S0, S0
528FA8:  VMOV            R0, S0
528FAC:  ADD             R0, R1
528FAE:  STR.W           R0, [R8]
528FB2:  LDR             R0, [R6]
528FB4:  CBNZ            R0, loc_529024
528FB6:  VLDR            S16, =0.000015259
528FBA:  MOVW            R9, #0x1388
528FBE:  VLDR            S18, =100.0
528FC2:  VLDR            S20, =25000.0
528FC6:  LDR             R0, [R5,#0xC]
528FC8:  MOVS            R1, #6
528FCA:  MOV             R2, R6
528FCC:  MOV             R3, R4
528FCE:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528FD2:  BLX             rand
528FD6:  UXTH            R0, R0
528FD8:  VMOV            S0, R0
528FDC:  VCVT.F32.S32    S0, S0
528FE0:  VMUL.F32        S0, S0, S16
528FE4:  VMUL.F32        S0, S0, S18
528FE8:  VCVT.S32.F32    S0, S0
528FEC:  VMOV            R0, S0
528FF0:  CMP             R0, #0x14
528FF2:  BLE             loc_528FFA
528FF4:  MOV.W           R0, #0xFFFFFFFF
528FF8:  B               loc_52901A
528FFA:  BLX             rand
528FFE:  UXTH            R0, R0
529000:  VMOV            S0, R0
529004:  VCVT.F32.S32    S0, S0
529008:  VMUL.F32        S0, S0, S16
52900C:  VMUL.F32        S0, S0, S20
529010:  VCVT.S32.F32    S0, S0
529014:  VMOV            R0, S0
529018:  ADD             R0, R9
52901A:  STR.W           R0, [R8]
52901E:  LDR             R0, [R6]
529020:  CMP             R0, #0
529022:  BEQ             loc_528FC6
529024:  VPOP            {D8-D10}
529028:  POP.W           {R8,R9,R11}
52902C:  POP             {R4-R7,PC}
