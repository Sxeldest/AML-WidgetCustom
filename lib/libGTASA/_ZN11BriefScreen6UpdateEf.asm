; =========================================================
; Game Engine Function: _ZN11BriefScreen6UpdateEf
; Address            : 0x2A6EB4 - 0x2A7002
; =========================================================

2A6EB4:  PUSH            {R4,R5,R7,LR}
2A6EB6:  ADD             R7, SP, #8
2A6EB8:  VPUSH           {D8}
2A6EBC:  MOV             R4, R1
2A6EBE:  MOV             R5, R0
2A6EC0:  MOVS            R0, #0x3C ; '<'
2A6EC2:  VMOV            S16, R4
2A6EC6:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A6ECA:  CBNZ            R0, loc_2A6ED6
2A6ECC:  MOVS            R0, #0x1F
2A6ECE:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A6ED2:  CMP             R0, #1
2A6ED4:  BNE             loc_2A6EE8
2A6ED6:  MOVS            R0, #0x3C ; '<'
2A6ED8:  MOVS            R1, #0
2A6EDA:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2A6EDE:  CBNZ            R0, loc_2A6EF2
2A6EE0:  MOVS            R0, #0x1F
2A6EE2:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
2A6EE6:  CBNZ            R0, loc_2A6EF2
2A6EE8:  MOVS            R0, #0x1D
2A6EEA:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
2A6EEE:  CMP             R0, #1
2A6EF0:  BNE             loc_2A6F0C
2A6EF2:  VMOV.F32        S0, #-1.5
2A6EF6:  VLDR            S2, =70.0
2A6EFA:  VMUL.F32        S0, S16, S0
2A6EFE:  VMUL.F32        S0, S0, S2
2A6F02:  VLDR            S2, [R5,#0x44]
2A6F06:  VADD.F32        S16, S2, S0
2A6F0A:  B               loc_2A6F52
2A6F0C:  MOVS            R0, #0x3D ; '='
2A6F0E:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A6F12:  CBNZ            R0, loc_2A6F1E
2A6F14:  MOVS            R0, #0x1F
2A6F16:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A6F1A:  CMP             R0, #1
2A6F1C:  BNE             loc_2A6F30
2A6F1E:  MOVS            R0, #0x3D ; '='
2A6F20:  MOVS            R1, #0
2A6F22:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2A6F26:  CBNZ            R0, loc_2A6F3A
2A6F28:  MOVS            R0, #0x1F
2A6F2A:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
2A6F2E:  CBNZ            R0, loc_2A6F3A
2A6F30:  MOVS            R0, #0x1D
2A6F32:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
2A6F36:  CMP             R0, #1
2A6F38:  BNE             loc_2A6FA2
2A6F3A:  VMOV.F32        S0, #1.5
2A6F3E:  VMUL.F32        S0, S16, S0
2A6F42:  VLDR            S2, =70.0
2A6F46:  VMUL.F32        S0, S0, S2
2A6F4A:  VLDR            S2, [R5,#0x44]
2A6F4E:  VADD.F32        S16, S0, S2
2A6F52:  MOV             R0, R5; this
2A6F54:  VSTR            S16, [R5,#0x44]
2A6F58:  BLX             j__ZN11BriefScreen18ComputeTotalHeightEv; BriefScreen::ComputeTotalHeight(void)
2A6F5C:  VMOV            S4, R0
2A6F60:  VLDR            S0, =150.0
2A6F64:  VLDR            S2, =100.0
2A6F68:  VSUB.F32        S0, S0, S4
2A6F6C:  LDR             R1, =(lastDevice_ptr - 0x2A6F78)
2A6F6E:  VMIN.F32        D16, D8, D1
2A6F72:  LDR             R0, =(gMobileMenu_ptr - 0x2A6F7A)
2A6F74:  ADD             R1, PC; lastDevice_ptr
2A6F76:  ADD             R0, PC; gMobileMenu_ptr
2A6F78:  LDR             R1, [R1]; lastDevice
2A6F7A:  LDR             R0, [R0]; gMobileMenu
2A6F7C:  VMAX.F32        D0, D16, D0
2A6F80:  VSTR            S0, [R5,#0x44]
2A6F84:  LDR             R1, [R1]
2A6F86:  ADD.W           R0, R0, R1,LSL#3
2A6F8A:  LDR             R1, [R0,#0x70]
2A6F8C:  STR             R1, [R5,#0x4C]
2A6F8E:  MOV             R1, R4; float
2A6F90:  LDR             R0, [R0,#0x74]
2A6F92:  STR             R0, [R5,#0x50]
2A6F94:  MOV             R0, R5; this
2A6F96:  VPOP            {D8}
2A6F9A:  POP.W           {R4,R5,R7,LR}
2A6F9E:  B.W             j_j__ZN16CharSelectScreen6UpdateEf; j_CharSelectScreen::Update(float)
2A6FA2:  LDR             R0, =(gMobileMenu_ptr - 0x2A6FA8)
2A6FA4:  ADD             R0, PC; gMobileMenu_ptr
2A6FA6:  LDR             R0, [R0]; gMobileMenu
2A6FA8:  LDRB.W          R0, [R0,#(byte_6E00DA - 0x6E006C)]
2A6FAC:  CBZ             R0, loc_2A6FFC
2A6FAE:  LDR             R0, =(lastDevice_ptr - 0x2A6FB6)
2A6FB0:  LDR             R1, =(gMobileMenu_ptr - 0x2A6FB8)
2A6FB2:  ADD             R0, PC; lastDevice_ptr
2A6FB4:  ADD             R1, PC; gMobileMenu_ptr
2A6FB6:  LDR             R0, [R0]; lastDevice
2A6FB8:  LDR             R1, [R1]; gMobileMenu
2A6FBA:  LDR             R0, [R0]
2A6FBC:  ADD.W           R1, R1, R0,LSL#2
2A6FC0:  LDR.W           R1, [R1,#0x90]
2A6FC4:  CMP             R1, #3
2A6FC6:  BNE             loc_2A6FFC
2A6FC8:  LDR             R1, =(gMobileMenu_ptr - 0x2A6FD2)
2A6FCA:  VLDR            S0, =200.0
2A6FCE:  ADD             R1, PC; gMobileMenu_ptr
2A6FD0:  LDR             R1, [R1]; gMobileMenu
2A6FD2:  ADD.W           R1, R1, R0,LSL#3
2A6FD6:  VLDR            S2, [R1,#0x70]
2A6FDA:  VCMPE.F32       S2, S0
2A6FDE:  VMRS            APSR_nzcv, FPSCR
2A6FE2:  BLE             loc_2A6FFC
2A6FE4:  LDR             R1, =(gMobileMenu_ptr - 0x2A6FEE)
2A6FE6:  VLDR            S0, [R5,#0x50]
2A6FEA:  ADD             R1, PC; gMobileMenu_ptr
2A6FEC:  LDR             R1, [R1]; gMobileMenu
2A6FEE:  ADD.W           R0, R1, R0,LSL#3
2A6FF2:  VLDR            S2, [R0,#0x74]
2A6FF6:  VSUB.F32        S0, S2, S0
2A6FFA:  B               loc_2A6F4A
2A6FFC:  VLDR            S0, =0.15
2A7000:  B               loc_2A6F3E
