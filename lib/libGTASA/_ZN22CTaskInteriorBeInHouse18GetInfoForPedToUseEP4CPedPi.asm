; =========================================================
; Game Engine Function: _ZN22CTaskInteriorBeInHouse18GetInfoForPedToUseEP4CPedPi
; Address            : 0x528CDC - 0x528E0A
; =========================================================

528CDC:  PUSH            {R4-R7,LR}
528CDE:  ADD             R7, SP, #0xC
528CE0:  PUSH.W          {R8,R9,R11}
528CE4:  VPUSH           {D8}
528CE8:  MOV             R6, R0
528CEA:  MOVS            R0, #0
528CEC:  MOV             R5, R6
528CEE:  LDR.W           R4, [R1,#0x59C]
528CF2:  MOV             R8, R2
528CF4:  STR.W           R0, [R5,#0x14]!
528CF8:  BLX             rand
528CFC:  UXTH            R0, R0
528CFE:  VLDR            S16, =0.000015259
528D02:  VMOV            S0, R0
528D06:  VLDR            S2, =100.0
528D0A:  SUBS            R0, R4, #7
528D0C:  MOVS            R1, #0x5A ; 'Z'
528D0E:  VCVT.F32.S32    S0, S0
528D12:  CMP             R0, #0xA
528D14:  VMUL.F32        S0, S0, S16
528D18:  VMUL.F32        S0, S0, S2
528D1C:  VCVT.S32.F32    S0, S0
528D20:  IT CC
528D22:  MOVCC           R1, #0
528D24:  VMOV            R4, S0
528D28:  CMP             R1, R4
528D2A:  BLE             loc_528D70
528D2C:  BLX             rand
528D30:  MOV             R1, R0
528D32:  LDR             R0, [R6,#0xC]
528D34:  ADD.W           R9, R6, #0x10
528D38:  TST.W           R1, #1
528D3C:  BNE             loc_528D50
528D3E:  MOVS            R1, #4
528D40:  MOV             R2, R5
528D42:  MOV             R3, R9
528D44:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528D48:  CBNZ            R0, loc_528D68
528D4A:  LDR             R0, [R6,#0xC]
528D4C:  MOVS            R1, #3
528D4E:  B               loc_528D60
528D50:  MOVS            R1, #3
528D52:  MOV             R2, R5
528D54:  MOV             R3, R9
528D56:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528D5A:  CBNZ            R0, loc_528D68
528D5C:  LDR             R0, [R6,#0xC]
528D5E:  MOVS            R1, #4
528D60:  MOV             R2, R5
528D62:  MOV             R3, R9
528D64:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528D68:  MOV.W           R0, #0xFFFFFFFF
528D6C:  STR.W           R0, [R8]
528D70:  LDR             R0, [R5]
528D72:  CMP             R4, #0x63 ; 'c'
528D74:  BGT             loc_528D90
528D76:  CBNZ            R0, loc_528D90
528D78:  LDR             R0, [R6,#0xC]
528D7A:  ADD.W           R3, R6, #0x10
528D7E:  MOVS            R1, #1
528D80:  MOV             R2, R5
528D82:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528D86:  MOV.W           R0, #0xFFFFFFFF
528D8A:  STR.W           R0, [R8]
528D8E:  LDR             R0, [R6,#0x14]
528D90:  CMP             R4, #0x63 ; 'c'
528D92:  BGT             loc_528DD2
528D94:  CBNZ            R0, loc_528DD2
528D96:  LDR             R0, [R6,#0xC]
528D98:  ADD.W           R3, R6, #0x10
528D9C:  MOVS            R1, #5
528D9E:  MOV             R2, R5
528DA0:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528DA4:  BLX             rand
528DA8:  UXTH            R0, R0
528DAA:  VLDR            S2, =25000.0
528DAE:  VMOV            S0, R0
528DB2:  MOVW            R1, #0x1388
528DB6:  VCVT.F32.S32    S0, S0
528DBA:  VMUL.F32        S0, S0, S16
528DBE:  VMUL.F32        S0, S0, S2
528DC2:  VCVT.S32.F32    S0, S0
528DC6:  VMOV            R0, S0
528DCA:  ADD             R0, R1
528DCC:  STR.W           R0, [R8]
528DD0:  LDR             R0, [R6,#0x14]
528DD2:  CBNZ            R0, loc_528E00
528DD4:  ADD.W           R4, R6, #0x10
528DD8:  LDR             R0, [R6,#0xC]
528DDA:  MOVS            R1, #1
528DDC:  MOV             R2, R5
528DDE:  MOV             R3, R4
528DE0:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528DE4:  MOV.W           R9, #0xFFFFFFFF
528DE8:  STR.W           R9, [R8]
528DEC:  LDR             R0, [R6,#0x14]
528DEE:  CBNZ            R0, loc_528E00
528DF0:  LDR             R0, [R6,#0xC]
528DF2:  MOVS            R1, #2
528DF4:  MOV             R2, R5
528DF6:  MOV             R3, R4
528DF8:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
528DFC:  STR.W           R9, [R8]
528E00:  VPOP            {D8}
528E04:  POP.W           {R8,R9,R11}
528E08:  POP             {R4-R7,PC}
