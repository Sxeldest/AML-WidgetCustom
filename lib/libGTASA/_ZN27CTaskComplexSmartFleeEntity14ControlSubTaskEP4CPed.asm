; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntity14ControlSubTaskEP4CPed
; Address            : 0x513F5C - 0x5140DE
; =========================================================

513F5C:  PUSH            {R4-R7,LR}
513F5E:  ADD             R7, SP, #0xC
513F60:  PUSH.W          {R11}
513F64:  SUB             SP, SP, #0x18
513F66:  MOV             R4, R0
513F68:  MOV             R5, R1
513F6A:  LDRD.W          R0, R1, [R4,#8]
513F6E:  CBZ             R1, loc_513FAA
513F70:  LDR             R1, [R0]
513F72:  LDR             R1, [R1,#0x14]
513F74:  BLX             R1
513F76:  MOVW            R1, #0x38E
513F7A:  CMP             R0, R1
513F7C:  BNE.W           loc_5140D4
513F80:  LDR             R0, [R4,#8]
513F82:  LDR             R1, [R4,#0x30]
513F84:  STR             R1, [R0,#0x30]
513F86:  LDRB.W          R1, [R4,#0x3C]
513F8A:  CMP             R1, #0
513F8C:  BEQ.W           loc_5140D4
513F90:  LDRB.W          R1, [R4,#0x3D]
513F94:  CBZ             R1, loc_513FB8
513F96:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513F9E)
513F98:  MOVS            R2, #0
513F9A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513F9C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
513F9E:  LDR             R3, [R1]; CTimer::m_snTimeInMilliseconds
513FA0:  STRB.W          R2, [R4,#0x3D]
513FA4:  STR             R3, [R4,#0x34]
513FA6:  MOV             R1, R3
513FA8:  B               loc_513FC2
513FAA:  LDR             R1, [R0]
513FAC:  MOVS            R2, #0
513FAE:  MOVS            R3, #0
513FB0:  LDR             R6, [R1,#0x1C]
513FB2:  MOV             R1, R5
513FB4:  BLX             R6
513FB6:  B               loc_5140D4
513FB8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513FBE)
513FBA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513FBC:  LDR             R2, [R1]; CTimer::m_snTimeInMilliseconds ...
513FBE:  LDR             R1, [R4,#0x34]
513FC0:  LDR             R3, [R2]; CTimer::m_snTimeInMilliseconds
513FC2:  LDR             R2, [R4,#0x38]
513FC4:  ADD             R1, R2
513FC6:  CMP             R1, R3
513FC8:  BHI.W           loc_5140D4
513FCC:  LDR.W           LR, [R4,#0xC]
513FD0:  VLDR            S0, [R4,#0x10]
513FD4:  ADD.W           R2, LR, #4
513FD8:  LDR.W           R1, [LR,#0x14]
513FDC:  MOV             R6, R2
513FDE:  CMP             R1, #0
513FE0:  IT NE
513FE2:  ADDNE.W         R6, R1, #0x30 ; '0'
513FE6:  VLDR            D16, [R4,#0x14]
513FEA:  VLDR            S2, [R6]
513FEE:  VLDR            D17, [R6,#4]
513FF2:  VSUB.F32        S0, S0, S2
513FF6:  VLDR            S4, [R4,#0x2C]
513FFA:  VSUB.F32        D16, D16, D17
513FFE:  VMUL.F32        S4, S4, S4
514002:  VMUL.F32        D1, D16, D16
514006:  VMUL.F32        S0, S0, S0
51400A:  VADD.F32        S0, S0, S2
51400E:  VADD.F32        S0, S0, S3
514012:  VCMPE.F32       S0, S4
514016:  VMRS            APSR_nzcv, FPSCR
51401A:  BLE             loc_5140D4
51401C:  LDR             R6, [R4,#0x28]
51401E:  MOV.W           R12, #1
514022:  STRB.W          R12, [R4,#0x3C]
514026:  ADD.W           R1, R4, #0x10
51402A:  STRD.W          R3, R6, [R4,#0x34]
51402E:  LDR.W           R3, [LR,#0x14]
514032:  CMP             R3, #0
514034:  IT NE
514036:  ADDNE.W         R2, R3, #0x30 ; '0'
51403A:  VLDR            D16, [R2]
51403E:  LDR             R2, [R2,#8]
514040:  STR             R2, [R1,#8]
514042:  VSTR            D16, [R1]
514046:  VLDR            S2, [R4,#0x10]
51404A:  VLDR            S4, [R0,#0x18]
51404E:  LDRB.W          R3, [R4,#0x24]
514052:  VCMP.F32        S4, S2
514056:  VLDR            S0, [R4,#0x20]
51405A:  VMRS            APSR_nzcv, FPSCR
51405E:  BNE             loc_514096
514060:  ADD.W           R2, R4, #0x14
514064:  VLDR            S4, [R0,#0x1C]
514068:  VLDR            S2, [R2]
51406C:  VCMP.F32        S4, S2
514070:  VMRS            APSR_nzcv, FPSCR
514074:  BNE             loc_514096
514076:  VLDR            S2, [R4,#0x18]
51407A:  VLDR            S4, [R0,#0x20]
51407E:  VCMP.F32        S4, S2
514082:  VMRS            APSR_nzcv, FPSCR
514086:  BNE             loc_514096
514088:  VLDR            S2, [R0,#0x2C]
51408C:  VCMP.F32        S2, S0
514090:  VMRS            APSR_nzcv, FPSCR
514094:  BEQ             loc_5140AE
514096:  VLDR            D16, [R1]
51409A:  ADD.W           R2, R0, #0x18
51409E:  LDR             R1, [R1,#8]
5140A0:  STR             R1, [R2,#8]
5140A2:  VSTR            D16, [R2]
5140A6:  STRB.W          R12, [R0,#0x41]
5140AA:  VSTR            S0, [R0,#0x2C]
5140AE:  STRB.W          R3, [R0,#0x24]
5140B2:  LDR             R0, [R4,#0x30]
5140B4:  CMP             R0, #5
5140B6:  BLT             loc_5140D4
5140B8:  ADD             R6, SP, #0x28+var_24
5140BA:  MOV             R1, R5; CPed *
5140BC:  MOV             R0, R6; this
5140BE:  BLX             j__ZN21CEventSeenPanickedPedC2EP4CPed; CEventSeenPanickedPed::CEventSeenPanickedPed(CPed *)
5140C2:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
5140C6:  MOV             R1, R6; CEvent *
5140C8:  MOVS            R2, #0; bool
5140CA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5140CE:  MOV             R0, R6; this
5140D0:  BLX             j__ZN21CEventSeenPanickedPedD2Ev; CEventSeenPanickedPed::~CEventSeenPanickedPed()
5140D4:  LDR             R0, [R4,#8]
5140D6:  ADD             SP, SP, #0x18
5140D8:  POP.W           {R11}
5140DC:  POP             {R4-R7,PC}
