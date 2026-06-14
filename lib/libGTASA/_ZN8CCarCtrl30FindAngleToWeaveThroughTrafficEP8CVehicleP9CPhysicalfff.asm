; =========================================================
; Game Engine Function: _ZN8CCarCtrl30FindAngleToWeaveThroughTrafficEP8CVehicleP9CPhysicalfff
; Address            : 0x2EEEB0 - 0x2EF362
; =========================================================

2EEEB0:  PUSH            {R4-R7,LR}
2EEEB2:  ADD             R7, SP, #0xC
2EEEB4:  PUSH.W          {R8-R11}
2EEEB8:  SUB             SP, SP, #4
2EEEBA:  VPUSH           {D8-D15}
2EEEBE:  SUB             SP, SP, #0x58; float
2EEEC0:  STR             R0, [SP,#0xB8+var_A0]
2EEEC2:  VMOV.F32        S6, #2.0
2EEEC6:  VLDR            S0, [R0,#0x48]
2EEECA:  VMOV.F32        S4, #12.0
2EEECE:  VLDR            S2, [R0,#0x4C]
2EEED2:  MOV             R9, R2
2EEED4:  VMUL.F32        S0, S0, S0
2EEED8:  LDR             R2, [R0,#0x14]
2EEEDA:  VMUL.F32        S2, S2, S2
2EEEDE:  MOV             R11, R1
2EEEE0:  ADDS            R1, R0, #4
2EEEE2:  CMP             R2, #0
2EEEE4:  STR             R1, [SP,#0xB8+var_8C]
2EEEE6:  IT NE
2EEEE8:  ADDNE.W         R1, R2, #0x30 ; '0'
2EEEEC:  VLDR            S16, =50.0
2EEEF0:  MOV             R8, R3
2EEEF2:  VLDR            S26, =60.0
2EEEF6:  VADD.F32        S0, S0, S2
2EEEFA:  VLDR            S2, =0.4
2EEEFE:  VSQRT.F32       S0, S0
2EEF02:  VDIV.F32        S0, S0, S2
2EEF06:  VMOV.F32        S2, #1.0
2EEF0A:  VADD.F32        S0, S0, S2
2EEF0E:  VLDR            S2, [R7,#arg_0]
2EEF12:  VMIN.F32        D0, D0, D3
2EEF16:  VMUL.F32        S0, S0, S4
2EEF1A:  VLDR            S4, [R1,#4]
2EEF1E:  VMUL.F32        S0, S0, S2
2EEF22:  VLDR            S2, [R1]
2EEF26:  VSUB.F32        S18, S2, S0
2EEF2A:  VSUB.F32        S20, S4, S0
2EEF2E:  VADD.F32        S22, S2, S0
2EEF32:  VADD.F32        S24, S4, S0
2EEF36:  VDIV.F32        S6, S18, S16
2EEF3A:  VDIV.F32        S8, S20, S16
2EEF3E:  VADD.F32        S6, S6, S26
2EEF42:  VADD.F32        S8, S8, S26
2EEF46:  VMOV            R0, S6; x
2EEF4A:  VMOV            R4, S8
2EEF4E:  BLX             floorf
2EEF52:  VMOV            S28, R0
2EEF56:  MOV             R0, R4; x
2EEF58:  BLX             floorf
2EEF5C:  VDIV.F32        S0, S22, S16
2EEF60:  MOV             R10, R0
2EEF62:  VADD.F32        S0, S0, S26
2EEF66:  VMOV            R0, S0; x
2EEF6A:  BLX             floorf
2EEF6E:  VDIV.F32        S0, S24, S16
2EEF72:  MOV             R4, R0
2EEF74:  VADD.F32        S0, S0, S26
2EEF78:  VMOV            R0, S0; x
2EEF7C:  BLX             floorf
2EEF80:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2EEF94)
2EEF84:  VMOV            S4, R0
2EEF88:  STR.W           R9, [SP,#0xB8+var_68]
2EEF8C:  VMOV            S2, R4
2EEF90:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2EEF92:  VMOV            S0, R10
2EEF96:  MOVS            R2, #0x77 ; 'w'
2EEF98:  VMOV            S16, R9
2EEF9C:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
2EEF9E:  LDRH            R1, [R1]; CWorld::ms_nCurrentScanCode
2EEFA0:  VCVT.S32.F32    S6, S28
2EEFA4:  STR.W           R9, [SP,#0xB8+var_64]
2EEFA8:  VCVT.S32.F32    S4, S4
2EEFAC:  VCVT.S32.F32    S2, S2
2EEFB0:  VCVT.S32.F32    S0, S0
2EEFB4:  VMOV            R0, S4
2EEFB8:  VMOV            R4, S0
2EEFBC:  CMP             R0, #0x77 ; 'w'
2EEFBE:  IT GE
2EEFC0:  MOVGE           R0, R2
2EEFC2:  STR             R0, [SP,#0xB8+var_9C]
2EEFC4:  VMOV            R0, S2
2EEFC8:  CMP             R0, #0x77 ; 'w'
2EEFCA:  IT LT
2EEFCC:  MOVLT           R2, R0
2EEFCE:  VMOV            R0, S6
2EEFD2:  STR             R2, [SP,#0xB8+var_74]
2EEFD4:  MOVS            R2, #0
2EEFD6:  CMP             R4, #0
2EEFD8:  IT LE
2EEFDA:  MOVLE           R4, R2
2EEFDC:  CMP             R0, #0
2EEFDE:  IT GT
2EEFE0:  MOVGT           R2, R0
2EEFE2:  MOVW            R0, #(elf_hash_bucket+0xFF03); this
2EEFE6:  CMP             R1, R0
2EEFE8:  STR             R2, [SP,#0xB8+var_98]
2EEFEA:  BEQ             loc_2EEFF0
2EEFEC:  ADDS            R0, R1, #1
2EEFEE:  B               loc_2EEFF6
2EEFF0:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
2EEFF4:  MOVS            R0, #1
2EEFF6:  VLDR            S0, =-9999.9
2EEFFA:  VMOV            S26, R8
2EEFFE:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2EF008)
2EF000:  VMOV.F32        S2, S0
2EF004:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2EF006:  VCMP.F32        S16, S0
2EF00A:  VMRS            APSR_nzcv, FPSCR
2EF00E:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
2EF010:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
2EF012:  BEQ.W           loc_2EF202
2EF016:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2EF026)
2EF018:  VMOV            R5, S18
2EF01C:  ADD.W           R9, SP, #0xB8+var_68
2EF020:  ADD             R6, SP, #0xB8+var_64
2EF022:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2EF024:  VMOV.F32        S28, #4.0
2EF028:  VMOV.F32        S0, S16
2EF02C:  STR             R4, [SP,#0xB8+var_A4]; float *
2EF02E:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2EF030:  VMOV.F32        S30, S16
2EF034:  STR             R0, [SP,#0xB8+var_80]
2EF036:  VMOV            R0, S20
2EF03A:  STR             R5, [SP,#0xB8+var_7C]
2EF03C:  STR             R0, [SP,#0xB8+var_84]
2EF03E:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2EF044)
2EF040:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2EF042:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2EF044:  STR             R0, [SP,#0xB8+var_88]
2EF046:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2EF04C)
2EF048:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2EF04A:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2EF04C:  STR             R0, [SP,#0xB8+var_90]
2EF04E:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2EF054)
2EF050:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2EF052:  LDR.W           R10, [R0]; CWorld::ms_nCurrentScanCode ...
2EF056:  VMOV.F32        S17, S0
2EF05A:  LDR             R0, [SP,#0xB8+var_9C]
2EF05C:  VMOV.F32        S2, S30
2EF060:  CMP             R4, R0
2EF062:  BGT.W           loc_2EF1E2
2EF066:  STR             R4, [SP,#0xB8+var_94]
2EF068:  LDR             R0, [SP,#0xB8+var_74]
2EF06A:  LDR             R1, [SP,#0xB8+var_98]
2EF06C:  LDR             R4, [SP,#0xB8+var_A0]
2EF06E:  CMP             R1, R0
2EF070:  BGT.W           loc_2EF1C6
2EF074:  LDR             R0, [SP,#0xB8+var_94]
2EF076:  LSLS            R0, R0, #4
2EF078:  UXTB            R0, R0
2EF07A:  STR             R0, [SP,#0xB8+var_78]
2EF07C:  LDR             R0, [SP,#0xB8+var_98]
2EF07E:  STRD.W          R6, R9, [SP,#0xB8+var_AC]; float
2EF082:  MOV             R2, R11; CVehicle *
2EF084:  LDR             R1, [SP,#0xB8+var_78]
2EF086:  MOV             R3, R5; CPhysical *
2EF088:  STR             R0, [SP,#0xB8+var_6C]
2EF08A:  AND.W           R0, R0, #0xF
2EF08E:  ORRS            R0, R1
2EF090:  MOV             R1, R4; CPtrList *
2EF092:  VSTR            S20, [SP,#0xB8+var_B8]
2EF096:  MOV             R8, R11
2EF098:  ADD.W           R9, R0, R0,LSL#1
2EF09C:  LDR             R0, [SP,#0xB8+var_80]
2EF09E:  VSTR            S22, [SP,#0xB8+var_B4]
2EF0A2:  ADD.W           R0, R0, R9,LSL#2; this
2EF0A6:  VSTR            S24, [SP,#0xB8+var_B0]
2EF0AA:  STR             R0, [SP,#0xB8+var_70]
2EF0AC:  BLX             j__ZN8CCarCtrl26WeaveThroughCarsSectorListER8CPtrListP8CVehicleP9CPhysicalffffPfS6_; CCarCtrl::WeaveThroughCarsSectorList(CPtrList &,CVehicle *,CPhysical *,float,float,float,float,float *,float *)
2EF0B0:  LDRB.W          R0, [R4,#0x3BD]
2EF0B4:  CMP             R0, #6
2EF0B6:  BEQ             loc_2EF170
2EF0B8:  LDR             R0, [SP,#0xB8+var_90]
2EF0BA:  ADD.W           R0, R0, R9,LSL#2
2EF0BE:  LDR.W           R11, [R0,#4]
2EF0C2:  B               loc_2EF0CE
2EF0C4:  ADD             R2, SP, #0xB8+var_64; CVehicle *
2EF0C6:  ADD             R3, SP, #0xB8+var_68; float *
2EF0C8:  MOV             R1, R4; CEntity *
2EF0CA:  BLX             j__ZN8CCarCtrl11WeaveForPedEP7CEntityP8CVehiclePfS4_; CCarCtrl::WeaveForPed(CEntity *,CVehicle *,float *,float *)
2EF0CE:  CMP.W           R11, #0
2EF0D2:  BEQ             loc_2EF170
2EF0D4:  LDRD.W          R0, R11, [R11]; this
2EF0D8:  LDRH.W          R1, [R10]; CWorld::ms_nCurrentScanCode
2EF0DC:  LDRH            R2, [R0,#0x30]
2EF0DE:  CMP             R2, R1
2EF0E0:  BEQ             loc_2EF0CE
2EF0E2:  CMP             R0, R8
2EF0E4:  ITT NE
2EF0E6:  LDRNE           R2, [R0,#0x1C]
2EF0E8:  ANDSNE.W        R2, R2, #1
2EF0EC:  BEQ             loc_2EF0CE
2EF0EE:  LDR             R2, [R0,#0x14]
2EF0F0:  STRH            R1, [R0,#0x30]
2EF0F2:  ADD.W           R1, R2, #0x30 ; '0'
2EF0F6:  CMP             R2, #0
2EF0F8:  IT EQ
2EF0FA:  ADDEQ           R1, R0, #4
2EF0FC:  VLDR            S0, [R1]
2EF100:  VCMPE.F32       S0, S18
2EF104:  VMRS            APSR_nzcv, FPSCR
2EF108:  BLE             loc_2EF0CE
2EF10A:  VCMPE.F32       S0, S22
2EF10E:  VMRS            APSR_nzcv, FPSCR
2EF112:  BGE             loc_2EF0CE
2EF114:  VLDR            S0, [R1,#4]
2EF118:  VCMPE.F32       S0, S20
2EF11C:  VMRS            APSR_nzcv, FPSCR
2EF120:  BLE             loc_2EF0CE
2EF122:  VCMPE.F32       S0, S24
2EF126:  VMRS            APSR_nzcv, FPSCR
2EF12A:  BGE             loc_2EF0CE
2EF12C:  LDR             R2, [R4,#0x14]
2EF12E:  VLDR            S0, [R1,#8]
2EF132:  LDR             R1, [SP,#0xB8+var_8C]
2EF134:  CMP             R2, #0
2EF136:  IT NE
2EF138:  ADDNE.W         R1, R2, #0x30 ; '0'
2EF13C:  VLDR            S2, [R1,#8]
2EF140:  VSUB.F32        S0, S0, S2
2EF144:  VABS.F32        S0, S0
2EF148:  VCMPE.F32       S0, S28
2EF14C:  VMRS            APSR_nzcv, FPSCR
2EF150:  BGE             loc_2EF0CE
2EF152:  LDR.W           R1, [R0,#0x588]
2EF156:  CMP             R1, R4
2EF158:  ITT NE
2EF15A:  LDRNE.W         R1, [R0,#0x100]
2EF15E:  CMPNE           R1, R4
2EF160:  BNE             loc_2EF0C4
2EF162:  B               loc_2EF0CE
2EF164:  DCFS 50.0
2EF168:  DCFS 60.0
2EF16C:  DCFS 0.4
2EF170:  ADD             R0, SP, #0xB8+var_64
2EF172:  LDR             R5, [SP,#0xB8+var_7C]
2EF174:  LDR             R3, [SP,#0xB8+var_84]; float
2EF176:  MOV             R2, R0
2EF178:  ADD             R0, SP, #0xB8+var_68
2EF17A:  STR             R2, [SP,#0xB8+var_B0]; float
2EF17C:  MOV             R6, R2
2EF17E:  MOV             R1, R0
2EF180:  LDR             R0, [SP,#0xB8+var_88]
2EF182:  STR             R1, [SP,#0xB8+var_AC]; float *
2EF184:  MOV             R2, R5; CVehicle *
2EF186:  ADD.W           R0, R0, R9,LSL#2
2EF18A:  MOV             R9, R1
2EF18C:  ADDS            R0, #8; this
2EF18E:  MOV             R1, R4; CPtrList *
2EF190:  VSTR            S22, [SP,#0xB8+var_B8]
2EF194:  VSTR            S24, [SP,#0xB8+var_B4]
2EF198:  BLX             j__ZN8CCarCtrl29WeaveThroughObjectsSectorListER8CPtrListP8CVehicleffffPfS4_; CCarCtrl::WeaveThroughObjectsSectorList(CPtrList &,CVehicle *,float,float,float,float,float *,float *)
2EF19C:  STRD.W          R6, R9, [SP,#0xB8+var_AC]; float
2EF1A0:  MOV             R11, R8
2EF1A2:  LDR             R0, [SP,#0xB8+var_70]; this
2EF1A4:  MOV             R1, R4; CPtrList *
2EF1A6:  MOV             R2, R11; CVehicle *
2EF1A8:  MOV             R3, R5; CPhysical *
2EF1AA:  VSTR            S20, [SP,#0xB8+var_B8]
2EF1AE:  VSTR            S22, [SP,#0xB8+var_B4]
2EF1B2:  VSTR            S24, [SP,#0xB8+var_B0]
2EF1B6:  BLX             j__ZN8CCarCtrl26WeaveThroughCarsSectorListER8CPtrListP8CVehicleP9CPhysicalffffPfS6_; CCarCtrl::WeaveThroughCarsSectorList(CPtrList &,CVehicle *,CPhysical *,float,float,float,float,float *,float *)
2EF1BA:  LDR             R2, [SP,#0xB8+var_6C]
2EF1BC:  LDR             R1, [SP,#0xB8+var_74]
2EF1BE:  ADDS            R0, R2, #1
2EF1C0:  CMP             R2, R1
2EF1C2:  BLT.W           loc_2EF07E
2EF1C6:  LDR             R0, [SP,#0xB8+var_94]
2EF1C8:  LDR             R1, [SP,#0xB8+var_9C]
2EF1CA:  MOV             R2, R0
2EF1CC:  CMP             R2, R1
2EF1CE:  ADD.W           R0, R2, #1
2EF1D2:  STR             R0, [SP,#0xB8+var_94]
2EF1D4:  BLT.W           loc_2EF068
2EF1D8:  LDR             R4, [SP,#0xB8+var_A4]
2EF1DA:  VLDR            S0, [SP,#0xB8+var_68]
2EF1DE:  VLDR            S2, [SP,#0xB8+var_64]
2EF1E2:  VCMP.F32        S30, S2
2EF1E6:  VMOV.F32        S30, S2
2EF1EA:  VMRS            APSR_nzcv, FPSCR
2EF1EE:  BNE.W           loc_2EF056
2EF1F2:  VMOV.F32        S30, S2
2EF1F6:  VCMP.F32        S17, S0
2EF1FA:  VMRS            APSR_nzcv, FPSCR
2EF1FE:  BNE.W           loc_2EF056
2EF202:  VSUB.F32        S4, S26, S16
2EF206:  VLDR            S6, =-3.1416
2EF20A:  VCMPE.F32       S4, S6
2EF20E:  VMRS            APSR_nzcv, FPSCR
2EF212:  BGE             loc_2EF226
2EF214:  VLDR            S8, =6.2832
2EF218:  VADD.F32        S4, S4, S8
2EF21C:  VCMPE.F32       S4, S6
2EF220:  VMRS            APSR_nzcv, FPSCR
2EF224:  BLT             loc_2EF218
2EF226:  VLDR            S8, =3.1416
2EF22A:  VCMPE.F32       S4, S8
2EF22E:  VMRS            APSR_nzcv, FPSCR
2EF232:  BLE             loc_2EF246
2EF234:  VLDR            S10, =-6.2832
2EF238:  VADD.F32        S4, S4, S10
2EF23C:  VCMPE.F32       S4, S8
2EF240:  VMRS            APSR_nzcv, FPSCR
2EF244:  BGT             loc_2EF238
2EF246:  VMOV.F32        S10, #0.5
2EF24A:  VMUL.F32        S4, S4, S10
2EF24E:  VADD.F32        S4, S4, S16
2EF252:  VCMPE.F32       S4, S6
2EF256:  VMRS            APSR_nzcv, FPSCR
2EF25A:  BGE             loc_2EF26E
2EF25C:  VLDR            S10, =6.2832
2EF260:  VADD.F32        S4, S4, S10
2EF264:  VCMPE.F32       S4, S6
2EF268:  VMRS            APSR_nzcv, FPSCR
2EF26C:  BLT             loc_2EF260
2EF26E:  VCMPE.F32       S4, S8
2EF272:  VMRS            APSR_nzcv, FPSCR
2EF276:  BLE             loc_2EF28A
2EF278:  VLDR            S10, =-6.2832
2EF27C:  VADD.F32        S4, S4, S10
2EF280:  VCMPE.F32       S4, S8
2EF284:  VMRS            APSR_nzcv, FPSCR
2EF288:  BGT             loc_2EF27C
2EF28A:  VSUB.F32        S10, S2, S4
2EF28E:  VCMPE.F32       S10, S6
2EF292:  VMRS            APSR_nzcv, FPSCR
2EF296:  BGE             loc_2EF2AA
2EF298:  VLDR            S12, =6.2832
2EF29C:  VADD.F32        S10, S10, S12
2EF2A0:  VCMPE.F32       S10, S6
2EF2A4:  VMRS            APSR_nzcv, FPSCR
2EF2A8:  BLT             loc_2EF29C
2EF2AA:  VSUB.F32        S12, S0, S4
2EF2AE:  VCMPE.F32       S10, S8
2EF2B2:  VMRS            APSR_nzcv, FPSCR
2EF2B6:  BLE             loc_2EF2CA
2EF2B8:  VLDR            S14, =-6.2832
2EF2BC:  VADD.F32        S10, S10, S14
2EF2C0:  VCMPE.F32       S10, S8
2EF2C4:  VMRS            APSR_nzcv, FPSCR
2EF2C8:  BGT             loc_2EF2BC
2EF2CA:  VCMPE.F32       S12, S6
2EF2CE:  VMRS            APSR_nzcv, FPSCR
2EF2D2:  BGE             loc_2EF2E6
2EF2D4:  VLDR            S14, =6.2832
2EF2D8:  VADD.F32        S12, S12, S14
2EF2DC:  VCMPE.F32       S12, S6
2EF2E0:  VMRS            APSR_nzcv, FPSCR
2EF2E4:  BLT             loc_2EF2D8
2EF2E6:  VABS.F32        S6, S10
2EF2EA:  VCMPE.F32       S12, S8
2EF2EE:  VMRS            APSR_nzcv, FPSCR
2EF2F2:  BLE             loc_2EF306
2EF2F4:  VLDR            S10, =-6.2832
2EF2F8:  VADD.F32        S12, S12, S10
2EF2FC:  VCMPE.F32       S12, S8
2EF300:  VMRS            APSR_nzcv, FPSCR
2EF304:  BGT             loc_2EF2F8
2EF306:  VLDR            S10, =1.5708
2EF30A:  VABS.F32        S8, S12
2EF30E:  VCMPE.F32       S6, S10
2EF312:  VMRS            APSR_nzcv, FPSCR
2EF316:  ITT GT
2EF318:  VCMPEGT.F32     S8, S10
2EF31C:  VMRSGT          APSR_nzcv, FPSCR
2EF320:  BGT             loc_2EF350
2EF322:  VSUB.F32        S4, S6, S8
2EF326:  VLDR            S10, =0.08
2EF32A:  VABS.F32        S4, S4
2EF32E:  VCMPE.F32       S4, S10
2EF332:  VMRS            APSR_nzcv, FPSCR
2EF336:  BGE             loc_2EF33E
2EF338:  VMOV.F32        S4, S0
2EF33C:  B               loc_2EF350
2EF33E:  VCMPE.F32       S6, S8
2EF342:  VMRS            APSR_nzcv, FPSCR
2EF346:  VMOV.F32        S4, S2
2EF34A:  IT GE
2EF34C:  VMOVGE.F32      S4, S0
2EF350:  VMOV            R0, S4
2EF354:  ADD             SP, SP, #0x58 ; 'X'
2EF356:  VPOP            {D8-D15}
2EF35A:  ADD             SP, SP, #4
2EF35C:  POP.W           {R8-R11}
2EF360:  POP             {R4-R7,PC}
