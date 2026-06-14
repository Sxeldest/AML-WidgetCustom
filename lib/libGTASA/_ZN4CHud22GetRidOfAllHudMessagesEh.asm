; =========================================================
; Game Engine Function: _ZN4CHud22GetRidOfAllHudMessagesEh
; Address            : 0x436CC8 - 0x436E72
; =========================================================

436CC8:  PUSH            {R4-R7,LR}
436CCA:  ADD             R7, SP, #0xC
436CCC:  PUSH.W          {R8-R10}
436CD0:  MOV             R8, R0
436CD2:  LDR             R0, =(_ZN4CHud11m_pZoneNameE_ptr - 0x436CDE)
436CD4:  MOVS            R2, #0
436CD6:  LDR.W           R12, =(_ZN4CHud18m_VehicleNameTimerE_ptr - 0x436CE8)
436CDA:  ADD             R0, PC; _ZN4CHud11m_pZoneNameE_ptr
436CDC:  LDR.W           LR, =(_ZN4CHud18m_VehicleFadeTimerE_ptr - 0x436CEC)
436CE0:  LDR.W           R9, =(_ZN4CHud14m_VehicleStateE_ptr - 0x436CF2)
436CE4:  ADD             R12, PC; _ZN4CHud18m_VehicleNameTimerE_ptr
436CE6:  LDR             R1, [R0]; CHud::m_pZoneName ...
436CE8:  ADD             LR, PC; _ZN4CHud18m_VehicleFadeTimerE_ptr
436CEA:  LDR.W           R10, =(_ZN4CHud9m_MessageE_ptr - 0x436CF8)
436CEE:  ADD             R9, PC; _ZN4CHud14m_VehicleStateE_ptr
436CF0:  LDR             R5, =(_ZN4CHud21m_pVehicleNameToPrintE_ptr - 0x436CFC)
436CF2:  STR             R2, [R1]; CHud::m_pZoneName
436CF4:  ADD             R10, PC; _ZN4CHud9m_MessageE_ptr
436CF6:  LDR             R1, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x436D00)
436CF8:  ADD             R5, PC; _ZN4CHud21m_pVehicleNameToPrintE_ptr
436CFA:  LDR             R6, =(_ZN4CHud14m_pVehicleNameE_ptr - 0x436D06)
436CFC:  ADD             R1, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
436CFE:  LDR.W           R12, [R12]; CHud::m_VehicleNameTimer ...
436D02:  ADD             R6, PC; _ZN4CHud14m_pVehicleNameE_ptr
436D04:  LDR.W           R3, [LR]; CHud::m_VehicleFadeTimer ...
436D08:  LDR             R1, [R1]; CHud::m_ZoneNameTimer ...
436D0A:  LDR.W           R4, [R9]; CHud::m_VehicleState ...
436D0E:  LDR             R5, [R5]; CHud::m_pVehicleNameToPrint ...
436D10:  STR             R2, [R1]; CHud::m_ZoneNameTimer
436D12:  LDR             R1, =(_ZN4CHud11m_ZoneStateE_ptr - 0x436D1A)
436D14:  LDR             R6, [R6]; CHud::m_pVehicleName ...
436D16:  ADD             R1, PC; _ZN4CHud11m_ZoneStateE_ptr
436D18:  LDR.W           R0, [R10]; CHud::m_Message ...
436D1C:  STR             R2, [R5]; CHud::m_pVehicleNameToPrint
436D1E:  LDR             R1, [R1]; CHud::m_ZoneState ...
436D20:  STR             R2, [R6]; CHud::m_pVehicleName
436D22:  STR.W           R2, [R12]; CHud::m_VehicleNameTimer
436D26:  STR             R2, [R1]; CHud::m_ZoneState
436D28:  MOV.W           R1, #0x320
436D2C:  STR             R2, [R3]; CHud::m_VehicleFadeTimer
436D2E:  STR             R2, [R4]; CHud::m_VehicleState
436D30:  BLX             j___aeabi_memclr8_1
436D34:  LDR             R0, =(BigMessageInUse_ptr - 0x436D3A)
436D36:  ADD             R0, PC; BigMessageInUse_ptr
436D38:  LDR             R0, [R0]; BigMessageInUse
436D3A:  VLDR            S0, [R0]
436D3E:  VCMP.F32        S0, #0.0
436D42:  VMRS            APSR_nzcv, FPSCR
436D46:  BNE             loc_436D56
436D48:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x436D52)
436D4A:  MOV.W           R1, #0x100
436D4E:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
436D50:  LDR             R0, [R0]; CHud::m_BigMessage ...
436D52:  BLX             j___aeabi_memclr8_1
436D56:  LDR             R0, =(BigMessageInUse_ptr - 0x436D5C)
436D58:  ADD             R0, PC; BigMessageInUse_ptr
436D5A:  LDR             R0, [R0]; BigMessageInUse
436D5C:  VLDR            S0, [R0,#4]
436D60:  VCMP.F32        S0, #0.0
436D64:  VMRS            APSR_nzcv, FPSCR
436D68:  IT EQ
436D6A:  CMPEQ.W         R8, #0
436D6E:  BNE             loc_436D82
436D70:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x436D7A)
436D72:  MOV.W           R1, #0x100
436D76:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
436D78:  LDR             R0, [R0]; CHud::m_BigMessage ...
436D7A:  ADD.W           R0, R0, #0x100
436D7E:  BLX             j___aeabi_memclr8_1
436D82:  LDR             R0, =(BigMessageInUse_ptr - 0x436D88)
436D84:  ADD             R0, PC; BigMessageInUse_ptr
436D86:  LDR             R0, [R0]; BigMessageInUse
436D88:  VLDR            S0, [R0,#8]
436D8C:  VCMP.F32        S0, #0.0
436D90:  VMRS            APSR_nzcv, FPSCR
436D94:  BNE             loc_436DA8
436D96:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x436DA0)
436D98:  MOV.W           R1, #0x100
436D9C:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
436D9E:  LDR             R0, [R0]; CHud::m_BigMessage ...
436DA0:  ADD.W           R0, R0, #0x200
436DA4:  BLX             j___aeabi_memclr8_1
436DA8:  LDR             R0, =(BigMessageInUse_ptr - 0x436DAE)
436DAA:  ADD             R0, PC; BigMessageInUse_ptr
436DAC:  LDR             R0, [R0]; BigMessageInUse
436DAE:  VLDR            S0, [R0,#0xC]
436DB2:  VCMP.F32        S0, #0.0
436DB6:  VMRS            APSR_nzcv, FPSCR
436DBA:  BNE             loc_436DCE
436DBC:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x436DC6)
436DBE:  MOV.W           R1, #0x100
436DC2:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
436DC4:  LDR             R0, [R0]; CHud::m_BigMessage ...
436DC6:  ADD.W           R0, R0, #0x300
436DCA:  BLX             j___aeabi_memclr8_1
436DCE:  LDR             R0, =(BigMessageInUse_ptr - 0x436DD4)
436DD0:  ADD             R0, PC; BigMessageInUse_ptr
436DD2:  LDR             R0, [R0]; BigMessageInUse
436DD4:  VLDR            S0, [R0,#0x10]
436DD8:  VCMP.F32        S0, #0.0
436DDC:  VMRS            APSR_nzcv, FPSCR
436DE0:  IT EQ
436DE2:  CMPEQ.W         R8, #0
436DE6:  BNE             loc_436DFA
436DE8:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x436DF2)
436DEA:  MOV.W           R1, #0x100
436DEE:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
436DF0:  LDR             R0, [R0]; CHud::m_BigMessage ...
436DF2:  ADD.W           R0, R0, #0x400
436DF6:  BLX             j___aeabi_memclr8_1
436DFA:  LDR             R0, =(BigMessageInUse_ptr - 0x436E00)
436DFC:  ADD             R0, PC; BigMessageInUse_ptr
436DFE:  LDR             R0, [R0]; BigMessageInUse
436E00:  VLDR            S0, [R0,#0x14]
436E04:  VCMP.F32        S0, #0.0
436E08:  VMRS            APSR_nzcv, FPSCR
436E0C:  BNE             loc_436E20
436E0E:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x436E18)
436E10:  MOV.W           R1, #0x100
436E14:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
436E16:  LDR             R0, [R0]; CHud::m_BigMessage ...
436E18:  ADD.W           R0, R0, #0x500
436E1C:  BLX             j___aeabi_memclr8_1
436E20:  LDR             R0, =(BigMessageInUse_ptr - 0x436E26)
436E22:  ADD             R0, PC; BigMessageInUse_ptr
436E24:  LDR             R0, [R0]; BigMessageInUse
436E26:  VLDR            S0, [R0,#0x18]
436E2A:  VCMP.F32        S0, #0.0
436E2E:  VMRS            APSR_nzcv, FPSCR
436E32:  BNE             loc_436E46
436E34:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x436E3E)
436E36:  MOV.W           R1, #0x100
436E3A:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
436E3C:  LDR             R0, [R0]; CHud::m_BigMessage ...
436E3E:  ADD.W           R0, R0, #0x600
436E42:  BLX             j___aeabi_memclr8_1
436E46:  LDR             R0, =(BigMessageInUse_ptr - 0x436E4C)
436E48:  ADD             R0, PC; BigMessageInUse_ptr
436E4A:  LDR             R0, [R0]; BigMessageInUse
436E4C:  VLDR            S0, [R0,#0x1C]
436E50:  VCMP.F32        S0, #0.0
436E54:  VMRS            APSR_nzcv, FPSCR
436E58:  BNE             loc_436E6C
436E5A:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x436E64)
436E5C:  MOV.W           R1, #0x100
436E60:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
436E62:  LDR             R0, [R0]; CHud::m_BigMessage ...
436E64:  ADD.W           R0, R0, #0x700
436E68:  BLX             j___aeabi_memclr8_1
436E6C:  POP.W           {R8-R10}
436E70:  POP             {R4-R7,PC}
