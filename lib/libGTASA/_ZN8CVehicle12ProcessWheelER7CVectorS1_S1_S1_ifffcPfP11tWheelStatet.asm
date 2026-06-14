; =========================================================
; Game Engine Function: _ZN8CVehicle12ProcessWheelER7CVectorS1_S1_S1_ifffcPfP11tWheelStatet
; Address            : 0x582C90 - 0x58329A
; =========================================================

582C90:  PUSH            {R4-R7,LR}
582C92:  ADD             R7, SP, #0xC
582C94:  PUSH.W          {R8,R9,R11}
582C98:  VPUSH           {D8-D15}
582C9C:  SUB             SP, SP, #0x28
582C9E:  VLDR            S22, [R7,#arg_C]
582CA2:  MOV             R6, R1
582CA4:  VLDR            S18, [R7,#arg_8]
582CA8:  MOVS            R1, #0
582CAA:  VCMP.F32        S22, #0.0
582CAE:  VLDR            S0, [R6]
582CB2:  VMRS            APSR_nzcv, FPSCR
582CB6:  VCMP.F32        S18, #0.0
582CBA:  VLDR            S6, [R3]
582CBE:  MOV             R9, R0
582CC0:  VLDR            S2, [R6,#4]
582CC4:  MOV             R5, R2
582CC6:  VLDR            S8, [R3,#4]
582CCA:  VMUL.F32        S6, S6, S0
582CCE:  VLDR            S4, [R6,#8]
582CD2:  MOV.W           R12, #0
582CD6:  VLDR            S10, [R3,#8]
582CDA:  VMUL.F32        S2, S8, S2
582CDE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x582CEE)
582CE2:  VMUL.F32        S0, S10, S4
582CE6:  LDR.W           R2, =(byte_A1305C - 0x582CF8)
582CEA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
582CEC:  VLDR            S8, [R7,#arg_10]
582CF0:  LDR.W           R4, =(byte_A1305B - 0x582CFC)
582CF4:  ADD             R2, PC; byte_A1305C
582CF6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
582CF8:  ADD             R4, PC; byte_A1305B
582CFA:  LDR.W           R8, [R7,#arg_1C]
582CFE:  VADD.F32        S2, S6, S2
582D02:  IT EQ
582D04:  MOVEQ           R1, #1
582D06:  VMRS            APSR_nzcv, FPSCR
582D0A:  VLDR            S4, [R0]
582D0E:  MOV.W           R0, #0
582D12:  VCMP.F32        S22, #0.0
582D16:  VMUL.F32        S16, S4, S8
582D1A:  IT NE
582D1C:  MOVNE           R0, #1
582D1E:  VMRS            APSR_nzcv, FPSCR
582D22:  AND.W           R0, R0, R1
582D26:  MOV.W           R1, #0
582D2A:  STRB            R0, [R2]
582D2C:  IT NE
582D2E:  MOVNE           R1, #1
582D30:  STRB            R1, [R4]
582D32:  LDR.W           R2, [R8]
582D36:  CBZ             R2, loc_582D88
582D38:  LDR.W           R1, =(byte_A1305A - 0x582D44)
582D3C:  MOVS            R4, #1
582D3E:  CMP             R2, #1
582D40:  ADD             R1, PC; byte_A1305A
582D42:  STRB            R4, [R1]
582D44:  LDR.W           R1, [R9,#0x388]
582D48:  VLDR            S4, [R1,#0xA4]
582D4C:  VMUL.F32        S16, S16, S4
582D50:  BNE             loc_582D88
582D52:  LDRB.W          R1, [R9,#0x3A]
582D56:  MOVS            R2, #8
582D58:  ORR.W           R1, R2, R1,LSR#3
582D5C:  CMP             R1, #8
582D5E:  BNE             loc_582D88
582D60:  ADD.W           R2, R9, #0x4A0
582D64:  LDR.W           R1, =(WS_ALREADY_SPINNING_LOSS_ptr - 0x582D74)
582D68:  VMOV.F32        S8, #1.0
582D6C:  VLDR            S4, [R2]
582D70:  ADD             R1, PC; WS_ALREADY_SPINNING_LOSS_ptr
582D72:  VABS.F32        S4, S4
582D76:  LDR             R1, [R1]; WS_ALREADY_SPINNING_LOSS
582D78:  VLDR            S6, [R1]
582D7C:  VMUL.F32        S4, S4, S6
582D80:  VSUB.F32        S4, S8, S4
582D84:  VMUL.F32        S16, S16, S4
582D88:  STR.W           R12, [R8]
582D8C:  VADD.F32        S20, S2, S0
582D90:  VLDR            S0, [R5]
582D94:  VLDR            S6, [R3]
582D98:  VLDR            S2, [R5,#4]
582D9C:  VLDR            S8, [R3,#4]
582DA0:  VMUL.F32        S0, S6, S0
582DA4:  VLDR            S4, [R5,#8]
582DA8:  VMUL.F32        S2, S8, S2
582DAC:  VLDR            S10, [R3,#8]
582DB0:  LDR             R4, [R7,#arg_4]
582DB2:  VMUL.F32        S4, S10, S4
582DB6:  VADD.F32        S0, S0, S2
582DBA:  VADD.F32        S0, S0, S4
582DBE:  VCMP.F32        S0, #0.0
582DC2:  VMRS            APSR_nzcv, FPSCR
582DC6:  BEQ             loc_582E4A
582DC8:  VMOV            S2, R4
582DCC:  LDR             R1, [R7,#arg_20]
582DCE:  VNEG.F32        S0, S0
582DD2:  VCVT.F32.S32    S2, S2
582DD6:  CMP             R1, #1
582DD8:  VDIV.F32        S24, S0, S2
582DDC:  BNE             loc_582E2A
582DDE:  LDR.W           R0, =(fBurstSpeedMax_ptr - 0x582DEA)
582DE2:  LDR.W           R1, =(fBurstTyreMod_ptr - 0x582DEC)
582DE6:  ADD             R0, PC; fBurstSpeedMax_ptr
582DE8:  ADD             R1, PC; fBurstTyreMod_ptr
582DEA:  LDR             R0, [R0]; fBurstSpeedMax
582DEC:  LDR             R1, [R1]; fBurstTyreMod
582DEE:  VLDR            S26, [R0]
582DF2:  VLDR            S28, [R1]
582DF6:  BLX             rand
582DFA:  VMOV            S0, R0
582DFE:  VLDR            S2, =4.6566e-10
582E02:  VADD.F32        S4, S28, S28
582E06:  LDR.W           R0, =(byte_A1305C - 0x582E12)
582E0A:  VCVT.F32.S32    S0, S0
582E0E:  ADD             R0, PC; byte_A1305C
582E10:  LDRB            R0, [R0]
582E12:  VMUL.F32        S0, S0, S2
582E16:  VMIN.F32        D1, D10, D13
582E1A:  VMUL.F32        S0, S4, S0
582E1E:  VSUB.F32        S0, S0, S28
582E22:  VMUL.F32        S0, S2, S0
582E26:  VADD.F32        S24, S24, S0
582E2A:  CBZ             R0, loc_582E52
582E2C:  VCMPE.F32       S24, #0.0
582E30:  VMRS            APSR_nzcv, FPSCR
582E34:  BLE             loc_582EBC
582E36:  VCMPE.F32       S24, S16
582E3A:  VMRS            APSR_nzcv, FPSCR
582E3E:  ITE GT
582E40:  VMOVGT.F32      S0, S16
582E44:  VMOVLE.F32      S0, S24
582E48:  B               loc_582F66
582E4A:  VLDR            S24, =0.0
582E4E:  CMP             R0, #0
582E50:  BNE             loc_582E2C
582E52:  VCMP.F32        S20, #0.0
582E56:  VMRS            APSR_nzcv, FPSCR
582E5A:  BEQ             loc_582ED0
582E5C:  VMOV            S0, R4
582E60:  LDR.W           R1, =(byte_A1305B - 0x582E70)
582E64:  VNEG.F32        S2, S20
582E68:  VCVT.F32.S32    S0, S0
582E6C:  ADD             R1, PC; byte_A1305B
582E6E:  LDRB            R1, [R1]
582E70:  CMP             R1, #0
582E72:  BNE             loc_582F36
582E74:  ADD.W           R1, R9, #0x4A0
582E78:  VLDR            S6, =0.01
582E7C:  VLDR            S4, [R1]
582E80:  VABS.F32        S4, S4
582E84:  VCMPE.F32       S4, S6
582E88:  VMRS            APSR_nzcv, FPSCR
582E8C:  BGE             loc_582F36
582E8E:  LDR.W           R1, [R9,#0x5A0]
582E92:  CMP             R1, #9
582E94:  BNE             loc_582EDA
582E96:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x582EA2)
582E9A:  LDR.W           R2, [R9,#0x388]
582E9E:  ADD             R1, PC; mod_HandlingManager_ptr
582EA0:  VLDR            S4, =200.0
582EA4:  VLDR            S8, =0.6
582EA8:  LDR             R1, [R1]; mod_HandlingManager
582EAA:  VLDR            S6, [R2,#4]
582EAE:  VLDR            S10, [R1,#4]
582EB2:  VADD.F32        S4, S6, S4
582EB6:  VMUL.F32        S6, S10, S8
582EBA:  B               loc_582F32
582EBC:  VNEG.F32        S0, S16
582EC0:  VCMPE.F32       S24, S0
582EC4:  VMRS            APSR_nzcv, FPSCR
582EC8:  IT GE
582ECA:  VMOVGE.F32      S0, S24
582ECE:  B               loc_582F66
582ED0:  VLDR            S18, =0.0
582ED4:  VMOV.F32        S0, S24
582ED8:  B               loc_582F66
582EDA:  LDR.W           R1, [R9,#0x5A4]
582EDE:  CMP             R1, #4
582EE0:  BNE             loc_582EE8
582EE2:  VLDR            S22, =0.0
582EE6:  B               loc_582F36
582EE8:  LDR.W           R1, [R9,#0x388]
582EEC:  VLDR            S6, =500.0
582EF0:  VLDR            S4, [R1,#4]
582EF4:  VCMPE.F32       S4, S6
582EF8:  VMRS            APSR_nzcv, FPSCR
582EFC:  BGE             loc_582F14
582EFE:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x582F0A)
582F02:  VLDR            S6, =0.1
582F06:  ADD             R1, PC; mod_HandlingManager_ptr
582F08:  LDR             R1, [R1]; mod_HandlingManager
582F0A:  VLDR            S8, [R1,#4]
582F0E:  VMUL.F32        S6, S8, S6
582F12:  B               loc_582F32
582F14:  LDR             R1, =(mod_HandlingManager_ptr - 0x582F1E)
582F16:  LDRH.W          R2, [R9,#0x26]
582F1A:  ADD             R1, PC; mod_HandlingManager_ptr
582F1C:  LDR             R1, [R1]; mod_HandlingManager
582F1E:  VLDR            S6, [R1,#4]
582F22:  MOVW            R1, #0x1B9
582F26:  CMP             R2, R1
582F28:  ITT EQ
582F2A:  VLDREQ          S8, =0.2
582F2E:  VMULEQ.F32      S6, S6, S8
582F32:  VDIV.F32        S22, S6, S4
582F36:  VDIV.F32        S2, S2, S0
582F3A:  VCMPE.F32       S22, S16
582F3E:  VMRS            APSR_nzcv, FPSCR
582F42:  BLE.W           loc_583264
582F46:  VABS.F32        S0, S20
582F4A:  VLDR            S4, =0.005
582F4E:  VCMPE.F32       S0, S4
582F52:  VMRS            APSR_nzcv, FPSCR
582F56:  ITT GT
582F58:  MOVGT           R1, #3
582F5A:  STRGT.W         R1, [R8]
582F5E:  VMOV.F32        S0, S24
582F62:  VMOV.F32        S18, S2
582F66:  VMUL.F32        S2, S18, S18
582F6A:  VMUL.F32        S4, S0, S0
582F6E:  VMUL.F32        S6, S16, S16
582F72:  VADD.F32        S2, S4, S2
582F76:  VCMPE.F32       S2, S6
582F7A:  VMRS            APSR_nzcv, FPSCR
582F7E:  BLE             loc_583032
582F80:  LDR.W           R1, [R8]
582F84:  CMP             R1, #3
582F86:  BNE             loc_582F8C
582F88:  MOVS            R1, #3
582F8A:  B               loc_582FD0
582F8C:  LDR             R1, =(WS_TRAC_FRAC_LIMIT_ptr - 0x582F96)
582F8E:  VLDR            S6, =0.15
582F92:  ADD             R1, PC; WS_TRAC_FRAC_LIMIT_ptr
582F94:  VCMPE.F32       S20, S6
582F98:  LDR             R1, [R1]; WS_TRAC_FRAC_LIMIT
582F9A:  VMRS            APSR_nzcv, FPSCR
582F9E:  VLDR            S4, [R1]
582FA2:  BLE             loc_582FB2
582FA4:  LDR             R1, [R7,#arg_14]
582FA6:  ORR.W           R1, R1, #2
582FAA:  CMP             R1, #2
582FAC:  IT EQ
582FAE:  VADDEQ.F32      S4, S4, S4
582FB2:  CBZ             R0, loc_582FCA
582FB4:  VMUL.F32        S4, S16, S4
582FB8:  VABS.F32        S6, S18
582FBC:  VCMPE.F32       S6, S4
582FC0:  VMRS            APSR_nzcv, FPSCR
582FC4:  BLE             loc_582FCA
582FC6:  MOVS            R1, #1
582FC8:  B               loc_582FCC
582FCA:  MOVS            R1, #2
582FCC:  STR.W           R1, [R8]
582FD0:  LDR             R2, =(byte_A1305A - 0x582FD6)
582FD2:  ADD             R2, PC; byte_A1305A
582FD4:  LDRB            R2, [R2]
582FD6:  CBZ             R2, loc_582FDE
582FD8:  VMOV.F32        S4, #1.0
582FDC:  B               loc_58301E
582FDE:  LDR.W           R2, [R9,#0x388]
582FE2:  CMP             R1, #1
582FE4:  VLDR            S4, [R2,#0xA4]
582FE8:  BNE             loc_58301E
582FEA:  LDRB.W          R1, [R9,#0x3A]
582FEE:  MOVS            R2, #8
582FF0:  ORR.W           R1, R2, R1,LSR#3
582FF4:  CMP             R1, #8
582FF6:  BNE             loc_58301E
582FF8:  ADD.W           R2, R9, #0x4A0
582FFC:  LDR             R1, =(WS_ALREADY_SPINNING_LOSS_ptr - 0x58300A)
582FFE:  VMOV.F32        S10, #1.0
583002:  VLDR            S6, [R2]
583006:  ADD             R1, PC; WS_ALREADY_SPINNING_LOSS_ptr
583008:  VABS.F32        S6, S6
58300C:  LDR             R1, [R1]; WS_ALREADY_SPINNING_LOSS
58300E:  VLDR            S8, [R1]
583012:  VMUL.F32        S6, S6, S8
583016:  VSUB.F32        S6, S10, S6
58301A:  VMUL.F32        S4, S4, S6
58301E:  VSQRT.F32       S2, S2
583022:  VDIV.F32        S2, S16, S2
583026:  VMUL.F32        S2, S2, S4
58302A:  VMUL.F32        S0, S0, S2
58302E:  VMUL.F32        S18, S18, S2
583032:  VCMP.F32        S18, #0.0
583036:  MOVS            R2, #0
583038:  VMRS            APSR_nzcv, FPSCR
58303C:  VCMP.F32        S0, #0.0
583040:  MOV.W           R1, #0
583044:  IT NE
583046:  MOVNE           R2, #1
583048:  VMRS            APSR_nzcv, FPSCR
58304C:  IT NE
58304E:  MOVNE           R1, #1
583050:  ORRS            R1, R2
583052:  BEQ.W           loc_583258
583056:  VLDR            S10, [R5,#4]
58305A:  VLDR            S12, [R5,#8]
58305E:  VLDR            S2, [R6]
583062:  VMUL.F32        S10, S0, S10
583066:  VLDR            S4, [R6,#4]
58306A:  VMUL.F32        S12, S0, S12
58306E:  VLDR            S6, [R6,#8]
583072:  VMUL.F32        S3, S18, S2
583076:  VLDR            S8, [R5]
58307A:  VMUL.F32        S1, S18, S4
58307E:  VMUL.F32        S14, S18, S6
583082:  LDR.W           R1, [R9,#0x388]
583086:  VMUL.F32        S0, S0, S8
58308A:  VLDR            S8, [R1,#0xC4]
58308E:  VCMPE.F32       S8, #0.0
583092:  VADD.F32        S20, S10, S1
583096:  VMRS            APSR_nzcv, FPSCR
58309A:  VADD.F32        S16, S12, S14
58309E:  VADD.F32        S0, S0, S3
5830A2:  BLE             loc_5830DE
5830A4:  LDR             R1, =(byte_A1305B - 0x5830AA)
5830A6:  ADD             R1, PC; byte_A1305B
5830A8:  LDRB            R1, [R1]
5830AA:  CBNZ            R1, loc_5830B6
5830AC:  CBZ             R0, loc_5830DE
5830AE:  VMOV.F32        S10, #0.5
5830B2:  VMUL.F32        S8, S8, S10
5830B6:  VMUL.F32        S6, S6, S8
5830BA:  MOVS            R0, #1
5830BC:  VMUL.F32        S4, S4, S8
5830C0:  VMUL.F32        S2, S2, S8
5830C4:  VMUL.F32        S6, S18, S6
5830C8:  VMUL.F32        S4, S18, S4
5830CC:  VMUL.F32        S8, S18, S2
5830D0:  VSUB.F32        S2, S16, S6
5830D4:  VSUB.F32        S6, S20, S4
5830D8:  VSUB.F32        S4, S0, S8
5830DC:  B               loc_5830EC
5830DE:  MOVS            R0, #0
5830E0:  VMOV.F32        S4, S0
5830E4:  VMOV.F32        S6, S20
5830E8:  VMOV.F32        S2, S16
5830EC:  VMUL.F32        S8, S20, S20
5830F0:  CMP             R0, #0
5830F2:  VMUL.F32        S10, S0, S0
5830F6:  VSTR            S6, [SP,#0x80+var_60]
5830FA:  VMUL.F32        S12, S16, S16
5830FE:  VSTR            S4, [SP,#0x80+var_64]
583102:  VSTR            S2, [SP,#0x80+var_5C]
583106:  VADD.F32        S8, S10, S8
58310A:  VADD.F32        S8, S8, S12
58310E:  VSQRT.F32       S22, S8
583112:  VMOV.F32        S18, S22
583116:  BEQ             loc_583130
583118:  VMUL.F32        S8, S6, S6
58311C:  VMUL.F32        S10, S4, S4
583120:  VMUL.F32        S12, S2, S2
583124:  VADD.F32        S8, S10, S8
583128:  VADD.F32        S8, S8, S12
58312C:  VSQRT.F32       S18, S8
583130:  VCMPE.F32       S22, #0.0
583134:  VMRS            APSR_nzcv, FPSCR
583138:  BLE             loc_583150
58313A:  VMOV.F32        S8, #1.0
58313E:  VDIV.F32        S8, S8, S22
583142:  VMUL.F32        S16, S16, S8
583146:  VMUL.F32        S20, S20, S8
58314A:  VMUL.F32        S24, S0, S8
58314E:  B               loc_583154
583150:  VMOV.F32        S24, #1.0
583154:  LDR             R5, [R7,#arg_0]
583156:  CBZ             R0, loc_583184
583158:  VCMPE.F32       S18, #0.0
58315C:  VMRS            APSR_nzcv, FPSCR
583160:  BLE             loc_5831B0
583162:  VMOV.F32        S0, #1.0
583166:  VDIV.F32        S0, S0, S18
58316A:  VMUL.F32        S6, S0, S6
58316E:  VMUL.F32        S4, S0, S4
583172:  VMUL.F32        S0, S0, S2
583176:  VSTR            S6, [SP,#0x80+var_60]
58317A:  VSTR            S4, [SP,#0x80+var_64]
58317E:  VSTR            S0, [SP,#0x80+var_5C]
583182:  B               loc_5831B6
583184:  VSTR            S20, [SP,#0x80+var_60]
583188:  VSTR            S24, [SP,#0x80+var_64]
58318C:  VSTR            S16, [SP,#0x80+var_5C]
583190:  B               loc_5831B6
583192:  ALIGN 4
583194:  DCFS 4.6566e-10
583198:  DCFS 0.0
58319C:  DCFS 0.01
5831A0:  DCFS 200.0
5831A4:  DCFS 0.6
5831A8:  DCFS 500.0
5831AC:  DCFS 0.1
5831B0:  MOV.W           R0, #0x3F800000
5831B4:  STR             R0, [SP,#0x80+var_64]
5831B6:  ADD             R0, SP, #0x80+var_70; CVector *
5831B8:  ADD             R2, SP, #0x80+var_64
5831BA:  MOV             R1, R5; CVector *
5831BC:  VLDR            S26, [R9,#0x90]
5831C0:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5831C4:  VMUL.F32        S0, S22, S26
5831C8:  MOV             R0, R9
5831CA:  VLDR            S22, [SP,#0x80+var_68]
5831CE:  VLDR            S28, [SP,#0x80+var_64]
5831D2:  VLDR            S30, [SP,#0x80+var_60]
5831D6:  VLDR            S17, [SP,#0x80+var_5C]
5831DA:  VMUL.F32        S2, S24, S0
5831DE:  VLDR            S24, [R9,#0x94]
5831E2:  VMUL.F32        S4, S20, S0
5831E6:  VLDR            S20, [SP,#0x80+var_6C]
5831EA:  VMUL.F32        S0, S16, S0
5831EE:  VLDR            S16, [SP,#0x80+var_70]
5831F2:  VMOV            R1, S2
5831F6:  VMOV            R2, S4
5831FA:  VMOV            R3, S0
5831FE:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
583202:  VMUL.F32        S0, S20, S20
583206:  LDRD.W          R0, R6, [R5]
58320A:  VMUL.F32        S2, S16, S16
58320E:  LDR             R5, [R5,#8]
583210:  VMUL.F32        S4, S22, S22
583214:  STRD.W          R0, R6, [SP,#0x80+var_80]
583218:  MOV             R0, R9
58321A:  STR             R5, [SP,#0x80+var_78]
58321C:  VADD.F32        S0, S2, S0
583220:  VMOV.F32        S2, #1.0
583224:  VADD.F32        S0, S0, S4
583228:  VDIV.F32        S4, S2, S26
58322C:  VDIV.F32        S0, S0, S24
583230:  VADD.F32        S0, S4, S0
583234:  VDIV.F32        S0, S2, S0
583238:  VMUL.F32        S0, S18, S0
58323C:  VMUL.F32        S2, S28, S0
583240:  VMUL.F32        S4, S30, S0
583244:  VMUL.F32        S0, S17, S0
583248:  VMOV            R1, S2
58324C:  VMOV            R2, S4
583250:  VMOV            R3, S0
583254:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
583258:  ADD             SP, SP, #0x28 ; '('
58325A:  VPOP            {D8-D15}
58325E:  POP.W           {R8,R9,R11}
583262:  POP             {R4-R7,PC}
583264:  VCMPE.F32       S2, #0.0
583268:  VMRS            APSR_nzcv, FPSCR
58326C:  BLE             loc_583284
58326E:  VCMPE.F32       S2, S22
583272:  VMRS            APSR_nzcv, FPSCR
583276:  BLE.W           loc_582F5E
58327A:  VMOV.F32        S0, S24
58327E:  VMOV.F32        S18, S22
583282:  B               loc_582F66
583284:  VNEG.F32        S18, S22
583288:  VCMPE.F32       S2, S18
58328C:  VMRS            APSR_nzcv, FPSCR
583290:  BGE.W           loc_582F5E
583294:  VMOV.F32        S0, S24
583298:  B               loc_582F66
