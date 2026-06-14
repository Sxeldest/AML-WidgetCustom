; =========================================================
; Game Engine Function: sub_118DC0
; Address            : 0x118DC0 - 0x11924A
; =========================================================

118DC0:  PUSH            {R4-R7,LR}
118DC2:  ADD             R7, SP, #0xC
118DC4:  PUSH.W          {R8-R11}
118DC8:  SUB             SP, SP, #4
118DCA:  VPUSH           {D8-D15}
118DCE:  SUB             SP, SP, #0x48
118DD0:  MOV             R4, R0
118DD2:  LDR             R0, [R0]
118DD4:  MOV             R9, R1
118DD6:  MOV             R1, R4
118DD8:  LDR             R2, [R0,#0x4C]
118DDA:  ADD             R0, SP, #0xA8+var_68
118DDC:  BLX             R2
118DDE:  LDR             R0, [R4]
118DE0:  MOV             R1, R4
118DE2:  VLDR            S16, [SP,#0xA8+var_68]
118DE6:  LDR             R2, [R0,#0x4C]
118DE8:  ADD             R0, SP, #0xA8+var_70
118DEA:  BLX             R2
118DEC:  LDR             R0, [R4]
118DEE:  MOV             R1, R4
118DF0:  VLDR            S18, [SP,#0xA8+var_6C]
118DF4:  LDR             R2, [R0,#0x14]
118DF6:  ADD             R0, SP, #0xA8+var_68
118DF8:  BLX             R2
118DFA:  LDR             R0, [R4]
118DFC:  MOV             R1, R4
118DFE:  VLDR            S20, [SP,#0xA8+var_68]
118E02:  LDR             R2, [R0,#0x4C]
118E04:  ADD             R0, SP, #0xA8+var_70
118E06:  BLX             R2
118E08:  LDR             R0, [R4]
118E0A:  MOV             R1, R4
118E0C:  VLDR            S26, [SP,#0xA8+var_70]
118E10:  LDR             R2, [R0,#0x14]
118E12:  ADD             R0, SP, #0xA8+var_68
118E14:  BLX             R2
118E16:  LDR             R0, [R4]
118E18:  MOV             R1, R4
118E1A:  VLDR            S22, [SP,#0xA8+var_68]
118E1E:  LDR             R2, [R0,#0x4C]
118E20:  ADD             R0, SP, #0xA8+var_70
118E22:  BLX             R2
118E24:  LDR             R0, [R4]
118E26:  MOV             R1, R4
118E28:  VLDR            S24, [SP,#0xA8+var_70]
118E2C:  LDR             R2, [R0,#0x14]
118E2E:  ADD             R0, SP, #0xA8+var_68
118E30:  BLX             R2
118E32:  LDR             R0, [R4]
118E34:  MOV             R1, R4
118E36:  VLDR            S28, [SP,#0xA8+var_64]
118E3A:  LDR             R2, [R0,#0x4C]
118E3C:  ADD             R0, SP, #0xA8+var_70
118E3E:  BLX             R2
118E40:  VMOV.F32        S0, #0.1875
118E44:  VLDR            D17, =0.725252525
118E48:  VLDR            S4, =0.9
118E4C:  MOVS.W          R0, R9,LSL#29
118E50:  MOV             R11, R4
118E52:  MOVW            R1, #0x23FF
118E56:  LDR.W           R0, [R11,#0x20]!
118E5A:  MOVT            R1, #0xFF23
118E5E:  MOV.W           R8, #0
118E62:  LDR             R5, [R0,#4]
118E64:  MOV             R0, R11
118E66:  VMUL.F32        S2, S16, S0
118E6A:  VMUL.F32        S0, S18, S0
118E6E:  VMOV.F32        S16, #0.5
118E72:  VCVT.F64.F32    D16, S2
118E76:  VCVT.F64.F32    D18, S0
118E7A:  VSUB.F32        S0, S20, S26
118E7E:  VLDR            S2, [SP,#0xA8+var_6C]
118E82:  VMUL.F64        D16, D16, D17
118E86:  ITT PL
118E88:  MOVWPL          R1, #0xCA60
118E8C:  MOVTPL          R1, #0xFF5D
118E90:  STR             R1, [SP,#0xA8+var_88]
118E92:  STRD.W          R1, R8, [SP,#0xA8+var_A0]
118E96:  ADD.W           R1, R4, #0x4C ; 'L'
118E9A:  STR             R1, [SP,#0xA8+var_7C]
118E9C:  VMUL.F32        S26, S0, S16
118EA0:  VLDR            S0, =-0.17
118EA4:  VCVT.F32.F64    S20, D16
118EA8:  VMOV.F32        S30, S26
118EAC:  VSTR            S20, [SP,#0xA8+var_A8]
118EB0:  VMLA.F32        S28, S2, S0
118EB4:  VMUL.F64        D17, D18, D17
118EB8:  VMLA.F32        S30, S20, S4
118EBC:  VMOV            R6, S28
118EC0:  VCVT.F32.F64    S18, D17
118EC4:  VMOV            R2, S30
118EC8:  VSTR            S18, [SP,#0xA8+var_A4]
118ECC:  MOV             R3, R6
118ECE:  BLX             R5
118ED0:  VMOV.F32        S0, #1.5
118ED4:  MOVW            R1, #0xCA60
118ED8:  MOVS.W          R0, R9,LSL#31
118EDC:  MOVT            R1, #0xFF5D
118EE0:  IT EQ
118EE2:  MOVEQ.W         R1, #0xFFFFFFFF
118EE6:  LDR.W           R0, [R11]
118EEA:  STR             R1, [SP,#0xA8+var_8C]
118EEC:  MOV             R3, R6
118EEE:  LDR             R5, [R0,#4]
118EF0:  MOV             R0, R11
118EF2:  STRD.W          R1, R8, [SP,#0xA8+var_A0]
118EF6:  ADD.W           R1, R4, #0x50 ; 'P'
118EFA:  VMUL.F32        S28, S20, S0
118EFE:  VSTR            S20, [SP,#0xA8+var_A8]
118F02:  VSTR            S18, [SP,#0xA8+var_A4]
118F06:  STR             R1, [SP,#0xA8+var_80]
118F08:  VADD.F32        S30, S28, S30
118F0C:  VMOV            R2, S30
118F10:  BLX             R5
118F12:  VADD.F32        S30, S28, S30
118F16:  MOVW            R1, #0x7B23
118F1A:  MOVS.W          R0, R9,LSL#30
118F1E:  MOVT            R1, #0xFFFF
118F22:  IT PL
118F24:  MOVPL.W         R1, #0xFFFFFFFF
118F28:  LDR.W           R0, [R11]
118F2C:  STR             R1, [SP,#0xA8+var_90]
118F2E:  MOV             R3, R6
118F30:  LDR             R5, [R0,#4]
118F32:  MOV             R0, R11
118F34:  STRD.W          R1, R8, [SP,#0xA8+var_A0]
118F38:  ADD.W           R1, R4, #0x54 ; 'T'
118F3C:  VMOV            R2, S30
118F40:  VSTR            S20, [SP,#0xA8+var_A8]
118F44:  VSTR            S18, [SP,#0xA8+var_A4]
118F48:  STR             R1, [SP,#0xA8+var_84]
118F4A:  BLX             R5
118F4C:  VADD.F32        S0, S28, S30
118F50:  MOVS.W          R0, R9,LSL#28
118F54:  MOVW            R0, #0x827F
118F58:  MOV             R3, R6
118F5A:  MOVT            R0, #0xFF8F
118F5E:  ITT PL
118F60:  MOVWPL          R0, #0xCA60
118F64:  MOVTPL          R0, #0xFF5D
118F68:  LDR.W           R1, [R11]
118F6C:  LDR             R5, [R1,#4]
118F6E:  ADD.W           R1, R4, #0x58 ; 'X'
118F72:  VMOV            R2, S0
118F76:  STRD.W          R0, R8, [SP,#0xA8+var_A0]
118F7A:  MOV             R0, R11
118F7C:  VSTR            S20, [SP,#0xA8+var_A8]
118F80:  VSTR            S18, [SP,#0xA8+var_A4]
118F84:  BLX             R5
118F86:  LDR             R0, [R4]
118F88:  MOV             R1, R4
118F8A:  LDR             R2, [R0,#0x14]
118F8C:  ADD             R0, SP, #0xA8+var_68
118F8E:  BLX             R2
118F90:  LDR             R0, [R4]
118F92:  MOV             R1, R4
118F94:  VLDR            S28, [SP,#0xA8+var_64]
118F98:  LDR             R2, [R0,#0x4C]
118F9A:  ADD             R0, SP, #0xA8+var_70
118F9C:  BLX             R2
118F9E:  MOVW            R10, #0xCA60
118FA2:  MOVS.W          R0, R9,LSL#26
118FA6:  MOVT            R10, #0xC05D
118FAA:  VMOV            R2, S26
118FAE:  MOV             R0, R10
118FB0:  IT PL
118FB2:  MOVPL.W         R0, #0xC0000000
118FB6:  VLDR            S0, [SP,#0xA8+var_6C]
118FBA:  LDR.W           R1, [R11]
118FBE:  VMLS.F32        S28, S0, S16
118FC2:  LDR             R5, [R1,#4]
118FC4:  STRD.W          R0, R8, [SP,#0xA8+var_A0]
118FC8:  ADD.W           R8, R4, #0x5C ; '\'
118FCC:  MOV             R0, R11
118FCE:  VSTR            S20, [SP,#0xA8+var_A8]
118FD2:  MOV             R1, R8
118FD4:  VSTR            S18, [SP,#0xA8+var_A4]
118FD8:  VMOV            R6, S28
118FDC:  MOV             R3, R6
118FDE:  BLX             R5
118FE0:  VNEG.F32        S0, S20
118FE4:  MOVS.W          R0, R9,LSL#25
118FE8:  IT PL
118FEA:  MOVPL.W         R10, #0xC0000000
118FEE:  LDR.W           R0, [R11]
118FF2:  MOV.W           R9, #0
118FF6:  MOV             R1, R8
118FF8:  MOV             R3, R6
118FFA:  LDR             R5, [R0,#4]
118FFC:  MOV             R0, R11
118FFE:  STRD.W          R10, R9, [SP,#0xA8+var_A0]
119002:  VSTR            S18, [SP,#0xA8+var_A4]
119006:  VSTR            S0, [SP,#0xA8+var_A8]
11900A:  VADD.F32        S0, S22, S24
11900E:  VMUL.F32        S0, S0, S16
119012:  VMOV            R2, S0
119016:  BLX             R5
119018:  ADD             R0, SP, #0xA8+var_68; this
11901A:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
11901E:  LDRD.W          R0, R1, [R4,#0x30]
119022:  LDRD.W          R2, R3, [SP,#0xA8+var_68]
119026:  LDRB.W          R6, [R4,#0x48]
11902A:  SUBS            R0, R2, R0
11902C:  MOVW            R2, #:lower16:unk_7C830
119030:  SBC.W           R1, R3, R1
119034:  MOVT            R2, #:upper16:unk_7C830
119038:  CBNZ            R6, loc_119044
11903A:  SUBS            R3, R2, R0
11903C:  SBCS.W          R3, R9, R1
119040:  BLT.W           loc_11923C
119044:  MOVW            R3, #0xEBFF
119048:  LDR             R5, [SP,#0xA8+var_88]
11904A:  MOVT            R3, #0x7F
11904E:  SUBS            R2, R0, R2
119050:  AND.W           R3, R3, R5
119054:  STR             R3, [SP,#0xA8+var_88]
119056:  LDR             R3, [SP,#0xA8+var_90]
119058:  SBCS.W          R2, R1, #0
11905C:  BIC.W           R3, R3, #0xFF000000
119060:  STR             R3, [SP,#0xA8+var_90]
119062:  LDR             R3, [SP,#0xA8+var_8C]
119064:  BIC.W           R3, R3, #0xFF000000
119068:  STR             R3, [SP,#0xA8+var_94]
11906A:  BGE             loc_119094
11906C:  MOV.W           R2, #0x7D0
119070:  MOVS            R3, #0
119072:  BLX             sub_221404
119076:  CMP             R6, #0
119078:  IT EQ
11907A:  RSBEQ.W         R0, R0, #0xFF
11907E:  MOV.W           R9, R0,LSL#24
119082:  B               loc_119098
119084:  ALIGN 8
119088:  DCFD 0.725252525
119090:  DCFS 0.9
119094:  MOV.W           R9, #0xFF000000
119098:  MOV             R1, R4
11909A:  ADD.W           R2, R4, #0x24 ; '$'
11909E:  LDR.W           R0, [R1,#0x10]!
1190A2:  LDR             R3, [R0,#4]
1190A4:  ADD             R0, SP, #0xA8+var_70
1190A6:  BLX             R3
1190A8:  LDR             R0, [R4]
1190AA:  MOV             R1, R4
1190AC:  LDR             R2, [R0,#0x14]
1190AE:  ADD             R0, SP, #0xA8+var_78
1190B0:  BLX             R2
1190B2:  LDR             R0, [R4]
1190B4:  MOV             R1, R4
1190B6:  VLDR            S22, [SP,#0xA8+var_70]
1190BA:  VLDR            S24, [SP,#0xA8+var_78]
1190BE:  LDR             R2, [R0,#0x14]
1190C0:  ADD             R0, SP, #0xA8+var_78
1190C2:  BLX             R2
1190C4:  VDIV.F32        S0, S24, S22
1190C8:  LDR             R0, [SP,#0xA8+var_78]
1190CA:  STR             R0, [SP,#0xA8+var_70]
1190CC:  MOV             R1, R4
1190CE:  LDR             R0, [R4]
1190D0:  LDR             R2, [R0,#0x14]
1190D2:  ADD             R0, SP, #0xA8+var_78
1190D4:  VLDR            S2, [SP,#0xA8+var_6C]
1190D8:  VMUL.F32        S0, S0, S2
1190DC:  VSTR            S0, [SP,#0xA8+var_6C]
1190E0:  BLX             R2
1190E2:  VLDR            S0, [SP,#0xA8+var_6C]
1190E6:  MOVS            R1, #0
1190E8:  VLDR            S2, [SP,#0xA8+var_74]
1190EC:  LDR             R0, [R4,#0x20]
1190EE:  VSUB.F32        S2, S2, S0
1190F2:  LDR             R3, [SP,#0xA8+var_70]
1190F4:  LDR             R6, [R0]
1190F6:  ORN.W           R0, R9, #0xFF000000
1190FA:  STR             R0, [SP,#0xA8+var_A4]
1190FC:  MOV             R5, R0
1190FE:  STR             R0, [SP,#0xA8+var_8C]
119100:  MOV             R0, R11
119102:  VSTR            S0, [SP,#0xA8+var_A8]
119106:  VMUL.F32        S22, S2, S16
11910A:  VMOV            R2, S22
11910E:  BLX             R6
119110:  VMOV.F32        S0, #0.875
119114:  VLDR            S4, [SP,#0xA8+var_6C]
119118:  VLDR            S10, =0.0625
11911C:  MOVW            R10, #0xCCCD
119120:  VLDR            S2, [SP,#0xA8+var_70]
119124:  ADD.W           R1, R4, #0x70 ; 'p'
119128:  VMLA.F32        S22, S4, S10
11912C:  LDR             R0, [R4,#0x20]
11912E:  MOVT            R10, #0x3ECC
119132:  VMUL.F32        S0, S4, S0
119136:  VMOV            R8, S22
11913A:  VDIV.F32        S6, S0, S20
11913E:  MOV             R3, R8
119140:  VMUL.F32        S20, S6, S20
119144:  VSTR            S0, [SP,#0xA8+var_6C]
119148:  VDIV.F32        S8, S0, S18
11914C:  LDR             R6, [R0,#4]
11914E:  MOV             R0, R11
119150:  STRD.W          R5, R10, [SP,#0xA8+var_A0]
119154:  VADD.F32        S6, S20, S20
119158:  VSTR            S20, [SP,#0xA8+var_A8]
11915C:  VMUL.F32        S18, S8, S18
119160:  VADD.F32        S24, S6, S20
119164:  VSTR            S18, [SP,#0xA8+var_A4]
119168:  VNMLS.F32       S24, S2, S16
11916C:  VMOV            R2, S24
119170:  BLX             R6
119172:  VMOV.F32        S0, #1.25
119176:  LDR             R1, [R4,#0x20]
119178:  MOV             R6, R0
11917A:  LDR             R0, [SP,#0xA8+var_94]
11917C:  MOV             R3, R8
11917E:  LDR             R5, [R1,#4]
119180:  ORR.W           R0, R0, R9
119184:  LDR             R1, [SP,#0xA8+var_80]
119186:  STRD.W          R0, R10, [SP,#0xA8+var_A0]
11918A:  MOV             R0, R11
11918C:  VSTR            S20, [SP,#0xA8+var_A8]
119190:  VMUL.F32        S16, S20, S0
119194:  VSTR            S18, [SP,#0xA8+var_A4]
119198:  VADD.F32        S22, S16, S24
11919C:  VMOV            R2, S22
1191A0:  BLX             R5
1191A2:  VADD.F32        S22, S16, S22
1191A6:  LDR             R1, [R4,#0x20]
1191A8:  STR             R0, [SP,#0xA8+var_80]
1191AA:  MOV             R3, R8
1191AC:  LDR             R0, [SP,#0xA8+var_90]
1191AE:  LDR             R5, [R1,#4]
1191B0:  LDR             R1, [SP,#0xA8+var_84]
1191B2:  ORR.W           R0, R0, R9
1191B6:  STRD.W          R0, R10, [SP,#0xA8+var_A0]
1191BA:  MOV             R0, R11
1191BC:  VSTR            S20, [SP,#0xA8+var_A8]
1191C0:  VMOV            R2, S22
1191C4:  VSTR            S18, [SP,#0xA8+var_A4]
1191C8:  BLX             R5
1191CA:  VADD.F32        S22, S16, S22
1191CE:  LDR             R1, [R4,#0x20]
1191D0:  STR             R0, [SP,#0xA8+var_84]
1191D2:  MOV             R3, R8
1191D4:  LDR             R0, [SP,#0xA8+var_88]
1191D6:  LDR             R5, [R1,#4]
1191D8:  LDR             R1, [SP,#0xA8+var_7C]
1191DA:  ORR.W           R0, R0, R9
1191DE:  STRD.W          R0, R10, [SP,#0xA8+var_A0]
1191E2:  MOV             R0, R11
1191E4:  VSTR            S20, [SP,#0xA8+var_A8]
1191E8:  VMOV            R2, S22
1191EC:  VSTR            S18, [SP,#0xA8+var_A4]
1191F0:  BLX             R5
1191F2:  VADD.F32        S0, S16, S22
1191F6:  LDR             R1, [R4,#0x20]
1191F8:  CMP             R6, #0
1191FA:  MOV             R3, R8
1191FC:  LDR             R5, [R1,#4]
1191FE:  LDR             R1, [SP,#0xA8+var_8C]
119200:  STRD.W          R1, R10, [SP,#0xA8+var_A0]
119204:  VSTR            S20, [SP,#0xA8+var_A8]
119208:  VMOV            R2, S0
11920C:  VSTR            S18, [SP,#0xA8+var_A4]
119210:  IT NE
119212:  MOVNE           R6, #0x80
119214:  LDR             R1, [SP,#0xA8+var_80]
119216:  CMP             R1, #0
119218:  IT NE
11921A:  MOVNE           R6, #1
11921C:  LDR             R1, [SP,#0xA8+var_84]
11921E:  CMP             R1, #0
119220:  ADD.W           R1, R4, #0x74 ; 't'
119224:  IT NE
119226:  MOVNE           R6, #2
119228:  CMP             R0, #0
11922A:  MOV             R0, R11
11922C:  IT NE
11922E:  MOVNE           R6, #4
119230:  BLX             R5
119232:  CMP             R0, #0
119234:  IT NE
119236:  MOVNE.W         R6, #0x100
11923A:  STR             R6, [R4,#0x44]
11923C:  ADD             SP, SP, #0x48 ; 'H'
11923E:  VPOP            {D8-D15}
119242:  ADD             SP, SP, #4
119244:  POP.W           {R8-R11}
119248:  POP             {R4-R7,PC}
