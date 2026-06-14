; =========================================================
; Game Engine Function: _ZN13CCarEnterExit22IsPlayerToQuitCarEnterERK4CPedRK8CVehicleiP5CTask
; Address            : 0x508C28 - 0x508F80
; =========================================================

508C28:  PUSH            {R4-R7,LR}
508C2A:  ADD             R7, SP, #0xC
508C2C:  PUSH.W          {R8-R10}
508C30:  VPUSH           {D8-D10}
508C34:  MOV             R4, R3
508C36:  MOV             R8, R2
508C38:  MOV             R6, R1
508C3A:  MOV             R5, R0
508C3C:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
508C40:  MOV             R9, R0
508C42:  ADDW            R0, R5, #0x55C
508C46:  CMP             R4, #0
508C48:  VLDR            S16, [R0]
508C4C:  BEQ.W           loc_508DDC
508C50:  LDR             R0, [R4]
508C52:  LDR             R1, [R0,#0x14]
508C54:  MOV             R0, R4
508C56:  BLX             R1
508C58:  SUB.W           R1, R0, #0x2C0; switch 126 cases
508C5C:  MOV.W           R10, #0
508C60:  CMP             R1, #0x7D ; '}'
508C62:  BHI.W           def_508C66; jumptable 00508C66 default case
508C66:  TBH.W           [PC,R1,LSL#1]; switch jump
508C6A:  DCW 0x7E; jump table for switch statement
508C6C:  DCW 0xFE
508C6E:  DCW 0xFE
508C70:  DCW 0xFE
508C72:  DCW 0xFE
508C74:  DCW 0xFE
508C76:  DCW 0xFE
508C78:  DCW 0xFE
508C7A:  DCW 0xFE
508C7C:  DCW 0xFE
508C7E:  DCW 0xFE
508C80:  DCW 0xFE
508C82:  DCW 0xFE
508C84:  DCW 0xFE
508C86:  DCW 0xFE
508C88:  DCW 0xFE
508C8A:  DCW 0xFE
508C8C:  DCW 0xFE
508C8E:  DCW 0xFE
508C90:  DCW 0xFE
508C92:  DCW 0xFE
508C94:  DCW 0xFE
508C96:  DCW 0xFE
508C98:  DCW 0xFE
508C9A:  DCW 0xFE
508C9C:  DCW 0xFE
508C9E:  DCW 0xFE
508CA0:  DCW 0xFE
508CA2:  DCW 0xFE
508CA4:  DCW 0xFE
508CA6:  DCW 0xFE
508CA8:  DCW 0xFE
508CAA:  DCW 0xFE
508CAC:  DCW 0xFE
508CAE:  DCW 0xFE
508CB0:  DCW 0xFE
508CB2:  DCW 0xFE
508CB4:  DCW 0xFE
508CB6:  DCW 0xFE
508CB8:  DCW 0xFE
508CBA:  DCW 0xFE
508CBC:  DCW 0xFE
508CBE:  DCW 0xFE
508CC0:  DCW 0xFE
508CC2:  DCW 0xFE
508CC4:  DCW 0xFE
508CC6:  DCW 0xFE
508CC8:  DCW 0xFE
508CCA:  DCW 0xFE
508CCC:  DCW 0xFE
508CCE:  DCW 0xFE
508CD0:  DCW 0xFE
508CD2:  DCW 0xFE
508CD4:  DCW 0xFE
508CD6:  DCW 0xFE
508CD8:  DCW 0xFE
508CDA:  DCW 0xFE
508CDC:  DCW 0xFE
508CDE:  DCW 0xFE
508CE0:  DCW 0xFE
508CE2:  DCW 0xFE
508CE4:  DCW 0xFE
508CE6:  DCW 0xFE
508CE8:  DCW 0xFE
508CEA:  DCW 0xFE
508CEC:  DCW 0xFE
508CEE:  DCW 0xFE
508CF0:  DCW 0xFE
508CF2:  DCW 0xFE
508CF4:  DCW 0xFE
508CF6:  DCW 0xFE
508CF8:  DCW 0xFE
508CFA:  DCW 0xFE
508CFC:  DCW 0xFE
508CFE:  DCW 0xFE
508D00:  DCW 0xFE
508D02:  DCW 0xFE
508D04:  DCW 0xFE
508D06:  DCW 0xFE
508D08:  DCW 0xFE
508D0A:  DCW 0xFE
508D0C:  DCW 0xFE
508D0E:  DCW 0xFE
508D10:  DCW 0xFE
508D12:  DCW 0xFE
508D14:  DCW 0xFE
508D16:  DCW 0xFE
508D18:  DCW 0xFE
508D1A:  DCW 0xFE
508D1C:  DCW 0xFE
508D1E:  DCW 0xFE
508D20:  DCW 0xFE
508D22:  DCW 0xFE
508D24:  DCW 0xFE
508D26:  DCW 0xFE
508D28:  DCW 0xFE
508D2A:  DCW 0xFE
508D2C:  DCW 0x80
508D2E:  DCW 0x7E
508D30:  DCW 0x7E
508D32:  DCW 0x7E
508D34:  DCW 0x80
508D36:  DCW 0xFE
508D38:  DCW 0x80
508D3A:  DCW 0x80
508D3C:  DCW 0xFE
508D3E:  DCW 0xFE
508D40:  DCW 0xFE
508D42:  DCW 0x80
508D44:  DCW 0xFE
508D46:  DCW 0xFE
508D48:  DCW 0xFE
508D4A:  DCW 0x80
508D4C:  DCW 0x7E
508D4E:  DCW 0xFE
508D50:  DCW 0xFE
508D52:  DCW 0x7E
508D54:  DCW 0xFE
508D56:  DCW 0xFE
508D58:  DCW 0xFE
508D5A:  DCW 0xFE
508D5C:  DCW 0xFE
508D5E:  DCW 0xFE
508D60:  DCW 0xFE
508D62:  DCW 0xFE
508D64:  DCW 0x80
508D66:  MOV.W           R10, #1; jumptable 00508C66 cases 704,802-804,817,820
508D6A:  LDR             R4, [R6,#0x14]; jumptable 00508C66 cases 801,805,807,808,812,816,829
508D6C:  LDR             R0, [R5,#0x14]
508D6E:  ADD.W           R1, R4, #0x30 ; '0'
508D72:  CMP             R4, #0
508D74:  IT EQ
508D76:  ADDEQ           R1, R6, #4
508D78:  ADD.W           R2, R0, #0x30 ; '0'
508D7C:  CMP             R0, #0
508D7E:  VLDR            S0, [R1]
508D82:  VLDR            S2, [R1,#4]
508D86:  VLDR            S4, [R1,#8]
508D8A:  IT EQ
508D8C:  ADDEQ           R2, R5, #4
508D8E:  VLDR            S6, [R2]
508D92:  CMP             R4, #0
508D94:  VLDR            S8, [R2,#4]
508D98:  VSUB.F32        S0, S6, S0
508D9C:  VLDR            S10, [R2,#8]
508DA0:  VSUB.F32        S2, S8, S2
508DA4:  VLDR            S6, [R4]
508DA8:  VLDR            S8, [R4,#4]
508DAC:  VSUB.F32        S4, S10, S4
508DB0:  VLDR            S12, [R4,#8]
508DB4:  VMUL.F32        S0, S0, S6
508DB8:  VMUL.F32        S2, S2, S8
508DBC:  VMUL.F32        S4, S4, S12
508DC0:  VADD.F32        S0, S0, S2
508DC4:  VADD.F32        S16, S0, S4
508DC8:  BEQ             loc_508DE2
508DCA:  LDRD.W          R0, R1, [R4,#0x10]; x
508DCE:  EOR.W           R0, R0, #0x80000000; y
508DD2:  BLX             atan2f
508DD6:  VMOV            S0, R0
508DDA:  B               loc_508DE6
508DDC:  MOV.W           R10, #0
508DE0:  B               loc_508E66; jumptable 00508C66 cases 705-800,806,809-811,813-815,818,819,821-828
508DE2:  VLDR            S0, [R6,#0x10]
508DE6:  VCMPE.F32       S16, #0.0
508DEA:  ADR             R0, dword_508F80
508DEC:  VMRS            APSR_nzcv, FPSCR
508DF0:  IT GT
508DF2:  ADDGT           R0, #4
508DF4:  VLDR            S2, [R0]
508DF8:  VADD.F32        S16, S2, S0
508DFC:  VLDR            S0, [R4,#0x28]
508E00:  VCMPE.F32       S0, #0.0
508E04:  VMRS            APSR_nzcv, FPSCR
508E08:  BGE             loc_508E24
508E0A:  VLDR            S0, =3.1416
508E0E:  VADD.F32        S16, S16, S0
508E12:  VCMPE.F32       S16, S0
508E16:  VMRS            APSR_nzcv, FPSCR
508E1A:  ITT GT
508E1C:  VLDRGT          S0, =-6.2832
508E20:  VADDGT.F32      S16, S16, S0
508E24:  VLDR            S0, =3.1416
508E28:  VCMPE.F32       S16, S0
508E2C:  VMRS            APSR_nzcv, FPSCR
508E30:  BLE             loc_508E46
508E32:  VLDR            S0, =-6.2832
508E36:  CMP.W           R10, #0
508E3A:  IT NE
508E3C:  MOVNE.W         R10, #1
508E40:  VADD.F32        S16, S16, S0
508E44:  B               loc_508E66; jumptable 00508C66 cases 705-800,806,809-811,813-815,818,819,821-828
508E46:  VLDR            S0, =-3.1416
508E4A:  CMP.W           R10, #0
508E4E:  IT NE
508E50:  MOVNE.W         R10, #1
508E54:  VCMPE.F32       S16, S0
508E58:  VMRS            APSR_nzcv, FPSCR
508E5C:  ITT LT
508E5E:  VLDRLT          S0, =6.2832
508E62:  VADDLT.F32      S16, S16, S0
508E66:  LDR.W           R0, [R6,#0x494]; jumptable 00508C66 cases 705-800,806,809-811,813-815,818,819,821-828
508E6A:  CBZ             R0, loc_508E70
508E6C:  MOVS            R0, #1
508E6E:  B               loc_508E78
508E70:  LDRH.W          R0, [R9,#0x110]
508E74:  CBZ             R0, loc_508E82
508E76:  MOVS            R0, #0
508E78:  VPOP            {D8-D10}
508E7C:  POP.W           {R8-R10}
508E80:  POP             {R4-R7,PC}; float
508E82:  CMP.W           R10, #1
508E86:  BNE             loc_508EA2
508E88:  MOV             R0, R9; this
508E8A:  BLX             j__ZN4CPad19MeleeAttackJustDownEv; CPad::MeleeAttackJustDown(void)
508E8E:  CMP             R0, #0
508E90:  BNE             loc_508E6C
508E92:  B               loc_508ECA
508E94:  CMP             R0, #0xCB; jumptable 00508C66 default case
508E96:  BEQ.W           loc_508D6A; jumptable 00508C66 cases 801,805,807,808,812,816,829
508E9A:  CMP             R0, #0xD0
508E9C:  BEQ.W           loc_508D6A; jumptable 00508C66 cases 801,805,807,808,812,816,829
508EA0:  B               loc_508E66; jumptable 00508C66 cases 705-800,806,809-811,813-815,818,819,821-828
508EA2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x508EAA)
508EA4:  LDR             R1, =(_ZN13CCarEnterExit21ms_fPlayerMinQuitTimeE_ptr - 0x508EAC)
508EA6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
508EA8:  ADD             R1, PC; _ZN13CCarEnterExit21ms_fPlayerMinQuitTimeE_ptr
508EAA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
508EAC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
508EAE:  SUB.W           R0, R0, R8
508EB2:  VMOV            S0, R0
508EB6:  LDR             R0, [R1]; CCarEnterExit::ms_fPlayerMinQuitTime ...
508EB8:  VCVT.F32.U32    S0, S0
508EBC:  VLDR            S2, [R0]
508EC0:  VCMPE.F32       S2, S0
508EC4:  VMRS            APSR_nzcv, FPSCR
508EC8:  BGE             loc_508E76
508ECA:  MOV             R0, R9; this
508ECC:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
508ED0:  VMOV            S0, R0
508ED4:  MOV             R0, R9; this
508ED6:  VCVT.F32.S32    S18, S0
508EDA:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
508EDE:  VMOV            S0, R0
508EE2:  MOVS            R1, #0; float
508EE4:  VMOV            R0, S18
508EE8:  VCVT.F32.S32    S20, S0
508EEC:  VMOV            R3, S20; float
508EF0:  EOR.W           R2, R0, #0x80000000; float
508EF4:  MOVS            R0, #0; this
508EF6:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
508EFA:  VMUL.F32        S0, S18, S18
508EFE:  LDR             R1, =(TheCamera_ptr - 0x508F0C)
508F00:  VMUL.F32        S2, S20, S20
508F04:  VLDR            S10, =0.0078125
508F08:  ADD             R1, PC; TheCamera_ptr
508F0A:  VMOV            S4, R0
508F0E:  LDR             R1, [R1]; TheCamera
508F10:  VLDR            S6, [R1,#0x14C]
508F14:  VADD.F32        S0, S0, S2
508F18:  VSQRT.F32       S2, S0
508F1C:  VLDR            S0, =3.1416
508F20:  VMUL.F32        S2, S2, S10
508F24:  VADD.F32        S8, S16, S0
508F28:  VSUB.F32        S0, S4, S6
508F2C:  VCMPE.F32       S0, S8
508F30:  VMRS            APSR_nzcv, FPSCR
508F34:  BLE             loc_508F3C
508F36:  VLDR            S4, =-6.2832
508F3A:  B               loc_508F52
508F3C:  VLDR            S4, =-3.1416
508F40:  VADD.F32        S4, S16, S4
508F44:  VCMPE.F32       S0, S4
508F48:  VMRS            APSR_nzcv, FPSCR
508F4C:  BGE             loc_508F56
508F4E:  VLDR            S4, =6.2832
508F52:  VADD.F32        S0, S0, S4
508F56:  VMOV.F32        S4, #0.75
508F5A:  VCMPE.F32       S2, S4
508F5E:  VMRS            APSR_nzcv, FPSCR
508F62:  BLE.W           loc_508E76
508F66:  VSUB.F32        S0, S0, S16
508F6A:  VLDR            S2, =0.7854
508F6E:  VABS.F32        S0, S0
508F72:  VCMPE.F32       S0, S2
508F76:  VMRS            APSR_nzcv, FPSCR
508F7A:  BGT.W           loc_508E6C
508F7E:  B               loc_508E76
