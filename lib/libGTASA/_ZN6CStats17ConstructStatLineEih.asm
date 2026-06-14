; =========================================================
; Game Engine Function: _ZN6CStats17ConstructStatLineEih
; Address            : 0x416C7C - 0x419262
; =========================================================

416C7C:  PUSH            {R4-R7,LR}
416C7E:  ADD             R7, SP, #0xC
416C80:  PUSH.W          {R8-R11}
416C84:  SUB             SP, SP, #4
416C86:  VPUSH           {D8-D9}
416C8A:  SUB             SP, SP, #0x60
416C8C:  STR             R0, [SP,#0x90+var_44]
416C8E:  MOVW            R8, #0xFF9D
416C92:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x416C9C)
416C96:  CMP             R1, #6
416C98:  ADD             R0, PC; __stack_chk_guard_ptr
416C9A:  LDR             R0, [R0]; __stack_chk_guard
416C9C:  LDR             R0, [R0]
416C9E:  STR             R0, [SP,#0x90+var_34]
416CA0:  BHI             loc_416CB0
416CA2:  LDR.W           R0, =(off_667D50 - 0x416CAC)
416CA6:  SXTB            R1, R1
416CA8:  ADD             R0, PC; off_667D50
416CAA:  LDR.W           R10, [R0,R1,LSL#2]
416CAE:  B               loc_416CBA
416CB0:  LDR.W           R0, =(StatsMiscList_ptr - 0x416CB8)
416CB4:  ADD             R0, PC; StatsMiscList_ptr
416CB6:  LDR.W           R10, [R0]; StatsMiscList
416CBA:  LDRH.W          R4, [R10]
416CBE:  MOVS            R0, #0
416CC0:  STR             R0, [SP,#0x90+var_40]
416CC2:  CMP             R4, R8
416CC4:  BEQ.W           loc_419086
416CC8:  LDR             R0, [SP,#0x90+var_44]
416CCA:  MOVS            R1, #0
416CCC:  MOV             R6, R10
416CCE:  MOV.W           R9, #0
416CD2:  NEGS            R0, R0
416CD4:  STR             R0, [SP,#0x90+var_64]
416CD6:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416CE0)
416CDA:  STR             R1, [SP,#0x90+var_40]
416CDC:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
416CDE:  LDR             R0, [R0]; CStats::StatTypesFloat ...
416CE0:  STR             R0, [SP,#0x90+var_58]
416CE2:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x416CEA)
416CE6:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
416CE8:  LDR             R0, [R0]; CStats::StatTypesInt ...
416CEA:  STR             R0, [SP,#0x90+var_5C]
416CEC:  LDR.W           R0, =(gString_ptr - 0x416CF4)
416CF0:  ADD             R0, PC; gString_ptr
416CF2:  LDR             R0, [R0]; gString
416CF4:  STR             R0, [SP,#0x90+var_48]
416CF6:  LDR.W           R0, =(_ZN6CStats21m_ThisStatIsABarChartE_ptr - 0x416CFE)
416CFA:  ADD             R0, PC; _ZN6CStats21m_ThisStatIsABarChartE_ptr
416CFC:  LDR             R0, [R0]; CStats::m_ThisStatIsABarChart ...
416CFE:  STR             R0, [SP,#0x90+var_4C]
416D00:  LDR.W           R0, =(_ZN6CStats21m_ThisStatIsABarChartE_ptr - 0x416D08)
416D04:  ADD             R0, PC; _ZN6CStats21m_ThisStatIsABarChartE_ptr
416D06:  LDR             R0, [R0]; CStats::m_ThisStatIsABarChart ...
416D08:  STR             R0, [SP,#0x90+var_60]
416D0A:  LDR.W           R0, =(gString_ptr - 0x416D12)
416D0E:  ADD             R0, PC; gString_ptr
416D10:  LDR             R0, [R0]; gString
416D12:  STR             R0, [SP,#0x90+var_50]
416D14:  LDR.W           R0, =(gString_ptr - 0x416D1C)
416D18:  ADD             R0, PC; gString_ptr
416D1A:  LDR             R0, [R0]; gString
416D1C:  STR             R0, [SP,#0x90+var_54]
416D1E:  MOVS            R0, #0
416D20:  ADD.W           R0, R0, R0,LSL#1
416D24:  ADD.W           R5, R10, R0,LSL#1
416D28:  LDRB            R0, [R5,#3]
416D2A:  CBNZ            R0, loc_416D58
416D2C:  UXTH            R0, R4
416D2E:  CMP             R0, #0x51 ; 'Q'
416D30:  BHI             loc_416D3E
416D32:  LDR             R1, [SP,#0x90+var_58]
416D34:  ADD.W           R0, R1, R0,LSL#2
416D38:  VLDR            S0, [R0]
416D3C:  B               loc_416D4C
416D3E:  LDR             R1, [SP,#0x90+var_5C]
416D40:  ADD.W           R0, R1, R0,LSL#2
416D44:  VLDR            S0, [R0,#-0x1E0]
416D48:  VCVT.F32.S32    S0, S0
416D4C:  VCMPE.F32       S0, #0.0
416D50:  VMRS            APSR_nzcv, FPSCR
416D54:  BLE.W           loc_4177E0; jumptable 00416DCA cases 1-99
416D58:  SXTH.W          R11, R4
416D5C:  CMP.W           R11, #9
416D60:  BGT             loc_416D6A
416D62:  LDR             R0, [SP,#0x90+var_48]
416D64:  ADR.W           R1, aStat00D_0; "STAT00%d"
416D68:  B               loc_416D7E
416D6A:  CMP.W           R11, #0x63 ; 'c'; switch 100 cases
416D6E:  BGT             def_416DCA; jumptable 00416DCA default case
416D70:  LDR             R0, [SP,#0x90+var_50]
416D72:  ADR.W           R1, aStat0D_0; "STAT0%d"
416D76:  B               loc_416D7E
416D78:  LDR             R0, [SP,#0x90+var_54]; jumptable 00416DCA default case
416D7A:  ADR.W           R1, aStatD_0; "STAT%d"
416D7E:  MOV             R2, R11
416D80:  BL              sub_5E6BC0
416D84:  LDRH            R6, [R6]
416D86:  BLX             j__ZN13CLocalisation10GermanGameEv; CLocalisation::GermanGame(void)
416D8A:  CBZ             R0, loc_416DB2
416D8C:  MOV             R0, #0xFFFFFF33
416D90:  UXTAB.W         R0, R0, R6
416D94:  CMP             R0, #5
416D96:  BCC.W           loc_4177E0; jumptable 00416DCA cases 1-99
416D9A:  UXTB            R0, R6
416D9C:  SUBS            R0, #0xA7
416D9E:  CMP             R0, #0xA
416DA0:  BHI             loc_416DB2
416DA2:  MOVS            R1, #1
416DA4:  LSL.W           R0, R1, R0
416DA8:  MOVW            R1, #0x403
416DAC:  TST             R0, R1
416DAE:  BNE.W           loc_4177E0; jumptable 00416DCA cases 1-99
416DB2:  LDR             R1, [SP,#0x90+var_4C]
416DB4:  MOVS            R0, #0
416DB6:  STRH            R0, [R1]
416DB8:  LDRB            R0, [R5,#4]
416DBA:  CMP             R0, #0
416DBC:  BEQ.W           loc_41708A
416DC0:  MOV.W           R0, R11,LSR#1
416DC4:  CMP             R0, #0xA8
416DC6:  BHI.W           loc_4177E0; jumptable 00416DCA cases 1-99
416DCA:  TBH.W           [PC,R11,LSL#1]; switch jump
416DCE:  DCW 0x3CA; jump table for switch statement
416DD0:  DCW 0x509
416DD2:  DCW 0x509
416DD4:  DCW 0x509
416DD6:  DCW 0x509
416DD8:  DCW 0x509
416DDA:  DCW 0x509
416DDC:  DCW 0x509
416DDE:  DCW 0x509
416DE0:  DCW 0x509
416DE2:  DCW 0x509
416DE4:  DCW 0x509
416DE6:  DCW 0x509
416DE8:  DCW 0x509
416DEA:  DCW 0x509
416DEC:  DCW 0x509
416DEE:  DCW 0x509
416DF0:  DCW 0x509
416DF2:  DCW 0x509
416DF4:  DCW 0x509
416DF6:  DCW 0x509
416DF8:  DCW 0x509
416DFA:  DCW 0x509
416DFC:  DCW 0x509
416DFE:  DCW 0x509
416E00:  DCW 0x509
416E02:  DCW 0x509
416E04:  DCW 0x509
416E06:  DCW 0x509
416E08:  DCW 0x509
416E0A:  DCW 0x509
416E0C:  DCW 0x509
416E0E:  DCW 0x509
416E10:  DCW 0x509
416E12:  DCW 0x509
416E14:  DCW 0x509
416E16:  DCW 0x509
416E18:  DCW 0x509
416E1A:  DCW 0x509
416E1C:  DCW 0x509
416E1E:  DCW 0x509
416E20:  DCW 0x509
416E22:  DCW 0x509
416E24:  DCW 0x509
416E26:  DCW 0x509
416E28:  DCW 0x509
416E2A:  DCW 0x509
416E2C:  DCW 0x509
416E2E:  DCW 0x509
416E30:  DCW 0x509
416E32:  DCW 0x509
416E34:  DCW 0x509
416E36:  DCW 0x509
416E38:  DCW 0x509
416E3A:  DCW 0x509
416E3C:  DCW 0x509
416E3E:  DCW 0x509
416E40:  DCW 0x509
416E42:  DCW 0x509
416E44:  DCW 0x509
416E46:  DCW 0x509
416E48:  DCW 0x509
416E4A:  DCW 0x509
416E4C:  DCW 0x509
416E4E:  DCW 0x509
416E50:  DCW 0x509
416E52:  DCW 0x509
416E54:  DCW 0x509
416E56:  DCW 0x509
416E58:  DCW 0x509
416E5A:  DCW 0x509
416E5C:  DCW 0x509
416E5E:  DCW 0x509
416E60:  DCW 0x509
416E62:  DCW 0x509
416E64:  DCW 0x509
416E66:  DCW 0x509
416E68:  DCW 0x509
416E6A:  DCW 0x509
416E6C:  DCW 0x509
416E6E:  DCW 0x509
416E70:  DCW 0x509
416E72:  DCW 0x509
416E74:  DCW 0x509
416E76:  DCW 0x509
416E78:  DCW 0x509
416E7A:  DCW 0x509
416E7C:  DCW 0x509
416E7E:  DCW 0x509
416E80:  DCW 0x509
416E82:  DCW 0x509
416E84:  DCW 0x509
416E86:  DCW 0x509
416E88:  DCW 0x509
416E8A:  DCW 0x509
416E8C:  DCW 0x509
416E8E:  DCW 0x509
416E90:  DCW 0x509
416E92:  DCW 0x509
416E94:  DCW 0x509
416E96:  LSLS            R1, R1, #0x14
416E98:  LSLS            R1, R1, #0x14
416E9A:  LSLS            R1, R1, #0x14
416E9C:  LSLS            R1, R1, #0x14
416E9E:  LSLS            R1, R1, #0x14
416EA0:  LSLS            R1, R1, #0x14
416EA2:  LSLS            R1, R1, #0x14
416EA4:  LSLS            R1, R1, #0x14
416EA6:  LSLS            R1, R1, #0x14
416EA8:  LSLS            R1, R1, #0x14
416EAA:  LSLS            R1, R1, #0x14
416EAC:  LSLS            R1, R1, #0x14
416EAE:  LSLS            R1, R1, #0x14
416EB0:  LSLS            R1, R1, #0x14
416EB2:  LSLS            R1, R1, #0x14
416EB4:  LSLS            R1, R1, #0x14
416EB6:  LSLS            R1, R1, #0x14
416EB8:  LSLS            R1, R1, #0x14
416EBA:  LSLS            R1, R1, #0x14
416EBC:  LSLS            R1, R1, #0x14
416EBE:  LSLS            R1, R1, #0x14
416EC0:  LSLS            R1, R1, #0x14
416EC2:  LSLS            R1, R1, #0x14
416EC4:  LSLS            R1, R1, #0x14
416EC6:  LSLS            R1, R1, #0x14
416EC8:  LSLS            R1, R1, #0x14
416ECA:  LSLS            R1, R1, #0x14
416ECC:  LSLS            R1, R1, #0x14
416ECE:  LSLS            R1, R1, #0x14
416ED0:  LSLS            R1, R1, #0x14
416ED2:  LSLS            R1, R1, #0x14
416ED4:  LSLS            R1, R1, #0x14
416ED6:  LSLS            R1, R1, #0x14
416ED8:  LSLS            R1, R1, #0x14
416EDA:  LSLS            R1, R1, #0x14
416EDC:  LSLS            R1, R1, #0x14
416EDE:  LSLS            R1, R1, #0x14
416EE0:  LSLS            R1, R1, #0x14
416EE2:  LSLS            R1, R1, #0x14
416EE4:  LSLS            R1, R1, #0x14
416EE6:  LSLS            R1, R1, #0x14
416EE8:  LSLS            R1, R1, #0x14
416EEA:  LSLS            R1, R1, #0x14
416EEC:  LSLS            R1, R2, #0xF
416EEE:  LSLS            R6, R6, #0xF
416EF0:  LSLS            R1, R3, #0x10
416EF2:  LSLS            R1, R1, #0x14
416EF4:  LSLS            R1, R1, #0x14
416EF6:  LSLS            R1, R1, #0x14
416EF8:  LSLS            R1, R1, #0x14
416EFA:  LSLS            R1, R1, #0x14
416EFC:  LSLS            R1, R1, #0x14
416EFE:  LSLS            R1, R1, #0x14
416F00:  LSLS            R1, R1, #0x14
416F02:  LSLS            R1, R1, #0x14
416F04:  LSLS            R1, R1, #0x14
416F06:  LSLS            R1, R1, #0x14
416F08:  LSLS            R1, R1, #0x14
416F0A:  LSLS            R1, R1, #0x14
416F0C:  LSLS            R1, R1, #0x14
416F0E:  LSLS            R1, R1, #0x14
416F10:  LSLS            R1, R1, #0x14
416F12:  LSLS            R1, R1, #0x14
416F14:  LSLS            R1, R1, #0x14
416F16:  LSLS            R5, R7, #0xF
416F18:  LSLS            R1, R1, #0x14
416F1A:  LSLS            R1, R1, #0x14
416F1C:  LSLS            R1, R1, #0x14
416F1E:  LSLS            R1, R1, #0x14
416F20:  LSLS            R3, R1, #0x10
416F22:  LSLS            R1, R1, #0x14
416F24:  LSLS            R1, R1, #0x14
416F26:  LSLS            R1, R1, #0x14
416F28:  LSLS            R7, R4, #0x10
416F2A:  LSLS            R0, R2, #0x11
416F2C:  LSLS            R4, R2, #0xA
416F2E:  LSLS            R1, R1, #0x14
416F30:  LSLS            R1, R1, #0x14
416F32:  LSLS            R1, R1, #0x14
416F34:  LSLS            R1, R1, #0x14
416F36:  LSLS            R1, R1, #0x14
416F38:  LSLS            R1, R1, #0x14
416F3A:  LSLS            R1, R1, #0x14
416F3C:  LSLS            R1, R1, #0x14
416F3E:  LSLS            R1, R1, #0x14
416F40:  LSLS            R1, R1, #0x14
416F42:  LSLS            R1, R1, #0x14
416F44:  LSLS            R1, R1, #0x14
416F46:  LSLS            R1, R1, #0x14
416F48:  LSLS            R1, R1, #0x14
416F4A:  LSLS            R1, R1, #0x14
416F4C:  LSLS            R1, R1, #0x14
416F4E:  LSLS            R1, R1, #0x14
416F50:  LSLS            R1, R1, #0x14
416F52:  LSLS            R1, R1, #0x14
416F54:  LSLS            R1, R1, #0x14
416F56:  LSLS            R1, R1, #0x14
416F58:  LSLS            R1, R1, #0x14
416F5A:  LSLS            R1, R1, #0x14
416F5C:  LSLS            R1, R1, #0x14
416F5E:  LSLS            R1, R1, #0x14
416F60:  LSLS            R1, R1, #0x14
416F62:  LSLS            R1, R1, #0x14
416F64:  LSLS            R1, R1, #0x14
416F66:  LSLS            R1, R1, #0x14
416F68:  LSLS            R1, R1, #0x14
416F6A:  LSLS            R1, R1, #0x14
416F6C:  LSLS            R1, R1, #0x14
416F6E:  LSLS            R1, R1, #0x14
416F70:  LSLS            R1, R1, #0x14
416F72:  LSLS            R1, R1, #0x14
416F74:  LSLS            R1, R1, #0x14
416F76:  LSLS            R1, R1, #0x14
416F78:  LSLS            R7, R2, #0x11
416F7A:  LSLS            R1, R1, #0x14
416F7C:  LSLS            R1, R1, #0x14
416F7E:  LSLS            R1, R1, #0x14
416F80:  LSLS            R1, R1, #0x14
416F82:  LSLS            R1, R1, #0x14
416F84:  LSLS            R1, R1, #0x14
416F86:  LSLS            R1, R1, #0x14
416F88:  LSLS            R1, R1, #0x14
416F8A:  LSLS            R1, R1, #0x14
416F8C:  LSLS            R1, R1, #0x14
416F8E:  LSLS            R1, R1, #0x14
416F90:  LSLS            R1, R1, #0x14
416F92:  LSLS            R1, R1, #0x14
416F94:  LSLS            R1, R1, #0x14
416F96:  LSLS            R1, R1, #0x14
416F98:  LSLS            R1, R1, #0x14
416F9A:  LSLS            R1, R1, #0x14
416F9C:  LSLS            R3, R3, #0xA
416F9E:  LSLS            R1, R1, #0x14
416FA0:  LSLS            R1, R1, #0x14
416FA2:  LSLS            R1, R1, #0x14
416FA4:  LSLS            R1, R1, #0x14
416FA6:  LSLS            R1, R1, #0x14
416FA8:  LSLS            R1, R1, #0x14
416FAA:  LSLS            R1, R1, #0x14
416FAC:  LSLS            R1, R1, #0x14
416FAE:  LSLS            R1, R1, #0x14
416FB0:  LSLS            R4, R0, #0x10
416FB2:  LSLS            R1, R1, #0x14
416FB4:  LSLS            R3, R0, #0xF
416FB6:  LSLS            R1, R1, #0x14
416FB8:  LSLS            R1, R1, #0x14
416FBA:  LSLS            R1, R1, #0x14
416FBC:  LSLS            R1, R1, #0x14
416FBE:  LSLS            R1, R1, #0x14
416FC0:  LSLS            R1, R1, #0x14
416FC2:  LSLS            R1, R1, #0x14
416FC4:  LSLS            R1, R1, #0x14
416FC6:  LSLS            R2, R2, #5
416FC8:  LSLS            R2, R2, #5
416FCA:  LSLS            R2, R2, #5
416FCC:  LSLS            R2, R2, #5
416FCE:  LSLS            R2, R2, #5
416FD0:  LSLS            R2, R2, #5
416FD2:  LSLS            R1, R1, #0x14
416FD4:  LSLS            R1, R1, #0x14
416FD6:  LSLS            R1, R1, #0x14
416FD8:  LSLS            R1, R1, #0x14
416FDA:  LSLS            R1, R1, #0x14
416FDC:  LSLS            R1, R1, #0x14
416FDE:  LSLS            R1, R1, #0x14
416FE0:  LSLS            R1, R1, #0x14
416FE2:  LSLS            R1, R1, #0x14
416FE4:  LSLS            R1, R1, #0x14
416FE6:  LSLS            R1, R1, #0x14
416FE8:  LSLS            R1, R1, #0x14
416FEA:  LSLS            R1, R1, #0x14
416FEC:  LSLS            R1, R1, #0x14
416FEE:  LSLS            R1, R1, #0x14
416FF0:  LSLS            R1, R1, #0x14
416FF2:  LSLS            R1, R1, #0x14
416FF4:  LSLS            R1, R1, #0x14
416FF6:  LSLS            R1, R1, #0x14
416FF8:  LSLS            R1, R1, #0x14
416FFA:  LSLS            R1, R1, #0x14
416FFC:  LSLS            R1, R1, #0x14
416FFE:  LSLS            R1, R1, #0x14
417000:  LSLS            R1, R1, #0x14
417002:  LSLS            R1, R1, #0x14
417004:  LSLS            R1, R1, #0x14
417006:  LSLS            R1, R1, #0x14
417008:  LSLS            R1, R1, #0x14
41700A:  LSLS            R1, R1, #0x14
41700C:  LSLS            R1, R1, #0x14
41700E:  LSLS            R1, R1, #0x14
417010:  LSLS            R1, R1, #0x14
417012:  LSLS            R1, R1, #0x14
417014:  LSLS            R1, R1, #0x14
417016:  LSLS            R1, R1, #0x14
417018:  LSLS            R1, R1, #0x14
41701A:  LSLS            R1, R1, #0x14
41701C:  LSLS            R1, R1, #0x14
41701E:  LSLS            R1, R1, #0x14
417020:  LSLS            R1, R1, #0x14
417022:  LSLS            R1, R1, #0x14
417024:  LSLS            R1, R1, #0x14
417026:  LSLS            R1, R1, #0x14
417028:  LSLS            R1, R1, #0x14
41702A:  LSLS            R1, R1, #0x14
41702C:  LSLS            R1, R1, #0x14
41702E:  LSLS            R1, R1, #0x14
417030:  LSLS            R1, R1, #0x14
417032:  LSLS            R1, R1, #0x14
417034:  LSLS            R1, R1, #0x14
417036:  LSLS            R1, R1, #0x14
417038:  LSLS            R1, R1, #0x14
41703A:  LSLS            R1, R1, #0x14
41703C:  LSLS            R1, R1, #0x14
41703E:  LSLS            R1, R1, #0x14
417040:  LSLS            R1, R1, #0x14
417042:  LSLS            R1, R1, #0x14
417044:  LSLS            R1, R1, #0x14
417046:  LSLS            R1, R1, #0x14
417048:  LSLS            R1, R1, #0x14
41704A:  LSLS            R1, R1, #0x14
41704C:  LSLS            R1, R1, #0x14
41704E:  LSLS            R0, R4, #0x10
417050:  LSLS            R1, R1, #0x14
417052:  LSLS            R5, R1, #0xA
417054:  LSLS            R2, R4, #0xA
417056:  LSLS            R2, R2, #0x10
417058:  LSLS            R6, R2, #0xE
41705A:  LSLS            R6, R3, #0x11
41705C:  LSLS            R2, R6, #0xB
41705E:  LSLS            R1, R7, #9
417060:  LSLS            R0, R3, #8
417062:  LSLS            R5, R3, #0xE
417064:  LSLS            R1, R6, #5
417066:  LSLS            R1, R6, #5
417068:  LSLS            R1, R6, #5
41706A:  LSLS            R1, R2, #8
41706C:  LSLS            R1, R1, #0x14
41706E:  LSLS            R1, R1, #0x14
417070:  LSLS            R3, R5, #0xB
417072:  UXTH            R0, R4
417074:  CMP             R0, #0x51 ; 'Q'
417076:  BHI             loc_417142
417078:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417080)
41707C:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
41707E:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417080:  ADD.W           R1, R1, R0,LSL#2
417084:  VLDR            S0, [R1]
417088:  B               loc_417156
41708A:  LDRB            R0, [R5,#2]
41708C:  SUBS            R0, #1; switch 10 cases
41708E:  CMP             R0, #9
417090:  BHI.W           def_417094; jumptable 00417094 default case, cases 2,8
417094:  TBB.W           [PC,R0]; switch jump
417098:  DCB 5; jump table for switch statement
417099:  DCB 0x6D
41709A:  DCB 0x80
41709B:  DCB 0x97
41709C:  DCB 0x9E
41709D:  DCB 0xA5
41709E:  DCB 0x74
41709F:  DCB 0x6D
4170A0:  DCB 0x87
4170A1:  DCB 0x8E
4170A2:  LDRD.W          R1, R0, [SP,#0x90+var_44]; jumptable 00417094 case 1
4170A6:  CMP             R0, R1
4170A8:  BNE.W           loc_4177DC
4170AC:  B.W             loc_417E08
4170B0:  LDR.W           R0, =(_ZN9CGangWars11GangRatingsE_ptr - 0x4170BC)
4170B4:  SUBW            R5, R11, #0x14B
4170B8:  ADD             R0, PC; _ZN9CGangWars11GangRatingsE_ptr
4170BA:  LDR             R0, [R0]; CGangWars::GangRatings ...
4170BC:  LDR.W           R2, [R0,R5,LSL#2]
4170C0:  CMP             R2, #0
4170C2:  BLT.W           loc_4177E0; jumptable 00416DCA cases 1-99
4170C6:  LDR.W           R0, =(_ZN9CGangWars18GangRatingStrengthE_ptr - 0x4170D2)
4170CA:  ADR.W           R1, loc_417974
4170CE:  ADD             R0, PC; _ZN9CGangWars18GangRatingStrengthE_ptr
4170D0:  LDR             R0, [R0]; CGangWars::GangRatingStrength ...
4170D2:  LDR.W           R6, [R0,R5,LSL#2]
4170D6:  LDR.W           R0, =(gString2_ptr - 0x4170DE)
4170DA:  ADD             R0, PC; gString2_ptr
4170DC:  LDR             R0, [R0]; gString2
4170DE:  BL              sub_5E6BC0
4170E2:  LDR.W           R0, =(gString_ptr - 0x4170F0)
4170E6:  ADR.W           R1, loc_417988
4170EA:  MOV             R2, R5
4170EC:  ADD             R0, PC; gString_ptr
4170EE:  LDR             R4, [R0]; gString
4170F0:  MOV             R0, R4
4170F2:  BL              sub_5E6BC0
4170F6:  LDR.W           R0, =(TheText_ptr - 0x417100)
4170FA:  MOV             R1, R4; CKeyGen *
4170FC:  ADD             R0, PC; TheText_ptr
4170FE:  LDR             R0, [R0]; TheText ; this
417100:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
417104:  MOV             R1, R0; unsigned __int16 *
417106:  LDRD.W          R0, R5, [SP,#0x90+var_44]
41710A:  CMP             R5, R0
41710C:  BEQ.W           loc_417E8A
417110:  LDR.W           R0, =(gString_ptr - 0x41711E)
417114:  ADR.W           R1, dword_41799C
417118:  MOV             R2, R6
41711A:  ADD             R0, PC; gString_ptr
41711C:  LDR             R4, [R0]; gString
41711E:  MOV             R0, R4
417120:  BL              sub_5E6BC0
417124:  LDR.W           R0, =(gGxtString2_ptr - 0x41712C)
417128:  ADD             R0, PC; gGxtString2_ptr
41712A:  LDR             R1, [R0]; gGxtString2 ; unsigned __int16 *
41712C:  MOV             R0, R4; char *
41712E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
417132:  LDR             R1, [SP,#0x90+var_44]
417134:  ADDS            R0, R5, #1
417136:  CMP             R0, R1
417138:  BEQ.W           loc_417EB4
41713C:  ADDS            R5, #2
41713E:  STR             R5, [SP,#0x90+var_40]
417140:  B               loc_4177E0; jumptable 00416DCA cases 1-99
417142:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41714A)
417146:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
417148:  LDR             R1, [R1]; CStats::StatTypesInt ...
41714A:  ADD.W           R1, R1, R0,LSL#2
41714E:  VLDR            S0, [R1,#-0x1E0]
417152:  VCVT.F32.S32    S0, S0
417156:  LDR             R1, [SP,#0x90+var_40]
417158:  VCMPE.F32       S0, #0.0
41715C:  VMRS            APSR_nzcv, FPSCR
417160:  BLE.W           loc_4177E0; jumptable 00416DCA cases 1-99
417164:  LDR             R2, [SP,#0x90+var_44]
417166:  CMP             R1, R2
417168:  BEQ.W           loc_417DA2
41716C:  ADDS            R1, #1
41716E:  STR             R1, [SP,#0x90+var_40]
417170:  B               loc_4177E0; jumptable 00416DCA cases 1-99
417172:  LDRD.W          R1, R0, [SP,#0x90+var_44]; jumptable 00417094 default case, cases 2,8
417176:  CMP             R0, R1
417178:  BNE.W           loc_4177DC
41717C:  B.W             loc_417DD4
417180:  BLX             j__ZN13CLocalisation6MetricEv; jumptable 00417094 case 7
417184:  CMP             R0, #0
417186:  LDR             R0, [SP,#0x90+var_40]
417188:  BEQ.W           loc_4177D4
41718C:  LDR             R1, [SP,#0x90+var_44]
41718E:  CMP             R0, R1
417190:  BNE.W           loc_4177DC
417194:  B.W             loc_417F42
417198:  LDRD.W          R1, R0, [SP,#0x90+var_44]; jumptable 00417094 case 3
41719C:  CMP             R0, R1
41719E:  BNE.W           loc_4177DC
4171A2:  B.W             loc_417E22
4171A6:  LDRD.W          R1, R0, [SP,#0x90+var_44]; jumptable 00417094 case 9
4171AA:  CMP             R0, R1
4171AC:  BNE.W           loc_4177DC
4171B0:  B.W             loc_417E3C
4171B4:  LDR             R0, [SP,#0x90+var_60]; jumptable 00417094 case 10
4171B6:  STRH            R4, [R0]
4171B8:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4171BC:  CMP             R0, R1
4171BE:  BNE.W           loc_4177DC
4171C2:  B.W             loc_417DEE
4171C6:  LDRD.W          R1, R0, [SP,#0x90+var_44]; jumptable 00417094 case 4
4171CA:  CMP             R0, R1
4171CC:  BNE.W           loc_4177DC
4171D0:  B.W             loc_417E56
4171D4:  LDRD.W          R1, R0, [SP,#0x90+var_44]; jumptable 00417094 case 5
4171D8:  CMP             R0, R1
4171DA:  BNE.W           loc_4177DC
4171DE:  B.W             loc_417DBA
4171E2:  LDRD.W          R1, R0, [SP,#0x90+var_44]; jumptable 00417094 case 6
4171E6:  CMP             R0, R1
4171E8:  BNE.W           loc_4177DC
4171EC:  B.W             loc_417E70
4171F0:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4171F4:  CMP             R0, R1
4171F6:  BNE.W           loc_4177DC
4171FA:  B.W             loc_41838E
4171FE:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417202:  CMP             R0, R1
417204:  BEQ.W           loc_41834A
417208:  ADDS            R1, R0, #1
41720A:  LDR             R0, [SP,#0x90+var_64]
41720C:  STR             R1, [SP,#0x90+var_40]
41720E:  MOVS            R4, #0
417210:  ADDS            R6, R0, R1
417212:  ADDS            R5, R4, #1
417214:  CMP             R4, #9
417216:  BNE             loc_417226
417218:  LDR.W           R0, =(gString_ptr - 0x417226)
41721C:  ADR.W           R1, loc_4179AC
417220:  MOVS            R2, #0xA
417222:  ADD             R0, PC; gString_ptr
417224:  B               loc_417232
417226:  LDR.W           R0, =(gString_ptr - 0x417234)
41722A:  ADR.W           R1, loc_4179B8
41722E:  MOV             R2, R5
417230:  ADD             R0, PC; gString_ptr
417232:  LDR             R0, [R0]; gString
417234:  BL              sub_5E6BC0
417238:  MOV.W           R0, #0xFFFFFFFF; int
41723C:  ADD.W           R11, R6, R4
417240:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
417244:  CBZ             R0, loc_4172AA
417246:  MOV.W           R0, #0xFFFFFFFF; int
41724A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
41724E:  ADD.W           R1, R4, #0x16
417252:  BLX             j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
417256:  CMP             R0, #2
417258:  BEQ             loc_41727A
41725A:  CMP             R0, #1
41725C:  BNE             loc_41728E
41725E:  LDR.W           R0, =(gString2_ptr - 0x417268)
417262:  MOVS            R1, #0
417264:  ADD             R0, PC; gString2_ptr
417266:  LDR             R0, [R0]; gString2
417268:  STRB            R1, [R0,#(dword_958378+2 - 0x958374)]
41726A:  MOVW            R1, #0x4454
41726E:  STRH            R1, [R0,#(dword_958378 - 0x958374)]
417270:  MOV             R1, #0x535F5357
417278:  B               loc_4172A8
41727A:  LDR.W           R0, =(gString2_ptr - 0x417284)
41727E:  MOVS            R1, #0
417280:  ADD             R0, PC; gString2_ptr
417282:  LDR             R0, [R0]; gString2
417284:  STRB            R1, [R0,#(dword_958378+2 - 0x958374)]
417286:  MOVW            R1, #0x4F52
41728A:  STRH            R1, [R0,#(dword_958378 - 0x958374)]
41728C:  B               loc_4172A0
41728E:  LDR.W           R0, =(gString2_ptr - 0x41729E)
417292:  MOV             R1, #0x524F4F
41729A:  ADD             R0, PC; gString2_ptr
41729C:  LDR             R0, [R0]; gString2
41729E:  STR             R1, [R0,#(dword_958378 - 0x958374)]
4172A0:  MOV             R1, #0x505F5357
4172A8:  STR             R1, [R0]
4172AA:  CMP.W           R11, #0
4172AE:  BEQ.W           loc_417D5E
4172B2:  ADDS            R0, R4, #2
4172B4:  MOV             R4, R5
4172B6:  CMP             R0, #0xA
4172B8:  BLS             loc_417212
4172BA:  LDR             R0, [SP,#0x90+var_40]
4172BC:  ADD             R0, R5
4172BE:  B               loc_4177DE
4172C0:  MOV.W           R0, #0xFFFFFFFF; int
4172C4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4172C8:  CMP             R0, #0
4172CA:  BEQ.W           loc_417800
4172CE:  MOV.W           R0, #0xFFFFFFFF; int
4172D2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4172D6:  LDRSB.W         R1, [R0,#0x71C]
4172DA:  RSB.W           R1, R1, R1,LSL#3
4172DE:  ADD.W           R0, R0, R1,LSL#2
4172E2:  LDRH.W          R0, [R0,#0x5A4]
4172E6:  B               loc_417802
4172E8:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4172EC:  CMP             R0, R1
4172EE:  BNE.W           loc_4177DC
4172F2:  B.W             loc_418872
4172F6:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4172FA:  CMP             R0, R1
4172FC:  BNE.W           loc_4177DC
417300:  B.W             loc_41860E
417304:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417308:  CMP             R0, R1
41730A:  BNE.W           loc_4177DC
41730E:  B.W             loc_4188F0
417312:  LDR.W           R0, =(_ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x41731A)
417316:  ADD             R0, PC; _ZN6CStats20PedsKilledOfThisTypeE_ptr
417318:  LDR             R0, [R0]; CStats::PedsKilledOfThisType ...
41731A:  LDRD.W          R1, R5, [R0,#(dword_964DB4 - 0x964D98)]
41731E:  ADD.W           LR, R0, #0x2C ; ','
417322:  LDRD.W          R4, R3, [R0,#(dword_964DBC - 0x964D98)]
417326:  LDM.W           LR, {R2,R6,LR}
41732A:  CMP             R1, #0
41732C:  LDR.W           R12, [R0,#(dword_964DD0 - 0x964D98)]
417330:  MOV             R0, R1
417332:  IT NE
417334:  MOVNE           R0, #7
417336:  CMP             R5, R1
417338:  ITT HI
41733A:  MOVHI           R0, #8
41733C:  MOVHI           R1, R5
41733E:  CMP             R4, R1
417340:  ITT HI
417342:  MOVHI           R0, #9
417344:  MOVHI           R1, R4
417346:  CMP             R3, R1
417348:  ITT HI
41734A:  MOVHI           R0, #0xA
41734C:  MOVHI           R1, R3
41734E:  CMP             R2, R1
417350:  ITT HI
417352:  MOVHI           R0, #0xB
417354:  MOVHI           R1, R2
417356:  CMP             R6, R1
417358:  ITT HI
41735A:  MOVHI           R0, #0xC
41735C:  MOVHI           R1, R6
41735E:  CMP             LR, R1
417360:  ITT HI
417362:  MOVHI           R0, #0xD
417364:  MOVHI           R1, LR
417366:  CMP             R12, R1
417368:  IT HI
41736A:  MOVHI           R0, #0xE
41736C:  CMP             R0, #0
41736E:  BEQ.W           loc_4177E0; jumptable 00416DCA cases 1-99
417372:  LDRD.W          R6, R3, [SP,#0x90+var_44]
417376:  CMP             R3, R6
417378:  BEQ.W           loc_418CC2
41737C:  SUBS            R0, #7; switch 8 cases
41737E:  ADDS            R1, R3, #1
417380:  CMP             R0, #7
417382:  BHI.W           def_417386; jumptable 00417386 default case
417386:  TBH.W           [PC,R0,LSL#1]; switch jump
41738A:  DCW 8; jump table for switch statement
41738C:  DCW 0x405
41738E:  DCW 0x409
417390:  DCW 0x40D
417392:  DCW 0x3FF
417394:  DCW 0x411
417396:  DCW 0x415
417398:  DCW 0x419
41739A:  CMP             R1, R6; jumptable 00417386 case 7
41739C:  BNE.W           loc_417BC2
4173A0:  B.W             loc_419346
4173A4:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4173A8:  CMP             R0, R1
4173AA:  BNE.W           loc_4177DC
4173AE:  B.W             loc_418AB0
4173B2:  LDR.W           R0, =(AudioEngine_ptr - 0x4173BA)
4173B6:  ADD             R0, PC; AudioEngine_ptr
4173B8:  LDR             R0, [R0]; AudioEngine ; this
4173BA:  BLX             j__ZN12CAudioEngine26GetRadioStationListenTimesEv; CAudioEngine::GetRadioStationListenTimes(void)
4173BE:  LDR.W           R1, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x4173C6)
4173C2:  ADD             R1, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
4173C4:  LDR             R5, [R1]; CStats::FavoriteRadioStationList ...
4173C6:  LDR             R1, [R0]
4173C8:  STR             R1, [SP,#0x90+var_78]
4173CA:  STR             R1, [R5]; CStats::FavoriteRadioStationList
4173CC:  LDR             R1, [R0,#4]
4173CE:  STR             R1, [R5,#(dword_964E1C - 0x964E18)]
4173D0:  LDR             R2, [R0,#8]
4173D2:  STR             R2, [SP,#0x90+var_74]
4173D4:  STR             R2, [R5,#(dword_964E20 - 0x964E18)]
4173D6:  LDR             R2, [R0,#0xC]
4173D8:  STR             R2, [SP,#0x90+var_70]
4173DA:  STR             R2, [R5,#(dword_964E24 - 0x964E18)]
4173DC:  LDR             R2, [R0,#0x10]
4173DE:  STR             R2, [SP,#0x90+var_6C]
4173E0:  STR             R2, [R5,#(dword_964E28 - 0x964E18)]
4173E2:  LDR             R2, [R0,#0x14]
4173E4:  STR             R2, [SP,#0x90+var_68]
4173E6:  STR             R2, [R5,#(dword_964E2C - 0x964E18)]
4173E8:  LDR             R4, [R0,#0x18]
4173EA:  STR             R4, [R5,#(dword_964E30 - 0x964E18)]
4173EC:  LDR.W           R11, [R0,#0x1C]
4173F0:  STR.W           R11, [R5,#(dword_964E34 - 0x964E18)]
4173F4:  LDR             R3, [R0,#0x20]
4173F6:  STR             R3, [R5,#(dword_964E38 - 0x964E18)]
4173F8:  LDR.W           LR, [R0,#0x24]
4173FC:  STR.W           LR, [R5,#(dword_964E3C - 0x964E18)]
417400:  LDR.W           R12, [R0,#0x28]
417404:  STR.W           R12, [R5,#(dword_964E40 - 0x964E18)]
417408:  LDR             R6, [R0,#0x2C]
41740A:  STR             R6, [R5,#(dword_964E44 - 0x964E18)]
41740C:  LDR             R2, [R0,#0x30]
41740E:  STR             R2, [SP,#0x90+var_7C]
417410:  STR             R2, [R5,#(dword_964E48 - 0x964E18)]
417412:  LDR             R2, [R0,#0x34]
417414:  STR             R2, [R5,#(dword_964E4C - 0x964E18)]
417416:  LDR             R5, [SP,#0x90+var_78]
417418:  LDR             R0, [SP,#0x90+var_74]
41741A:  ORRS            R5, R1
41741C:  STR             R3, [SP,#0x90+var_78]
41741E:  ORRS            R5, R0
417420:  LDR             R0, [SP,#0x90+var_70]
417422:  STR.W           R11, [SP,#0x90+var_80]
417426:  ORRS            R5, R0
417428:  LDR             R0, [SP,#0x90+var_6C]
41742A:  STR             R4, [SP,#0x90+var_84]
41742C:  ORRS            R5, R0
41742E:  LDR             R0, [SP,#0x90+var_68]
417430:  ORRS            R5, R0
417432:  LDR             R0, [SP,#0x90+var_7C]
417434:  ORRS            R5, R4
417436:  ORR.W           R5, R5, R11
41743A:  MOV             R11, LR
41743C:  ORRS            R5, R3
41743E:  ORR.W           R5, R5, LR
417442:  MOV             LR, R12
417444:  ORR.W           R5, R5, R12
417448:  MOV             R12, R6
41744A:  ORRS            R5, R6
41744C:  ORR.W           R3, R5, R0
417450:  ORRS.W          R0, R3, R2
417454:  BEQ.W           loc_4177E0; jumptable 00416DCA cases 1-99
417458:  LDRD.W          R5, R4, [SP,#0x90+var_44]
41745C:  CMP             R4, R5
41745E:  BEQ.W           loc_418C80
417462:  LDR             R3, [SP,#0x90+var_74]
417464:  MOV             R2, LR
417466:  MOV.W           LR, #1
41746A:  MOV             R6, R11
41746C:  CMP             R3, R1
41746E:  LDR.W           R0, =(AudioEngine_ptr - 0x417476)
417472:  ADD             R0, PC; AudioEngine_ptr
417474:  ITT LT
417476:  MOVLT.W         LR, #2
41747A:  MOVLT           R1, R3
41747C:  LDR             R3, [SP,#0x90+var_70]
41747E:  LDR             R0, [R0]; AudioEngine ; this
417480:  CMP             R3, R1
417482:  ITT LT
417484:  MOVLT.W         LR, #3
417488:  MOVLT           R1, R3
41748A:  LDR             R3, [SP,#0x90+var_6C]
41748C:  CMP             R3, R1
41748E:  ITT LT
417490:  MOVLT.W         LR, #4
417494:  MOVLT           R1, R3
417496:  LDR             R3, [SP,#0x90+var_68]
417498:  CMP             R3, R1
41749A:  ITT LT
41749C:  MOVLT.W         LR, #5
4174A0:  MOVLT           R1, R3
4174A2:  LDR             R3, [SP,#0x90+var_84]
4174A4:  CMP             R3, R1
4174A6:  ITT LT
4174A8:  MOVLT.W         LR, #6
4174AC:  MOVLT           R1, R3
4174AE:  LDR             R3, [SP,#0x90+var_80]
4174B0:  CMP             R3, R1
4174B2:  ITT LT
4174B4:  MOVLT.W         LR, #7
4174B8:  MOVLT           R1, R3
4174BA:  LDR             R3, [SP,#0x90+var_78]
4174BC:  CMP             R3, R1
4174BE:  ITT LT
4174C0:  MOVLT.W         LR, #8
4174C4:  MOVLT           R1, R3
4174C6:  CMP             R6, R1
4174C8:  ITT LT
4174CA:  MOVLT.W         LR, #9
4174CE:  MOVLT           R1, R6
4174D0:  CMP             R2, R1
4174D2:  ITT LT
4174D4:  MOVLT.W         LR, #0xA
4174D8:  MOVLT           R1, R2
4174DA:  ADD             R2, SP, #0x90+var_3C; char *
4174DC:  CMP             R12, R1
4174DE:  IT LT
4174E0:  MOVLT.W         LR, #0xB
4174E4:  SXTB.W          R1, LR; signed __int8
4174E8:  BLX             j__ZN12CAudioEngine22GetRadioStationNameKeyEaPc; CAudioEngine::GetRadioStationNameKey(signed char,char *)
4174EC:  ADDS            R0, R4, #1
4174EE:  CMP             R0, R5
4174F0:  BEQ.W           loc_418D6C
4174F4:  ADDS            R4, #2
4174F6:  STR             R4, [SP,#0x90+var_40]
4174F8:  B               loc_4177E0; jumptable 00416DCA cases 1-99
4174FA:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4174FE:  CMP             R0, R1
417500:  BNE.W           loc_4177DC
417504:  B.W             loc_41897C
417508:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41751C)
41750C:  MOVW            R1, #0x8889
417510:  VLDR            S2, =60000.0
417514:  MOVT            R1, #0x8888
417518:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41751A:  LDR             R0, [R0]; CStats::StatTypesInt ...
41751C:  VLDR            S0, [R0,#0xC4]
417520:  VCVT.F32.S32    S0, S0
417524:  VDIV.F32        S0, S0, S2
417528:  VCVT.S32.F32    S0, S0
41752C:  VMOV            R0, S0
417530:  CMP             R0, #0x3B ; ';'
417532:  SMMLA.W         R1, R1, R0, R0
417536:  MOV.W           R2, R1,ASR#5
41753A:  ADD.W           R1, R2, R1,LSR#31
41753E:  RSB.W           R1, R1, R1,LSL#4
417542:  SUB.W           R1, R0, R1,LSL#2
417546:  IT LE
417548:  CMPLE           R1, #5
41754A:  BGE.W           loc_41786A
41754E:  LDRD.W          R3, R2, [SP,#0x90+var_44]
417552:  B               loc_417876
417554:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417558:  CMP             R0, R1
41755A:  BNE.W           loc_4177DC
41755E:  B.W             loc_418680
417562:  LDRD.W          R1, R0, [SP,#0x90+var_44]; jumptable 00416DCA case 0
417566:  CMP             R0, R1
417568:  BNE.W           loc_4177DC
41756C:  B.W             loc_4183F6
417570:  LDRD.W          R6, R3, [SP,#0x90+var_44]
417574:  CMP             R3, R6
417576:  BEQ.W           loc_418470
41757A:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x417582)
41757E:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
417580:  LDR             R0, [R0]; CStats::StatTypesInt ...
417582:  VLDR            S0, [R0,#0x5C]
417586:  ADDS            R0, R3, #1
417588:  VCVT.F32.S32    S0, S0
41758C:  VCVT.S32.F32    S0, S0
417590:  VMOV            R1, S0
417594:  SUBS            R1, #1; switch 8 cases
417596:  CMP             R1, #7
417598:  BHI.W           def_41759C; jumptable 0041759C default case
41759C:  TBH.W           [PC,R1,LSL#1]; switch jump
4175A0:  DCW 8; jump table for switch statement
4175A2:  DCW 0x1A1
4175A4:  DCW 0x1A6
4175A6:  DCW 0x1AB
4175A8:  DCW 0x1B0
4175AA:  DCW 0x1B5
4175AC:  DCW 0x1BA
4175AE:  DCW 0x1BF
4175B0:  CMP             R0, R6; jumptable 0041759C case 1
4175B2:  BNE.W           loc_417BC2
4175B6:  B.W             loc_41920A
4175BA:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4175BE:  CMP             R0, R1
4175C0:  BNE.W           loc_4177DC
4175C4:  B.W             loc_4184AA
4175C8:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4175CC:  CMP             R0, R1
4175CE:  BNE.W           loc_4177DC
4175D2:  B.W             loc_418414
4175D6:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4175DA:  CMP             R0, R1
4175DC:  BNE.W           loc_4177DC
4175E0:  B.W             loc_418522
4175E4:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4175E8:  CMP             R0, R1
4175EA:  BNE.W           loc_4177DC
4175EE:  B.W             loc_418B1A
4175F2:  LDRD.W          R1, R0, [SP,#0x90+var_44]
4175F6:  CMP             R0, R1
4175F8:  BNE.W           loc_4177DC
4175FC:  B.W             loc_4185A0
417600:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417604:  CMP             R0, R1
417606:  BNE.W           loc_4177DC
41760A:  B.W             loc_418B74
41760E:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417612:  CMP             R0, R1
417614:  BNE.W           loc_4177DC
417618:  B.W             loc_4189D2
41761C:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41762E)
41761E:  MOVW            R1, #0x8889
417622:  VLDR            S2, =60000.0
417626:  MOVT            R1, #0x8888
41762A:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41762C:  LDR             R0, [R0]; CStats::StatTypesInt ...
41762E:  VLDR            S0, [R0,#0xD4]
417632:  VCVT.F32.S32    S0, S0
417636:  VDIV.F32        S0, S0, S2
41763A:  VCVT.S32.F32    S0, S0
41763E:  VMOV            R0, S0
417642:  CMP             R0, #0x3B ; ';'
417644:  SMMLA.W         R1, R1, R0, R0
417648:  MOV.W           R2, R1,ASR#5
41764C:  ADD.W           R2, R2, R1,LSR#31
417650:  RSB.W           R1, R2, R2,LSL#4
417654:  SUB.W           R3, R0, R1,LSL#2
417658:  IT LE
41765A:  CMPLE           R3, #1
41765C:  BLT.W           loc_4177E0; jumptable 00416DCA cases 1-99
417660:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417664:  CMP             R0, R1
417666:  BNE.W           loc_4177DC
41766A:  B.W             loc_418E28
41766E:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417672:  CMP             R0, R1
417674:  BNE.W           loc_4177DC
417678:  B.W             loc_4187F0
41767C:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417680:  CMP             R0, R1
417682:  BNE.W           loc_4177DC
417686:  B.W             loc_418A30
41768A:  LDR             R0, =(AudioEngine_ptr - 0x417690)
41768C:  ADD             R0, PC; AudioEngine_ptr
41768E:  LDR             R0, [R0]; AudioEngine ; this
417690:  BLX             j__ZN12CAudioEngine26GetRadioStationListenTimesEv; CAudioEngine::GetRadioStationListenTimes(void)
417694:  LDR             R1, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x41769C)
417696:  LDR             R4, [R0]
417698:  ADD             R1, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
41769A:  LDR             R6, [R1]; CStats::FavoriteRadioStationList ...
41769C:  STR             R4, [R6]; CStats::FavoriteRadioStationList
41769E:  LDR             R1, [R0,#4]
4176A0:  STR             R1, [R6,#(dword_964E1C - 0x964E18)]
4176A2:  LDR             R2, [R0,#8]
4176A4:  ORRS            R4, R1
4176A6:  STR             R2, [SP,#0x90+var_74]
4176A8:  STR             R2, [R6,#(dword_964E20 - 0x964E18)]
4176AA:  LDR             R2, [R0,#0xC]
4176AC:  STR             R2, [SP,#0x90+var_70]
4176AE:  STR             R2, [R6,#(dword_964E24 - 0x964E18)]
4176B0:  LDR             R2, [R0,#0x10]
4176B2:  STR             R2, [SP,#0x90+var_6C]
4176B4:  STR             R2, [R6,#(dword_964E28 - 0x964E18)]
4176B6:  LDR             R2, [R0,#0x14]
4176B8:  STR             R2, [SP,#0x90+var_68]
4176BA:  STR             R2, [R6,#(dword_964E2C - 0x964E18)]
4176BC:  LDR             R5, [R0,#0x18]
4176BE:  STR             R5, [R6,#(dword_964E30 - 0x964E18)]
4176C0:  LDR.W           R8, [R0,#0x1C]
4176C4:  STR.W           R8, [R6,#(dword_964E34 - 0x964E18)]
4176C8:  LDR.W           LR, [R0,#0x20]
4176CC:  STR.W           LR, [R6,#(dword_964E38 - 0x964E18)]
4176D0:  LDR.W           R12, [R0,#0x24]
4176D4:  STR.W           R12, [R6,#(dword_964E3C - 0x964E18)]
4176D8:  LDR.W           R11, [R0,#0x28]
4176DC:  STR.W           R11, [R6,#(dword_964E40 - 0x964E18)]
4176E0:  LDR             R3, [R0,#0x2C]
4176E2:  STR             R3, [R6,#(dword_964E44 - 0x964E18)]
4176E4:  LDR             R2, [R0,#0x30]
4176E6:  STR             R2, [R6,#(dword_964E48 - 0x964E18)]
4176E8:  LDR             R0, [R0,#0x34]
4176EA:  STR             R0, [R6,#(dword_964E4C - 0x964E18)]
4176EC:  LDR             R6, [SP,#0x90+var_74]
4176EE:  STR             R3, [SP,#0x90+var_78]
4176F0:  ORRS            R4, R6
4176F2:  LDR             R6, [SP,#0x90+var_70]
4176F4:  STR             R5, [SP,#0x90+var_8C]
4176F6:  ORRS            R4, R6
4176F8:  LDR             R6, [SP,#0x90+var_6C]
4176FA:  STR.W           R8, [SP,#0x90+var_88]
4176FE:  ORRS            R4, R6
417700:  LDR             R6, [SP,#0x90+var_68]
417702:  STR.W           LR, [SP,#0x90+var_84]
417706:  ORRS            R4, R6
417708:  STR.W           R12, [SP,#0x90+var_80]
41770C:  ORRS            R4, R5
41770E:  STR.W           R11, [SP,#0x90+var_7C]
417712:  ORR.W           R4, R4, R8
417716:  ORR.W           R4, R4, LR
41771A:  ORR.W           R4, R4, R12
41771E:  ORR.W           R4, R4, R11
417722:  ORRS            R4, R3
417724:  MOV             R3, R2
417726:  ORRS            R4, R3
417728:  ORRS            R0, R4
41772A:  BEQ.W           loc_417864
41772E:  LDRD.W          R4, R0, [SP,#0x90+var_44]
417732:  CMP             R0, R4
417734:  BEQ.W           loc_418D04
417738:  MOV.W           R11, #0
41773C:  CMP             R1, #0
41773E:  IT LE
417740:  MOVLE           R1, R11
417742:  LDR             R2, [SP,#0x90+var_74]
417744:  MOVS            R6, #1
417746:  LDR             R0, =(AudioEngine_ptr - 0x417750)
417748:  CMP             R2, R1
41774A:  MOV             R5, R4
41774C:  ADD             R0, PC; AudioEngine_ptr
41774E:  ITT GT
417750:  MOVGT           R6, #2
417752:  MOVGT           R1, R2
417754:  LDR             R2, [SP,#0x90+var_70]
417756:  LDR             R0, [R0]; AudioEngine ; this
417758:  CMP             R2, R1
41775A:  IT GT
41775C:  MOVGT           R6, #3
41775E:  IT GT
417760:  MOVGT           R1, R2
417762:  LDR             R2, [SP,#0x90+var_6C]
417764:  CMP             R2, R1
417766:  ITT GT
417768:  MOVGT           R6, #4
41776A:  MOVGT           R1, R2
41776C:  LDR             R2, [SP,#0x90+var_68]
41776E:  CMP             R2, R1
417770:  ITT GT
417772:  MOVGT           R6, #5
417774:  MOVGT           R1, R2
417776:  LDR             R2, [SP,#0x90+var_8C]
417778:  CMP             R2, R1
41777A:  ITT GT
41777C:  MOVGT           R6, #6
41777E:  MOVGT           R1, R2
417780:  LDR             R2, [SP,#0x90+var_88]
417782:  CMP             R2, R1
417784:  ITT GT
417786:  MOVGT           R6, #7
417788:  MOVGT           R1, R2
41778A:  LDR             R2, [SP,#0x90+var_84]
41778C:  CMP             R2, R1
41778E:  ITT GT
417790:  MOVGT           R6, #8
417792:  MOVGT           R1, R2
417794:  LDR             R2, [SP,#0x90+var_80]
417796:  CMP             R2, R1
417798:  ITT GT
41779A:  MOVGT           R6, #9
41779C:  MOVGT           R1, R2
41779E:  LDR             R2, [SP,#0x90+var_7C]
4177A0:  CMP             R2, R1
4177A2:  ITT GT
4177A4:  MOVGT           R6, #0xA
4177A6:  MOVGT           R1, R2
4177A8:  LDR             R2, [SP,#0x90+var_78]
4177AA:  CMP             R2, R1
4177AC:  ITT GT
4177AE:  MOVGT           R6, #0xB
4177B0:  MOVGT           R1, R2
4177B2:  ADD             R2, SP, #0x90+var_3C; char *
4177B4:  CMP             R3, R1
4177B6:  IT GT
4177B8:  MOVGT           R6, #0xC
4177BA:  LDR             R4, [SP,#0x90+var_40]
4177BC:  SXTB            R1, R6; signed __int8
4177BE:  BLX             j__ZN12CAudioEngine22GetRadioStationNameKeyEaPc; CAudioEngine::GetRadioStationNameKey(signed char,char *)
4177C2:  ADDS            R0, R4, #1
4177C4:  CMP             R0, R5
4177C6:  BEQ.W           loc_418D46
4177CA:  ADDS            R4, #2
4177CC:  STR             R4, [SP,#0x90+var_40]
4177CE:  MOVW            R8, #0xFF9D
4177D2:  B               loc_4177E0; jumptable 00416DCA cases 1-99
4177D4:  LDR             R1, [SP,#0x90+var_44]
4177D6:  CMP             R0, R1
4177D8:  BEQ.W           loc_418BFC
4177DC:  ADDS            R0, #1
4177DE:  STR             R0, [SP,#0x90+var_40]
4177E0:  ADD.W           R9, R9, #1; jumptable 00416DCA cases 1-99
4177E4:  UXTH.W          R0, R9
4177E8:  LSLS            R1, R0, #1
4177EA:  UXTAH.W         R1, R1, R9
4177EE:  LDRH.W          R4, [R10,R1,LSL#1]
4177F2:  ADD.W           R6, R10, R1,LSL#1
4177F6:  CMP             R4, R8
4177F8:  BNE.W           loc_416D20
4177FC:  B.W             loc_419086
417800:  MOVS            R0, #0
417802:  CMP             R0, #0x20 ; ' '
417804:  LDR             R6, [SP,#0x90+var_40]
417806:  IT EQ
417808:  MOVEQ           R0, #0x1C
41780A:  SUB.W           R1, R0, #0x16
41780E:  CMP             R1, #0xA
417810:  BHI             loc_4177E0; jumptable 00416DCA cases 1-99
417812:  ADD.W           R4, R0, #0xEB
417816:  LDR             R0, [SP,#0x90+var_44]
417818:  CMP             R6, R0
41781A:  BEQ.W           loc_418E4A
41781E:  MOV.W           R0, #0xFFFFFFFF; int
417822:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
417826:  CBZ             R0, loc_417846
417828:  MOV.W           R0, #0xFFFFFFFF; int
41782C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
417830:  LDRSB.W         R1, [R0,#0x71C]
417834:  RSB.W           R1, R1, R1,LSL#3
417838:  ADD.W           R0, R0, R1,LSL#2
41783C:  LDR.W           R0, [R0,#0x5A4]
417840:  CMP             R0, #0x20 ; ' '
417842:  IT EQ
417844:  MOVEQ           R4, #0xB
417846:  ADDS            R5, R6, #1
417848:  UXTB            R2, R4
41784A:  CMP             R2, #9
41784C:  BHI             loc_417894
41784E:  LDR             R0, =(gString_ptr - 0x417856)
417850:  ADR             R1, loc_4179B8
417852:  ADD             R0, PC; gString_ptr
417854:  LDR             R0, [R0]; gString
417856:  BL              sub_5E6BC0
41785A:  LDR             R4, [SP,#0x90+var_44]
41785C:  CMP             R5, R4
41785E:  BNE             loc_4178B4
417860:  B.W             loc_418E68
417864:  MOVW            R8, #0xFF9D
417868:  B               loc_4177E0; jumptable 00416DCA cases 1-99
41786A:  LDRD.W          R3, R2, [SP,#0x90+var_44]
41786E:  CMP             R2, R3
417870:  BEQ.W           loc_418F7E
417874:  ADDS            R2, #1
417876:  CMP             R0, #0x3B ; ';'
417878:  IT LE
41787A:  CMPLE           R1, #5
41787C:  BGE             loc_417882
41787E:  STR             R2, [SP,#0x90+var_40]
417880:  B               loc_4177E0; jumptable 00416DCA cases 1-99
417882:  CMP             R0, #0x3B ; ';'
417884:  IT LE
417886:  CMPLE           R1, #9
417888:  BGT             loc_4178C4
41788A:  CMP             R2, R3
41788C:  BNE.W           loc_417C3C
417890:  B.W             loc_4190AC
417894:  LDR             R4, [SP,#0x90+var_44]
417896:  CMP             R2, #0x63 ; 'c'
417898:  BHI             loc_4178A2
41789A:  LDR             R0, =(gString_ptr - 0x4178A2)
41789C:  ADR             R1, loc_4179AC
41789E:  ADD             R0, PC; gString_ptr
4178A0:  B               loc_4178A8
4178A2:  LDR             R0, =(gString_ptr - 0x4178AA)
4178A4:  ADR             R1, loc_417A04
4178A6:  ADD             R0, PC; gString_ptr
4178A8:  LDR             R0, [R0]; gString
4178AA:  BL              sub_5E6BC0
4178AE:  CMP             R5, R4
4178B0:  BEQ.W           loc_418E68
4178B4:  ADDS            R6, #2
4178B6:  STR             R6, [SP,#0x90+var_40]
4178B8:  B               loc_4177E0; jumptable 00416DCA cases 1-99
4178BA:  ALIGN 4
4178BC:  DCFS 60000.0
4178C0:  DCD __stack_chk_guard_ptr - 0x416C9C
4178C4:  CMP             R0, #0x3B ; ';'
4178C6:  IT LE
4178C8:  CMPLE           R1, #0x13
4178CA:  BGT.W           loc_417BC8
4178CE:  CMP             R2, R3
4178D0:  BNE.W           loc_417C3C
4178D4:  B.W             loc_41926C
4178D8:  CMP             R0, R6; jumptable 0041759C default case
4178DA:  BNE.W           loc_417BC2
4178DE:  B.W             loc_41912E
4178E2:  CMP             R0, R6; jumptable 0041759C case 2
4178E4:  BNE.W           loc_417BC2
4178E8:  B.W             loc_41915A
4178EC:  CMP             R0, R6; jumptable 0041759C case 3
4178EE:  BNE.W           loc_417BC2
4178F2:  B.W             loc_4191DE
4178F6:  CMP             R0, R6; jumptable 0041759C case 4
4178F8:  BNE.W           loc_417BC2
4178FC:  B.W             loc_4190D6
417900:  CMP             R0, R6; jumptable 0041759C case 5
417902:  BNE.W           loc_417BC2
417906:  B.W             loc_419186
41790A:  CMP             R0, R6; jumptable 0041759C case 6
41790C:  BNE.W           loc_417BC2
417910:  B.W             loc_419236
417914:  CMP             R0, R6; jumptable 0041759C case 7
417916:  BNE.W           loc_417BC2
41791A:  B.W             loc_419102
41791E:  CMP             R0, R6; jumptable 0041759C case 8
417920:  BNE.W           loc_417BC2
417924:  B.W             loc_4191B2
417928:  DCD off_667D50 - 0x416CAC
41792C:  DCD StatsMiscList_ptr - 0x416CB8
417930:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x416CE0
417934:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x416CEA
417938:  DCD gString_ptr - 0x416CF4
41793C:  DCD _ZN6CStats21m_ThisStatIsABarChartE_ptr - 0x416CFE
417940:  DCD _ZN6CStats21m_ThisStatIsABarChartE_ptr - 0x416D08
417944:  DCD gString_ptr - 0x416D12
417948:  DCD gString_ptr - 0x416D1C
41794C:  DCB "STAT00%d",0
417955:  DCB 0, 0, 0
417958:  DCB "STAT0%d",0
417960:  DCB "STAT%d",0
417967:  DCB 0
417968:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417080
41796C:  DCD _ZN9CGangWars11GangRatingsE_ptr - 0x4170BC
417970:  DCD _ZN9CGangWars18GangRatingStrengthE_ptr - 0x4170D2
417974:  STRB            R3, [R2,R1]
417976:  BXNS            R11
417978:  BXNS            R9
41797A:  DCW 0x6425
41797C:  ALIGN 0x10
417980:  DCD gString2_ptr - 0x4170DE
417984:  DCD gString_ptr - 0x4170F0
417988:  STRB            R3, [R2,R1]
41798A:  LDR             R4, =(_ZN6CStats12StatTypesIntE_ptr - 0x4181A8)
41798C:  NEGS            R1, R0
41798E:  STR             R5, [R4,#(loc_25E4DA+2 - 0x25E49C)]
417990:  MOVS            R0, R0
417992:  MOVS            R0, R0
417994:  DCD TheText_ptr - 0x417100
417998:  DCD gString_ptr - 0x41711E
41799C:  DCD 0x6425
4179A0:  DCD gGxtString2_ptr - 0x41712C
4179A4:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x41714A
4179A8:  DCD gString_ptr - 0x417226
4179AC:  STRB            R3, [R2,R1]
4179AE:  CMP             R7, R10
4179B0:  MOVS            R5, #0x30 ; '0'
4179B2:  LSLS            R4, R4, #1
4179B4:  DCD gString_ptr - 0x417234
4179B8:  STRB            R3, [R2,R1]
4179BA:  CMP             R7, R10
4179BC:  ADDS            R0, #0x30 ; '0'
4179BE:  STR             R5, [R4,#0x40]
4179C0:  MOVS            R0, R0
4179C2:  MOVS            R0, R0
4179C4:  DCD gString2_ptr - 0x417268
4179C8:  DCD gString2_ptr - 0x417284
4179CC:  DCD gString2_ptr - 0x41729E
4179D0:  DCD _ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x41731A
4179D4:  DCD AudioEngine_ptr - 0x4173BA
4179D8:  DCD _ZN6CStats24FavoriteRadioStationListE_ptr - 0x4173C6
4179DC:  DCD AudioEngine_ptr - 0x417476
4179E0:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x41751C
4179E4:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x417582
4179E8:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x41762E
4179EC:  DCD AudioEngine_ptr - 0x417690
4179F0:  DCD _ZN6CStats24FavoriteRadioStationListE_ptr - 0x41769C
4179F4:  DCD AudioEngine_ptr - 0x417750
4179F8:  DCD gString_ptr - 0x417856
4179FC:  DCD gString_ptr - 0x4178A2
417A00:  DCD gString_ptr - 0x4178AA
417A04:  STRB            R3, [R2,R1]
417A06:  CMP             R7, R10
417A08:  STR             R5, [R4,#0x40]
417A0A:  MOVS            R0, R0
417A0C:  MOVS            R1, #0x44 ; 'D'
417A0E:  MOVS            R6, R4
417A10:  DCD TheText_ptr - 0x417D42
417A14:  STRB            R3, [R2,R1]
417A16:  STR             R7, [R3,R1]
417A18:  ADDS            R1, #0x52 ; 'R'
417A1A:  MOVS            R1, R7
417A1C:  LSRS            R0, R1, #0x14
417A1E:  MOVS            R6, R4
417A20:  DCD TheText_ptr - 0x417D6A
417A24:  DCD gString_ptr - 0x417D6C
417A28:  DCD gGxtString_ptr - 0x417D7E
417A2C:  DCD gString2_ptr - 0x417D8A
417A30:  DCD gGxtString2_ptr - 0x417D9A
417A34:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417DB0
417A38:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417DCA
417A3C:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417DE4
417A40:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417DFE
417A44:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417E18
417A48:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417E32
417A4C:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417E4C
417A50:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417E66
417A54:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417E80
417A58:  DCD gGxtString_ptr - 0x417E92
417A5C:  DCD TheText_ptr - 0x417EA2
417A60:  DCD gString2_ptr - 0x417EA4
417A64:  DCD gGxtString2_ptr - 0x417EB4
417A68:  DCD gGxtString_ptr - 0x417EC2
417A6C:  DCD gGxtString2_ptr - 0x417EC4
417A70:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x417EDE
417A74:  DCD gString2_ptr - 0x417EFC
417A78:  DCD a02f - 0x417EFE
417A7C:  DCD TheText_ptr - 0x417F1A
417A80:  DCD gString_ptr - 0x417F1C
417A84:  DCD gGxtString_ptr - 0x417F2C
417A88:  DCD gGxtString2_ptr - 0x417F40
417A8C:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x417F52
417A90:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x417F66
417A94:  DCD gString_ptr - 0x417F82
417A98:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x417FA0
417A9C:  DCD gString2_ptr - 0x417FBA
417AA0:  DCD TheText_ptr - 0x417FDA
417AA4:  DCD gString_ptr - 0x417FDC
417AA8:  DCD gGxtString_ptr - 0x417FEC
417AAC:  DCD gGxtString2_ptr - 0x418000
417AB0:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x41800A
417AB4:  DCD gString2_ptr - 0x418024
417AB8:  DCD TheText_ptr - 0x418044
417ABC:  DCD gString_ptr - 0x418046
417AC0:  DCD gGxtString_ptr - 0x418056
417AC4:  DCD gGxtString2_ptr - 0x41806A
417AC8:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x418074
417ACC:  DCD gString2_ptr - 0x418092
417AD0:  DCD a2f_0+1 - 0x418094
417AD4:  DCD TheText_ptr - 0x4180B0
417AD8:  DCD gString_ptr - 0x4180B2
417ADC:  DCD gGxtString_ptr - 0x4180C2
417AE0:  DCD gGxtString2_ptr - 0x4180D6
417AE4:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x4180E0
417AE8:  DCD gString2_ptr - 0x4180FE
417AEC:  DCD a2f_0 - 0x418100
417AF0:  DCD TheText_ptr - 0x41811C
417AF4:  DCD gString_ptr - 0x41811E
417AF8:  DCD gGxtString_ptr - 0x41812E
417AFC:  DCD gGxtString2_ptr - 0x418142
417B00:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x41814C
417B04:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x418196
417B08:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x4181A8
417B0C:  DCD gString2_ptr - 0x4181C2
417B10:  DCD 0x7C6425
417B14:  DCD TheText_ptr - 0x4181E2
417B18:  DCD gString_ptr - 0x4181E4
417B1C:  DCD gGxtString_ptr - 0x4181F4
417B20:  DCD gGxtString2_ptr - 0x418208
417B24:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x418212
417B28:  DCD TheText_ptr - 0x41822A
417B2C:  DCD gString2_ptr - 0x418230
417B30:  DCD aStMile - 0x418234
417B34:  DCD a2fS - 0x418258
417B38:  DCD gString_ptr - 0x418266
417B3C:  DCD gGxtString_ptr - 0x418276
417B40:  DCD gGxtString2_ptr - 0x41828A
417B44:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x41829C
417B48:  DCD gString2_ptr - 0x4182BC
417B4C:  DCD gString2_ptr - 0x4182FC
417B50:  DCD aD0D - 0x4182FE
417B54:  DCD gString2_ptr - 0x41830A
417B58:  DCD aDD_2 - 0x41830C
417B5C:  DCD TheText_ptr - 0x41831C
417B60:  DCD gString_ptr - 0x41831E
417B64:  DCD gGxtString_ptr - 0x41832E
417B68:  DCD gString2_ptr - 0x418346
417B6C:  DCD gGxtString2_ptr - 0x418348
417B70:  DCD gString2_ptr - 0x41835C
417B74:  DCD TheText_ptr - 0x41835E
417B78:  DCD gString_ptr - 0x418360
417B7C:  DCD gGxtString_ptr - 0x418378
417B80:  DCD gGxtString2_ptr - 0x41838C
417B84:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x41839C
417B88:  CMP             R1, R6; jumptable 00417386 case 11
417B8A:  BNE             loc_417BC2
417B8C:  B.W             loc_4192C2
417B90:  STR             R1, [SP,#0x90+var_40]; jumptable 00417386 default case
417B92:  B               loc_4177E0; jumptable 00416DCA cases 1-99
417B94:  CMP             R1, R6; jumptable 00417386 case 8
417B96:  BNE             loc_417BC2
417B98:  B.W             loc_4193CA
417B9C:  CMP             R1, R6; jumptable 00417386 case 9
417B9E:  BNE             loc_417BC2
417BA0:  B.W             loc_419372
417BA4:  CMP             R1, R6; jumptable 00417386 case 10
417BA6:  BNE             loc_417BC2
417BA8:  B.W             loc_4192EE
417BAC:  CMP             R1, R6; jumptable 00417386 case 12
417BAE:  BNE             loc_417BC2
417BB0:  B.W             loc_41931A
417BB4:  CMP             R1, R6; jumptable 00417386 case 13
417BB6:  BNE             loc_417BC2
417BB8:  B.W             loc_41939E
417BBC:  CMP             R1, R6; jumptable 00417386 case 14
417BBE:  BEQ.W           loc_419296
417BC2:  ADDS            R3, #2
417BC4:  STR             R3, [SP,#0x90+var_40]
417BC6:  B               loc_4177E0; jumptable 00416DCA cases 1-99
417BC8:  CMP             R0, #0x3B ; ';'
417BCA:  IT LE
417BCC:  CMPLE           R1, #0x1D
417BCE:  BGT             loc_417BD8
417BD0:  CMP             R2, R3
417BD2:  BNE             loc_417C3C
417BD4:  B.W             loc_4193F6
417BD8:  CMP             R0, #0x77 ; 'w'
417BDA:  IT LE
417BDC:  CMPLE.W         R1, #0xFFFFFFFF
417BE0:  BGT             loc_417BEA
417BE2:  CMP             R2, R3
417BE4:  BNE             loc_417C3C
417BE6:  B.W             loc_419420
417BEA:  CMP             R0, #0x77 ; 'w'
417BEC:  IT LE
417BEE:  CMPLE           R1, #0x1D
417BF0:  BGT             loc_417BFA
417BF2:  CMP             R2, R3
417BF4:  BNE             loc_417C3C
417BF6:  B.W             loc_41944A
417BFA:  CMP             R0, #0xB3
417BFC:  IT LE
417BFE:  CMPLE.W         R1, #0xFFFFFFFF
417C02:  BGT             loc_417C0C
417C04:  CMP             R2, R3
417C06:  BNE             loc_417C3C
417C08:  B.W             loc_419474
417C0C:  CMP             R0, #0xB3
417C0E:  IT LE
417C10:  CMPLE           R1, #0x1D
417C12:  BGT             loc_417C1C
417C14:  CMP             R2, R3
417C16:  BNE             loc_417C3C
417C18:  B.W             loc_41949E
417C1C:  CMP             R0, #0xEF
417C1E:  IT LE
417C20:  CMPLE.W         R1, #0xFFFFFFFF
417C24:  BGT             loc_417C2E
417C26:  CMP             R2, R3
417C28:  BNE             loc_417C3C
417C2A:  B.W             loc_4194C6
417C2E:  CMP             R0, #0xEF
417C30:  IT LE
417C32:  CMPLE           R1, #0x1D
417C34:  BGT             loc_417C42
417C36:  CMP             R2, R3
417C38:  BEQ.W           loc_4194E8
417C3C:  ADDS            R2, #1
417C3E:  STR             R2, [SP,#0x90+var_40]
417C40:  B               loc_4177E0; jumptable 00416DCA cases 1-99
417C42:  CMP.W           R0, #0x12C
417C46:  STR             R2, [SP,#0x90+var_40]
417C48:  BGE             loc_417C5C
417C4A:  CMP.W           R1, #0xFFFFFFFF
417C4E:  BGT             loc_417C5C
417C50:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417C54:  CMP             R0, R1
417C56:  BNE             loc_417CA4
417C58:  B.W             loc_419510
417C5C:  CMP.W           R0, #0x168
417C60:  BGE             loc_417C74
417C62:  CMP.W           R1, #0xFFFFFFFF
417C66:  BGT             loc_417C74
417C68:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417C6C:  CMP             R0, R1
417C6E:  BNE             loc_417CA4
417C70:  B.W             loc_419532
417C74:  CMP.W           R0, #0x294
417C78:  BGE             loc_417C8C
417C7A:  CMP.W           R1, #0xFFFFFFFF
417C7E:  BGT             loc_417C8C
417C80:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417C84:  CMP             R0, R1
417C86:  BNE             loc_417CA4
417C88:  B.W             loc_419554
417C8C:  MOVW            R2, #0x4EB
417C90:  CMP             R0, R2
417C92:  IT LE
417C94:  CMPLE.W         R1, #0xFFFFFFFF
417C98:  BGT             loc_417CAC
417C9A:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417C9E:  CMP             R0, R1
417CA0:  BEQ.W           loc_419576
417CA4:  LDR             R0, [SP,#0x90+var_40]
417CA6:  MOVW            R8, #0xFF9D
417CAA:  B               loc_4177DC
417CAC:  CMP.W           R0, #0x618
417CB0:  BGE             loc_417CC4
417CB2:  CMP.W           R1, #0xFFFFFFFF
417CB6:  BGT             loc_417CC4
417CB8:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417CBC:  CMP             R0, R1
417CBE:  BNE             loc_417CA4
417CC0:  B.W             loc_4195BA
417CC4:  MOVW            R2, #0x743
417CC8:  CMP             R0, R2
417CCA:  IT LE
417CCC:  CMPLE.W         R1, #0xFFFFFFFF
417CD0:  BGT             loc_417CDE
417CD2:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417CD6:  CMP             R0, R1
417CD8:  BNE             loc_417CA4
417CDA:  B.W             loc_419598
417CDE:  MOVW            R2, #0xBB7
417CE2:  CMP             R0, R2
417CE4:  IT LE
417CE6:  CMPLE           R1, #1
417CE8:  BGT             loc_417CF6
417CEA:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417CEE:  CMP             R0, R1
417CF0:  BNE             loc_417CA4
417CF2:  B.W             loc_4195DC
417CF6:  MOVW            R2, #0xBF3
417CFA:  CMP             R0, R2
417CFC:  IT LE
417CFE:  CMPLE.W         R1, #0xFFFFFFFF
417D02:  BGT             loc_417D10
417D04:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417D08:  CMP             R0, R1
417D0A:  BNE             loc_417CA4
417D0C:  B.W             loc_4195FE
417D10:  MOVW            R2, #0x17AB
417D14:  CMP             R0, R2
417D16:  IT LE
417D18:  CMPLE.W         R1, #0xFFFFFFFF
417D1C:  BGT             loc_417D2A
417D1E:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417D22:  CMP             R0, R1
417D24:  BNE             loc_417CA4
417D26:  B.W             loc_419620
417D2A:  LDRD.W          R1, R0, [SP,#0x90+var_44]
417D2E:  CMP             R0, R1
417D30:  BNE             loc_417CA4
417D32:  LDR.W           R0, loc_417A0C
417D36:  MOVS            R3, #0
417D38:  LDR.W           R1, =(TheText_ptr - 0x417D42)
417D3C:  ADD             R0, PC; gGxtString_ptr
417D3E:  ADD             R1, PC; TheText_ptr
417D40:  LDR             R2, [R0]; gGxtString
417D42:  LDR             R0, [R1]; TheText ; this
417D44:  MOVS            R1, #0
417D46:  STR             R1, [SP,#0x90+var_40]
417D48:  ADR.W           R1, loc_417A14; CKeyGen *
417D4C:  STRH            R3, [R2]
417D4E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
417D52:  MOV             R1, R0
417D54:  LDR.W           R0, loc_417A1C
417D58:  ADD             R0, PC; gGxtString2_ptr
417D5A:  B.W             loc_419508
417D5E:  LDR.W           R0, =(TheText_ptr - 0x417D6A)
417D62:  LDR.W           R1, =(gString_ptr - 0x417D6C)
417D66:  ADD             R0, PC; TheText_ptr
417D68:  ADD             R1, PC; gString_ptr
417D6A:  LDR             R4, [R0]; TheText
417D6C:  LDR             R1, [R1]; gString ; CKeyGen *
417D6E:  MOV             R0, R4; this
417D70:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
417D74:  MOV             R1, R0; unsigned __int16 *
417D76:  LDR.W           R0, =(gGxtString_ptr - 0x417D7E)
417D7A:  ADD             R0, PC; gGxtString_ptr
417D7C:  LDR             R0, [R0]; gGxtString ; unsigned __int16 *
417D7E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
417D82:  LDR.W           R0, =(gString2_ptr - 0x417D8A)
417D86:  ADD             R0, PC; gString2_ptr
417D88:  LDR             R1, [R0]; gString2 ; CKeyGen *
417D8A:  MOV             R0, R4; this
417D8C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
417D90:  MOV             R1, R0; unsigned __int16 *
417D92:  LDR.W           R0, =(gGxtString2_ptr - 0x417D9A)
417D96:  ADD             R0, PC; gGxtString2_ptr
417D98:  LDR             R0, [R0]; gGxtString2 ; unsigned __int16 *
417D9A:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
417D9E:  B.W             loc_419010
417DA2:  CMP             R0, #0x51 ; 'Q'
417DA4:  BHI.W           loc_417ED6
417DA8:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417DB0)
417DAC:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417DAE:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417DB0:  ADD.W           R0, R1, R0,LSL#2
417DB4:  VLDR            S0, [R0]
417DB8:  B               loc_417EEA
417DBA:  UXTH            R0, R4
417DBC:  CMP             R0, #0x51 ; 'Q'
417DBE:  BHI.W           loc_417F5E
417DC2:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417DCA)
417DC6:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417DC8:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417DCA:  ADD.W           R0, R1, R0,LSL#2
417DCE:  VLDR            S0, [R0]
417DD2:  B               loc_417F72
417DD4:  UXTH            R0, R4
417DD6:  CMP             R0, #0x51 ; 'Q'
417DD8:  BHI.W           loc_417F98
417DDC:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417DE4)
417DE0:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417DE2:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417DE4:  ADD.W           R0, R1, R0,LSL#2
417DE8:  VLDR            S0, [R0]
417DEC:  B               loc_417FAC
417DEE:  UXTH            R0, R4
417DF0:  CMP             R0, #0x51 ; 'Q'
417DF2:  BHI.W           loc_418002
417DF6:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417DFE)
417DFA:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417DFC:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417DFE:  ADD.W           R0, R1, R0,LSL#2
417E02:  VLDR            S0, [R0]
417E06:  B               loc_418016
417E08:  UXTH            R0, R4
417E0A:  CMP             R0, #0x51 ; 'Q'
417E0C:  BHI.W           loc_41806C
417E10:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417E18)
417E14:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417E16:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417E18:  ADD.W           R0, R1, R0,LSL#2
417E1C:  VLDR            S0, [R0]
417E20:  B               loc_418080
417E22:  UXTH            R0, R4
417E24:  CMP             R0, #0x51 ; 'Q'
417E26:  BHI.W           loc_4180D8
417E2A:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417E32)
417E2E:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417E30:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417E32:  ADD.W           R0, R1, R0,LSL#2
417E36:  VLDR            S0, [R0]
417E3A:  B               loc_4180EC
417E3C:  UXTH            R0, R4
417E3E:  CMP             R0, #0x51 ; 'Q'
417E40:  BHI.W           loc_418144
417E44:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417E4C)
417E48:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417E4A:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417E4C:  ADD.W           R1, R1, R0,LSL#2
417E50:  VLDR            S0, [R1]
417E54:  B               loc_418158
417E56:  UXTH            R0, R4
417E58:  CMP             R0, #0x51 ; 'Q'
417E5A:  BHI.W           loc_4181A0
417E5E:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417E66)
417E62:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417E64:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417E66:  ADD.W           R0, R1, R0,LSL#2
417E6A:  VLDR            S0, [R0]
417E6E:  B               loc_4181B4
417E70:  UXTH            R0, R4
417E72:  CMP             R0, #0x51 ; 'Q'
417E74:  BHI.W           loc_41820A
417E78:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417E80)
417E7C:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417E7E:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417E80:  ADD.W           R0, R1, R0,LSL#2
417E84:  VLDR            S16, [R0]
417E88:  B               loc_41821E
417E8A:  LDR.W           R0, =(gGxtString_ptr - 0x417E92)
417E8E:  ADD             R0, PC; gGxtString_ptr
417E90:  LDR             R0, [R0]; gGxtString ; unsigned __int16 *
417E92:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
417E96:  LDR.W           R0, =(TheText_ptr - 0x417EA2)
417E9A:  LDR.W           R1, =(gString2_ptr - 0x417EA4)
417E9E:  ADD             R0, PC; TheText_ptr
417EA0:  ADD             R1, PC; gString2_ptr
417EA2:  LDR             R0, [R0]; TheText ; this
417EA4:  LDR             R1, [R1]; gString2 ; CKeyGen *
417EA6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
417EAA:  MOV             R1, R0
417EAC:  LDR.W           R0, =(gGxtString2_ptr - 0x417EB4)
417EB0:  ADD             R0, PC; gGxtString2_ptr
417EB2:  B               loc_417D98
417EB4:  LDR.W           R0, =(gGxtString_ptr - 0x417EC2)
417EB8:  MOVS            R3, #0
417EBA:  LDR.W           R1, =(gGxtString2_ptr - 0x417EC4)
417EBE:  ADD             R0, PC; gGxtString_ptr
417EC0:  ADD             R1, PC; gGxtString2_ptr
417EC2:  LDR             R2, [R0]; gGxtString
417EC4:  LDR             R0, [R1]; gGxtString2 ; unsigned __int16 *
417EC6:  MOVS            R1, #0
417EC8:  STR             R1, [SP,#0x90+var_40]
417ECA:  STRH            R3, [R2]
417ECC:  MOV             R1, R0; unsigned __int16 *
417ECE:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
417ED2:  B.W             loc_419086
417ED6:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x417EDE)
417EDA:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
417EDC:  LDR             R1, [R1]; CStats::StatTypesInt ...
417EDE:  ADD.W           R0, R1, R0,LSL#2
417EE2:  VLDR            S0, [R0,#-0x1E0]
417EE6:  VCVT.F32.S32    S0, S0
417EEA:  VCVT.F64.F32    D16, S0
417EEE:  LDR.W           R0, =(gString2_ptr - 0x417EFC)
417EF2:  LDR.W           R1, =(a02f - 0x417EFE); "%0.2f%%"
417EF6:  MOVS            R6, #0
417EF8:  ADD             R0, PC; gString2_ptr
417EFA:  ADD             R1, PC; "%0.2f%%"
417EFC:  LDR             R5, [R0]; gString2
417EFE:  MOVS            R0, #0
417F00:  VMOV            R2, R3, D16
417F04:  STR             R0, [SP,#0x90+var_40]
417F06:  MOV             R0, R5
417F08:  STRB            R6, [R5]
417F0A:  BL              sub_5E6BC0
417F0E:  LDR.W           R0, =(TheText_ptr - 0x417F1A)
417F12:  LDR.W           R1, =(gString_ptr - 0x417F1C)
417F16:  ADD             R0, PC; TheText_ptr
417F18:  ADD             R1, PC; gString_ptr
417F1A:  LDR             R0, [R0]; TheText ; this
417F1C:  LDR             R1, [R1]; gString ; CKeyGen *
417F1E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
417F22:  MOV             R1, R0; unsigned __int16 *
417F24:  LDR.W           R0, =(gGxtString_ptr - 0x417F2C)
417F28:  ADD             R0, PC; gGxtString_ptr
417F2A:  LDR             R6, [R0]; gGxtString
417F2C:  MOV             R0, R6; unsigned __int16 *
417F2E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
417F32:  MOV             R0, R6; this
417F34:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
417F38:  LDR.W           R0, =(gGxtString2_ptr - 0x417F40)
417F3C:  ADD             R0, PC; gGxtString2_ptr
417F3E:  B.W             loc_41907E
417F42:  UXTH            R0, R4
417F44:  CMP             R0, #0x51 ; 'Q'
417F46:  BHI.W           loc_418C16
417F4A:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x417F52)
417F4E:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
417F50:  LDR             R1, [R1]; CStats::StatTypesFloat ...
417F52:  ADD.W           R0, R1, R0,LSL#2
417F56:  VLDR            S0, [R0]
417F5A:  B.W             loc_418C2A
417F5E:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x417F66)
417F62:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
417F64:  LDR             R1, [R1]; CStats::StatTypesInt ...
417F66:  ADD.W           R0, R1, R0,LSL#2
417F6A:  VLDR            S0, [R0,#-0x1E0]
417F6E:  VCVT.F32.S32    S0, S0
417F72:  VCVT.S32.F32    S0, S0
417F76:  LDR.W           R0, =(gString_ptr - 0x417F82)
417F7A:  MOVS            R3, #0
417F7C:  MOVS            R2, #0
417F7E:  ADD             R0, PC; gString_ptr
417F80:  ADD             R1, SP, #0x90+var_3C; char *
417F82:  STR             R2, [SP,#0x90+var_40]
417F84:  MOVS            R2, #byte_5; void *
417F86:  LDR             R0, [R0]; gString ; this
417F88:  STR             R3, [SP,#0x90+var_90]; CLocalisation *
417F8A:  MOVS            R3, #0; int
417F8C:  VSTR            S0, [SP,#0x90+var_3C]
417F90:  BLX             j__ZN6CStats13BuildStatLineEPcPviS1_i; CStats::BuildStatLine(char *,void *,int,void *,int)
417F94:  B.W             loc_419086
417F98:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x417FA0)
417F9C:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
417F9E:  LDR             R1, [R1]; CStats::StatTypesInt ...
417FA0:  ADD.W           R0, R1, R0,LSL#2
417FA4:  VLDR            S0, [R0,#-0x1E0]
417FA8:  VCVT.F32.S32    S0, S0
417FAC:  VCVT.S32.F32    S0, S0
417FB0:  LDR.W           R0, =(gString2_ptr - 0x417FBA)
417FB4:  MOVS            R1, #0
417FB6:  ADD             R0, PC; gString2_ptr
417FB8:  LDR             R5, [R0]; gString2
417FBA:  MOVS            R0, #0
417FBC:  STR             R0, [SP,#0x90+var_40]
417FBE:  VMOV            R2, S0
417FC2:  STRB            R1, [R5]
417FC4:  ADR.W           R1, dword_41799C
417FC8:  MOV             R0, R5
417FCA:  BL              sub_5E6BC0
417FCE:  LDR.W           R0, =(TheText_ptr - 0x417FDA)
417FD2:  LDR.W           R1, =(gString_ptr - 0x417FDC)
417FD6:  ADD             R0, PC; TheText_ptr
417FD8:  ADD             R1, PC; gString_ptr
417FDA:  LDR             R0, [R0]; TheText ; this
417FDC:  LDR             R1, [R1]; gString ; CKeyGen *
417FDE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
417FE2:  MOV             R1, R0; unsigned __int16 *
417FE4:  LDR.W           R0, =(gGxtString_ptr - 0x417FEC)
417FE8:  ADD             R0, PC; gGxtString_ptr
417FEA:  LDR             R6, [R0]; gGxtString
417FEC:  MOV             R0, R6; unsigned __int16 *
417FEE:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
417FF2:  MOV             R0, R6; this
417FF4:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
417FF8:  LDR.W           R0, =(gGxtString2_ptr - 0x418000)
417FFC:  ADD             R0, PC; gGxtString2_ptr
417FFE:  B.W             loc_41907E
418002:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41800A)
418006:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
418008:  LDR             R1, [R1]; CStats::StatTypesInt ...
41800A:  ADD.W           R0, R1, R0,LSL#2
41800E:  VLDR            S0, [R0,#-0x1E0]
418012:  VCVT.F32.S32    S0, S0
418016:  VCVT.S32.F32    S0, S0
41801A:  LDR.W           R0, =(gString2_ptr - 0x418024)
41801E:  MOVS            R1, #0
418020:  ADD             R0, PC; gString2_ptr
418022:  LDR             R5, [R0]; gString2
418024:  MOVS            R0, #0
418026:  STR             R0, [SP,#0x90+var_40]
418028:  VMOV            R2, S0
41802C:  STRB            R1, [R5]
41802E:  ADR.W           R1, dword_41799C
418032:  MOV             R0, R5
418034:  BL              sub_5E6BC0
418038:  LDR.W           R0, =(TheText_ptr - 0x418044)
41803C:  LDR.W           R1, =(gString_ptr - 0x418046)
418040:  ADD             R0, PC; TheText_ptr
418042:  ADD             R1, PC; gString_ptr
418044:  LDR             R0, [R0]; TheText ; this
418046:  LDR             R1, [R1]; gString ; CKeyGen *
418048:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41804C:  MOV             R1, R0; unsigned __int16 *
41804E:  LDR.W           R0, =(gGxtString_ptr - 0x418056)
418052:  ADD             R0, PC; gGxtString_ptr
418054:  LDR             R6, [R0]; gGxtString
418056:  MOV             R0, R6; unsigned __int16 *
418058:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
41805C:  MOV             R0, R6; this
41805E:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418062:  LDR.W           R0, =(gGxtString2_ptr - 0x41806A)
418066:  ADD             R0, PC; gGxtString2_ptr
418068:  B.W             loc_41907E
41806C:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x418074)
418070:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
418072:  LDR             R1, [R1]; CStats::StatTypesInt ...
418074:  ADD.W           R0, R1, R0,LSL#2
418078:  VLDR            S0, [R0,#-0x1E0]
41807C:  VCVT.F32.S32    S0, S0
418080:  VCVT.F64.F32    D16, S0
418084:  LDR.W           R0, =(gString2_ptr - 0x418092)
418088:  LDR.W           R1, =(a2f_0+1 - 0x418094); "%.2f"
41808C:  MOVS            R6, #0
41808E:  ADD             R0, PC; gString2_ptr
418090:  ADD             R1, PC; "%.2f"
418092:  LDR             R5, [R0]; gString2
418094:  MOVS            R0, #0
418096:  VMOV            R2, R3, D16
41809A:  STR             R0, [SP,#0x90+var_40]
41809C:  MOV             R0, R5
41809E:  STRB            R6, [R5]
4180A0:  BL              sub_5E6BC0
4180A4:  LDR.W           R0, =(TheText_ptr - 0x4180B0)
4180A8:  LDR.W           R1, =(gString_ptr - 0x4180B2)
4180AC:  ADD             R0, PC; TheText_ptr
4180AE:  ADD             R1, PC; gString_ptr
4180B0:  LDR             R0, [R0]; TheText ; this
4180B2:  LDR             R1, [R1]; gString ; CKeyGen *
4180B4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4180B8:  MOV             R1, R0; unsigned __int16 *
4180BA:  LDR.W           R0, =(gGxtString_ptr - 0x4180C2)
4180BE:  ADD             R0, PC; gGxtString_ptr
4180C0:  LDR             R6, [R0]; gGxtString
4180C2:  MOV             R0, R6; unsigned __int16 *
4180C4:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
4180C8:  MOV             R0, R6; this
4180CA:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
4180CE:  LDR.W           R0, =(gGxtString2_ptr - 0x4180D6)
4180D2:  ADD             R0, PC; gGxtString2_ptr
4180D4:  B.W             loc_41907E
4180D8:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x4180E0)
4180DC:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
4180DE:  LDR             R1, [R1]; CStats::StatTypesInt ...
4180E0:  ADD.W           R0, R1, R0,LSL#2
4180E4:  VLDR            S0, [R0,#-0x1E0]
4180E8:  VCVT.F32.S32    S0, S0
4180EC:  VCVT.F64.F32    D16, S0
4180F0:  LDR.W           R0, =(gString2_ptr - 0x4180FE)
4180F4:  LDR.W           R1, =(a2f_0 - 0x418100); "$%.2f"
4180F8:  MOVS            R6, #0
4180FA:  ADD             R0, PC; gString2_ptr
4180FC:  ADD             R1, PC; "$%.2f"
4180FE:  LDR             R5, [R0]; gString2
418100:  MOVS            R0, #0
418102:  VMOV            R2, R3, D16
418106:  STR             R0, [SP,#0x90+var_40]
418108:  MOV             R0, R5
41810A:  STRB            R6, [R5]
41810C:  BL              sub_5E6BC0
418110:  LDR.W           R0, =(TheText_ptr - 0x41811C)
418114:  LDR.W           R1, =(gString_ptr - 0x41811E)
418118:  ADD             R0, PC; TheText_ptr
41811A:  ADD             R1, PC; gString_ptr
41811C:  LDR             R0, [R0]; TheText ; this
41811E:  LDR             R1, [R1]; gString ; CKeyGen *
418120:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418124:  MOV             R1, R0; unsigned __int16 *
418126:  LDR.W           R0, =(gGxtString_ptr - 0x41812E)
41812A:  ADD             R0, PC; gGxtString_ptr
41812C:  LDR             R6, [R0]; gGxtString
41812E:  MOV             R0, R6; unsigned __int16 *
418130:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418134:  MOV             R0, R6; this
418136:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
41813A:  LDR.W           R0, =(gGxtString2_ptr - 0x418142)
41813E:  ADD             R0, PC; gGxtString2_ptr
418140:  B.W             loc_41907E
418144:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41814C)
418148:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
41814A:  LDR             R1, [R1]; CStats::StatTypesInt ...
41814C:  ADD.W           R1, R1, R0,LSL#2
418150:  VLDR            S0, [R1,#-0x1E0]
418154:  VCVT.F32.S32    S0, S0
418158:  VCVT.S32.F32    S0, S0
41815C:  VMOV            R1, S0
418160:  CMP             R1, #0x3C ; '<'
418162:  BLT.W           loc_41828C
418166:  MVNS            R2, R1
418168:  CMN.W           R2, #0x78 ; 'x'
41816C:  IT LE
41816E:  MOVLE           R2, #0xFFFFFF88
418172:  ADD             R1, R2
418174:  MOVW            R2, #0x8889
418178:  ADDS            R1, #0x3C ; '<'
41817A:  MOVT            R2, #0x8888
41817E:  UMULL.W         R1, R2, R1, R2
418182:  MOVS            R1, #1
418184:  ADD.W           R2, R1, R2,LSR#5
418188:  CMP             R0, #0x51 ; 'Q'
41818A:  BHI.W           loc_418294
41818E:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x418196)
418192:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
418194:  LDR             R1, [R1]; CStats::StatTypesFloat ...
418196:  ADD.W           R0, R1, R0,LSL#2
41819A:  VLDR            S0, [R0]
41819E:  B               loc_4182A8
4181A0:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x4181A8)
4181A4:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
4181A6:  LDR             R1, [R1]; CStats::StatTypesInt ...
4181A8:  ADD.W           R0, R1, R0,LSL#2
4181AC:  VLDR            S0, [R0,#-0x1E0]
4181B0:  VCVT.F32.S32    S0, S0
4181B4:  VCVT.S32.F32    S0, S0
4181B8:  LDR.W           R0, =(gString2_ptr - 0x4181C2)
4181BC:  MOVS            R1, #0
4181BE:  ADD             R0, PC; gString2_ptr
4181C0:  LDR             R5, [R0]; gString2
4181C2:  MOVS            R0, #0
4181C4:  STR             R0, [SP,#0x90+var_40]
4181C6:  VMOV            R2, S0
4181CA:  STRB            R1, [R5]
4181CC:  ADR.W           R1, dword_417B10
4181D0:  MOV             R0, R5
4181D2:  BL              sub_5E6BC0
4181D6:  LDR.W           R0, =(TheText_ptr - 0x4181E2)
4181DA:  LDR.W           R1, =(gString_ptr - 0x4181E4)
4181DE:  ADD             R0, PC; TheText_ptr
4181E0:  ADD             R1, PC; gString_ptr
4181E2:  LDR             R0, [R0]; TheText ; this
4181E4:  LDR             R1, [R1]; gString ; CKeyGen *
4181E6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4181EA:  MOV             R1, R0; unsigned __int16 *
4181EC:  LDR.W           R0, =(gGxtString_ptr - 0x4181F4)
4181F0:  ADD             R0, PC; gGxtString_ptr
4181F2:  LDR             R6, [R0]; gGxtString
4181F4:  MOV             R0, R6; unsigned __int16 *
4181F6:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
4181FA:  MOV             R0, R6; this
4181FC:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418200:  LDR.W           R0, =(gGxtString2_ptr - 0x418208)
418204:  ADD             R0, PC; gGxtString2_ptr
418206:  B.W             loc_41907E
41820A:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x418212)
41820E:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
418210:  LDR             R1, [R1]; CStats::StatTypesInt ...
418212:  ADD.W           R0, R1, R0,LSL#2
418216:  VLDR            S0, [R0,#-0x1E0]
41821A:  VCVT.F32.S32    S16, S0
41821E:  LDR.W           R2, =(TheText_ptr - 0x41822A)
418222:  LDR.W           R0, =(gString2_ptr - 0x418230)
418226:  ADD             R2, PC; TheText_ptr
418228:  LDR.W           R1, =(aStMile - 0x418234); "ST_MILE"
41822C:  ADD             R0, PC; gString2_ptr
41822E:  LDR             R6, [R2]; TheText
418230:  ADD             R1, PC; "ST_MILE"
418232:  LDR             R5, [R0]; gString2
418234:  MOVS            R0, #0
418236:  MOVS            R2, #0
418238:  STR             R0, [SP,#0x90+var_40]
41823A:  MOV             R0, R6; this
41823C:  STRB            R2, [R5]
41823E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418242:  MOVS            R1, #0; unsigned __int8
418244:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
418248:  VCVT.F64.F32    D16, S16
41824C:  LDR.W           R1, =(a2fS - 0x418258); "%.2f %s"
418250:  STR             R0, [SP,#0x90+var_90]
418252:  MOV             R0, R5
418254:  ADD             R1, PC; "%.2f %s"
418256:  VMOV            R2, R3, D16
41825A:  BL              sub_5E6BC0
41825E:  LDR.W           R0, =(gString_ptr - 0x418266)
418262:  ADD             R0, PC; gString_ptr
418264:  LDR             R1, [R0]; gString ; CKeyGen *
418266:  MOV             R0, R6; this
418268:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41826C:  MOV             R1, R0; unsigned __int16 *
41826E:  LDR.W           R0, =(gGxtString_ptr - 0x418276)
418272:  ADD             R0, PC; gGxtString_ptr
418274:  LDR             R6, [R0]; gGxtString
418276:  MOV             R0, R6; unsigned __int16 *
418278:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
41827C:  MOV             R0, R6; this
41827E:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418282:  LDR.W           R0, =(gGxtString2_ptr - 0x41828A)
418286:  ADD             R0, PC; gGxtString2_ptr
418288:  B.W             loc_41907E
41828C:  MOVS            R2, #0
41828E:  CMP             R0, #0x51 ; 'Q'
418290:  BLS.W           loc_41818E
418294:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41829C)
418298:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
41829A:  LDR             R1, [R1]; CStats::StatTypesInt ...
41829C:  ADD.W           R0, R1, R0,LSL#2
4182A0:  VLDR            S0, [R0,#-0x1E0]
4182A4:  VCVT.F32.S32    S0, S0
4182A8:  VCVT.S32.F32    S0, S0
4182AC:  MOVW            R6, #0x8889
4182B0:  LDR.W           R0, =(gString2_ptr - 0x4182BC)
4182B4:  MOVT            R6, #0x8888
4182B8:  ADD             R0, PC; gString2_ptr
4182BA:  LDR             R0, [R0]; gString2
4182BC:  VMOV            R1, S0
4182C0:  MVNS            R3, R1
4182C2:  CMN.W           R3, #0x3C ; '<'
4182C6:  IT LE
4182C8:  MOVLE           R3, #0xFFFFFFC4
4182CC:  ADD             R3, R1
4182CE:  ADDS            R3, #0x3C ; '<'
4182D0:  UMULL.W         R6, R5, R3, R6
4182D4:  MOVS            R6, #0
4182D6:  STRB            R6, [R0]
4182D8:  LSRS            R0, R5, #5
4182DA:  LSLS            R0, R0, #4
4182DC:  SUB.W           R0, R0, R5,LSR#5
4182E0:  SUB.W           R0, R3, R0,LSL#2
4182E4:  SUBS            R0, R0, R3
4182E6:  ADDS            R3, R0, R1
4182E8:  IT MI
4182EA:  NEGMI           R3, R3
4182EC:  CMP             R3, #9
4182EE:  BGT             loc_4182FE
4182F0:  LDR.W           R0, =(gString2_ptr - 0x4182FC)
4182F4:  LDR.W           R1, =(aD0D - 0x4182FE); "%d:0%d"
4182F8:  ADD             R0, PC; gString2_ptr
4182FA:  ADD             R1, PC; "%d:0%d"
4182FC:  B               loc_41830A
4182FE:  LDR.W           R0, =(gString2_ptr - 0x41830A)
418302:  LDR.W           R1, =(aDD_2 - 0x41830C); "%d:%d"
418306:  ADD             R0, PC; gString2_ptr
418308:  ADD             R1, PC; "%d:%d"
41830A:  LDR             R0, [R0]; gString2
41830C:  BL              sub_5E6BC0
418310:  LDR.W           R0, =(TheText_ptr - 0x41831C)
418314:  LDR.W           R1, =(gString_ptr - 0x41831E)
418318:  ADD             R0, PC; TheText_ptr
41831A:  ADD             R1, PC; gString_ptr
41831C:  LDR             R0, [R0]; TheText ; this
41831E:  LDR             R1, [R1]; gString ; CKeyGen *
418320:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418324:  MOV             R1, R0; unsigned __int16 *
418326:  LDR.W           R0, =(gGxtString_ptr - 0x41832E)
41832A:  ADD             R0, PC; gGxtString_ptr
41832C:  LDR             R4, [R0]; gGxtString
41832E:  MOV             R0, R4; unsigned __int16 *
418330:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418334:  MOV             R0, R4; this
418336:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
41833A:  LDR.W           R0, =(gString2_ptr - 0x418346)
41833E:  LDR.W           R1, =(gGxtString2_ptr - 0x418348)
418342:  ADD             R0, PC; gString2_ptr
418344:  ADD             R1, PC; gGxtString2_ptr
418346:  B.W             loc_419008
41834A:  LDR.W           R0, =(gString2_ptr - 0x41835C)
41834E:  MOVS            R3, #0
418350:  LDR.W           R1, =(TheText_ptr - 0x41835E)
418354:  LDR.W           R2, =(gString_ptr - 0x418360)
418358:  ADD             R0, PC; gString2_ptr
41835A:  ADD             R1, PC; TheText_ptr
41835C:  ADD             R2, PC; gString_ptr
41835E:  LDR             R5, [R0]; gString2
418360:  LDR             R0, [R1]; TheText ; this
418362:  LDR             R1, [R2]; gString ; CKeyGen *
418364:  MOVS            R2, #0
418366:  STR             R2, [SP,#0x90+var_40]
418368:  STRB            R3, [R5]
41836A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41836E:  MOV             R1, R0; unsigned __int16 *
418370:  LDR.W           R0, =(gGxtString_ptr - 0x418378)
418374:  ADD             R0, PC; gGxtString_ptr
418376:  LDR             R6, [R0]; gGxtString
418378:  MOV             R0, R6; unsigned __int16 *
41837A:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
41837E:  MOV             R0, R6; this
418380:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418384:  LDR.W           R0, =(gGxtString2_ptr - 0x41838C)
418388:  ADD             R0, PC; gGxtString2_ptr
41838A:  B.W             loc_41907E
41838E:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41839C)
418392:  MOVS            R6, #0
418394:  VLDR            S4, =0.0
418398:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41839A:  LDR             R1, =(a2f_0 - 0x4183A2); "$%.2f"
41839C:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41839E:  ADD             R1, PC; "$%.2f"
4183A0:  VLDR            S0, [R0,#0x8C]
4183A4:  VLDR            S2, [R0,#0x94]
4183A8:  LDR             R0, =(gString2_ptr - 0x4183B2)
4183AA:  VSUB.F32        S0, S0, S2
4183AE:  ADD             R0, PC; gString2_ptr
4183B0:  LDR             R5, [R0]; gString2
4183B2:  MOVS            R0, #0
4183B4:  STR             R0, [SP,#0x90+var_40]
4183B6:  VMAX.F32        D0, D0, D2
4183BA:  MOV             R0, R5
4183BC:  STRB            R6, [R5]
4183BE:  VCVT.F64.F32    D16, S0
4183C2:  VMOV            R2, R3, D16
4183C6:  BL              sub_5E6BC0
4183CA:  LDR             R0, =(TheText_ptr - 0x4183D2)
4183CC:  LDR             R1, =(gString_ptr - 0x4183D4)
4183CE:  ADD             R0, PC; TheText_ptr
4183D0:  ADD             R1, PC; gString_ptr
4183D2:  LDR             R0, [R0]; TheText ; this
4183D4:  LDR             R1, [R1]; gString ; CKeyGen *
4183D6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4183DA:  MOV             R1, R0; unsigned __int16 *
4183DC:  LDR             R0, =(gGxtString_ptr - 0x4183E2)
4183DE:  ADD             R0, PC; gGxtString_ptr
4183E0:  LDR             R6, [R0]; gGxtString
4183E2:  MOV             R0, R6; unsigned __int16 *
4183E4:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
4183E8:  MOV             R0, R6; this
4183EA:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
4183EE:  LDR             R0, =(gGxtString2_ptr - 0x4183F4)
4183F0:  ADD             R0, PC; gGxtString2_ptr
4183F2:  B.W             loc_41907E
4183F6:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4183FC)
4183F8:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
4183FA:  LDR             R0, [R0]; CStats::StatTypesFloat ...
4183FC:  VLDR            S0, [R0,#4]
418400:  VCMP.F32        S0, #0.0
418404:  VMRS            APSR_nzcv, FPSCR
418408:  BNE.W           loc_418F08
41840C:  VLDR            S0, =0.0
418410:  B.W             loc_418F20
418414:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x41841C)
418416:  LDR             R1, =(gString2_ptr - 0x41841E)
418418:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
41841A:  ADD             R1, PC; gString2_ptr
41841C:  LDR             R0, [R0]; CWorld::Players ...
41841E:  LDR             R5, [R1]; gString2
418420:  MOVS            R1, #0
418422:  LDR             R0, [R0]; CWorld::Players
418424:  ADDW            R0, R0, #0x54C
418428:  VLDR            S0, [R0]
41842C:  MOVS            R0, #0
41842E:  STR             R0, [SP,#0x90+var_40]
418430:  MOV             R0, R5
418432:  STRB            R1, [R5]
418434:  VCVT.S32.F32    S0, S0
418438:  ADR.W           R1, dword_41799C
41843C:  VMOV            R2, S0
418440:  BL              sub_5E6BC0
418444:  LDR             R0, =(TheText_ptr - 0x41844C)
418446:  LDR             R1, =(gString_ptr - 0x41844E)
418448:  ADD             R0, PC; TheText_ptr
41844A:  ADD             R1, PC; gString_ptr
41844C:  LDR             R0, [R0]; TheText ; this
41844E:  LDR             R1, [R1]; gString ; CKeyGen *
418450:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418454:  MOV             R1, R0; unsigned __int16 *
418456:  LDR             R0, =(gGxtString_ptr - 0x41845C)
418458:  ADD             R0, PC; gGxtString_ptr
41845A:  LDR             R6, [R0]; gGxtString
41845C:  MOV             R0, R6; unsigned __int16 *
41845E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418462:  MOV             R0, R6; this
418464:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418468:  LDR             R0, =(gGxtString2_ptr - 0x41846E)
41846A:  ADD             R0, PC; gGxtString2_ptr
41846C:  B.W             loc_41907E
418470:  LDR             R0, =(gString2_ptr - 0x41847C)
418472:  MOVS            R3, #0
418474:  LDR             R1, =(TheText_ptr - 0x41847E)
418476:  LDR             R2, =(gString_ptr - 0x418480)
418478:  ADD             R0, PC; gString2_ptr
41847A:  ADD             R1, PC; TheText_ptr
41847C:  ADD             R2, PC; gString_ptr
41847E:  LDR             R5, [R0]; gString2
418480:  LDR             R0, [R1]; TheText ; this
418482:  LDR             R1, [R2]; gString ; CKeyGen *
418484:  MOVS            R2, #0
418486:  STR             R2, [SP,#0x90+var_40]
418488:  STRB            R3, [R5]
41848A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41848E:  MOV             R1, R0; unsigned __int16 *
418490:  LDR             R0, =(gGxtString_ptr - 0x418496)
418492:  ADD             R0, PC; gGxtString_ptr
418494:  LDR             R6, [R0]; gGxtString
418496:  MOV             R0, R6; unsigned __int16 *
418498:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
41849C:  MOV             R0, R6; this
41849E:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
4184A2:  LDR             R0, =(gGxtString2_ptr - 0x4184A8)
4184A4:  ADD             R0, PC; gGxtString2_ptr
4184A6:  B.W             loc_41907E
4184AA:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x4184B2)
4184AC:  LDR             R1, =(_ZN17CStuntJumpManager11m_iNumJumpsE_ptr - 0x4184B8)
4184AE:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
4184B0:  LDR             R3, =(TheText_ptr - 0x4184BA)
4184B2:  LDR             R2, =(gString2_ptr - 0x4184BE)
4184B4:  ADD             R1, PC; _ZN17CStuntJumpManager11m_iNumJumpsE_ptr
4184B6:  ADD             R3, PC; TheText_ptr
4184B8:  LDR             R0, [R0]; CStats::StatTypesInt ...
4184BA:  ADD             R2, PC; gString2_ptr
4184BC:  LDR             R4, [R1]; CStuntJumpManager::m_iNumJumps ...
4184BE:  LDR             R1, =(aFestOo - 0x4184C8); "FEST_OO"
4184C0:  LDR             R6, [R3]; TheText
4184C2:  LDR             R5, [R2]; gString2
4184C4:  ADD             R1, PC; "FEST_OO"
4184C6:  VLDR            S0, [R0,#0x60]
4184CA:  MOVS            R0, #0
4184CC:  LDR             R4, [R4]; CStuntJumpManager::m_iNumJumps
4184CE:  MOVS            R2, #0
4184D0:  VCVT.F32.S32    S16, S0
4184D4:  STR             R0, [SP,#0x90+var_40]
4184D6:  MOV             R0, R6; this
4184D8:  STRB            R2, [R5]
4184DA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4184DE:  MOVS            R1, #0; unsigned __int8
4184E0:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
4184E4:  VCVT.S32.F32    S0, S16
4184E8:  LDR             R1, =(aDFFFDFFFFFFFDD+0x26 - 0x4184F2); " %d %s %d"
4184EA:  MOV             R3, R0
4184EC:  MOV             R0, R5
4184EE:  ADD             R1, PC; " %d %s %d"
4184F0:  STR             R4, [SP,#0x90+var_90]
4184F2:  VMOV            R2, S0
4184F6:  BL              sub_5E6BC0
4184FA:  LDR             R0, =(gString_ptr - 0x418500)
4184FC:  ADD             R0, PC; gString_ptr
4184FE:  LDR             R1, [R0]; gString ; CKeyGen *
418500:  MOV             R0, R6; this
418502:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418506:  MOV             R1, R0; unsigned __int16 *
418508:  LDR             R0, =(gGxtString_ptr - 0x41850E)
41850A:  ADD             R0, PC; gGxtString_ptr
41850C:  LDR             R6, [R0]; gGxtString
41850E:  MOV             R0, R6; unsigned __int16 *
418510:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418514:  MOV             R0, R6; this
418516:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
41851A:  LDR             R0, =(gGxtString2_ptr - 0x418520)
41851C:  ADD             R0, PC; gGxtString2_ptr
41851E:  B.W             loc_41907E
418522:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41852C)
418524:  MOVS            R3, #0
418526:  LDR             R1, =(gString2_ptr - 0x418530)
418528:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41852A:  LDR             R2, =(TheText_ptr - 0x418534)
41852C:  ADD             R1, PC; gString2_ptr
41852E:  LDR             R0, [R0]; CStats::StatTypesInt ...
418530:  ADD             R2, PC; TheText_ptr
418532:  LDR             R5, [R1]; gString2
418534:  LDR             R1, =(aFestOo - 0x418540); "FEST_OO"
418536:  LDR             R6, [R2]; TheText
418538:  VLDR            S0, [R0,#0x1E4]
41853C:  ADD             R1, PC; "FEST_OO"
41853E:  VLDR            S2, [R0,#0x1E8]
418542:  MOVS            R0, #0
418544:  VCVT.F32.S32    S16, S2
418548:  VCVT.F32.S32    S18, S0
41854C:  STR             R0, [SP,#0x90+var_40]
41854E:  MOV             R0, R6; this
418550:  STRB            R3, [R5]
418552:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418556:  MOVS            R1, #0; unsigned __int8
418558:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
41855C:  VCVT.S32.F32    S0, S16
418560:  LDR             R1, =(aDFFFDFFFFFFFDD+0x26 - 0x41856C); " %d %s %d"
418562:  VCVT.S32.F32    S2, S18
418566:  MOV             R3, R0
418568:  ADD             R1, PC; " %d %s %d"
41856A:  MOV             R0, R5
41856C:  VSTR            S0, [SP,#0x90+var_90]
418570:  VMOV            R2, S2
418574:  BL              sub_5E6BC0
418578:  LDR             R0, =(gString_ptr - 0x41857E)
41857A:  ADD             R0, PC; gString_ptr
41857C:  LDR             R1, [R0]; gString ; CKeyGen *
41857E:  MOV             R0, R6; this
418580:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418584:  MOV             R1, R0; unsigned __int16 *
418586:  LDR             R0, =(gGxtString_ptr - 0x41858C)
418588:  ADD             R0, PC; gGxtString_ptr
41858A:  LDR             R6, [R0]; gGxtString
41858C:  MOV             R0, R6; unsigned __int16 *
41858E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418592:  MOV             R0, R6; this
418594:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418598:  LDR             R0, =(gGxtString2_ptr - 0x41859E)
41859A:  ADD             R0, PC; gGxtString2_ptr
41859C:  B.W             loc_41907E
4185A0:  LDR             R0, =(_ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x4185A8)
4185A2:  LDR             R5, =(gString2_ptr - 0x4185AA)
4185A4:  ADD             R0, PC; _ZN6CStats20PedsKilledOfThisTypeE_ptr
4185A6:  ADD             R5, PC; gString2_ptr
4185A8:  LDR             R0, [R0]; CStats::PedsKilledOfThisType ...
4185AA:  LDR             R5, [R5]; gString2
4185AC:  ADD.W           R6, R0, #0x1C
4185B0:  LDM             R6, {R2,R3,R6}
4185B2:  ADD             R2, R3
4185B4:  LDRD.W          R4, R1, [R0,#(dword_964DC0 - 0x964D98)]
4185B8:  ADD             R2, R6
4185BA:  LDRD.W          R12, LR, [R0,#(dword_964DC8 - 0x964D98)]
4185BE:  ADD             R2, R4
4185C0:  LDR.W           R8, [R0,#(dword_964DD0 - 0x964D98)]
4185C4:  ADD             R1, R2
4185C6:  LDR             R0, [R0,#(dword_964DD4 - 0x964D98)]
4185C8:  ADD             R1, R12
4185CA:  MOVS            R4, #0
4185CC:  ADD             R1, LR
4185CE:  MOVS            R3, #0
4185D0:  ADD             R1, R8
4185D2:  STR             R3, [SP,#0x90+var_40]
4185D4:  ADDS            R2, R1, R0
4185D6:  ADR.W           R1, dword_41799C
4185DA:  MOV             R0, R5
4185DC:  STRB            R4, [R5]
4185DE:  BL              sub_5E6BC0
4185E2:  LDR             R0, =(TheText_ptr - 0x4185EA)
4185E4:  LDR             R1, =(gString_ptr - 0x4185EC)
4185E6:  ADD             R0, PC; TheText_ptr
4185E8:  ADD             R1, PC; gString_ptr
4185EA:  LDR             R0, [R0]; TheText ; this
4185EC:  LDR             R1, [R1]; gString ; CKeyGen *
4185EE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4185F2:  MOV             R1, R0; unsigned __int16 *
4185F4:  LDR             R0, =(gGxtString_ptr - 0x4185FA)
4185F6:  ADD             R0, PC; gGxtString_ptr
4185F8:  LDR             R6, [R0]; gGxtString
4185FA:  MOV             R0, R6; unsigned __int16 *
4185FC:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418600:  MOV             R0, R6; this
418602:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418606:  LDR             R0, =(gGxtString2_ptr - 0x41860C)
418608:  ADD             R0, PC; gGxtString2_ptr
41860A:  B.W             loc_41907E
41860E:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x418618)
418610:  MOVS            R3, #0
418612:  LDR             R1, =(gString2_ptr - 0x41861C)
418614:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
418616:  LDR             R2, =(TheText_ptr - 0x41861E)
418618:  ADD             R1, PC; gString2_ptr
41861A:  ADD             R2, PC; TheText_ptr
41861C:  LDR             R0, [R0]; CStats::StatTypesInt ...
41861E:  LDR             R5, [R1]; gString2
418620:  LDR             R1, =(aFestOo - 0x41862C); "FEST_OO"
418622:  LDR             R6, [R2]; TheText
418624:  VLDR            S0, [R0,#0xDC]
418628:  ADD             R1, PC; "FEST_OO"
41862A:  MOVS            R0, #0
41862C:  VCVT.F32.S32    S16, S0
418630:  STR             R0, [SP,#0x90+var_40]
418632:  MOV             R0, R6; this
418634:  STRB            R3, [R5]
418636:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41863A:  MOVS            R1, #0; unsigned __int8
41863C:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
418640:  VCVT.S32.F32    S0, S16
418644:  LDR             R1, =(aDFFFDFFFFFFFDD+0x26 - 0x41864E); " %d %s %d"
418646:  MOV             R3, R0
418648:  MOVS            R0, #0x19
41864A:  ADD             R1, PC; " %d %s %d"
41864C:  STR             R0, [SP,#0x90+var_90]
41864E:  MOV             R0, R5
418650:  VMOV            R2, S0
418654:  BL              sub_5E6BC0
418658:  LDR             R0, =(gString_ptr - 0x41865E)
41865A:  ADD             R0, PC; gString_ptr
41865C:  LDR             R1, [R0]; gString ; CKeyGen *
41865E:  MOV             R0, R6; this
418660:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418664:  MOV             R1, R0; unsigned __int16 *
418666:  LDR             R0, =(gGxtString_ptr - 0x41866C)
418668:  ADD             R0, PC; gGxtString_ptr
41866A:  LDR             R6, [R0]; gGxtString
41866C:  MOV             R0, R6; unsigned __int16 *
41866E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418672:  MOV             R0, R6; this
418674:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418678:  LDR             R0, =(gGxtString2_ptr - 0x41867E)
41867A:  ADD             R0, PC; gGxtString2_ptr
41867C:  B.W             loc_41907E
418680:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41868A)
418682:  MOVS            R3, #0
418684:  LDR             R1, =(gString2_ptr - 0x41868E)
418686:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
418688:  LDR             R2, =(TheText_ptr - 0x418692)
41868A:  ADD             R1, PC; gString2_ptr
41868C:  LDR             R0, [R0]; CStats::StatTypesInt ...
41868E:  ADD             R2, PC; TheText_ptr
418690:  LDR             R5, [R1]; gString2
418692:  LDR             R1, =(aFestOo - 0x41869E); "FEST_OO"
418694:  LDR             R6, [R2]; TheText
418696:  VLDR            S0, [R0,#0x1EC]
41869A:  ADD             R1, PC; "FEST_OO"
41869C:  VLDR            S2, [R0,#0x1F0]
4186A0:  MOVS            R0, #0
4186A2:  VCVT.F32.S32    S16, S2
4186A6:  VCVT.F32.S32    S18, S0
4186AA:  STR             R0, [SP,#0x90+var_40]
4186AC:  MOV             R0, R6; this
4186AE:  STRB            R3, [R5]
4186B0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4186B4:  MOVS            R1, #0; unsigned __int8
4186B6:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
4186BA:  VCVT.S32.F32    S0, S16
4186BE:  LDR             R1, =(aDFFFDFFFFFFFDD+0x26 - 0x4186CA); " %d %s %d"
4186C0:  VCVT.S32.F32    S2, S18
4186C4:  MOV             R3, R0
4186C6:  ADD             R1, PC; " %d %s %d"
4186C8:  MOV             R0, R5
4186CA:  VSTR            S0, [SP,#0x90+var_90]
4186CE:  VMOV            R2, S2
4186D2:  BL              sub_5E6BC0
4186D6:  LDR             R0, =(gString_ptr - 0x4186DC)
4186D8:  ADD             R0, PC; gString_ptr
4186DA:  LDR             R1, [R0]; gString ; CKeyGen *
4186DC:  MOV             R0, R6; this
4186DE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4186E2:  MOV             R1, R0; unsigned __int16 *
4186E4:  LDR             R0, =(gGxtString_ptr - 0x4186EA)
4186E6:  ADD             R0, PC; gGxtString_ptr
4186E8:  LDR             R6, [R0]; gGxtString
4186EA:  MOV             R0, R6; unsigned __int16 *
4186EC:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
4186F0:  MOV             R0, R6; this
4186F2:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
4186F6:  LDR             R0, =(gGxtString2_ptr - 0x4186FC)
4186F8:  ADD             R0, PC; gGxtString2_ptr
4186FA:  B.W             loc_41907E
4186FE:  ALIGN 0x10
418700:  DCFS 0.0
418704:  DCD a2f_0 - 0x4183A2
418708:  DCD gString2_ptr - 0x4183B2
41870C:  DCD TheText_ptr - 0x4183D2
418710:  DCD gString_ptr - 0x4183D4
418714:  DCD gGxtString_ptr - 0x4183E2
418718:  DCD gGxtString2_ptr - 0x4183F4
41871C:  DCD _ZN6CStats14StatTypesFloatE_ptr - 0x4183FC
418720:  DCD _ZN6CWorld7PlayersE_ptr - 0x41841C
418724:  DCD gString2_ptr - 0x41841E
418728:  DCD TheText_ptr - 0x41844C
41872C:  DCD gString_ptr - 0x41844E
418730:  DCD gGxtString_ptr - 0x41845C
418734:  DCD gGxtString2_ptr - 0x41846E
418738:  DCD gString2_ptr - 0x41847C
41873C:  DCD TheText_ptr - 0x41847E
418740:  DCD gString_ptr - 0x418480
418744:  DCD gGxtString_ptr - 0x418496
418748:  DCD gGxtString2_ptr - 0x4184A8
41874C:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x4184B2
418750:  DCD _ZN17CStuntJumpManager11m_iNumJumpsE_ptr - 0x4184B8
418754:  DCD TheText_ptr - 0x4184BA
418758:  DCD gString2_ptr - 0x4184BE
41875C:  DCD aFestOo - 0x4184C8
418760:  DCD aDFFFDFFFFFFFDD+0x26 - 0x4184F2
418764:  DCD gString_ptr - 0x418500
418768:  DCD gGxtString_ptr - 0x41850E
41876C:  DCD gGxtString2_ptr - 0x418520
418770:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x41852C
418774:  DCD gString2_ptr - 0x418530
418778:  DCD TheText_ptr - 0x418534
41877C:  DCD aFestOo - 0x418540
418780:  DCD aDFFFDFFFFFFFDD+0x26 - 0x41856C
418784:  DCD gString_ptr - 0x41857E
418788:  DCD gGxtString_ptr - 0x41858C
41878C:  DCD gGxtString2_ptr - 0x41859E
418790:  DCD _ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x4185A8
418794:  DCD gString2_ptr - 0x4185AA
418798:  DCD TheText_ptr - 0x4185EA
41879C:  DCD gString_ptr - 0x4185EC
4187A0:  DCD gGxtString_ptr - 0x4185FA
4187A4:  DCD gGxtString2_ptr - 0x41860C
4187A8:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x418618
4187AC:  DCD gString2_ptr - 0x41861C
4187B0:  DCD TheText_ptr - 0x41861E
4187B4:  DCD aFestOo - 0x41862C
4187B8:  DCD aDFFFDFFFFFFFDD+0x26 - 0x41864E
4187BC:  DCD gString_ptr - 0x41865E
4187C0:  DCD gGxtString_ptr - 0x41866C
4187C4:  DCD gGxtString2_ptr - 0x41867E
4187C8:  DCD _ZN6CStats12StatTypesIntE_ptr - 0x41868A
4187CC:  DCD gString2_ptr - 0x41868E
4187D0:  DCD TheText_ptr - 0x418692
4187D4:  DCD aFestOo - 0x41869E
4187D8:  DCD aDFFFDFFFFFFFDD+0x26 - 0x4186CA
4187DC:  DCD gString_ptr - 0x4186DC
4187E0:  DCD gGxtString_ptr - 0x4186EA
4187E4:  DCD gGxtString2_ptr - 0x4186FC
4187E8:  DCFS 100.0
4187EC:  DCFS 60000.0
4187F0:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x4187FE)
4187F4:  MOVS            R3, #0
4187F6:  LDR.W           R1, =(gString2_ptr - 0x418804)
4187FA:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
4187FC:  LDR.W           R2, =(TheText_ptr - 0x418806)
418800:  ADD             R1, PC; gString2_ptr
418802:  ADD             R2, PC; TheText_ptr
418804:  LDR             R0, [R0]; CStats::StatTypesInt ...
418806:  LDR             R5, [R1]; gString2
418808:  LDR.W           R1, =(aFestOo - 0x418816); "FEST_OO"
41880C:  LDR             R6, [R2]; TheText
41880E:  VLDR            S0, [R0,#0xD8]
418812:  ADD             R1, PC; "FEST_OO"
418814:  MOVS            R0, #0
418816:  VCVT.F32.S32    S16, S0
41881A:  STR             R0, [SP,#0x90+var_40]
41881C:  MOV             R0, R6; this
41881E:  STRB            R3, [R5]
418820:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418824:  MOVS            R1, #0; unsigned __int8
418826:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
41882A:  VCVT.S32.F32    S0, S16
41882E:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x26 - 0x41883A); " %d %s %d"
418832:  MOV             R3, R0
418834:  MOVS            R0, #0xC
418836:  ADD             R1, PC; " %d %s %d"
418838:  STR             R0, [SP,#0x90+var_90]
41883A:  MOV             R0, R5
41883C:  VMOV            R2, S0
418840:  BL              sub_5E6BC0
418844:  LDR.W           R0, =(gString_ptr - 0x41884C)
418848:  ADD             R0, PC; gString_ptr
41884A:  LDR             R1, [R0]; gString ; CKeyGen *
41884C:  MOV             R0, R6; this
41884E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418852:  MOV             R1, R0; unsigned __int16 *
418854:  LDR.W           R0, =(gGxtString_ptr - 0x41885C)
418858:  ADD             R0, PC; gGxtString_ptr
41885A:  LDR             R6, [R0]; gGxtString
41885C:  MOV             R0, R6; unsigned __int16 *
41885E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418862:  MOV             R0, R6; this
418864:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418868:  LDR.W           R0, =(gGxtString2_ptr - 0x418870)
41886C:  ADD             R0, PC; gGxtString2_ptr
41886E:  B.W             loc_41907E
418872:  LDR.W           R0, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x418882)
418876:  LDR.W           R1, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x418888)
41887A:  LDR.W           R3, =(TheText_ptr - 0x41888A)
41887E:  ADD             R0, PC; _ZN11CTagManager12ms_numTaggedE_ptr
418880:  LDR.W           R2, =(gString2_ptr - 0x41888E)
418884:  ADD             R1, PC; _ZN11CTagManager10ms_numTagsE_ptr
418886:  ADD             R3, PC; TheText_ptr
418888:  LDR             R0, [R0]; CTagManager::ms_numTagged ...
41888A:  ADD             R2, PC; gString2_ptr
41888C:  LDR             R4, [R1]; CTagManager::ms_numTags ...
41888E:  LDR.W           R1, =(aFestOo - 0x41889A); "FEST_OO"
418892:  LDR             R6, [R3]; TheText
418894:  LDR             R5, [R2]; gString2
418896:  ADD             R1, PC; "FEST_OO"
418898:  LDR.W           R8, [R0]; CTagManager::ms_numTagged
41889C:  MOVS            R0, #0
41889E:  MOVS            R2, #0
4188A0:  STR             R0, [SP,#0x90+var_40]
4188A2:  MOV             R0, R6; this
4188A4:  LDR             R4, [R4]; CTagManager::ms_numTags
4188A6:  STRB            R2, [R5]
4188A8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4188AC:  MOVS            R1, #0; unsigned __int8
4188AE:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
4188B2:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x26 - 0x4188C0); " %d %s %d"
4188B6:  MOV             R3, R0
4188B8:  MOV             R0, R5
4188BA:  MOV             R2, R8
4188BC:  ADD             R1, PC; " %d %s %d"
4188BE:  STR             R4, [SP,#0x90+var_90]
4188C0:  BL              sub_5E6BC0
4188C4:  LDR.W           R0, =(gString_ptr - 0x4188CC)
4188C8:  ADD             R0, PC; gString_ptr
4188CA:  LDR             R1, [R0]; gString ; CKeyGen *
4188CC:  MOV             R0, R6; this
4188CE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4188D2:  MOV             R1, R0; unsigned __int16 *
4188D4:  LDR.W           R0, =(gGxtString_ptr - 0x4188DC)
4188D8:  ADD             R0, PC; gGxtString_ptr
4188DA:  LDR             R6, [R0]; gGxtString
4188DC:  MOV             R0, R6; unsigned __int16 *
4188DE:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
4188E2:  MOV             R0, R6; this
4188E4:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
4188E8:  LDR.W           R0, =(gGxtString2_ptr - 0x4188F0)
4188EC:  ADD             R0, PC; gGxtString2_ptr
4188EE:  B               loc_41907E
4188F0:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x4188FE)
4188F4:  MOVS            R3, #0
4188F6:  LDR.W           R1, =(gString2_ptr - 0x418904)
4188FA:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
4188FC:  LDR.W           R2, =(TheText_ptr - 0x418908)
418900:  ADD             R1, PC; gString2_ptr
418902:  LDR             R0, [R0]; CStats::StatTypesInt ...
418904:  ADD             R2, PC; TheText_ptr
418906:  LDR             R5, [R1]; gString2
418908:  LDR.W           R1, =(aFestOo - 0x418916); "FEST_OO"
41890C:  LDR             R6, [R2]; TheText
41890E:  VLDR            S0, [R0,#0x1BC]
418912:  ADD             R1, PC; "FEST_OO"
418914:  VLDR            S2, [R0,#0x1C0]
418918:  MOVS            R0, #0
41891A:  VCVT.F32.S32    S16, S2
41891E:  VCVT.F32.S32    S18, S0
418922:  STR             R0, [SP,#0x90+var_40]
418924:  MOV             R0, R6; this
418926:  STRB            R3, [R5]
418928:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41892C:  MOVS            R1, #0; unsigned __int8
41892E:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
418932:  VCVT.S32.F32    S0, S16
418936:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x26 - 0x418944); " %d %s %d"
41893A:  VCVT.S32.F32    S2, S18
41893E:  MOV             R3, R0
418940:  ADD             R1, PC; " %d %s %d"
418942:  MOV             R0, R5
418944:  VSTR            S0, [SP,#0x90+var_90]
418948:  VMOV            R2, S2
41894C:  BL              sub_5E6BC0
418950:  LDR.W           R0, =(gString_ptr - 0x418958)
418954:  ADD             R0, PC; gString_ptr
418956:  LDR             R1, [R0]; gString ; CKeyGen *
418958:  MOV             R0, R6; this
41895A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41895E:  MOV             R1, R0; unsigned __int16 *
418960:  LDR.W           R0, =(gGxtString_ptr - 0x418968)
418964:  ADD             R0, PC; gGxtString_ptr
418966:  LDR             R6, [R0]; gGxtString
418968:  MOV             R0, R6; unsigned __int16 *
41896A:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
41896E:  MOV             R0, R6; this
418970:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418974:  LDR.W           R0, =(gGxtString2_ptr - 0x41897C)
418978:  ADD             R0, PC; gGxtString2_ptr
41897A:  B               loc_41907E
41897C:  LDR.W           R0, =(_ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x418988)
418980:  LDR.W           R1, =(gString2_ptr - 0x41898A)
418984:  ADD             R0, PC; _ZN6CStats20PedsKilledOfThisTypeE_ptr
418986:  ADD             R1, PC; gString2_ptr
418988:  LDR             R0, [R0]; CStats::PedsKilledOfThisType ...
41898A:  LDR             R5, [R1]; gString2
41898C:  MOVS            R1, #0
41898E:  LDR             R2, [R0,#(dword_964DE8 - 0x964D98)]
418990:  MOVS            R0, #0
418992:  STRB            R1, [R5]
418994:  ADR.W           R1, dword_4196F0
418998:  STR             R0, [SP,#0x90+var_40]
41899A:  MOV             R0, R5
41899C:  BL              sub_5E6BC0
4189A0:  LDR.W           R0, =(TheText_ptr - 0x4189AC)
4189A4:  LDR.W           R1, =(gString_ptr - 0x4189AE)
4189A8:  ADD             R0, PC; TheText_ptr
4189AA:  ADD             R1, PC; gString_ptr
4189AC:  LDR             R0, [R0]; TheText ; this
4189AE:  LDR             R1, [R1]; gString ; CKeyGen *
4189B0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4189B4:  MOV             R1, R0; unsigned __int16 *
4189B6:  LDR.W           R0, =(gGxtString_ptr - 0x4189BE)
4189BA:  ADD             R0, PC; gGxtString_ptr
4189BC:  LDR             R6, [R0]; gGxtString
4189BE:  MOV             R0, R6; unsigned __int16 *
4189C0:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
4189C4:  MOV             R0, R6; this
4189C6:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
4189CA:  LDR.W           R0, =(gGxtString2_ptr - 0x4189D2)
4189CE:  ADD             R0, PC; gGxtString2_ptr
4189D0:  B               loc_41907E
4189D2:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4189E6)
4189D6:  MOV             R1, #0x45E7B273
4189DE:  MOVW            R3, #0x8889
4189E2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4189E4:  MOVT            R3, #0x8888
4189E8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4189EA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4189EC:  UMULL.W         R1, R2, R0, R1
4189F0:  LDR.W           R1, =(gString2_ptr - 0x4189F8)
4189F4:  ADD             R1, PC; gString2_ptr
4189F6:  LSRS            R2, R2, #0xE
4189F8:  UMULL.W         R3, R6, R2, R3
4189FC:  MOV             R3, #0x95217CB1
418A04:  UMULL.W         R0, R5, R0, R3
418A08:  LDR             R0, [R1]; gString2
418A0A:  MOVS            R1, #0
418A0C:  STRB            R1, [R0]
418A0E:  LSRS            R0, R6, #5
418A10:  LSLS            R0, R0, #4
418A12:  SUB.W           R0, R0, R6,LSR#5
418A16:  SUB.W           R3, R2, R0,LSL#2
418A1A:  LSRS            R2, R5, #0x15
418A1C:  CMP             R3, #9
418A1E:  BHI.W           loc_418D94
418A22:  LDR.W           R0, =(gString2_ptr - 0x418A2E)
418A26:  LDR.W           R1, =(aD0D - 0x418A30); "%d:0%d"
418A2A:  ADD             R0, PC; gString2_ptr
418A2C:  ADD             R1, PC; "%d:0%d"
418A2E:  B               loc_418DA0
418A30:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x418A3E)
418A34:  MOVS            R3, #0
418A36:  LDR.W           R1, =(gString2_ptr - 0x418A44)
418A3A:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
418A3C:  LDR.W           R2, =(TheText_ptr - 0x418A46)
418A40:  ADD             R1, PC; gString2_ptr
418A42:  ADD             R2, PC; TheText_ptr
418A44:  LDR             R0, [R0]; CStats::StatTypesInt ...
418A46:  LDR             R5, [R1]; gString2
418A48:  LDR.W           R1, =(aFestOo - 0x418A56); "FEST_OO"
418A4C:  LDR             R6, [R2]; TheText
418A4E:  VLDR            S0, [R0,#0x174]
418A52:  ADD             R1, PC; "FEST_OO"
418A54:  MOVS            R0, #0
418A56:  VCVT.F32.S32    S16, S0
418A5A:  STR             R0, [SP,#0x90+var_40]
418A5C:  MOV             R0, R6; this
418A5E:  STRB            R3, [R5]
418A60:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418A64:  MOVS            R1, #0; unsigned __int8
418A66:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
418A6A:  VCVT.S32.F32    S0, S16
418A6E:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x26 - 0x418A7A); " %d %s %d"
418A72:  MOV             R3, R0
418A74:  MOVS            R0, #0x1E
418A76:  ADD             R1, PC; " %d %s %d"
418A78:  STR             R0, [SP,#0x90+var_90]
418A7A:  MOV             R0, R5
418A7C:  VMOV            R2, S0
418A80:  BL              sub_5E6BC0
418A84:  LDR.W           R0, =(gString_ptr - 0x418A8C)
418A88:  ADD             R0, PC; gString_ptr
418A8A:  LDR             R1, [R0]; gString ; CKeyGen *
418A8C:  MOV             R0, R6; this
418A8E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418A92:  MOV             R1, R0; unsigned __int16 *
418A94:  LDR.W           R0, =(gGxtString_ptr - 0x418A9C)
418A98:  ADD             R0, PC; gGxtString_ptr
418A9A:  LDR             R6, [R0]; gGxtString
418A9C:  MOV             R0, R6; unsigned __int16 *
418A9E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418AA2:  MOV             R0, R6; this
418AA4:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418AA8:  LDR.W           R0, =(gGxtString2_ptr - 0x418AB0)
418AAC:  ADD             R0, PC; gGxtString2_ptr
418AAE:  B               loc_41907E
418AB0:  LDR.W           R0, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x418ABE)
418AB4:  MOVS            R6, #0
418AB6:  VLDR            S0, =100.0
418ABA:  ADD             R0, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
418ABC:  LDR.W           R1, =(a02f - 0x418AC6); "%0.2f%%"
418AC0:  LDR             R0, [R0]; CGangWars::TerritoryUnderControlPercentage ...
418AC2:  ADD             R1, PC; "%0.2f%%"
418AC4:  VLDR            S2, [R0]
418AC8:  LDR.W           R0, =(gString2_ptr - 0x418AD4)
418ACC:  VMUL.F32        S0, S2, S0
418AD0:  ADD             R0, PC; gString2_ptr
418AD2:  LDR             R5, [R0]; gString2
418AD4:  MOVS            R0, #0
418AD6:  STR             R0, [SP,#0x90+var_40]
418AD8:  MOV             R0, R5
418ADA:  STRB            R6, [R5]
418ADC:  VCVT.F64.F32    D16, S0
418AE0:  VMOV            R2, R3, D16
418AE4:  BL              sub_5E6BC0
418AE8:  LDR.W           R0, =(TheText_ptr - 0x418AF4)
418AEC:  LDR.W           R1, =(gString_ptr - 0x418AF6)
418AF0:  ADD             R0, PC; TheText_ptr
418AF2:  ADD             R1, PC; gString_ptr
418AF4:  LDR             R0, [R0]; TheText ; this
418AF6:  LDR             R1, [R1]; gString ; CKeyGen *
418AF8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418AFC:  MOV             R1, R0; unsigned __int16 *
418AFE:  LDR.W           R0, =(gGxtString_ptr - 0x418B06)
418B02:  ADD             R0, PC; gGxtString_ptr
418B04:  LDR             R6, [R0]; gGxtString
418B06:  MOV             R0, R6; unsigned __int16 *
418B08:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418B0C:  MOV             R0, R6; this
418B0E:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418B12:  LDR.W           R0, =(gGxtString2_ptr - 0x418B1A)
418B16:  ADD             R0, PC; gGxtString2_ptr
418B18:  B               loc_41907E
418B1A:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x418B2E)
418B1E:  MOVW            R2, #0x8889
418B22:  VLDR            S2, =60000.0
418B26:  MOVT            R2, #0x8888
418B2A:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
418B2C:  MOVS            R3, #0
418B2E:  LDR             R0, [R0]; CStats::StatTypesInt ...
418B30:  VLDR            S0, [R0,#0xC4]
418B34:  LDR.W           R0, =(gString2_ptr - 0x418B40)
418B38:  VCVT.F32.S32    S0, S0
418B3C:  ADD             R0, PC; gString2_ptr
418B3E:  LDR             R0, [R0]; gString2
418B40:  VDIV.F32        S0, S0, S2
418B44:  VCVT.S32.F32    S0, S0
418B48:  STRB            R3, [R0]
418B4A:  VMOV            R1, S0
418B4E:  SMMLA.W         R2, R2, R1, R1
418B52:  ASRS            R0, R2, #5
418B54:  ADD.W           R2, R0, R2,LSR#31
418B58:  RSB.W           R0, R2, R2,LSL#4
418B5C:  SUB.W           R3, R1, R0,LSL#2
418B60:  CMP             R3, #9
418B62:  BGT.W           loc_418DDE
418B66:  LDR.W           R0, =(gString2_ptr - 0x418B72)
418B6A:  LDR.W           R1, =(aD0D - 0x418B74); "%d:0%d"
418B6E:  ADD             R0, PC; gString2_ptr
418B70:  ADD             R1, PC; "%d:0%d"
418B72:  B               loc_418DEA
418B74:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x418B80)
418B78:  LDR.W           R1, =(_ZN17CStuntJumpManager11m_iNumJumpsE_ptr - 0x418B8A)
418B7C:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
418B7E:  LDR.W           R3, =(TheText_ptr - 0x418B8C)
418B82:  LDR.W           R2, =(gString2_ptr - 0x418B90)
418B86:  ADD             R1, PC; _ZN17CStuntJumpManager11m_iNumJumpsE_ptr
418B88:  ADD             R3, PC; TheText_ptr
418B8A:  LDR             R0, [R0]; CStats::StatTypesInt ...
418B8C:  ADD             R2, PC; gString2_ptr
418B8E:  LDR             R4, [R1]; CStuntJumpManager::m_iNumJumps ...
418B90:  LDR.W           R1, =(aFestOo - 0x418B9C); "FEST_OO"
418B94:  LDR             R6, [R3]; TheText
418B96:  LDR             R5, [R2]; gString2
418B98:  ADD             R1, PC; "FEST_OO"
418B9A:  VLDR            S0, [R0,#0x64]
418B9E:  MOVS            R0, #0
418BA0:  LDR             R4, [R4]; CStuntJumpManager::m_iNumJumps
418BA2:  MOVS            R2, #0
418BA4:  VCVT.F32.S32    S16, S0
418BA8:  STR             R0, [SP,#0x90+var_40]
418BAA:  MOV             R0, R6; this
418BAC:  STRB            R2, [R5]
418BAE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418BB2:  MOVS            R1, #0; unsigned __int8
418BB4:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
418BB8:  VCVT.S32.F32    S0, S16
418BBC:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x26 - 0x418BC8); " %d %s %d"
418BC0:  MOV             R3, R0
418BC2:  MOV             R0, R5
418BC4:  ADD             R1, PC; " %d %s %d"
418BC6:  STR             R4, [SP,#0x90+var_90]
418BC8:  VMOV            R2, S0
418BCC:  BL              sub_5E6BC0
418BD0:  LDR.W           R0, =(gString_ptr - 0x418BD8)
418BD4:  ADD             R0, PC; gString_ptr
418BD6:  LDR             R1, [R0]; gString ; CKeyGen *
418BD8:  MOV             R0, R6; this
418BDA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418BDE:  MOV             R1, R0; unsigned __int16 *
418BE0:  LDR.W           R0, =(gGxtString_ptr - 0x418BE8)
418BE4:  ADD             R0, PC; gGxtString_ptr
418BE6:  LDR             R6, [R0]; gGxtString
418BE8:  MOV             R0, R6; unsigned __int16 *
418BEA:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418BEE:  MOV             R0, R6; this
418BF0:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418BF4:  LDR.W           R0, =(gGxtString2_ptr - 0x418BFC)
418BF8:  ADD             R0, PC; gGxtString2_ptr
418BFA:  B               loc_41907E
418BFC:  UXTH            R0, R4
418BFE:  CMP             R0, #0x51 ; 'Q'
418C00:  BHI.W           loc_418E96
418C04:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x418C0C)
418C08:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
418C0A:  LDR             R1, [R1]; CStats::StatTypesFloat ...
418C0C:  ADD.W           R0, R1, R0,LSL#2
418C10:  VLDR            S0, [R0]
418C14:  B               loc_418EAA
418C16:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x418C1E)
418C1A:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
418C1C:  LDR             R1, [R1]; CStats::StatTypesInt ...
418C1E:  ADD.W           R0, R1, R0,LSL#2
418C22:  VLDR            S0, [R0,#-0x1E0]
418C26:  VCVT.F32.S32    S0, S0
418C2A:  VCVT.F64.F32    D16, S0
418C2E:  LDR.W           R0, =(gString2_ptr - 0x418C3C)
418C32:  LDR.W           R1, =(a2fM - 0x418C3E); "%.2f m"
418C36:  MOVS            R6, #0
418C38:  ADD             R0, PC; gString2_ptr
418C3A:  ADD             R1, PC; "%.2f m"
418C3C:  LDR             R5, [R0]; gString2
418C3E:  MOVS            R0, #0
418C40:  VMOV            R2, R3, D16
418C44:  STR             R0, [SP,#0x90+var_40]
418C46:  MOV             R0, R5
418C48:  STRB            R6, [R5]
418C4A:  BL              sub_5E6BC0
418C4E:  LDR.W           R0, =(TheText_ptr - 0x418C5A)
418C52:  LDR.W           R1, =(gString_ptr - 0x418C5C)
418C56:  ADD             R0, PC; TheText_ptr
418C58:  ADD             R1, PC; gString_ptr
418C5A:  LDR             R0, [R0]; TheText ; this
418C5C:  LDR             R1, [R1]; gString ; CKeyGen *
418C5E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418C62:  MOV             R1, R0; unsigned __int16 *
418C64:  LDR.W           R0, =(gGxtString_ptr - 0x418C6C)
418C68:  ADD             R0, PC; gGxtString_ptr
418C6A:  LDR             R6, [R0]; gGxtString
418C6C:  MOV             R0, R6; unsigned __int16 *
418C6E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418C72:  MOV             R0, R6; this
418C74:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418C78:  LDR.W           R0, =(gGxtString2_ptr - 0x418C80)
418C7C:  ADD             R0, PC; gGxtString2_ptr
418C7E:  B               loc_41907E
418C80:  LDR.W           R0, =(gString2_ptr - 0x418C92)
418C84:  MOVS            R3, #0
418C86:  LDR.W           R1, =(TheText_ptr - 0x418C94)
418C8A:  LDR.W           R2, =(gString_ptr - 0x418C96)
418C8E:  ADD             R0, PC; gString2_ptr
418C90:  ADD             R1, PC; TheText_ptr
418C92:  ADD             R2, PC; gString_ptr
418C94:  LDR             R5, [R0]; gString2
418C96:  LDR             R0, [R1]; TheText ; this
418C98:  LDR             R1, [R2]; gString ; CKeyGen *
418C9A:  MOVS            R2, #0
418C9C:  STR             R2, [SP,#0x90+var_40]
418C9E:  STRB            R3, [R5]
418CA0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418CA4:  MOV             R1, R0; unsigned __int16 *
418CA6:  LDR.W           R0, =(gGxtString_ptr - 0x418CAE)
418CAA:  ADD             R0, PC; gGxtString_ptr
418CAC:  LDR             R6, [R0]; gGxtString
418CAE:  MOV             R0, R6; unsigned __int16 *
418CB0:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418CB4:  MOV             R0, R6; this
418CB6:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418CBA:  LDR.W           R0, =(gGxtString2_ptr - 0x418CC2)
418CBE:  ADD             R0, PC; gGxtString2_ptr
418CC0:  B               loc_41907E
418CC2:  LDR.W           R0, =(gString2_ptr - 0x418CD4)
418CC6:  MOVS            R3, #0
418CC8:  LDR.W           R1, =(TheText_ptr - 0x418CD6)
418CCC:  LDR.W           R2, =(gString_ptr - 0x418CD8)
418CD0:  ADD             R0, PC; gString2_ptr
418CD2:  ADD             R1, PC; TheText_ptr
418CD4:  ADD             R2, PC; gString_ptr
418CD6:  LDR             R5, [R0]; gString2
418CD8:  LDR             R0, [R1]; TheText ; this
418CDA:  LDR             R1, [R2]; gString ; CKeyGen *
418CDC:  MOVS            R2, #0
418CDE:  STR             R2, [SP,#0x90+var_40]
418CE0:  STRB            R3, [R5]
418CE2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418CE6:  MOV             R1, R0; unsigned __int16 *
418CE8:  LDR.W           R0, =(gGxtString_ptr - 0x418CF0)
418CEC:  ADD             R0, PC; gGxtString_ptr
418CEE:  LDR             R6, [R0]; gGxtString
418CF0:  MOV             R0, R6; unsigned __int16 *
418CF2:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418CF6:  MOV             R0, R6; this
418CF8:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418CFC:  LDR.W           R0, =(gGxtString2_ptr - 0x418D04)
418D00:  ADD             R0, PC; gGxtString2_ptr
418D02:  B               loc_41907E
418D04:  LDR.W           R0, =(gString2_ptr - 0x418D16)
418D08:  MOVS            R3, #0
418D0A:  LDR.W           R1, =(TheText_ptr - 0x418D18)
418D0E:  LDR.W           R2, =(gString_ptr - 0x418D1A)
418D12:  ADD             R0, PC; gString2_ptr
418D14:  ADD             R1, PC; TheText_ptr
418D16:  ADD             R2, PC; gString_ptr
418D18:  LDR             R5, [R0]; gString2
418D1A:  LDR             R0, [R1]; TheText ; this
418D1C:  LDR             R1, [R2]; gString ; CKeyGen *
418D1E:  MOVS            R2, #0
418D20:  STR             R2, [SP,#0x90+var_40]
418D22:  STRB            R3, [R5]
418D24:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418D28:  MOV             R1, R0; unsigned __int16 *
418D2A:  LDR.W           R0, =(gGxtString_ptr - 0x418D32)
418D2E:  ADD             R0, PC; gGxtString_ptr
418D30:  LDR             R6, [R0]; gGxtString
418D32:  MOV             R0, R6; unsigned __int16 *
418D34:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418D38:  MOV             R0, R6; this
418D3A:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418D3E:  LDR.W           R0, =(gGxtString2_ptr - 0x418D46)
418D42:  ADD             R0, PC; gGxtString2_ptr
418D44:  B               loc_41907E
418D46:  LDR.W           R0, =(gGxtString_ptr - 0x418D52)
418D4A:  LDR.W           R1, =(TheText_ptr - 0x418D54)
418D4E:  ADD             R0, PC; gGxtString_ptr
418D50:  ADD             R1, PC; TheText_ptr
418D52:  LDR             R2, [R0]; gGxtString
418D54:  LDR             R0, [R1]; TheText ; this
418D56:  ADD             R1, SP, #0x90+var_3C; CKeyGen *
418D58:  STRH.W          R11, [R2]
418D5C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418D60:  MOV             R1, R0
418D62:  LDR.W           R0, =(gGxtString2_ptr - 0x418D6A)
418D66:  ADD             R0, PC; gGxtString2_ptr
418D68:  B.W             loc_417D98
418D6C:  LDR.W           R0, =(gGxtString_ptr - 0x418D7A)
418D70:  MOVS            R3, #0
418D72:  LDR.W           R1, =(TheText_ptr - 0x418D7C)
418D76:  ADD             R0, PC; gGxtString_ptr
418D78:  ADD             R1, PC; TheText_ptr
418D7A:  LDR             R2, [R0]; gGxtString
418D7C:  LDR             R0, [R1]; TheText ; this
418D7E:  MOVS            R1, #0
418D80:  STR             R1, [SP,#0x90+var_40]
418D82:  ADD             R1, SP, #0x90+var_3C; CKeyGen *
418D84:  STRH            R3, [R2]
418D86:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418D8A:  MOV             R1, R0
418D8C:  LDR.W           R0, =(gGxtString2_ptr - 0x418D94)
418D90:  ADD             R0, PC; gGxtString2_ptr
418D92:  B               loc_419508
418D94:  LDR.W           R0, =(gString2_ptr - 0x418DA0)
418D98:  LDR.W           R1, =(aDD_2 - 0x418DA2); "%d:%d"
418D9C:  ADD             R0, PC; gString2_ptr
418D9E:  ADD             R1, PC; "%d:%d"
418DA0:  LDR             R0, [R0]; gString2
418DA2:  BL              sub_5E6BC0
418DA6:  LDR.W           R0, =(TheText_ptr - 0x418DB2)
418DAA:  LDR.W           R1, =(gString_ptr - 0x418DB4)
418DAE:  ADD             R0, PC; TheText_ptr
418DB0:  ADD             R1, PC; gString_ptr
418DB2:  LDR             R0, [R0]; TheText ; this
418DB4:  LDR             R1, [R1]; gString ; CKeyGen *
418DB6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418DBA:  MOV             R1, R0; unsigned __int16 *
418DBC:  LDR.W           R0, =(gGxtString_ptr - 0x418DC4)
418DC0:  ADD             R0, PC; gGxtString_ptr
418DC2:  LDR             R4, [R0]; gGxtString
418DC4:  MOV             R0, R4; unsigned __int16 *
418DC6:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418DCA:  MOV             R0, R4; this
418DCC:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418DD0:  LDR.W           R0, =(gString2_ptr - 0x418DDC)
418DD4:  LDR.W           R1, =(gGxtString2_ptr - 0x418DDE)
418DD8:  ADD             R0, PC; gString2_ptr
418DDA:  ADD             R1, PC; gGxtString2_ptr
418DDC:  B               loc_419008
418DDE:  LDR.W           R0, =(gString2_ptr - 0x418DEA)
418DE2:  LDR.W           R1, =(aDD_2 - 0x418DEC); "%d:%d"
418DE6:  ADD             R0, PC; gString2_ptr
418DE8:  ADD             R1, PC; "%d:%d"
418DEA:  LDR             R0, [R0]; gString2
418DEC:  BL              sub_5E6BC0
418DF0:  LDR.W           R0, =(TheText_ptr - 0x418DFC)
418DF4:  LDR.W           R1, =(gString_ptr - 0x418DFE)
418DF8:  ADD             R0, PC; TheText_ptr
418DFA:  ADD             R1, PC; gString_ptr
418DFC:  LDR             R0, [R0]; TheText ; this
418DFE:  LDR             R1, [R1]; gString ; CKeyGen *
418E00:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418E04:  MOV             R1, R0; unsigned __int16 *
418E06:  LDR.W           R0, =(gGxtString_ptr - 0x418E0E)
418E0A:  ADD             R0, PC; gGxtString_ptr
418E0C:  LDR             R4, [R0]; gGxtString
418E0E:  MOV             R0, R4; unsigned __int16 *
418E10:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418E14:  MOV             R0, R4; this
418E16:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418E1A:  LDR.W           R0, =(gString2_ptr - 0x418E26)
418E1E:  LDR.W           R1, =(gGxtString2_ptr - 0x418E28)
418E22:  ADD             R0, PC; gString2_ptr
418E24:  ADD             R1, PC; gGxtString2_ptr
418E26:  B               loc_419008
418E28:  LDR.W           R0, =(gString2_ptr - 0x418E36)
418E2C:  CMP             R3, #9
418E2E:  MOV.W           R1, #0
418E32:  ADD             R0, PC; gString2_ptr
418E34:  LDR             R0, [R0]; gString2
418E36:  STRB            R1, [R0]
418E38:  BGT.W           loc_418FC0
418E3C:  LDR.W           R0, =(gString2_ptr - 0x418E48)
418E40:  LDR.W           R1, =(aD0D - 0x418E4A); "%d:0%d"
418E44:  ADD             R0, PC; gString2_ptr
418E46:  ADD             R1, PC; "%d:0%d"
418E48:  B               loc_418FCC
418E4A:  MOVS            R0, #0x44 ; 'D'
418E4C:  UXTAB.W         R0, R0, R4
418E50:  CMP             R0, #0x51 ; 'Q'
418E52:  BHI.W           loc_419016
418E56:  LDR.W           R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x418E5E)
418E5A:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
418E5C:  LDR             R1, [R1]; CStats::StatTypesFloat ...
418E5E:  ADD.W           R0, R1, R0,LSL#2
418E62:  VLDR            S0, [R0]
418E66:  B               loc_41902C
418E68:  LDR.W           R0, =(gGxtString_ptr - 0x418E7A)
418E6C:  MOVS            R6, #0
418E6E:  LDR.W           R1, =(TheText_ptr - 0x418E7C)
418E72:  LDR.W           R2, =(gString_ptr - 0x418E7E)
418E76:  ADD             R0, PC; gGxtString_ptr
418E78:  ADD             R1, PC; TheText_ptr
418E7A:  ADD             R2, PC; gString_ptr
418E7C:  LDR             R3, [R0]; gGxtString
418E7E:  LDR             R0, [R1]; TheText ; this
418E80:  LDR             R1, [R2]; gString ; CKeyGen *
418E82:  MOVS            R2, #0
418E84:  STR             R2, [SP,#0x90+var_40]
418E86:  STRH            R6, [R3]
418E88:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418E8C:  MOV             R1, R0
418E8E:  LDR.W           R0, =(gGxtString2_ptr - 0x418E96)
418E92:  ADD             R0, PC; gGxtString2_ptr
418E94:  B               loc_419508
418E96:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x418E9E)
418E9A:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
418E9C:  LDR             R1, [R1]; CStats::StatTypesInt ...
418E9E:  ADD.W           R0, R1, R0,LSL#2
418EA2:  VLDR            S0, [R0,#-0x1E0]
418EA6:  VCVT.F32.S32    S0, S0
418EAA:  VLDR            S2, =0.3
418EAE:  MOVS            R6, #0
418EB0:  LDR.W           R0, =(gString2_ptr - 0x418EC0)
418EB4:  VDIV.F32        S0, S0, S2
418EB8:  LDR.W           R1, =(a2fFt - 0x418EC2); "%.2f ft"
418EBC:  ADD             R0, PC; gString2_ptr
418EBE:  ADD             R1, PC; "%.2f ft"
418EC0:  LDR             R5, [R0]; gString2
418EC2:  MOVS            R0, #0
418EC4:  STR             R0, [SP,#0x90+var_40]
418EC6:  MOV             R0, R5
418EC8:  STRB            R6, [R5]
418ECA:  VCVT.F64.F32    D16, S0
418ECE:  VMOV            R2, R3, D16
418ED2:  BL              sub_5E6BC0
418ED6:  LDR.W           R0, =(TheText_ptr - 0x418EE2)
418EDA:  LDR.W           R1, =(gString_ptr - 0x418EE4)
418EDE:  ADD             R0, PC; TheText_ptr
418EE0:  ADD             R1, PC; gString_ptr
418EE2:  LDR             R0, [R0]; TheText ; this
418EE4:  LDR             R1, [R1]; gString ; CKeyGen *
418EE6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418EEA:  MOV             R1, R0; unsigned __int16 *
418EEC:  LDR.W           R0, =(gGxtString_ptr - 0x418EF4)
418EF0:  ADD             R0, PC; gGxtString_ptr
418EF2:  LDR             R6, [R0]; gGxtString
418EF4:  MOV             R0, R6; unsigned __int16 *
418EF6:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418EFA:  MOV             R0, R6; this
418EFC:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418F00:  LDR.W           R0, =(gGxtString2_ptr - 0x418F08)
418F04:  ADD             R0, PC; gGxtString2_ptr
418F06:  B               loc_41907E
418F08:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x418F14)
418F0C:  VLDR            S2, =100.0
418F10:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
418F12:  LDR             R0, [R0]; CStats::StatTypesFloat ...
418F14:  VLDR            S4, [R0]
418F18:  VMUL.F32        S2, S4, S2
418F1C:  VDIV.F32        S0, S2, S0
418F20:  VLDR            S2, =100.0
418F24:  MOVS            R6, #0
418F26:  LDR.W           R0, =(gString2_ptr - 0x418F36)
418F2A:  VMIN.F32        D0, D0, D1
418F2E:  LDR.W           R1, =(a02f - 0x418F38); "%0.2f%%"
418F32:  ADD             R0, PC; gString2_ptr
418F34:  ADD             R1, PC; "%0.2f%%"
418F36:  LDR             R5, [R0]; gString2
418F38:  MOVS            R0, #0
418F3A:  STR             R0, [SP,#0x90+var_40]
418F3C:  VCVT.F64.F32    D16, S0
418F40:  MOV             R0, R5
418F42:  STRB            R6, [R5]
418F44:  VMOV            R2, R3, D16
418F48:  BL              sub_5E6BC0
418F4C:  LDR.W           R0, =(TheText_ptr - 0x418F58)
418F50:  LDR.W           R1, =(gString_ptr - 0x418F5A)
418F54:  ADD             R0, PC; TheText_ptr
418F56:  ADD             R1, PC; gString_ptr
418F58:  LDR             R0, [R0]; TheText ; this
418F5A:  LDR             R1, [R1]; gString ; CKeyGen *
418F5C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418F60:  MOV             R1, R0; unsigned __int16 *
418F62:  LDR.W           R0, =(gGxtString_ptr - 0x418F6A)
418F66:  ADD             R0, PC; gGxtString_ptr
418F68:  LDR             R6, [R0]; gGxtString
418F6A:  MOV             R0, R6; unsigned __int16 *
418F6C:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418F70:  MOV             R0, R6; this
418F72:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418F76:  LDR.W           R0, =(gGxtString2_ptr - 0x418F7E)
418F7A:  ADD             R0, PC; gGxtString2_ptr
418F7C:  B               loc_41907E
418F7E:  LDR.W           R0, =(gString2_ptr - 0x418F90)
418F82:  MOVS            R3, #0
418F84:  LDR.W           R1, =(TheText_ptr - 0x418F92)
418F88:  LDR.W           R2, =(gString_ptr - 0x418F94)
418F8C:  ADD             R0, PC; gString2_ptr
418F8E:  ADD             R1, PC; TheText_ptr
418F90:  ADD             R2, PC; gString_ptr
418F92:  LDR             R5, [R0]; gString2
418F94:  LDR             R0, [R1]; TheText ; this
418F96:  LDR             R1, [R2]; gString ; CKeyGen *
418F98:  MOVS            R2, #0
418F9A:  STR             R2, [SP,#0x90+var_40]
418F9C:  STRB            R3, [R5]
418F9E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418FA2:  MOV             R1, R0; unsigned __int16 *
418FA4:  LDR.W           R0, =(gGxtString_ptr - 0x418FAC)
418FA8:  ADD             R0, PC; gGxtString_ptr
418FAA:  LDR             R6, [R0]; gGxtString
418FAC:  MOV             R0, R6; unsigned __int16 *
418FAE:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418FB2:  MOV             R0, R6; this
418FB4:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418FB8:  LDR.W           R0, =(gGxtString2_ptr - 0x418FC0)
418FBC:  ADD             R0, PC; gGxtString2_ptr
418FBE:  B               loc_41907E
418FC0:  LDR.W           R0, =(gString2_ptr - 0x418FCC)
418FC4:  LDR.W           R1, =(aDD_2 - 0x418FCE); "%d:%d"
418FC8:  ADD             R0, PC; gString2_ptr
418FCA:  ADD             R1, PC; "%d:%d"
418FCC:  LDR             R0, [R0]; gString2
418FCE:  BL              sub_5E6BC0
418FD2:  LDR.W           R0, =(TheText_ptr - 0x418FDE)
418FD6:  LDR.W           R1, =(gString_ptr - 0x418FE0)
418FDA:  ADD             R0, PC; TheText_ptr
418FDC:  ADD             R1, PC; gString_ptr
418FDE:  LDR             R0, [R0]; TheText ; this
418FE0:  LDR             R1, [R1]; gString ; CKeyGen *
418FE2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
418FE6:  MOV             R1, R0; unsigned __int16 *
418FE8:  LDR.W           R0, =(gGxtString_ptr - 0x418FF0)
418FEC:  ADD             R0, PC; gGxtString_ptr
418FEE:  LDR             R4, [R0]; gGxtString
418FF0:  MOV             R0, R4; unsigned __int16 *
418FF2:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
418FF6:  MOV             R0, R4; this
418FF8:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
418FFC:  LDR.W           R0, =(gString2_ptr - 0x419008)
419000:  LDR.W           R1, =(gGxtString2_ptr - 0x41900A)
419004:  ADD             R0, PC; gString2_ptr
419006:  ADD             R1, PC; gGxtString2_ptr
419008:  LDR             R0, [R0]; gString2 ; char *
41900A:  LDR             R1, [R1]; gGxtString2 ; unsigned __int16 *
41900C:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
419010:  MOVS            R0, #0
419012:  STR             R0, [SP,#0x90+var_40]
419014:  B               loc_419086
419016:  LDR.W           R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x419020)
41901A:  UXTB            R0, R4
41901C:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
41901E:  LDR             R1, [R1]; CStats::StatTypesInt ...
419020:  ADD.W           R0, R1, R0,LSL#2
419024:  VLDR            S0, [R0,#-0xD0]
419028:  VCVT.F32.S32    S0, S0
41902C:  VCVT.S32.F32    S0, S0
419030:  LDR.W           R0, =(gString2_ptr - 0x41903A)
419034:  MOVS            R1, #0
419036:  ADD             R0, PC; gString2_ptr
419038:  LDR             R5, [R0]; gString2
41903A:  MOVS            R0, #0
41903C:  STR             R0, [SP,#0x90+var_40]
41903E:  VMOV            R2, S0
419042:  STRB            R1, [R5]
419044:  ADR.W           R1, dword_4196F0
419048:  MOV             R0, R5
41904A:  BL              sub_5E6BC0
41904E:  LDR.W           R0, =(TheText_ptr - 0x41905A)
419052:  LDR.W           R1, =(gString_ptr - 0x41905C)
419056:  ADD             R0, PC; TheText_ptr
419058:  ADD             R1, PC; gString_ptr
41905A:  LDR             R0, [R0]; TheText ; this
41905C:  LDR             R1, [R1]; gString ; CKeyGen *
41905E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419062:  MOV             R1, R0; unsigned __int16 *
419064:  LDR.W           R0, =(gGxtString_ptr - 0x41906C)
419068:  ADD             R0, PC; gGxtString_ptr
41906A:  LDR             R6, [R0]; gGxtString
41906C:  MOV             R0, R6; unsigned __int16 *
41906E:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
419072:  MOV             R0, R6; this
419074:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
419078:  LDR.W           R0, =(gGxtString2_ptr - 0x419080)
41907C:  ADD             R0, PC; gGxtString2_ptr
41907E:  LDR             R1, [R0]; gGxtString2 ; unsigned __int16 *
419080:  MOV             R0, R5; char *
419082:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
419086:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x419090)
41908A:  LDR             R1, [SP,#0x90+var_34]
41908C:  ADD             R0, PC; __stack_chk_guard_ptr
41908E:  LDR             R0, [R0]; __stack_chk_guard
419090:  LDR             R0, [R0]
419092:  SUBS            R0, R0, R1
419094:  ITTTT EQ
419096:  LDREQ           R0, [SP,#0x90+var_40]
419098:  ADDEQ           SP, SP, #0x60 ; '`'
41909A:  VPOPEQ          {D8-D9}
41909E:  ADDEQ           SP, SP, #4
4190A0:  ITT EQ
4190A2:  POPEQ.W         {R8-R11}
4190A6:  POPEQ           {R4-R7,PC}
4190A8:  BLX             __stack_chk_fail
4190AC:  LDR.W           R0, =(gGxtString_ptr - 0x4190BA)
4190B0:  MOVS            R3, #0
4190B2:  LDR.W           R1, =(TheText_ptr - 0x4190BC)
4190B6:  ADD             R0, PC; gGxtString_ptr
4190B8:  ADD             R1, PC; TheText_ptr
4190BA:  LDR             R2, [R0]; gGxtString
4190BC:  LDR             R0, [R1]; TheText ; this
4190BE:  MOVS            R1, #0
4190C0:  STR             R1, [SP,#0x90+var_40]
4190C2:  ADR.W           R1, aStPr01; "ST_PR01"
4190C6:  STRH            R3, [R2]
4190C8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4190CC:  MOV             R1, R0
4190CE:  LDR.W           R0, =(gGxtString2_ptr - 0x4190D6)
4190D2:  ADD             R0, PC; gGxtString2_ptr
4190D4:  B               loc_419508
4190D6:  LDR.W           R0, =(gGxtString_ptr - 0x4190E4)
4190DA:  MOVS            R6, #0
4190DC:  LDR.W           R2, =(TheText_ptr - 0x4190EA)
4190E0:  ADD             R0, PC; gGxtString_ptr
4190E2:  LDR.W           R1, =(aDbpins_0 - 0x4190EE); "DBPINS"
4190E6:  ADD             R2, PC; TheText_ptr
4190E8:  LDR             R3, [R0]; gGxtString
4190EA:  ADD             R1, PC; "DBPINS"
4190EC:  LDR             R0, [R2]; TheText ; this
4190EE:  MOVS            R2, #0
4190F0:  STR             R2, [SP,#0x90+var_40]
4190F2:  STRH            R6, [R3]
4190F4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4190F8:  MOV             R1, R0
4190FA:  LDR.W           R0, =(gGxtString2_ptr - 0x419102)
4190FE:  ADD             R0, PC; gGxtString2_ptr
419100:  B               loc_419508
419102:  LDR.W           R0, =(gGxtString_ptr - 0x419110)
419106:  MOVS            R6, #0
419108:  LDR.W           R2, =(TheText_ptr - 0x419116)
41910C:  ADD             R0, PC; gGxtString_ptr
41910E:  LDR.W           R1, =(aQuinst_0 - 0x41911A); "QUINST"
419112:  ADD             R2, PC; TheText_ptr
419114:  LDR             R3, [R0]; gGxtString
419116:  ADD             R1, PC; "QUINST"
419118:  LDR             R0, [R2]; TheText ; this
41911A:  MOVS            R2, #0
41911C:  STR             R2, [SP,#0x90+var_40]
41911E:  STRH            R6, [R3]
419120:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419124:  MOV             R1, R0
419126:  LDR.W           R0, =(gGxtString2_ptr - 0x41912E)
41912A:  ADD             R0, PC; gGxtString2_ptr
41912C:  B               loc_419508
41912E:  LDR.W           R0, =(gGxtString_ptr - 0x41913C)
419132:  MOVS            R6, #0
419134:  LDR.W           R2, =(TheText_ptr - 0x419142)
419138:  ADD             R0, PC; gGxtString_ptr
41913A:  LDR.W           R1, =(aNostuc_0 - 0x419146); "NOSTUC"
41913E:  ADD             R2, PC; TheText_ptr
419140:  LDR             R3, [R0]; gGxtString
419142:  ADD             R1, PC; "NOSTUC"
419144:  LDR             R0, [R2]; TheText ; this
419146:  MOVS            R2, #0
419148:  STR             R2, [SP,#0x90+var_40]
41914A:  STRH            R6, [R3]
41914C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419150:  MOV             R1, R0
419152:  LDR.W           R0, =(gGxtString2_ptr - 0x41915A)
419156:  ADD             R0, PC; gGxtString2_ptr
419158:  B               loc_419508
41915A:  LDR.W           R0, =(gGxtString_ptr - 0x419168)
41915E:  MOVS            R6, #0
419160:  LDR.W           R2, =(TheText_ptr - 0x41916E)
419164:  ADD             R0, PC; gGxtString_ptr
419166:  LDR.W           R1, =(aPrinst_0 - 0x419172); "PRINST"
41916A:  ADD             R2, PC; TheText_ptr
41916C:  LDR             R3, [R0]; gGxtString
41916E:  ADD             R1, PC; "PRINST"
419170:  LDR             R0, [R2]; TheText ; this
419172:  MOVS            R2, #0
419174:  STR             R2, [SP,#0x90+var_40]
419176:  STRH            R6, [R3]
419178:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41917C:  MOV             R1, R0
41917E:  LDR.W           R0, =(gGxtString2_ptr - 0x419186)
419182:  ADD             R0, PC; gGxtString2_ptr
419184:  B               loc_419508
419186:  LDR.W           R0, =(gGxtString_ptr - 0x419194)
41918A:  MOVS            R6, #0
41918C:  LDR.W           R2, =(TheText_ptr - 0x41919A)
419190:  ADD             R0, PC; gGxtString_ptr
419192:  LDR.W           R1, =(aTrinst_0 - 0x41919E); "TRINST"
419196:  ADD             R2, PC; TheText_ptr
419198:  LDR             R3, [R0]; gGxtString
41919A:  ADD             R1, PC; "TRINST"
41919C:  LDR             R0, [R2]; TheText ; this
41919E:  MOVS            R2, #0
4191A0:  STR             R2, [SP,#0x90+var_40]
4191A2:  STRH            R6, [R3]
4191A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4191A8:  MOV             R1, R0
4191AA:  LDR.W           R0, =(gGxtString2_ptr - 0x4191B2)
4191AE:  ADD             R0, PC; gGxtString2_ptr
4191B0:  B               loc_419508
4191B2:  LDR.W           R0, =(gGxtString_ptr - 0x4191C0)
4191B6:  MOVS            R6, #0
4191B8:  LDR.W           R2, =(TheText_ptr - 0x4191C6)
4191BC:  ADD             R0, PC; gGxtString_ptr
4191BE:  LDR.W           R1, =(aPquins_0 - 0x4191CA); "PQUINS"
4191C2:  ADD             R2, PC; TheText_ptr
4191C4:  LDR             R3, [R0]; gGxtString
4191C6:  ADD             R1, PC; "PQUINS"
4191C8:  LDR             R0, [R2]; TheText ; this
4191CA:  MOVS            R2, #0
4191CC:  STR             R2, [SP,#0x90+var_40]
4191CE:  STRH            R6, [R3]
4191D0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4191D4:  MOV             R1, R0
4191D6:  LDR.W           R0, =(gGxtString2_ptr - 0x4191DE)
4191DA:  ADD             R0, PC; gGxtString2_ptr
4191DC:  B               loc_419508
4191DE:  LDR.W           R0, =(gGxtString_ptr - 0x4191EC)
4191E2:  MOVS            R6, #0
4191E4:  LDR.W           R2, =(TheText_ptr - 0x4191F2)
4191E8:  ADD             R0, PC; gGxtString_ptr
4191EA:  LDR.W           R1, =(aDbinst_0 - 0x4191F6); "DBINST"
4191EE:  ADD             R2, PC; TheText_ptr
4191F0:  LDR             R3, [R0]; gGxtString
4191F2:  ADD             R1, PC; "DBINST"
4191F4:  LDR             R0, [R2]; TheText ; this
4191F6:  MOVS            R2, #0
4191F8:  STR             R2, [SP,#0x90+var_40]
4191FA:  STRH            R6, [R3]
4191FC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419200:  MOV             R1, R0
419202:  LDR.W           R0, =(gGxtString2_ptr - 0x41920A)
419206:  ADD             R0, PC; gGxtString2_ptr
419208:  B               loc_419508
41920A:  LDR.W           R0, =(gGxtString_ptr - 0x419218)
41920E:  MOVS            R6, #0
419210:  LDR.W           R2, =(TheText_ptr - 0x41921E)
419214:  ADD             R0, PC; gGxtString_ptr
419216:  LDR.W           R1, =(aInstun_0 - 0x419222); "INSTUN"
41921A:  ADD             R2, PC; TheText_ptr
41921C:  LDR             R3, [R0]; gGxtString
41921E:  ADD             R1, PC; "INSTUN"
419220:  LDR             R0, [R2]; TheText ; this
419222:  MOVS            R2, #0
419224:  STR             R2, [SP,#0x90+var_40]
419226:  STRH            R6, [R3]
419228:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
41922C:  MOV             R1, R0
41922E:  LDR.W           R0, =(gGxtString2_ptr - 0x419236)
419232:  ADD             R0, PC; gGxtString2_ptr
419234:  B               loc_419508
419236:  LDR.W           R0, =(gGxtString_ptr - 0x419244)
41923A:  MOVS            R6, #0
41923C:  LDR.W           R2, =(TheText_ptr - 0x41924A)
419240:  ADD             R0, PC; gGxtString_ptr
419242:  LDR.W           R1, =(aPrtrst_0 - 0x41924E); "PRTRST"
419246:  ADD             R2, PC; TheText_ptr
419248:  LDR             R3, [R0]; gGxtString
41924A:  ADD             R1, PC; "PRTRST"
41924C:  LDR             R0, [R2]; TheText ; this
41924E:  MOVS            R2, #0
419250:  STR             R2, [SP,#0x90+var_40]
419252:  STRH            R6, [R3]
419254:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419258:  MOV             R1, R0
41925A:  LDR.W           R0, =(gGxtString2_ptr - 0x419262)
41925E:  ADD             R0, PC; gGxtString2_ptr
419260:  B               loc_419508
