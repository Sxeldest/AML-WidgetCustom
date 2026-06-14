; =========================================================
; Game Engine Function: _ZN11CAutomobile14ProcessControlEv
; Address            : 0x553DD4 - 0x555BDA
; =========================================================

553DD4:  PUSH            {R4-R7,LR}
553DD6:  ADD             R7, SP, #0xC
553DD8:  PUSH.W          {R8-R11}
553DDC:  SUB             SP, SP, #4
553DDE:  VPUSH           {D8-D15}
553DE2:  SUB             SP, SP, #0xE0
553DE4:  MOV             R4, R0
553DE6:  LDR.W           R0, [R4,#0x430]
553DEA:  UBFX.W          R5, R0, #0x19, #1
553DEE:  MOV             R0, R4; this
553DF0:  STR             R5, [SP,#0x140+var_64]
553DF2:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
553DF6:  LDR             R6, [R0,#0x2C]
553DF8:  MOVS            R3, #0
553DFA:  LDRB.W          R0, [R4,#0x87C]
553DFE:  LDR.W           R1, [R4,#0x42C]
553E02:  LDR.W           R2, [R4,#0x430]
553E06:  AND.W           R0, R0, #0xBF
553E0A:  STRH.W          R3, [R4,#0x87E]
553E0E:  BIC.W           R1, R1, #0x2000
553E12:  BIC.W           R2, R2, #2
553E16:  STR.W           R1, [R4,#0x42C]
553E1A:  STR.W           R2, [R4,#0x430]
553E1E:  STRB.W          R0, [R4,#0x87C]
553E22:  ADD.W           R0, R4, #0x13C
553E26:  NOP
553E28:  NOP
553E2A:  LDRSH.W         R0, [R4,#0x26]
553E2E:  CMP.W           R0, #0x1A4
553E32:  IT NE
553E34:  CMPNE.W         R0, #0x1B6
553E38:  BEQ             loc_553E56
553E3A:  LDR             R1, [R4,#0x14]
553E3C:  VLDR            S0, [R1,#0x28]
553E40:  VCMPE.F32       S0, #0.0
553E44:  VMRS            APSR_nzcv, FPSCR
553E48:  ITTT LT
553E4A:  LDRBLT.W        R1, [R4,#0x87C]
553E4E:  ANDLT.W         R1, R1, #0xFE
553E52:  STRBLT.W        R1, [R4,#0x87C]
553E56:  LDR.W           R1, [R4,#0x5A4]
553E5A:  SUBS            R1, #3
553E5C:  CMP             R1, #1
553E5E:  BHI.W           loc_553F64
553E62:  LDRB.W          R2, [R4,#0x3BE]
553E66:  LDRB.W          R1, [R4,#0x3A]
553E6A:  SUBS            R2, #0x39 ; '9'
553E6C:  UXTB            R2, R2
553E6E:  CMP             R2, #2
553E70:  BCS             loc_553F0A
553E72:  AND.W           R1, R1, #0xF8
553E76:  CMP             R1, #0x28 ; '('
553E78:  BEQ             loc_553F64
553E7A:  VLDR            S0, [R4,#0xDC]
553E7E:  VCMPE.F32       S0, #0.0
553E82:  VMRS            APSR_nzcv, FPSCR
553E86:  BLE             loc_553E96
553E88:  VLDR            S0, [R4,#0xEC]
553E8C:  VCMPE.F32       S0, #0.0
553E90:  VMRS            APSR_nzcv, FPSCR
553E94:  BGT             loc_553EEE
553E96:  LDR             R1, [R4,#0x44]
553E98:  TST.W           R1, #0x2000
553E9C:  BNE             loc_553F64
553E9E:  LSLS            R1, R1, #0x17
553EA0:  BMI             loc_553EEE
553EA2:  VMOV.F32        S0, #1.0
553EA6:  ADD.W           R1, R4, #0x7E8
553EAA:  VLDR            S2, [R1]
553EAE:  VCMPE.F32       S2, S0
553EB2:  VMRS            APSR_nzcv, FPSCR
553EB6:  BLT             loc_553EEE
553EB8:  ADDW            R1, R4, #0x7EC
553EBC:  VLDR            S2, [R1]
553EC0:  VCMPE.F32       S2, S0
553EC4:  VMRS            APSR_nzcv, FPSCR
553EC8:  BLT             loc_553EEE
553ECA:  ADD.W           R1, R4, #0x7F0
553ECE:  VLDR            S2, [R1]
553ED2:  VCMPE.F32       S2, S0
553ED6:  VMRS            APSR_nzcv, FPSCR
553EDA:  BLT             loc_553EEE
553EDC:  ADDW            R1, R4, #0x7F4
553EE0:  VLDR            S2, [R1]
553EE4:  VCMPE.F32       S2, S0
553EE8:  VMRS            APSR_nzcv, FPSCR
553EEC:  BGE             loc_553F3A
553EEE:  VLDR            S0, [R4,#0x50]
553EF2:  VCMPE.F32       S0, #0.0
553EF6:  VMRS            APSR_nzcv, FPSCR
553EFA:  BGE             loc_553F04
553EFC:  LDRB.W          R1, [R4,#0x45]
553F00:  LSLS            R1, R1, #0x1F
553F02:  BEQ             loc_553F64
553F04:  MOV.W           R11, #1
553F08:  B               loc_553F68
553F0A:  CMP             R1, #7
553F0C:  BHI             loc_553F64
553F0E:  ADDW            R2, R4, #0x4CC
553F12:  VLDR            S0, =250.0
553F16:  VLDR            S2, [R2]
553F1A:  VCMPE.F32       S2, S0
553F1E:  VMRS            APSR_nzcv, FPSCR
553F22:  BGE             loc_553F64
553F24:  LDRB.W          R2, [R4,#0x995]
553F28:  MOV.W           R11, #0
553F2C:  CMP             R2, #2
553F2E:  BNE             loc_553F68
553F30:  AND.W           R1, R1, #0xF8
553F34:  CMP             R1, #0x28 ; '('
553F36:  BNE             loc_553E7A
553F38:  B               loc_553F68
553F3A:  VLDR            S0, [R4,#0x48]
553F3E:  VCMP.F32        S0, #0.0
553F42:  VMRS            APSR_nzcv, FPSCR
553F46:  BNE             loc_553F64
553F48:  VLDR            S0, [R4,#0x4C]
553F4C:  VCMP.F32        S0, #0.0
553F50:  VMRS            APSR_nzcv, FPSCR
553F54:  BNE             loc_553F64
553F56:  VLDR            S0, [R4,#0x50]
553F5A:  VCMP.F32        S0, #0.0
553F5E:  VMRS            APSR_nzcv, FPSCR
553F62:  BEQ             loc_553EEE
553F64:  MOV.W           R11, #0
553F68:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x553F72)
553F6A:  ADDW            R10, R4, #0x42C
553F6E:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
553F70:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
553F72:  LDRB.W          R1, [R1,#(byte_796857 - 0x7967F4)]
553F76:  CBZ             R1, loc_553F92
553F78:  LDRB.W          R1, [R4,#0x3A]
553F7C:  CMP             R1, #7
553F7E:  BHI             loc_553F92
553F80:  CMP.W           R0, #0x1B6
553F84:  IT NE
553F86:  CMPNE.W         R0, #0x1A4
553F8A:  BNE             loc_553F92
553F8C:  ORR.W           R5, R5, #0x10
553F90:  STR             R5, [SP,#0x140+var_64]
553F92:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x553F98)
553F94:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
553F96:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
553F98:  LDRB.W          R0, [R0,#(byte_796831 - 0x7967F4)]
553F9C:  CMP             R0, #0
553F9E:  IT EQ
553FA0:  ANDSEQ.W        R0, R5, #0x10
553FA4:  BEQ             loc_553FB8
553FA6:  LDR.W           R0, [R4,#0x390]
553FAA:  MOVS            R1, #0x65 ; 'e'
553FAC:  STRB.W          R1, [R4,#0x48E]
553FB0:  ORR.W           R0, R0, #0x80000
553FB4:  STR.W           R0, [R4,#0x390]
553FB8:  LDRB.W          R0, [R10,#1]
553FBC:  LSLS            R0, R0, #0x1E
553FBE:  ITT MI
553FC0:  MOVMI           R0, R4; this
553FC2:  BLXMI           j__ZN11CAutomobile19ProcessAutoBusDoorsEv; CAutomobile::ProcessAutoBusDoors(void)
553FC6:  MOV             R0, R4; this
553FC8:  BLX             j__ZN8CVehicle15ProcessCarAlarmEv; CVehicle::ProcessCarAlarm(void)
553FCC:  MOV             R0, R4; this
553FCE:  BLX             j__ZN8CVehicle16UpdateClumpAlphaEv; CVehicle::UpdateClumpAlpha(void)
553FD2:  MOV             R0, R4; this
553FD4:  BLX             j__ZN8CVehicle19UpdatePassengerListEv; CVehicle::UpdatePassengerList(void)
553FD8:  LDRD.W          R1, R2, [R10]
553FDC:  LDR.W           R0, [R4,#0x464]
553FE0:  CBZ             R0, loc_554016
553FE2:  LSLS            R0, R2, #0x1A
553FE4:  BMI             loc_554010
553FE6:  LDRB.W          R0, [R4,#0x4B2]
553FEA:  AND.W           R0, R0, #7
553FEE:  CMP             R0, #5
553FF0:  BNE             loc_554010
553FF2:  MOV.W           R0, #0x3E8
553FF6:  STRH.W          R0, [R4,#0x4EE]
553FFA:  LDR.W           R0, [R4,#0x4DC]; this
553FFE:  STR.W           R0, [R4,#0x4F0]
554002:  CBZ             R0, loc_554010
554004:  ADD.W           R1, R4, #0x4F0; CEntity **
554008:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
55400C:  LDRD.W          R1, R2, [R10]
554010:  ORR.W           R0, R2, #0x20 ; ' '
554014:  B               loc_55401A
554016:  BIC.W           R0, R2, #0x20 ; ' '
55401A:  STRD.W          R1, R0, [R10]
55401E:  LDRB.W          R0, [R4,#0x488]
554022:  CBZ             R0, loc_554034
554024:  MOV             R0, R4; this
554026:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
55402A:  CMP             R0, #0
55402C:  ITT NE
55402E:  MOVNE           R0, R4; this
554030:  BLXNE           j__ZNK8CVehicle14CanPedEnterCarEv; CVehicle::CanPedEnterCar(void)
554034:  LDR             R0, [R4]
554036:  ADD             R1, SP, #0x140+var_64
554038:  LDR.W           R2, [R0,#0x10C]
55403C:  MOV             R0, R4
55403E:  BLX             R2
554040:  CMP             R0, #0
554042:  BNE.W           loc_555BCC
554046:  LDRB.W          R0, [R4,#0x3A]
55404A:  STR             R6, [SP,#0x140+var_108]
55404C:  AND.W           R1, R0, #0xF0
554050:  CMP             R1, #0x20 ; ' '
554052:  BNE             loc_5540A6
554054:  LDRB.W          R1, [R10,#3]
554058:  LSLS            R1, R1, #0x1F
55405A:  BNE             loc_5540AC
55405C:  VLDR            S0, [R4,#0x48]
554060:  VCMP.F32        S0, #0.0
554064:  VMRS            APSR_nzcv, FPSCR
554068:  BNE             loc_5540AC
55406A:  VLDR            S0, [R4,#0x4C]
55406E:  VCMP.F32        S0, #0.0
554072:  VMRS            APSR_nzcv, FPSCR
554076:  BNE             loc_5540AC
554078:  VLDR            S0, [R4,#0x50]
55407C:  VCMP.F32        S0, #0.0
554080:  VMRS            APSR_nzcv, FPSCR
554084:  BNE             loc_5540AC
554086:  VMOV.F32        S0, #1.0
55408A:  ADDW            R1, R4, #0x804
55408E:  VLDR            S2, [R1]
554092:  VCMP.F32        S2, S0
554096:  VMRS            APSR_nzcv, FPSCR
55409A:  ITE NE
55409C:  MOVNE.W         R9, #1
5540A0:  MOVEQ.W         R9, #0
5540A4:  B               loc_5540B0
5540A6:  MOV.W           R8, #0
5540AA:  B               loc_5543CA
5540AC:  MOV.W           R9, #0
5540B0:  LDR.W           R1, [R4,#0x5A4]
5540B4:  CMP             R1, #4
5540B6:  BNE             loc_5540E6
5540B8:  VLDR            S0, [R4,#0xDC]
5540BC:  VCMPE.F32       S0, #0.0
5540C0:  VMRS            APSR_nzcv, FPSCR
5540C4:  BLE             loc_55410E
5540C6:  LDR.W           R0, [R4,#0xE0]
5540CA:  CBZ             R0, loc_55410E
5540CC:  LDRB.W          R0, [R0,#0x3A]
5540D0:  AND.W           R0, R0, #7
5540D4:  CMP             R0, #2
5540D6:  BNE             loc_55410E
5540D8:  VLDR            S2, =0.003
5540DC:  VLDR            S0, =0.1
5540E0:  VMOV.F32        S4, S2
5540E4:  B               loc_55411A
5540E6:  AND.W           R0, R0, #0xF8
5540EA:  ADR             R1, unk_554294
5540EC:  CMP             R0, #0x28 ; '('
5540EE:  ADR             R2, loc_55429C
5540F0:  IT EQ
5540F2:  ADDEQ           R1, #4
5540F4:  IT EQ
5540F6:  ADDEQ           R2, #4
5540F8:  ADR             R3, loc_5542A4
5540FA:  CMP             R0, #0x28 ; '('
5540FC:  IT EQ
5540FE:  ADDEQ           R3, #4
554100:  VLDR            S4, [R2]
554104:  VLDR            S2, [R1]
554108:  VLDR            S0, [R3]
55410C:  B               loc_55411A
55410E:  VLDR            S4, =0.009
554112:  VLDR            S2, =0.003
554116:  VLDR            S0, =0.1
55411A:  ADD.W           R5, R4, #0x48 ; 'H'
55411E:  ADD.W           R0, R4, #0x78 ; 'x'
554122:  VLDR            S6, [R4,#0x58]
554126:  VMOV.F32        S14, #0.5
55412A:  VLDR            S10, [R4,#0x88]
55412E:  VLDR            S8, [R4,#0x5C]
554132:  VLDR            S12, [R4,#0x8C]
554136:  VADD.F32        S1, S10, S6
55413A:  VLD1.32         {D16-D17}, [R5]
55413E:  VADD.F32        S12, S12, S8
554142:  VLD1.32         {D18-D19}, [R0]
554146:  VADD.F32        Q8, Q9, Q8
55414A:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x554154)
55414C:  VMOV.I32        Q9, #0x3F000000
554150:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
554152:  VMUL.F32        Q2, Q8, Q9
554156:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
554158:  VMUL.F32        S6, S12, S14
55415C:  VMUL.F32        S12, S1, S14
554160:  VMUL.F32        S1, S9, S9
554164:  VST1.32         {D4-D5}, [R0]
554168:  VMUL.F32        S3, S8, S8
55416C:  VMUL.F32        S5, S10, S10
554170:  VSTR            S12, [R4,#0x88]
554174:  VSTR            S6, [R4,#0x8C]
554178:  VLDR            S14, [R1]
55417C:  VMUL.F32        S4, S4, S14
554180:  VADD.F32        S1, S3, S1
554184:  VMUL.F32        S4, S4, S4
554188:  VADD.F32        S1, S1, S5
55418C:  VCMPE.F32       S1, S4
554190:  VMRS            APSR_nzcv, FPSCR
554194:  BGT             loc_55424A
554196:  VMUL.F32        S4, S12, S12
55419A:  VMUL.F32        S8, S11, S11
55419E:  VMUL.F32        S2, S2, S14
5541A2:  VMUL.F32        S6, S6, S6
5541A6:  VADD.F32        S4, S8, S4
5541AA:  VMUL.F32        S2, S2, S2
5541AE:  VADD.F32        S4, S4, S6
5541B2:  VCMPE.F32       S4, S2
5541B6:  VMRS            APSR_nzcv, FPSCR
5541BA:  BGT             loc_55424A
5541BC:  VLDR            S2, [R4,#0xD8]
5541C0:  VCMPE.F32       S2, S0
5541C4:  VMRS            APSR_nzcv, FPSCR
5541C8:  BGE             loc_55424A
5541CA:  VLDR            S0, [R4,#0xDC]
5541CE:  VCMPE.F32       S0, #0.0
5541D2:  VMRS            APSR_nzcv, FPSCR
5541D6:  BLE             loc_5541EA
5541D8:  LDR.W           R0, [R4,#0xE0]
5541DC:  CBZ             R0, loc_5541EA
5541DE:  LDRB.W          R0, [R0,#0x3A]
5541E2:  AND.W           R0, R0, #7
5541E6:  CMP             R0, #3
5541E8:  BEQ             loc_55424A
5541EA:  LDRB.W          R0, [R4,#0x45]
5541EE:  LSLS            R0, R0, #0x1F
5541F0:  BEQ.W           loc_554B76
5541F4:  LDR             R0, =(TheCamera_ptr - 0x5541FC)
5541F6:  LDR             R1, [R4,#0x14]
5541F8:  ADD             R0, PC; TheCamera_ptr
5541FA:  ADD.W           R2, R1, #0x30 ; '0'
5541FE:  CMP             R1, #0
554200:  LDR             R0, [R0]; TheCamera
554202:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
554204:  IT EQ
554206:  ADDEQ           R2, R4, #4; float
554208:  VLDR            S0, [R2]
55420C:  ADD.W           R1, R3, #0x30 ; '0'
554210:  CMP             R3, #0
554212:  IT EQ
554214:  ADDEQ           R1, R0, #4
554216:  VLDR            D16, [R2,#4]
55421A:  VLDR            S2, [R1]
55421E:  VLDR            D17, [R1,#4]
554222:  VSUB.F32        S0, S0, S2
554226:  VSUB.F32        D16, D16, D17
55422A:  VMUL.F32        D1, D16, D16
55422E:  VMUL.F32        S0, S0, S0
554232:  VADD.F32        S0, S0, S2
554236:  VADD.F32        S0, S0, S3
55423A:  VLDR            S2, =2500.0
55423E:  VCMPE.F32       S0, S2
554242:  VMRS            APSR_nzcv, FPSCR
554246:  BGE.W           loc_554B76
55424A:  ADD.W           R6, R4, #0xBC
55424E:  CMP.W           R9, #0
554252:  BEQ             loc_554276
554254:  LDRB            R0, [R6]
554256:  ADDS            R0, #1
554258:  STRB            R0, [R6]
55425A:  LDR             R0, [R4,#0x14]
55425C:  ADD.W           R1, R0, #0x30 ; '0'
554260:  CMP             R0, #0
554262:  IT EQ
554264:  ADDEQ           R1, R4, #4
554266:  LDRD.W          R0, R1, [R1]; float
55426A:  BLX             j__ZN8CCarCtrl22MapCouldMoveInThisAreaEff; CCarCtrl::MapCouldMoveInThisArea(float,float)
55426E:  CBZ             R0, loc_5542CC
554270:  MOV.W           R8, #0
554274:  B               loc_5542EE
554276:  MOV.W           R8, #0
55427A:  STRB.W          R8, [R6]
55427E:  B               loc_5542EE
554280:  DCFS 250.0
554284:  DCD _ZN6CCheat15m_aCheatsActiveE_ptr - 0x553F72
554288:  DCD _ZN6CCheat15m_aCheatsActiveE_ptr - 0x553F98
55428C:  DCFS 0.003
554290:  DCFS 0.1
554295:  DCB 0xED
554296:  SUBS            R2, #0x6B ; 'k'
554298:  LDR             R3, [SP,#0x140+arg_150]
55429A:  SUBS            R2, #0xC4
55429C:  LDR             R3, [SP,#0x140+arg_150]
55429E:  SUBS            R3, #0x44 ; 'D'
5542A0:  LDR             R3, [SP,#0x140+arg_150]
5542A2:  SUBS            R3, #0xC4
5542A4:  BVC             off_5542BC
5542A6:  SUBS            R3, #0xA3
5542A8:  STM             R2, {R0-R3,R7}
5542AA:  SUBS            R4, #0x75 ; 'u'
5542AC:  DCFS 0.009
5542B0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x554154
5542B4:  DCD TheCamera_ptr - 0x5541FC
5542B8:  DCFS 2500.0
5542BC:  DCD _ZN6CCheat15m_aCheatsActiveE_ptr - 0x554346
5542C0:  DCD _ZN6CWorld20bForceProcessControlE_ptr - 0x5543D6
5542C4:  DCD _ZN6CCheat15m_aCheatsActiveE_ptr - 0x554524
5542C8:  DCFS 0.04
5542CC:  CMP.W           R9, #1
5542D0:  BNE             loc_5542D8
5542D2:  LDRB            R0, [R6]
5542D4:  CMP             R0, #0xB
5542D6:  BCC             loc_5542DC
5542D8:  MOVS            R0, #0xA
5542DA:  STRB            R0, [R6]
5542DC:  VMOV.I32        Q8, #0
5542E0:  MOVS            R0, #0
5542E2:  STR             R0, [R5,#0x14]
5542E4:  MOV.W           R8, #1
5542E8:  VST1.32         {D16-D17}, [R5]!
5542EC:  STR             R0, [R5]
5542EE:  LDR.W           R0, [R4,#0x388]
5542F2:  LDRB.W          R0, [R0,#0xCF]
5542F6:  LSLS            R0, R0, #0x1E
5542F8:  BPL             loc_55430C
5542FA:  ADD.W           R0, R4, #0x860
5542FE:  VLDR            S0, [R0]
554302:  VCMPE.F32       S0, #0.0
554306:  VMRS            APSR_nzcv, FPSCR
55430A:  BGT             loc_5543B8
55430C:  LDRSH.W         R0, [R4,#0x26]
554310:  MOVW            R1, #0x1BF
554314:  CMP             R0, R1
554316:  ITT NE
554318:  MOVWNE          R1, #0x1A1
55431C:  CMPNE           R0, R1
55431E:  BNE             loc_554334
554320:  LDRB.W          R1, [R4,#0x974]
554324:  CBNZ            R1, loc_554334
554326:  VLDR            S0, [R4,#0xDC]
55432A:  VCMPE.F32       S0, #0.0
55432E:  VMRS            APSR_nzcv, FPSCR
554332:  BLE             loc_5543B8
554334:  UXTH            R0, R0
554336:  MOVW            R1, #0x21B
55433A:  CMP             R0, R1
55433C:  BEQ             loc_55434C
55433E:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x554346)
554342:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
554344:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
554346:  LDRB.W          R0, [R0,#(byte_79681D - 0x7967F4)]
55434A:  CBZ             R0, loc_5543C0
55434C:  VMOV.F32        S0, #1.0
554350:  ADD.W           R0, R4, #0x7E8
554354:  VLDR            S2, [R0]
554358:  VCMPE.F32       S2, S0
55435C:  VMRS            APSR_nzcv, FPSCR
554360:  BGE             loc_55436A
554362:  LDRB.W          R0, [R4,#0x75B]
554366:  CMP             R0, #0x27 ; '''
554368:  BEQ             loc_5543B8
55436A:  ADDW            R0, R4, #0x7EC
55436E:  VLDR            S2, [R0]
554372:  VCMPE.F32       S2, S0
554376:  VMRS            APSR_nzcv, FPSCR
55437A:  BGE             loc_554384
55437C:  LDRB.W          R0, [R4,#0x787]
554380:  CMP             R0, #0x27 ; '''
554382:  BEQ             loc_5543B8
554384:  ADD.W           R0, R4, #0x7F0
554388:  VLDR            S2, [R0]
55438C:  VCMPE.F32       S2, S0
554390:  VMRS            APSR_nzcv, FPSCR
554394:  BGE             loc_55439E
554396:  LDRB.W          R0, [R4,#0x7B3]
55439A:  CMP             R0, #0x27 ; '''
55439C:  BEQ             loc_5543B8
55439E:  ADDW            R0, R4, #0x7F4
5543A2:  VLDR            S2, [R0]
5543A6:  VCMPE.F32       S2, S0
5543AA:  VMRS            APSR_nzcv, FPSCR
5543AE:  BGE             loc_5543C0
5543B0:  LDRB.W          R0, [R4,#0x7DF]
5543B4:  CMP             R0, #0x27 ; '''
5543B6:  BNE             loc_5543C0
5543B8:  MOV.W           R8, #0
5543BC:  STRB.W          R8, [R6]
5543C0:  CMP.W           R8, #0
5543C4:  IT NE
5543C6:  MOVNE.W         R8, #1
5543CA:  LDR.W           R0, =(_ZN6CWorld20bForceProcessControlE_ptr - 0x5543D6)
5543CE:  LDR.W           R1, [R4,#0x8FC]
5543D2:  ADD             R0, PC; _ZN6CWorld20bForceProcessControlE_ptr
5543D4:  CMP             R1, #0
5543D6:  LDR             R0, [R0]; CWorld::bForceProcessControl ...
5543D8:  LDRB            R0, [R0]; CWorld::bForceProcessControl
5543DA:  BEQ             loc_5543F4
5543DC:  LDR.W           R2, [R10,#4]
5543E0:  CMP             R0, #0
5543E2:  ORR.W           R2, R2, #2
5543E6:  STR.W           R2, [R10,#4]
5543EA:  BNE             loc_5543F4
5543EC:  LDRB            R1, [R1,#0x1C]
5543EE:  LSLS            R1, R1, #0x1A
5543F0:  BMI.W           loc_5544E4
5543F4:  LDR.W           R1, [R4,#0x900]
5543F8:  CBZ             R1, loc_554412
5543FA:  LDR.W           R2, [R10,#4]
5543FE:  CMP             R0, #0
554400:  ORR.W           R2, R2, #2
554404:  STR.W           R2, [R10,#4]
554408:  BNE             loc_554412
55440A:  LDRB            R1, [R1,#0x1C]
55440C:  LSLS            R1, R1, #0x1A
55440E:  BMI.W           loc_5544E4
554412:  LDR.W           R1, [R4,#0x904]
554416:  CBZ             R1, loc_554430
554418:  LDR.W           R2, [R10,#4]
55441C:  CMP             R0, #0
55441E:  ORR.W           R2, R2, #2
554422:  STR.W           R2, [R10,#4]
554426:  BNE             loc_554430
554428:  LDRB            R1, [R1,#0x1C]
55442A:  LSLS            R1, R1, #0x1A
55442C:  BMI.W           loc_5544E4
554430:  LDR.W           R2, [R4,#0x908]
554434:  LDR.W           R1, [R10,#4]
554438:  CBZ             R2, loc_554452
55443A:  ORR.W           R1, R1, #2
55443E:  LDR.W           R3, [R10]
554442:  CMP             R0, #0
554444:  STRD.W          R3, R1, [R10]
554448:  BNE             loc_554452
55444A:  LDRB            R0, [R2,#0x1C]
55444C:  LSLS            R0, R0, #0x1A
55444E:  BMI.W           loc_5544E4
554452:  LSLS            R0, R1, #0x1E
554454:  ITT MI
554456:  MOVMI.W         R8, #0
55445A:  STRBMI.W        R8, [R4,#0xBC]
55445E:  LDR             R0, [R4]
554460:  MOVS            R1, #0
554462:  MOVS            R2, #0
554464:  MOVS            R3, #0
554466:  LDR.W           R6, [R0,#0xE4]
55446A:  MOVS            R0, #0x31 ; '1'
55446C:  STRD.W          R1, R1, [SP,#0x140+var_140]; __int16
554470:  MOVS            R1, #0
554472:  STR             R0, [SP,#0x140+var_138]
554474:  MOV             R0, R4
554476:  BLX             R6
554478:  LDRB.W          R0, [R4,#0x3A]
55447C:  LDRSH.W         R1, [R4,#0x26]
554480:  CMP             R0, #7
554482:  BHI             loc_55449E
554484:  MOVW            R2, #0x259
554488:  CMP             R1, R2
55448A:  ITT NE
55448C:  MOVWNE          R2, #0x197
554490:  CMPNE           R1, R2
554492:  BNE             loc_55449E
554494:  MOV             R0, R4; this
554496:  MOVS            R1, #0; CFire *
554498:  BLX             j__ZN11CAutomobile16FireTruckControlEP5CFire; CAutomobile::FireTruckControl(CFire *)
55449C:  B               loc_55458C
55449E:  CMP.W           R1, #0x1E6
5544A2:  BLT             loc_5544F0
5544A4:  SUB.W           R2, R1, #0x20C; switch 41 cases
5544A8:  CMP             R2, #0x28 ; '('
5544AA:  BHI.W           def_5544AE; jumptable 005544AE default case
5544AE:  TBB.W           [PC,R2]; switch jump
5544B2:  DCB 0x63; jump table for switch statement
5544B3:  DCB 0x15
5544B4:  DCB 0x29
5544B5:  DCB 0x29
5544B6:  DCB 0x29
5544B7:  DCB 0x29
5544B8:  DCB 0x63
5544B9:  DCB 0x15
5544BA:  DCB 0x29
5544BB:  DCB 0x29
5544BC:  DCB 0x29
5544BD:  DCB 0x29
5544BE:  DCB 0x29
5544BF:  DCB 0x29
5544C0:  DCB 0x29
5544C1:  DCB 0x29
5544C2:  DCB 0x29
5544C3:  DCB 0x29
5544C4:  DCB 0x29
5544C5:  DCB 0x29
5544C6:  DCB 0x29
5544C7:  DCB 0x29
5544C8:  DCB 0x29
5544C9:  DCB 0x29
5544CA:  DCB 0x29
5544CB:  DCB 0x29
5544CC:  DCB 0x29
5544CD:  DCB 0x29
5544CE:  DCB 0x29
5544CF:  DCB 0x29
5544D0:  DCB 0x29
5544D1:  DCB 0x29
5544D2:  DCB 0x29
5544D3:  DCB 0x29
5544D4:  DCB 0x29
5544D5:  DCB 0x29
5544D6:  DCB 0x29
5544D7:  DCB 0x29
5544D8:  DCB 0x29
5544D9:  DCB 0x29
5544DA:  DCB 0x59
5544DB:  ALIGN 2
5544DC:  MOV             R0, R4; jumptable 005544AE cases 525,531
5544DE:  BLX             j__ZN11CAutomobile15TowTruckControlEv; CAutomobile::TowTruckControl(void)
5544E2:  B               loc_55458C
5544E4:  LDR             R0, [R4,#0x1C]
5544E6:  ORR.W           R0, R0, #0x40 ; '@'
5544EA:  STR             R0, [R4,#0x1C]
5544EC:  B.W             loc_555BCC
5544F0:  CMP.W           R1, #0x196
5544F4:  BEQ             loc_554578; jumptable 005544AE cases 524,530
5544F6:  CMP.W           R1, #0x1B0
5544FA:  BEQ             loc_554564; jumptable 005544AE case 564
5544FC:  MOVW            R2, #0x1BB
554500:  CMP             R1, R2
554502:  BEQ             loc_554578; jumptable 005544AE cases 524,530
554504:  LDRB.W          R1, [R4,#0x392]; jumptable 005544AE cases 526-529,532-563
554508:  LSLS            R1, R1, #0x1E
55450A:  BMI.W           loc_554B9C
55450E:  CMP             R0, #7
554510:  BHI             loc_55451C
554512:  LDR             R1, [SP,#0x140+var_64]
554514:  TST.W           R1, #0x10
554518:  BNE.W           loc_554B9E
55451C:  LDR.W           R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x554524)
554520:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
554522:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
554524:  LDRB.W          R1, [R1,#(byte_796817 - 0x7967F4)]
554528:  CBZ             R1, loc_55458C
55452A:  CMP             R0, #7
55452C:  BHI             loc_55458C
55452E:  VLDR            S0, [R4,#0x48]
554532:  VLDR            S2, [R4,#0x4C]
554536:  VMUL.F32        S0, S0, S0
55453A:  VLDR            S4, [R4,#0x50]
55453E:  VMUL.F32        S2, S2, S2
554542:  VMUL.F32        S4, S4, S4
554546:  VADD.F32        S0, S0, S2
55454A:  VLDR            S2, =0.04
55454E:  VADD.F32        S0, S0, S4
554552:  VCMPE.F32       S0, S2
554556:  VMRS            APSR_nzcv, FPSCR
55455A:  ITT GT
55455C:  MOVGT           R0, R4; this
55455E:  BLXGT           j__ZN11CAutomobile16BoostJumpControlEv; CAutomobile::BoostJumpControl(void)
554562:  B               loc_55458C
554564:  MOV             R0, R4; jumptable 005544AE case 564
554566:  BLX             j__ZN11CAutomobile11TankControlEv; CAutomobile::TankControl(void)
55456A:  B               loc_55458C
55456C:  CMP.W           R1, #0x1E6; jumptable 005544AE default case
554570:  IT NE
554572:  CMPNE.W         R1, #0x250
554576:  BNE             loc_554504; jumptable 005544AE cases 526-529,532-563
554578:  MOVS            R1, #0; jumptable 005544AE cases 524,530
55457A:  MOV             R0, R4; this
55457C:  MOVT            R1, #0xBF80; float
554580:  BLX             j__ZN11CAutomobile21UpdateMovingCollisionEf; CAutomobile::UpdateMovingCollision(float)
554584:  EOR.W           R0, R0, #1
554588:  AND.W           R8, R8, R0
55458C:  LDRB.W          R0, [R4,#0x392]
554590:  LSLS            R0, R0, #0x1C
554592:  BMI             loc_5545B6
554594:  LDR.W           R0, [R4,#0x98C]; this
554598:  CBZ             R0, loc_5545A4
55459A:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
55459E:  MOVS            R0, #0
5545A0:  STR.W           R0, [R4,#0x98C]
5545A4:  LDR.W           R0, [R4,#0x990]; this
5545A8:  CBZ             R0, loc_5545BE
5545AA:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
5545AE:  MOVS            R0, #0
5545B0:  STR.W           R0, [R4,#0x990]
5545B4:  B               loc_5545BE
5545B6:  MOV             R0, R4; this
5545B8:  MOVS            R1, #0; signed __int8
5545BA:  BLX             j__ZN11CAutomobile14NitrousControlEa; CAutomobile::NitrousControl(signed char)
5545BE:  MOV.W           R0, #0xFFFFFFFF; int
5545C2:  MOVS            R1, #0; bool
5545C4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5545C8:  CMP             R0, R4
5545CA:  STR             R4, [SP,#0x140+var_FC]
5545CC:  BEQ             loc_55463A
5545CE:  CMP.W           R8, #1
5545D2:  STRD.W          R8, R10, [SP,#0x140+var_120]
5545D6:  BNE             loc_5545F8
5545D8:  LDR             R4, [SP,#0x140+var_FC]
5545DA:  MOV             R0, R4; this
5545DC:  BLX             j__ZN9CPhysical11SkipPhysicsEv; CPhysical::SkipPhysics(void)
5545E0:  LDR.W           R0, [R10]
5545E4:  BIC.W           R0, R0, #0x21000000
5545E8:  STR.W           R0, [R10]
5545EC:  MOV.W           R0, #0x3F800000
5545F0:  STR.W           R0, [R4,#0x8B8]
5545F4:  B.W             loc_555204
5545F8:  LDRB.W          R0, [R10,#3]
5545FC:  LDR             R4, [SP,#0x140+var_FC]
5545FE:  LSLS            R0, R0, #0x1F
554600:  BNE             loc_55460C
554602:  LDR             R0, [R4]
554604:  MOVS            R1, #1
554606:  LDR             R2, [R0,#0x60]
554608:  MOV             R0, R4
55460A:  BLX             R2
55460C:  VLDR            S0, [R4,#0xDC]
554610:  LDR             R5, [R4,#0x1C]
554612:  LDR             R0, [R4,#0x44]
554614:  VCMPE.F32       S0, #0.0
554618:  VMRS            APSR_nzcv, FPSCR
55461C:  BLE             loc_554688
55461E:  VLDR            S0, =0.1
554622:  VLDR            S2, [R4,#0xEC]
554626:  VCMPE.F32       S2, S0
55462A:  VMRS            APSR_nzcv, FPSCR
55462E:  ITE GT
554630:  MOVGT.W         R8, #1
554634:  MOVLE.W         R8, #0
554638:  B               loc_55468C
55463A:  LDR             R0, [SP,#0x140+var_FC]
55463C:  MOVW            R4, #0xFFFF
554640:  LDRB.W          R0, [R0,#0x4B2]
554644:  AND.W           R0, R0, #7
554648:  CMP             R0, #2
55464A:  BEQ             loc_554716
55464C:  CMP             R0, #1
55464E:  BNE             loc_5545CE
554650:  MOVS            R0, #0; this
554652:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
554656:  BLX             j__ZN4CPad7UseBombEv; CPad::UseBomb(void)
55465A:  CMP             R0, #1
55465C:  BNE             loc_5545CE
55465E:  LDR             R0, [SP,#0x140+var_FC]
554660:  MOVW            R1, #0x1B58
554664:  MOV             R5, R0
554666:  LDRB.W          R0, [R5,#0x4B2]
55466A:  STRH.W          R1, [R5,#0x4EE]
55466E:  AND.W           R0, R0, #0xF8
554672:  ORR.W           R0, R0, #4
554676:  STRB.W          R0, [R5,#0x4B2]
55467A:  MOV.W           R0, #0xFFFFFFFF; int
55467E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
554682:  STR.W           R0, [R5,#0x4F0]
554686:  B               loc_55473A
554688:  MOV.W           R8, #0
55468C:  LDR             R6, [SP,#0x140+var_FC]
55468E:  AND.W           R4, R0, #0x100
554692:  MOV             R0, R6; this
554694:  BLX             j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
554698:  LDRH            R0, [R6,#0x26]
55469A:  CMP.W           R0, #0x1CC
55469E:  BNE             loc_5546EA
5546A0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5546AC)
5546A2:  AND.W           R5, R5, #0x1000
5546A6:  LDR             R2, =(mod_HandlingManager_ptr - 0x5546AE)
5546A8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5546AA:  ADD             R2, PC; mod_HandlingManager_ptr
5546AC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5546AE:  LDR.W           R0, [R0,#(dword_91E3E8 - 0x91DCB8)]
5546B2:  LDRH.W          R1, [R0,#0x62]; unsigned __int8
5546B6:  LDR             R0, [R2]; mod_HandlingManager ; this
5546B8:  BLX             j__ZN16cHandlingDataMgr14GetBoatPointerEh; cHandlingDataMgr::GetBoatPointer(uchar)
5546BC:  CMP             R5, #0
5546BE:  STR.W           R8, [SP,#0x140+var_140]; int
5546C2:  IT NE
5546C4:  MOVNE           R5, #1
5546C6:  ADD.W           R2, R6, #0x960; int
5546CA:  MOV             R1, R0; int
5546CC:  MOV             R0, R6; CVehicle *
5546CE:  MOV             R3, R5; int
5546D0:  BLX             j__ZN8CVehicle18ProcessBoatControlEP17tBoatHandlingDataRfbb; CVehicle::ProcessBoatControl(tBoatHandlingData *,float &,bool,bool)
5546D4:  LDR             R0, [R6,#0x44]
5546D6:  BIC.W           R1, R0, #0x8000000
5546DA:  TST.W           R0, #0x100
5546DE:  IT NE
5546E0:  ORRNE.W         R1, R0, #0x8000000
5546E4:  STR             R1, [R6,#0x44]
5546E6:  CBZ             R4, loc_5546F4
5546E8:  B               loc_55477A
5546EA:  MOV             R0, R6; this
5546EC:  BLX             j__ZN11CAutomobile15ProcessBuoyancyEv; CAutomobile::ProcessBuoyancy(void)
5546F0:  CMP             R4, #0
5546F2:  BNE             loc_55477A
5546F4:  LDR             R0, [SP,#0x140+var_FC]
5546F6:  LDRB.W          R0, [R0,#0x45]
5546FA:  LSLS            R0, R0, #0x1F
5546FC:  BEQ             loc_55477A
5546FE:  LDR             R4, [SP,#0x140+var_FC]
554700:  LDR.W           R0, [R4,#0x464]; this
554704:  CBZ             R0, loc_55474A
554706:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
55470A:  CBZ             R0, loc_55474A
55470C:  LDR.W           R0, [R4,#0x464]; this
554710:  BLX             j__ZN10CPlayerPed17ResetPlayerBreathEv; CPlayerPed::ResetPlayerBreath(void)
554714:  B               loc_55477A
554716:  MOVS            R0, #0; this
554718:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
55471C:  BLX             j__ZN4CPad7UseBombEv; CPad::UseBomb(void)
554720:  CMP             R0, #1
554722:  BNE.W           loc_5545CE
554726:  LDR             R0, [SP,#0x140+var_FC]
554728:  MOV             R1, R0
55472A:  LDRB.W          R0, [R1,#0x4B2]
55472E:  AND.W           R0, R0, #0xF8
554732:  ORR.W           R0, R0, #5
554736:  STRB.W          R0, [R1,#0x4B2]
55473A:  SXTH            R1, R4; char *
55473C:  ADR             R0, aGa12; "GA_12"
55473E:  MOVW            R2, #0xBB8; __int16
554742:  MOV             R3, R1; unsigned __int16
554744:  BLX             j__ZN8CGarages14TriggerMessageEPcsts; CGarages::TriggerMessage(char *,short,ushort,short)
554748:  B               loc_5545CE
55474A:  LDRB.W          R0, [R4,#0x48C]
55474E:  CBZ             R0, loc_55477A
554750:  LDR             R0, [SP,#0x140+var_FC]
554752:  MOVS            R5, #0
554754:  ADD.W           R4, R0, #0x468
554758:  LDR.W           R0, [R4,R5,LSL#2]; this
55475C:  CBZ             R0, loc_55476E
55475E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
554762:  CMP             R0, #1
554764:  ITT EQ
554766:  LDREQ.W         R0, [R4,R5,LSL#2]; this
55476A:  BLXEQ           j__ZN10CPlayerPed17ResetPlayerBreathEv; CPlayerPed::ResetPlayerBreath(void)
55476E:  LDR             R0, [SP,#0x140+var_FC]
554770:  ADDS            R5, #1
554772:  LDRB.W          R0, [R0,#0x48C]
554776:  CMP             R5, R0
554778:  BLT             loc_554758
55477A:  LDR             R4, [SP,#0x140+var_FC]
55477C:  LDRH            R0, [R4,#0x26]
55477E:  CMP.W           R0, #0x1D0
554782:  BNE             loc_55478E
554784:  LDR             R0, [R4]
554786:  LDR.W           R1, [R0,#0x114]
55478A:  MOV             R0, R4
55478C:  BLX             R1
55478E:  STR.W           R11, [SP,#0x140+var_114]
554792:  LDRSB.W         R0, [R4,#0x87C]
554796:  CMP             R0, #0
554798:  BLT             loc_55485E
55479A:  ADDW            R1, R4, #0x894
55479E:  ADDW            R0, R4, #0x88C
5547A2:  ADDW            R3, R4, #0x8A8
5547A6:  ADD.W           R2, R4, #0x890
5547AA:  VLDR            S8, [R1]
5547AE:  ADDW            R1, R4, #0x89C
5547B2:  VLDR            S0, [R3]
5547B6:  ADD.W           R3, R4, #0x8A0
5547BA:  VLDR            S10, [R1]
5547BE:  ADD.W           R1, R4, #0x7E8
5547C2:  VLDR            S12, [R0]
5547C6:  ADDW            R0, R4, #0x898
5547CA:  VLDR            S2, [R3]
5547CE:  ADDW            R3, R4, #0x7F4
5547D2:  VLDR            S4, [R2]
5547D6:  ADDW            R2, R4, #0x8A4
5547DA:  VDIV.F32        S10, S12, S10
5547DE:  VLDR            S6, [R2]
5547E2:  ADD.W           R2, R4, #0x7F0
5547E6:  VLDR            S14, [R0]
5547EA:  ADDW            R0, R4, #0x7EC
5547EE:  VDIV.F32        S2, S4, S2
5547F2:  VDIV.F32        S0, S14, S0
5547F6:  VDIV.F32        S6, S8, S6
5547FA:  VMOV.F32        S4, #1.0
5547FE:  VLDR            S14, [R2]
554802:  VSUB.F32        S8, S4, S10
554806:  VLDR            S10, [R1]
55480A:  VSUB.F32        S2, S4, S2
55480E:  VSUB.F32        S6, S4, S6
554812:  VSUB.F32        S0, S4, S0
554816:  VSUB.F32        S12, S4, S8
55481A:  VSUB.F32        S8, S10, S8
55481E:  VLDR            S10, [R0]
554822:  VSUB.F32        S3, S4, S2
554826:  VSUB.F32        S2, S10, S2
55482A:  VLDR            S10, [R3]
55482E:  VSUB.F32        S1, S4, S6
554832:  VSUB.F32        S6, S14, S6
554836:  VSUB.F32        S4, S4, S0
55483A:  VSUB.F32        S0, S10, S0
55483E:  VDIV.F32        S8, S8, S12
554842:  VDIV.F32        S2, S2, S3
554846:  VDIV.F32        S6, S6, S1
55484A:  VDIV.F32        S0, S0, S4
55484E:  VSTR            S8, [R1]
554852:  VSTR            S2, [R0]
554856:  VSTR            S6, [R2]
55485A:  VSTR            S0, [R3]
55485E:  MOV             R1, R4
554860:  LDR.W           R0, [R1],#4
554864:  STR             R1, [SP,#0x140+var_10C]
554866:  LDR.W           R1, [R0,#0x11C]
55486A:  MOV             R0, R4
55486C:  BLX             R1
55486E:  VMOV.F32        S16, #1.0
554872:  LDR             R0, =(g_surfaceInfos_ptr - 0x55487E)
554874:  MOVW            R6, #0x838
554878:  MOVS            R3, #0x10
55487A:  ADD             R0, PC; g_surfaceInfos_ptr
55487C:  MOV.W           R11, #0
554880:  MOV.W           R10, #0
554884:  MOVS            R5, #0
554886:  LDR             R0, [R0]; g_surfaceInfos
554888:  MOVS            R4, #0
55488A:  STR             R0, [SP,#0x140+var_110]
55488C:  LDR.W           R9, [SP,#0x140+var_FC]
554890:  ADD.W           R8, R9, R5
554894:  ADD.W           R0, R8, #0x7E8
554898:  VLDR            S0, [R0]
55489C:  VCMPE.F32       S0, S16
5548A0:  VMRS            APSR_nzcv, FPSCR
5548A4:  BGE             loc_554922
5548A6:  MOVS            R0, #0
5548A8:  STRD.W          R3, R6, [SP,#0x140+var_104]
5548AC:  STRB.W          R0, [R9,R6]
5548B0:  ADD.W           R6, R9, R11
5548B4:  LDRB.W          R1, [R6,#0x75B]; unsigned int
5548B8:  LDR             R0, [SP,#0x140+var_110]; this
5548BA:  BLX             j__ZN14SurfaceInfos_c15GetSkidmarkTypeEj; SurfaceInfos_c::GetSkidmarkType(uint)
5548BE:  STR.W           R0, [R8,#0x824]
5548C2:  CMP             R0, #2
5548C4:  ITTT EQ
5548C6:  LDREQ           R0, [SP,#0x140+var_100]
5548C8:  MOVEQ           R1, #1
5548CA:  STRBEQ.W        R1, [R9,R0]
5548CE:  ADDW            R2, R6, #0x73C
5548D2:  LDR.W           R0, [R9,#0x14]
5548D6:  ADD.W           R1, R6, #0x740
5548DA:  VLDR            S0, [R2]
5548DE:  LDR             R2, [SP,#0x140+var_10C]
5548E0:  CMP             R0, #0
5548E2:  IT NE
5548E4:  ADDNE.W         R2, R0, #0x30 ; '0'
5548E8:  ADD.W           R0, R6, #0x738
5548EC:  VLDR            S4, [R2,#4]
5548F0:  VLDR            S8, [R0]
5548F4:  ADD             R0, SP, #0x140+var_C8
5548F6:  VLDR            S2, [R2]
5548FA:  VSUB.F32        S0, S0, S4
5548FE:  VLDR            S6, [R2,#8]
554902:  ADD             R0, R4
554904:  VLDR            S10, [R1]
554908:  VSUB.F32        S2, S8, S2
55490C:  VSUB.F32        S4, S10, S6
554910:  VSTR            S2, [R0]
554914:  VSTR            S0, [R0,#4]
554918:  VSTR            S4, [R0,#8]
55491C:  LDRD.W          R3, R6, [SP,#0x140+var_104]
554920:  B               loc_5549D4
554922:  LDR             R1, [SP,#0x140+var_108]
554924:  LDRB            R0, [R1,#7]
554926:  LSLS            R0, R0, #0x1F
554928:  BNE             loc_55498C
55492A:  LDR             R0, [R1,#0x10]
55492C:  MOV             R8, R3
55492E:  LDR             R1, [SP,#0x140+var_FC]
554930:  ADDS            R2, R0, R3
554932:  ADD             R0, SP, #0x140+var_98; CMatrix *
554934:  LDR             R1, [R1,#0x14]; CVector *
554936:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
55493A:  ADD             R1, SP, #0x140+var_C8
55493C:  VLDR            D16, [SP,#0x140+var_98]
554940:  ADD             R1, R4
554942:  MOV             R3, R8
554944:  LDR             R0, [SP,#0x140+var_90]
554946:  STR             R0, [R1,#8]
554948:  VSTR            D16, [R1]
55494C:  B               loc_5549D4
55494E:  ALIGN 0x10
554950:  DCFS 0.1
554954:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5546AC
554958:  DCD mod_HandlingManager_ptr - 0x5546AE
55495C:  DCB "GA_12",0
554962:  ALIGN 4
554964:  DCD g_surfaceInfos_ptr - 0x55487E
554968:  DCFS 0.4
55496C:  DCFS 0.15
554970:  DCD TheCamera_ptr - 0x554B18
554974:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x554B54
554978:  DCFS 50.0
55497C:  DCFS 1000.0
554980:  DCFS 2500.0
554984:  DCFS -0.008
554988:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x554C8A
55498C:  LDR             R0, [R1,#0x10]
55498E:  ADD             R2, SP, #0x140+var_C8
554990:  MOV             R8, R6
554992:  ADDS            R6, R2, R4
554994:  ADD             R0, R10
554996:  MOV             R9, R3
554998:  MOV             R2, R6
55499A:  VLDR            D16, [R0]
55499E:  LDR             R0, [R0,#8]
5549A0:  STR             R0, [R6,#8]
5549A2:  VSTR            D16, [R6]
5549A6:  LDR             R0, [R1,#0x10]
5549A8:  VLDR            S0, [R6,#8]
5549AC:  ADD             R0, R10
5549AE:  VLDR            S2, [R0,#0xC]
5549B2:  LDR             R0, [SP,#0x140+var_FC]
5549B4:  VSUB.F32        S0, S0, S2
5549B8:  VSTR            S0, [R6,#8]
5549BC:  LDR             R1, [R0,#0x14]; CVector *
5549BE:  ADD             R0, SP, #0x140+var_98; CMatrix *
5549C0:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5549C4:  VLDR            D16, [SP,#0x140+var_98]
5549C8:  MOV             R3, R9
5549CA:  LDR             R0, [SP,#0x140+var_90]
5549CC:  STR             R0, [R6,#8]
5549CE:  VSTR            D16, [R6]
5549D2:  MOV             R6, R8
5549D4:  ADDS            R4, #0xC
5549D6:  ADD.W           R11, R11, #0x2C ; ','
5549DA:  ADDS            R3, #0x20 ; ' '
5549DC:  ADD.W           R10, R10, #0x24 ; '$'
5549E0:  ADDS            R6, #1
5549E2:  ADDS            R5, #4
5549E4:  CMP             R4, #0x30 ; '0'
5549E6:  BNE.W           loc_55488C
5549EA:  LDR.W           R11, [SP,#0x140+var_114]
5549EE:  ADD.W           R9, SP, #0x140+var_F8
5549F2:  MOV.W           R8, #0
5549F6:  MOVW            R6, #0x8FC
5549FA:  MOVS            R4, #0
5549FC:  ADD             R0, SP, #0x140+var_C8
5549FE:  LDR             R2, [R0,R4]
554A00:  ADD             R0, R4
554A02:  LDRD.W          R3, R0, [R0,#4]
554A06:  LDR.W           R10, [SP,#0x140+var_FC]
554A0A:  STR             R0, [SP,#0x140+var_140]
554A0C:  MOV             R0, R9
554A0E:  MOV             R1, R10
554A10:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
554A14:  ADD             R1, SP, #0x140+var_98
554A16:  VLDR            D16, [SP,#0x140+var_F8]
554A1A:  ADDS            R5, R1, R4
554A1C:  LDR             R0, [SP,#0x140+var_F0]
554A1E:  STR             R0, [R5,#8]
554A20:  VSTR            D16, [R5]
554A24:  LDR.W           R1, [R10,R6]
554A28:  CBZ             R1, loc_554A76
554A2A:  ADD.W           R0, R10, R4
554A2E:  LDR.W           R2, [R0,#0x90C]
554A32:  LDR.W           R3, [R0,#0x910]
554A36:  LDR.W           R0, [R0,#0x914]
554A3A:  STR             R0, [SP,#0x140+var_140]
554A3C:  MOV             R0, R9
554A3E:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
554A42:  VLDR            S0, [R5]
554A46:  VLDR            S6, [SP,#0x140+var_F8]
554A4A:  VLDR            S2, [R5,#4]
554A4E:  VSUB.F32        S0, S0, S6
554A52:  VLDR            S6, [SP,#0x140+var_F8+4]
554A56:  VLDR            S4, [R5,#8]
554A5A:  VSUB.F32        S2, S2, S6
554A5E:  VLDR            S6, [SP,#0x140+var_F0]
554A62:  VSUB.F32        S4, S4, S6
554A66:  VSTR            S0, [R5]
554A6A:  VSTR            S2, [R5,#4]
554A6E:  VSTR            S4, [R5,#8]
554A72:  STR.W           R8, [R10,R6]
554A76:  ADDS            R4, #0xC
554A78:  ADDS            R6, #4
554A7A:  CMP             R4, #0x30 ; '0'
554A7C:  BNE             loc_5549FC
554A7E:  LDR             R4, [SP,#0x140+var_FC]
554A80:  LDR.W           R10, [SP,#0x140+var_11C]
554A84:  LDR             R0, [R4,#0x14]
554A86:  VLDR            S0, [R4,#0x48]
554A8A:  VLDR            S2, [R4,#0x4C]
554A8E:  VLDR            S6, [R0,#0x10]
554A92:  VLDR            S8, [R0,#0x14]
554A96:  VMUL.F32        S0, S0, S6
554A9A:  VLDR            S4, [R4,#0x50]
554A9E:  VMUL.F32        S2, S2, S8
554AA2:  VLDR            S10, [R0,#0x18]
554AA6:  VMUL.F32        S4, S4, S10
554AAA:  VADD.F32        S0, S0, S2
554AAE:  VADD.F32        S0, S0, S4
554AB2:  VSTR            S0, [SP,#0x140+var_CC]
554AB6:  LDRB.W          R0, [R10,#3]
554ABA:  LSLS            R0, R0, #0x1A
554ABC:  BPL.W           loc_554C76
554AC0:  ADD.W           R0, R4, #0x4A0
554AC4:  VLDR            S2, =0.4
554AC8:  VLDR            S4, [R0]
554ACC:  VCMPE.F32       S4, S2
554AD0:  VMRS            APSR_nzcv, FPSCR
554AD4:  BLE.W           loc_554C76
554AD8:  VLDR            S2, =0.15
554ADC:  VCMPE.F32       S0, S2
554AE0:  VMRS            APSR_nzcv, FPSCR
554AE4:  BLE.W           loc_554C76
554AE8:  ADDW            R0, R4, #0x4A4
554AEC:  VLDR            S2, =0.1
554AF0:  VLDR            S0, [R0]
554AF4:  VCMPE.F32       S0, S2
554AF8:  VMRS            APSR_nzcv, FPSCR
554AFC:  BGE.W           loc_554C76
554B00:  MOV.W           R0, #0xFFFFFFFF; int
554B04:  MOVS            R1, #0; bool
554B06:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
554B0A:  CMP             R4, R0
554B0C:  BNE.W           loc_554C76
554B10:  LDR.W           R0, =(TheCamera_ptr - 0x554B18)
554B14:  ADD             R0, PC; TheCamera_ptr
554B16:  LDR             R0, [R0]; TheCamera
554B18:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
554B1C:  ADD.W           R1, R1, R1,LSL#5
554B20:  ADD.W           R0, R0, R1,LSL#4
554B24:  LDRH.W          R0, [R0,#0x17E]
554B28:  CMP             R0, #0x10
554B2A:  BEQ.W           loc_554C76
554B2E:  LDRB.W          R0, [R4,#0x3A]
554B32:  CMP             R0, #7
554B34:  BHI             loc_554BCA
554B36:  LDR.W           R0, [R4,#0x388]
554B3A:  LDRB.W          R0, [R0,#0xCC]
554B3E:  LSLS            R0, R0, #0x1E
554B40:  BMI             loc_554BCA
554B42:  LDR.W           R0, [R4,#0x884]
554B46:  CBZ             R0, loc_554BC2
554B48:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x554B54)
554B4C:  VLDR            S0, =50.0
554B50:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
554B52:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
554B54:  VLDR            S2, [R1]
554B58:  VDIV.F32        S0, S2, S0
554B5C:  VLDR            S2, =1000.0
554B60:  VMUL.F32        S0, S0, S2
554B64:  VCVT.U32.F32    S0, S0
554B68:  VMOV            R1, S0
554B6C:  CMP             R0, R1
554B6E:  ITE LS
554B70:  MOVLS           R0, #0
554B72:  SUBHI           R0, R0, R1
554B74:  B               loc_554BC6
554B76:  MOV             R6, R4
554B78:  MOV.W           R8, #0
554B7C:  LDRB.W          R0, [R6,#0xBC]!
554B80:  ADDS            R0, #1
554B82:  STRB            R0, [R6]
554B84:  UXTB            R0, R0
554B86:  CMP             R0, #0xA
554B88:  MOV.W           R0, #0
554B8C:  IT HI
554B8E:  MOVHI           R0, #1
554B90:  ORRS.W          R0, R0, R9
554B94:  BNE.W           loc_55425A
554B98:  B.W             loc_5542EE
554B9C:  LDR             R1, [SP,#0x140+var_64]
554B9E:  LSLS            R0, R1, #0x1B
554BA0:  BPL             loc_554BBA
554BA2:  MOV             R0, R4; this
554BA4:  BLX             j__ZN11CAutomobile16BoostJumpControlEv; CAutomobile::BoostJumpControl(void)
554BA8:  LDR.W           R0, [R4,#0x390]
554BAC:  TST.W           R0, #0x20000
554BB0:  ITT EQ
554BB2:  ORREQ.W         R0, R0, #0x20000
554BB6:  STREQ.W         R0, [R4,#0x390]
554BBA:  MOV             R0, R4; this
554BBC:  BLX             j__ZN11CAutomobile16HydraulicControlEv; CAutomobile::HydraulicControl(void)
554BC0:  B               loc_55458C
554BC2:  MOV.W           R0, #0x3E8
554BC6:  STR.W           R0, [R4,#0x884]
554BCA:  ADD.W           R0, R4, #0x7E8
554BCE:  VLDR            S0, [R0]
554BD2:  VCMPE.F32       S0, S16
554BD6:  VMRS            APSR_nzcv, FPSCR
554BDA:  BLT             loc_554BEE
554BDC:  ADD.W           R0, R4, #0x7F0
554BE0:  VLDR            S0, [R0]
554BE4:  VCMPE.F32       S0, S16
554BE8:  VMRS            APSR_nzcv, FPSCR
554BEC:  BGE             loc_554C76
554BEE:  ADDW            R0, R4, #0x7EC
554BF2:  VLDR            S0, [R0]
554BF6:  VCMPE.F32       S0, S16
554BFA:  VMRS            APSR_nzcv, FPSCR
554BFE:  BLT             loc_554C12
554C00:  ADDW            R0, R4, #0x7F4
554C04:  VLDR            S0, [R0]
554C08:  VCMPE.F32       S0, S16
554C0C:  VMRS            APSR_nzcv, FPSCR
554C10:  BGE             loc_554C76
554C12:  VLDR            S2, =2500.0
554C16:  VLDR            S4, [R4,#0x94]
554C1A:  VLDR            S0, =-0.008
554C1E:  VMIN.F32        D1, D2, D1
554C22:  LDR             R0, [R4,#0x14]
554C24:  VLDR            S8, [R0,#0x20]
554C28:  VLDR            S10, [R0,#0x24]
554C2C:  VMUL.F32        S0, S2, S0
554C30:  VLDR            S12, [R0,#0x28]
554C34:  VLDR            S2, [R0,#0x10]
554C38:  VLDR            S4, [R0,#0x14]
554C3C:  VLDR            S6, [R0,#0x18]
554C40:  VNEG.F32        S2, S2
554C44:  VNEG.F32        S4, S4
554C48:  MOV             R0, R4
554C4A:  VMUL.F32        S8, S8, S0
554C4E:  VMUL.F32        S10, S10, S0
554C52:  VMUL.F32        S0, S0, S12
554C56:  VSTR            S2, [SP,#0x140+var_140]
554C5A:  VSTR            S4, [SP,#0x140+var_13C]
554C5E:  VMOV            R1, S8
554C62:  VMOV            R2, S10
554C66:  VMOV            R3, S0
554C6A:  VNEG.F32        S0, S6
554C6E:  VSTR            S0, [SP,#0x140+var_138]
554C72:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
554C76:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x554C8A)
554C7A:  ADDW            R3, R4, #0x4A4
554C7E:  LDR.W           R0, [R4,#0x388]
554C82:  ADDW            R8, R4, #0x808
554C86:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
554C88:  VLDR            S20, [R3]
554C8C:  ADD.W           R3, R4, #0x7E8
554C90:  LDRB.W          R2, [R4,#0x975]
554C94:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
554C96:  VLDR            S0, [R3]
554C9A:  VLDR            S22, [R0,#0x94]
554C9E:  VLDR            S18, [R1]
554CA2:  VCMPE.F32       S0, S16
554CA6:  MOVS            R1, #0
554CA8:  VMRS            APSR_nzcv, FPSCR
554CAC:  STRB.W          R1, [R4,#0x974]
554CB0:  STRB.W          R1, [R4,#0x975]
554CB4:  STRB.W          R2, [R4,#0x976]
554CB8:  BGE             loc_554CC0
554CBA:  VMOV.F32        S0, #4.0
554CBE:  B               loc_554CD2
554CC0:  VLDR            S0, [R8]
554CC4:  VSUB.F32        S0, S0, S18
554CC8:  VCMPE.F32       S0, #0.0
554CCC:  VMRS            APSR_nzcv, FPSCR
554CD0:  BLE             loc_554CF2
554CD2:  MOVS            R2, #1
554CD4:  VSTR            S0, [R8]
554CD8:  STRB.W          R2, [R4,#0x974]
554CDC:  LDRB.W          R1, [R0,#0x74]
554CE0:  CMP             R1, #0x46 ; 'F'
554CE2:  BEQ             loc_554CFC
554CE4:  CMP             R1, #0x34 ; '4'
554CE6:  BNE             loc_554D04
554CE8:  MOVS            R1, #1
554CEA:  MOVS            R2, #1
554CEC:  STRB.W          R1, [R4,#0x975]
554CF0:  B               loc_554D06
554CF2:  MOVS            R1, #0
554CF4:  MOVS            R2, #0
554CF6:  STR.W           R1, [R8]
554CFA:  B               loc_554D06
554CFC:  MOVS            R1, #1
554CFE:  STRB.W          R2, [R4,#0x975]
554D02:  B               loc_554D06
554D04:  MOVS            R1, #0
554D06:  ADDW            R3, R4, #0x7EC
554D0A:  ADDW            R6, R4, #0x80C
554D0E:  VLDR            S0, [R3]
554D12:  VCMPE.F32       S0, S16
554D16:  VMRS            APSR_nzcv, FPSCR
554D1A:  BGE             loc_554D22
554D1C:  VMOV.F32        S0, #4.0
554D20:  B               loc_554D34
554D22:  VLDR            S0, [R6]
554D26:  VSUB.F32        S0, S0, S18
554D2A:  VCMPE.F32       S0, #0.0
554D2E:  VMRS            APSR_nzcv, FPSCR
554D32:  BLE             loc_554D52
554D34:  VSTR            S0, [R6]
554D38:  ADDS            R2, #1
554D3A:  STRB.W          R2, [R4,#0x974]
554D3E:  LDRB.W          R3, [R0,#0x74]
554D42:  CMP             R3, #0x34 ; '4'
554D44:  IT NE
554D46:  CMPNE           R3, #0x52 ; 'R'
554D48:  BNE             loc_554D56
554D4A:  ADDS            R1, #1
554D4C:  STRB.W          R1, [R4,#0x975]
554D50:  B               loc_554D56
554D52:  MOVS            R3, #0
554D54:  STR             R3, [R6]
554D56:  ADD.W           R3, R4, #0x7F0
554D5A:  VLDR            S0, [R3]
554D5E:  ADD.W           R3, R4, #0x810
554D62:  VCMPE.F32       S0, S16
554D66:  VMRS            APSR_nzcv, FPSCR
554D6A:  BGE             loc_554D72
554D6C:  VMOV.F32        S0, #4.0
554D70:  B               loc_554D84
554D72:  VLDR            S0, [R3]
554D76:  VSUB.F32        S0, S0, S18
554D7A:  VCMPE.F32       S0, #0.0
554D7E:  VMRS            APSR_nzcv, FPSCR
554D82:  BLE             loc_554DA2
554D84:  VSTR            S0, [R3]
554D88:  ADDS            R2, #1
554D8A:  STRB.W          R2, [R4,#0x974]
554D8E:  LDRB.W          R3, [R0,#0x74]
554D92:  CMP             R3, #0x34 ; '4'
554D94:  IT NE
554D96:  CMPNE           R3, #0x46 ; 'F'
554D98:  BNE             loc_554DA6
554D9A:  ADDS            R1, #1
554D9C:  STRB.W          R1, [R4,#0x975]
554DA0:  B               loc_554DA6
554DA2:  MOVS            R5, #0
554DA4:  STR             R5, [R3]
554DA6:  ADDW            R3, R4, #0x7F4
554DAA:  VLDR            S0, [R3]
554DAE:  ADDW            R3, R4, #0x814
554DB2:  VCMPE.F32       S0, S16
554DB6:  VMRS            APSR_nzcv, FPSCR
554DBA:  BGE             loc_554DC2
554DBC:  VMOV.F32        S0, #4.0
554DC0:  B               loc_554DD4
554DC2:  VLDR            S0, [R3]
554DC6:  VSUB.F32        S0, S0, S18
554DCA:  VCMPE.F32       S0, #0.0
554DCE:  VMRS            APSR_nzcv, FPSCR
554DD2:  BLE             loc_554DF2
554DD4:  VSTR            S0, [R3]
554DD8:  ADDS            R2, #1
554DDA:  STRB.W          R2, [R4,#0x974]
554DDE:  LDRB.W          R2, [R0,#0x74]
554DE2:  CMP             R2, #0x34 ; '4'
554DE4:  IT NE
554DE6:  CMPNE           R2, #0x52 ; 'R'
554DE8:  BNE             loc_554DF6
554DEA:  ADDS            R1, #1
554DEC:  STRB.W          R1, [R4,#0x975]
554DF0:  B               loc_554DF6
554DF2:  MOVS            R2, #0
554DF4:  STR             R2, [R3]
554DF6:  LDRB.W          R2, [R4,#0x392]
554DFA:  LSLS            R2, R2, #0x1C
554DFC:  BPL             loc_554E14
554DFE:  ADDW            R2, R4, #0x8B8
554E02:  VLDR            S0, [R2]
554E06:  VCMPE.F32       S0, #0.0
554E0A:  VMRS            APSR_nzcv, FPSCR
554E0E:  BGE             loc_554E14
554E10:  MOVS            R2, #2
554E12:  B               loc_554E2E
554E14:  LDR.W           R2, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x554E1E)
554E18:  LDR             R3, [SP,#0x140+var_64]
554E1A:  ADD             R2, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
554E1C:  LDR             R2, [R2]; CCheat::m_aCheatsActive ...
554E1E:  LDRB.W          R2, [R2,#(byte_796817 - 0x7967F4)]
554E22:  CMP             R2, #0
554E24:  IT NE
554E26:  MOVNE           R2, #1
554E28:  ORRS            R2, R3
554E2A:  AND.W           R2, R2, #1
554E2E:  LDRB.W          R3, [R10]
554E32:  VLDR            S24, =0.0
554E36:  LSLS            R3, R3, #0x1B
554E38:  BPL             loc_554E7E
554E3A:  LDRB.W          R3, [R0,#0xCF]
554E3E:  TST.W           R3, #6
554E42:  BNE             loc_554E7E
554E44:  LDR             R5, [SP,#0x140+var_FC]
554E46:  ADD.W           R3, R4, #0x820
554E4A:  UXTB            R2, R2
554E4C:  UXTB            R1, R1
554E4E:  ADDW            R4, R5, #0x81C
554E52:  ADD             R5, SP, #0x140+var_CC
554E54:  ADDS            R0, #0x2C ; ','; this
554E56:  STRD.W          R5, R4, [SP,#0x140+var_140]; float *
554E5A:  LDR             R4, [SP,#0x140+var_FC]
554E5C:  STRD.W          R3, R1, [SP,#0x140+var_138]; float
554E60:  STR             R2, [SP,#0x140+var_130]; float
554E62:  ADD.W           R1, R4, #0x4A0; float *
554E66:  ADD.W           R2, R4, #0x4C0; unsigned __int8 *
554E6A:  ADDW            R3, R4, #0x4C4; float *
554E6E:  BLX             j__ZN13cTransmission26CalculateDriveAccelerationERKfRhRfS1_PfS4_hh; cTransmission::CalculateDriveAcceleration(float const&,uchar &,float &,float const&,float *,float *,uchar,uchar)
554E72:  VMOV            S0, R0
554E76:  VLDR            S2, [R4,#0x98]
554E7A:  VDIV.F32        S24, S0, S2
554E7E:  LDRB.W          R0, [R4,#0x3A]
554E82:  AND.W           R0, R0, #0xF8
554E86:  CMP             R0, #0x18
554E88:  BNE             loc_554EA4
554E8A:  ADDW            R0, R4, #0x8B4
554E8E:  VLDR            S0, =0.004
554E92:  VLDR            S2, [R0]
554E96:  LDR.W           R0, [R4,#0x388]
554E9A:  VMUL.F32        S2, S2, S0
554E9E:  VLDR            S0, [R0,#0x28]
554EA2:  B               loc_554EB0
554EA4:  LDR.W           R0, [R4,#0x388]
554EA8:  VLDR            S0, =0.004
554EAC:  VLDR            S2, [R0,#0x28]
554EB0:  VMUL.F32        S0, S0, S2
554EB4:  VLDR            S2, [R4,#0x98]
554EB8:  VMOV.F32        S4, #0.25
554EBC:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x554EC4)
554EC0:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
554EC2:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
554EC4:  VMUL.F32        S0, S0, S4
554EC8:  LDRB.W          R0, [R0,#(byte_796817 - 0x7967F4)]
554ECC:  CMP             R0, #0
554ECE:  VDIV.F32        S26, S0, S2
554ED2:  BEQ             loc_554EDE
554ED4:  VMOV.F32        S0, #4.0
554ED8:  VMUL.F32        S26, S26, S0
554EDC:  B               loc_554EFA
554EDE:  LDRH            R0, [R4,#0x26]
554EE0:  MOVW            R1, #0x21B
554EE4:  CMP             R0, R1
554EE6:  BNE             loc_554EFA
554EE8:  ADDW            R0, R4, #0x9A8
554EEC:  VLDR            S0, [R0]
554EF0:  VCMP.F32        S0, #0.0
554EF4:  VMRS            APSR_nzcv, FPSCR
554EF8:  BEQ             loc_554ED4
554EFA:  MOV.W           R0, #0xFFFFFFFF; int
554EFE:  MOVS            R1, #0; bool
554F00:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
554F04:  CMP             R4, R0
554F06:  BEQ             loc_554F42
554F08:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x554F12)
554F0C:  LDR             R1, [SP,#0x140+var_64]
554F0E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
554F10:  TST.W           R1, #1
554F14:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
554F16:  LDRB.W          R0, [R0,#(byte_796817 - 0x7967F4)]
554F1A:  IT EQ
554F1C:  CMPEQ           R0, #0
554F1E:  BEQ             loc_554F42
554F20:  VLDR            S0, =1.4
554F24:  LSLS            R1, R1, #0x1E
554F26:  VLDR            S2, =1.2
554F2A:  VMUL.F32        S24, S24, S0
554F2E:  VMUL.F32        S26, S26, S2
554F32:  BMI             loc_554F36
554F34:  CBZ             R0, loc_554F42
554F36:  VLDR            S2, =1.3
554F3A:  VMUL.F32        S24, S24, S0
554F3E:  VMUL.F32        S26, S26, S2
554F42:  VMUL.F32        S20, S20, S22
554F46:  VLDR            S0, =0.01
554F4A:  VLDR            S2, [SP,#0x140+var_CC]
554F4E:  VCMPE.F32       S2, S0
554F52:  VMRS            APSR_nzcv, FPSCR
554F56:  BLE.W           loc_55505C
554F5A:  VLDR            S0, [R8]
554F5E:  VCMPE.F32       S0, #0.0
554F62:  VMRS            APSR_nzcv, FPSCR
554F66:  BGT             loc_554F76
554F68:  VLDR            S0, [R6]
554F6C:  VCMPE.F32       S0, #0.0
554F70:  VMRS            APSR_nzcv, FPSCR
554F74:  BLE             loc_55505C
554F76:  LDRB.W          R0, [R4,#0x3A]
554F7A:  CMP             R0, #7
554F7C:  BHI             loc_55505C
554F7E:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x554F8E)
554F82:  VMOV.F32        S0, #16.0
554F86:  LDR             R1, [R4,#0x14]
554F88:  MOVS            R2, #0x3C ; '<'
554F8A:  ADD             R0, PC; g_surfaceInfos_ptr
554F8C:  VLDR            S22, [R4,#0x48]
554F90:  VLDR            S28, [R4,#0x4C]
554F94:  VLDR            S19, [R1]
554F98:  VLDR            S21, [R1,#4]
554F9C:  VLDR            S23, [R1,#8]
554FA0:  MOVS            R1, #1
554FA2:  LDR             R0, [R0]; g_surfaceInfos
554FA4:  VMUL.F32        S16, S26, S0
554FA8:  VLDR            S30, [R4,#0x50]
554FAC:  STRB.W          R1, [SP,#0x140+var_D5]
554FB0:  ADD             R1, SP, #0x140+var_F8
554FB2:  STRB.W          R2, [SP,#0x140+var_D8]
554FB6:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
554FBA:  VLDR            S0, [SP,#0x140+var_CC]
554FBE:  VMOV            S2, R0
554FC2:  VMUL.F32        S2, S16, S2
554FC6:  VMUL.F32        S0, S0, S0
554FCA:  VMOV.F32        S16, #1.0
554FCE:  VDIV.F32        S0, S2, S0
554FD2:  VMIN.F32        D0, D0, D8
554FD6:  VMOV            R0, S0; x
554FDA:  BLX             asinf
554FDE:  VMUL.F32        S2, S28, S21
554FE2:  LDR.W           R1, [R4,#0x388]
554FE6:  VMUL.F32        S4, S22, S19
554FEA:  VMUL.F32        S6, S30, S23
554FEE:  VLDR            S0, [R1,#0xA0]
554FF2:  ADD.W           R1, R4, #0x498
554FF6:  VADD.F32        S2, S4, S2
554FFA:  VADD.F32        S4, S2, S6
554FFE:  VLDR            S6, =0.05
555002:  VLDR            S2, [R1]
555006:  VCMPE.F32       S4, S6
55500A:  VMRS            APSR_nzcv, FPSCR
55500E:  BLE             loc_55501A
555010:  VCMPE.F32       S2, #0.0
555014:  VMRS            APSR_nzcv, FPSCR
555018:  BLT             loc_555054
55501A:  VLDR            S6, =-0.05
55501E:  VCMPE.F32       S4, S6
555022:  VMRS            APSR_nzcv, FPSCR
555026:  BGE             loc_555032
555028:  VCMPE.F32       S2, #0.0
55502C:  VMRS            APSR_nzcv, FPSCR
555030:  BGT             loc_555054
555032:  LDRB.W          R1, [R10]
555036:  LSLS            R1, R1, #0x1A
555038:  BMI             loc_555054
55503A:  VLDR            S2, =3.1416
55503E:  VMUL.F32        S0, S0, S2
555042:  VLDR            S2, =180.0
555046:  VDIV.F32        S0, S0, S2
55504A:  VMOV            S2, R0
55504E:  VDIV.F32        S0, S2, S0
555052:  B               loc_555058
555054:  VMOV.F64        D0, D8
555058:  VMIN.F32        D8, D0, D8
55505C:  MOV             R6, R4
55505E:  ADD.W           R4, R6, #0x498
555062:  VMUL.F32        S18, S20, S18
555066:  LDR.W           R0, [R6,#0x390]
55506A:  VLDR            S0, [R4]
55506E:  ANDS.W          R5, R0, #0x800000
555072:  VMUL.F32        S0, S16, S0
555076:  VSTR            S0, [R4]
55507A:  BNE             loc_5550B2
55507C:  LSLS            R0, R0, #0x1A
55507E:  VLDR            S2, =-999.0
555082:  IT PL
555084:  VMOVPL.F32      S2, S0
555088:  MOVS            R0, #1
55508A:  VMOV            R3, S2; float
55508E:  STR             R0, [SP,#0x140+var_12C]; bool
555090:  ADD             R0, SP, #0x140+var_98
555092:  VSTR            S26, [SP,#0x140+var_138]
555096:  VSTR            S24, [SP,#0x140+var_134]
55509A:  MOVS            R1, #0; int
55509C:  VSTR            S18, [SP,#0x140+var_130]
5550A0:  MOVS            R2, #2; int
5550A2:  STR             R0, [SP,#0x140+var_140]; CVector *
5550A4:  ADD             R0, SP, #0x140+var_C8
5550A6:  STR             R0, [SP,#0x140+var_13C]; CVector *
5550A8:  MOV             R0, R6; this
5550AA:  BLX             j__ZN11CAutomobile19ProcessCarWheelPairEiifP7CVectorS1_fffb; CAutomobile::ProcessCarWheelPair(int,int,float,CVector *,CVector *,float,float,float,bool)
5550AE:  LDR.W           R0, [R6,#0x390]
5550B2:  LSLS            R1, R0, #0x1A
5550B4:  BMI             loc_5550C0
5550B6:  LSLS            R0, R0, #0x19
5550B8:  BMI             loc_5550CA
5550BA:  VLDR            S0, =-999.0
5550BE:  B               loc_5550D4
5550C0:  VLDR            S0, [R4]
5550C4:  VNEG.F32        S0, S0
5550C8:  B               loc_5550D4
5550CA:  LDR             R0, [SP,#0x140+var_FC]
5550CC:  ADDW            R0, R0, #0x49C
5550D0:  VLDR            S0, [R0]
5550D4:  VMOV            R3, S0; float
5550D8:  MOVS            R0, #0
5550DA:  LDR             R6, [SP,#0x140+var_FC]
5550DC:  MOVS            R1, #1; int
5550DE:  STR             R0, [SP,#0x140+var_12C]; bool
5550E0:  ADD             R0, SP, #0x140+var_98
5550E2:  VSTR            S26, [SP,#0x140+var_138]
5550E6:  MOVS            R2, #3; int
5550E8:  VSTR            S24, [SP,#0x140+var_134]
5550EC:  VSTR            S18, [SP,#0x140+var_130]
5550F0:  STR             R0, [SP,#0x140+var_140]; CVector *
5550F2:  ADD             R0, SP, #0x140+var_C8
5550F4:  STR             R0, [SP,#0x140+var_13C]; CVector *
5550F6:  MOV             R0, R6; this
5550F8:  BLX             j__ZN11CAutomobile19ProcessCarWheelPairEiifP7CVectorS1_fffb; CAutomobile::ProcessCarWheelPair(int,int,float,CVector *,CVector *,float,float,float,bool)
5550FC:  CBZ             R5, loc_555136
5550FE:  LDRB.W          R0, [R6,#0x390]
555102:  MOVS            R1, #0; int
555104:  MOVS            R2, #2; int
555106:  LSLS            R0, R0, #0x1A
555108:  ITE PL
55510A:  VLDRPL          S0, [R4]
55510E:  VLDRMI          S0, =-999.0
555112:  MOVS            R0, #1
555114:  LDR             R6, [SP,#0x140+var_FC]
555116:  VMOV            R3, S0; float
55511A:  STR             R0, [SP,#0x140+var_12C]; bool
55511C:  ADD             R0, SP, #0x140+var_98
55511E:  VSTR            S26, [SP,#0x140+var_138]
555122:  VSTR            S24, [SP,#0x140+var_134]
555126:  VSTR            S18, [SP,#0x140+var_130]
55512A:  STR             R0, [SP,#0x140+var_140]; CVector *
55512C:  ADD             R0, SP, #0x140+var_C8
55512E:  STR             R0, [SP,#0x140+var_13C]; CVector *
555130:  MOV             R0, R6; this
555132:  BLX             j__ZN11CAutomobile19ProcessCarWheelPairEiifP7CVectorS1_fffb; CAutomobile::ProcessCarWheelPair(int,int,float,CVector *,CVector *,float,float,float,bool)
555136:  LDRB.W          R0, [R6,#0x3A]
55513A:  MOV             R4, R6
55513C:  CMP             R0, #7
55513E:  BHI             loc_5551CC
555140:  LDR.W           R0, [R4,#0x390]
555144:  MOVS            R1, #0
555146:  LSLS            R0, R0, #0xE
555148:  BMI             loc_555164
55514A:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x555152)
55514E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
555150:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
555152:  LDRB.W          R0, [R0,#(byte_796817 - 0x7967F4)]
555156:  CBNZ            R0, loc_555164
555158:  LDRB.W          R0, [SP,#0x140+var_64]
55515C:  MOVS            R1, #0
55515E:  LSLS            R0, R0, #0x1B
555160:  IT PL
555162:  MOVPL           R1, #1; bool
555164:  MOV             R0, R4; this
555166:  BLX             j__ZN8CVehicle19ProcessSirenAndHornEb; CVehicle::ProcessSirenAndHorn(bool)
55516A:  B               loc_5551F2
55516C:  DCFS 0.0
555170:  DCFS 0.004
555174:  DCFS 1.4
555178:  DCFS 1.2
55517C:  DCFS 1.3
555180:  DCFS 0.01
555184:  DCFS 0.05
555188:  DCFS -0.05
55518C:  DCFS 3.1416
555190:  DCFS 180.0
555194:  DCFS -999.0
555198:  DCFS 0.3
55519C:  DCFS 0.04
5551A0:  DCFS 0.1
5551A4:  DCFS 0.29
5551A8:  DCFS 0.01
5551AC:  DCFS 200.0
5551B0:  DCFS 250.0
5551B4:  DCFS 2000.0
5551B8:  DCFS 100.0
5551BC:  DCFS 20000.0
5551C0:  DCFS 150.0
5551C4:  DCFS 40.0
5551C8:  DCFS 5000.0
5551CC:  LDRH.W          R1, [R4,#0x460]
5551D0:  CMP             R1, #0
5551D2:  ITT NE
5551D4:  MOVWNE          R2, #0xFFFF
5551D8:  CMPNE           R1, R2
5551DA:  BEQ             loc_5551E4
5551DC:  AND.W           R0, R0, #0xF8
5551E0:  CMP             R0, #0x28 ; '('
5551E2:  BNE             loc_5551F2
5551E4:  LDR.W           R0, [R4,#0x524]
5551E8:  CMP             R0, #0
5551EA:  ITT NE
5551EC:  SUBNE           R0, #1
5551EE:  STRNE.W         R0, [R4,#0x524]
5551F2:  LDRH            R0, [R4,#0x26]
5551F4:  CMP.W           R0, #0x1D0
5551F8:  BEQ             loc_555204
5551FA:  LDR             R0, [R4]
5551FC:  LDR.W           R1, [R0,#0x114]
555200:  MOV             R0, R4
555202:  BLX             R1
555204:  MOV             R0, R4; this
555206:  MOV             R1, R11; unsigned __int8
555208:  BLX             j__ZN11CAutomobile26ProcessCarOnFireAndExplodeEh; CAutomobile::ProcessCarOnFireAndExplode(uchar)
55520C:  LDRB.W          R0, [R10,#5]
555210:  LSLS            R0, R0, #0x18
555212:  BPL             loc_55524E
555214:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x55521C)
555218:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
55521A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
55521C:  LDR             R0, [R0]; CTimer::m_FrameCounter
55521E:  AND.W           R0, R0, #7
555222:  CMP             R0, #5
555224:  BNE             loc_55524E
555226:  MOV             R0, R4; this
555228:  BLX             j__ZNK8CVehicle9UsesSirenEv; CVehicle::UsesSiren(void)
55522C:  CMP             R0, #0
55522E:  ITTT NE
555230:  LDRHNE          R0, [R4,#0x26]
555232:  MOVWNE          R1, #0x1A7
555236:  CMPNE           R0, R1
555238:  BEQ             loc_55524E
55523A:  MOV.W           R0, #0xFFFFFFFF; int
55523E:  MOVS            R1, #0; bool
555240:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
555244:  CMP             R0, R4
555246:  ITT EQ
555248:  MOVEQ           R0, R4; this
55524A:  BLXEQ           j__ZN6CCarAI22MakeWayForCarWithSirenEP8CVehicle; CCarAI::MakeWayForCarWithSiren(CVehicle *)
55524E:  ADD.W           R0, R4, #0x4A0
555252:  VLDR            S0, [R4,#0x48]
555256:  VLDR            S2, [R4,#0x4C]
55525A:  VMOV.F32        S18, #1.0
55525E:  VLDR            S4, [R4,#0x50]
555262:  VMUL.F32        S0, S0, S0
555266:  STR             R0, [SP,#0x140+var_100]
555268:  ADDW            R0, R4, #0x5B4
55526C:  STR             R0, [SP,#0x140+var_108]
55526E:  ADD.W           R0, R4, #0x48 ; 'H'
555272:  STR             R0, [SP,#0x140+var_124]
555274:  VMUL.F32        S2, S2, S2
555278:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x55528C)
55527C:  VMUL.F32        S4, S4, S4
555280:  VLDR            S20, =0.0
555284:  VMOV.F32        S16, #0.5
555288:  ADD             R0, PC; g_surfaceInfos_ptr
55528A:  VMOV.F32        S19, #-0.5
55528E:  VMOV.F32        S24, S20
555292:  ADDW            R9, R4, #0x97C
555296:  LDR             R0, [R0]; g_surfaceInfos
555298:  VMOV            D11, D10
55529C:  STR             R0, [SP,#0x140+var_10C]
55529E:  MOVS            R6, #0
5552A0:  LDR.W           R0, =(_ZN8CVehicle21WHEELSPIN_TARGET_RATEE_ptr - 0x5552B4)
5552A4:  VADD.F32        S0, S0, S2
5552A8:  VLDR            S28, =0.3
5552AC:  MOVW            R10, #0x808
5552B0:  ADD             R0, PC; _ZN8CVehicle21WHEELSPIN_TARGET_RATEE_ptr
5552B2:  VLDR            S30, =0.04
5552B6:  VLDR            S17, =0.1
5552BA:  MOVW            R11, #0x75B
5552BE:  LDR             R0, [R0]; CVehicle::WHEELSPIN_TARGET_RATE ...
5552C0:  MOV.W           R1, #0x3F800000
5552C4:  STR             R0, [SP,#0x140+var_104]
5552C6:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x5552D2)
5552CA:  VADD.F32        S26, S0, S4
5552CE:  ADD             R0, PC; mod_HandlingManager_ptr
5552D0:  LDR             R0, [R0]; mod_HandlingManager
5552D2:  STR             R0, [SP,#0x140+var_110]
5552D4:  LDR.W           R0, =(_ZN8CVehicle27WHEELSPIN_INAIR_TARGET_RATEE_ptr - 0x5552DC)
5552D8:  ADD             R0, PC; _ZN8CVehicle27WHEELSPIN_INAIR_TARGET_RATEE_ptr
5552DA:  LDR             R0, [R0]; CVehicle::WHEELSPIN_INAIR_TARGET_RATE ...
5552DC:  STR             R0, [SP,#0x140+var_114]
5552DE:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x5552E6)
5552E2:  ADD             R0, PC; mod_HandlingManager_ptr
5552E4:  LDR             R0, [R0]; mod_HandlingManager
5552E6:  STR             R0, [SP,#0x140+var_118]
5552E8:  ADD.W           R5, R4, R6,LSL#2
5552EC:  ADD.W           R8, R5, #0x7E8
5552F0:  ADD.W           R0, R5, #0x7F8
5552F4:  VLDR            S0, [R8]
5552F8:  VLDR            S2, [R0]
5552FC:  VSUB.F32        S21, S2, S0
555300:  VCMPE.F32       S21, S28
555304:  VMRS            APSR_nzcv, FPSCR
555308:  BLE             loc_55533A
55530A:  VCMPE.F32       S26, S30
55530E:  VMRS            APSR_nzcv, FPSCR
555312:  BLE             loc_555336
555314:  LDR             R0, [SP,#0x140+var_64]
555316:  ANDS.W          R0, R0, #8
55531A:  BNE             loc_555336
55531C:  LDR             R0, [SP,#0x140+var_108]; this
55531E:  MOV             R1, R6; int
555320:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
555324:  VCMPE.F32       S21, S24
555328:  MOV.W           R1, #0x3F800000
55532C:  VMRS            APSR_nzcv, FPSCR
555330:  IT GT
555332:  VMOVGT.F32      S24, S21
555336:  VLDR            S0, [R8]
55533A:  VCMPE.F32       S0, S18
55533E:  VMRS            APSR_nzcv, FPSCR
555342:  BGE             loc_55536A
555344:  LDRB.W          R0, [R4,#0x3A]
555348:  CMP             R0, #7
55534A:  BHI             loc_55536A
55534C:  LDRB.W          R1, [R4,R11]; unsigned int
555350:  LDR             R0, [SP,#0x140+var_10C]; this
555352:  BLX             j__ZN14SurfaceInfos_c12GetRoughnessEj; SurfaceInfos_c::GetRoughness(uint)
555356:  VMOV            S0, R0
55535A:  MOV.W           R1, #0x3F800000
55535E:  VCVT.F32.S32    S0, S0
555362:  VMUL.F32        S0, S0, S17
555366:  VMAX.F32        D11, D11, D0
55536A:  ADD.W           R0, R4, R10
55536E:  VLDR            S0, [R0]
555372:  VCMPE.F32       S0, #0.0
555376:  VMRS            APSR_nzcv, FPSCR
55537A:  BGT             loc_5553D6
55537C:  LDR             R0, [SP,#0x140+var_100]
55537E:  VLDR            S0, [R0]
555382:  VCMPE.F32       S0, S16
555386:  VMRS            APSR_nzcv, FPSCR
55538A:  BGT             loc_555396
55538C:  VCMPE.F32       S0, S19
555390:  VMRS            APSR_nzcv, FPSCR
555394:  BGE             loc_5553D6
555396:  ORR.W           R0, R6, #2
55539A:  CMP             R0, #3
55539C:  BEQ             loc_5553BE
55539E:  CMP             R0, #2
5553A0:  BNE             loc_5553D6
5553A2:  LDR.W           R0, [R4,#0x388]
5553A6:  LDR             R2, [SP,#0x140+var_118]
5553A8:  LDRB            R0, [R0]
5553AA:  RSB.W           R0, R0, R0,LSL#3
5553AE:  ADD.W           R0, R2, R0,LSL#5
5553B2:  LDRB.W          R0, [R0,#0x88]
5553B6:  CMP             R0, #0x52 ; 'R'
5553B8:  BEQ             loc_5553D6
5553BA:  LDR             R0, [SP,#0x140+var_114]
5553BC:  B               loc_5553E0
5553BE:  LDR.W           R0, [R4,#0x388]
5553C2:  LDR             R2, [SP,#0x140+var_110]
5553C4:  LDRB            R0, [R0]
5553C6:  RSB.W           R0, R0, R0,LSL#3
5553CA:  ADD.W           R0, R2, R0,LSL#5
5553CE:  LDRB.W          R0, [R0,#0x88]
5553D2:  CMP             R0, #0x46 ; 'F'
5553D4:  BNE             loc_5553BA
5553D6:  LDR.W           R0, [R9,R6,LSL#2]
5553DA:  CMP             R0, #1
5553DC:  BNE             loc_5553E8
5553DE:  LDR             R0, [SP,#0x140+var_104]
5553E0:  VLDR            S0, [R0]
5553E4:  VADD.F32        S20, S20, S0
5553E8:  ADDS            R6, #1
5553EA:  ADD.W           R11, R11, #0x2C ; ','
5553EE:  ADD.W           R10, R10, #4
5553F2:  LDR.W           R0, [R5,#0x7E8]
5553F6:  CMP             R6, #4
5553F8:  STR.W           R0, [R5,#0x7F8]
5553FC:  STR.W           R1, [R8]
555400:  BNE.W           loc_5552E8
555404:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x555418)
555408:  VMOV.F32        S0, #0.25
55540C:  LDR.W           R1, [R4,#0x388]
555410:  VMOV.F32        S2, S16
555414:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
555416:  LDR.W           R2, =(_ZN8CVehicle19WHEELSPIN_FALL_RATEE_ptr - 0x555420)
55541A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
55541C:  ADD             R2, PC; _ZN8CVehicle19WHEELSPIN_FALL_RATEE_ptr
55541E:  VLDR            S26, [R0]
555422:  LDRB.W          R0, [R1,#0x74]
555426:  VMOV            R1, S26; y
55542A:  CMP             R0, #0x34 ; '4'
55542C:  LDR.W           R0, =(_ZN8CVehicle19WHEELSPIN_RISE_RATEE_ptr - 0x555440)
555430:  IT EQ
555432:  VMOVEQ.F32      S2, S0
555436:  LDR             R3, [SP,#0x140+var_FC]
555438:  VMUL.F32        S20, S20, S2
55543C:  ADD             R0, PC; _ZN8CVehicle19WHEELSPIN_RISE_RATEE_ptr
55543E:  ADD.W           R4, R3, #0x4C8
555442:  LDR             R0, [R0]; CVehicle::WHEELSPIN_RISE_RATE ...
555444:  VLDR            S28, [R4]
555448:  VCMPE.F32       S20, S28
55544C:  VMRS            APSR_nzcv, FPSCR
555450:  IT LT
555452:  LDRLT           R0, [R2]; CVehicle::WHEELSPIN_FALL_RATE ...
555454:  LDR             R0, [R0]; x
555456:  BLX             powf
55545A:  VMOV            S0, R0
55545E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55546A)
555462:  VSUB.F32        S2, S18, S0
555466:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
555468:  VMUL.F32        S0, S28, S0
55546C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
55546E:  VMUL.F32        S2, S20, S2
555472:  VLDR            S20, =0.0
555476:  VADD.F32        S0, S0, S2
55547A:  VLDR            S2, =0.29
55547E:  VCMPE.F32       S22, S2
555482:  VMRS            APSR_nzcv, FPSCR
555486:  VSTR            S0, [R4]
55548A:  VMOV.F32        S0, S20
55548E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
555490:  LDR             R4, [SP,#0x140+var_FC]
555492:  BFC.W           R0, #0xB, #0x15
555496:  IT LT
555498:  VMOVLT.F32      S0, S24
55549C:  CMP.W           R0, #0x320
5554A0:  ITT HI
5554A2:  VMOVHI.F32      S24, S0
5554A6:  VMOVHI.F32      S22, S20
5554AA:  LDRB.W          R0, [SP,#0x140+var_64]
5554AE:  LDR             R5, [SP,#0x140+var_11C]
5554B0:  LSLS            R0, R0, #0x1C
5554B2:  BMI             loc_555594
5554B4:  VCMPE.F32       S24, #0.0
5554B8:  VMRS            APSR_nzcv, FPSCR
5554BC:  ITT LE
5554BE:  VCMPELE.F32     S22, #0.0
5554C2:  VMRSLE          APSR_nzcv, FPSCR
5554C6:  BLE             loc_555594
5554C8:  LDRB.W          R0, [R4,#0x3A]
5554CC:  CMP             R0, #7
5554CE:  BHI             loc_555594
5554D0:  VLDR            S0, [R4,#0x48]
5554D4:  VLDR            S2, [R4,#0x4C]
5554D8:  VMUL.F32        S0, S0, S0
5554DC:  VLDR            S4, [R4,#0x50]
5554E0:  VMUL.F32        S2, S2, S2
5554E4:  VMUL.F32        S4, S4, S4
5554E8:  VADD.F32        S0, S0, S2
5554EC:  VLDR            S2, =0.01
5554F0:  VADD.F32        S0, S0, S4
5554F4:  VCMPE.F32       S0, S2
5554F8:  VMRS            APSR_nzcv, FPSCR
5554FC:  BLE             loc_555594
5554FE:  VSQRT.F32       S0, S0
555502:  VCMPE.F32       S24, #0.0
555506:  VLDR            S2, =200.0
55550A:  VMRS            APSR_nzcv, FPSCR
55550E:  BLE             loc_55553A
555510:  VMUL.F32        S2, S24, S2
555514:  VLDR            S4, =250.0
555518:  VMUL.F32        S0, S2, S0
55551C:  VLDR            S2, =2000.0
555520:  VMUL.F32        S0, S0, S2
555524:  VLDR            S2, [R4,#0x90]
555528:  VDIV.F32        S0, S0, S2
55552C:  VLDR            S2, =100.0
555530:  VADD.F32        S0, S0, S2
555534:  VLDR            S2, =20000.0
555538:  B               loc_555562
55553A:  VMUL.F32        S2, S22, S2
55553E:  VLDR            S4, =150.0
555542:  VMUL.F32        S0, S2, S0
555546:  VLDR            S2, =2000.0
55554A:  VMUL.F32        S0, S0, S2
55554E:  VLDR            S2, [R4,#0x90]
555552:  VDIV.F32        S0, S0, S2
555556:  VLDR            S2, =40.0
55555A:  VADD.F32        S0, S0, S2
55555E:  VLDR            S2, =5000.0
555562:  VMIN.F32        D0, D0, D2
555566:  VMUL.F32        S2, S26, S2
55556A:  VCVT.U32.F32    S0, S0
55556E:  VMOV            R8, S0
555572:  VCVT.F32.U32    S0, S0
555576:  VDIV.F32        S0, S2, S0
55557A:  VCVT.U32.F32    S0, S0
55557E:  VMOV            R0, S0
555582:  SXTH            R6, R0
555584:  MOVS            R0, #0; this
555586:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
55558A:  MOV             R1, R6; __int16
55558C:  MOV             R2, R8; unsigned __int8
55558E:  MOVS            R3, #0; unsigned int
555590:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
555594:  LDR             R0, [R5]
555596:  TST.W           R0, #0x2000
55559A:  BIC.W           R1, R0, #0x21000000; CVehicle *
55559E:  STR             R1, [R5]
5555A0:  ITT EQ
5555A2:  MOVEQ           R0, R4; this
5555A4:  BLXEQ           j__ZN8CCarCtrl16ScanForPedDangerEP8CVehicle; CCarCtrl::ScanForPedDanger(CVehicle *)
5555A8:  LDRB.W          R0, [R4,#0x392]
5555AC:  LDR.W           R8, [SP,#0x140+var_120]
5555B0:  LSLS            R0, R0, #0x1E
5555B2:  BPL.W           loc_5557D4
5555B6:  VLDR            S0, [R4,#0x48]
5555BA:  VLDR            S2, [R4,#0x4C]
5555BE:  VMUL.F32        S0, S0, S0
5555C2:  VLDR            S4, [R4,#0x50]
5555C6:  VMUL.F32        S2, S2, S2
5555CA:  VMUL.F32        S4, S4, S4
5555CE:  VADD.F32        S0, S0, S2
5555D2:  VLDR            S2, =0.2
5555D6:  VADD.F32        S0, S0, S4
5555DA:  VSQRT.F32       S0, S0
5555DE:  VCMPE.F32       S0, S2
5555E2:  VMRS            APSR_nzcv, FPSCR
5555E6:  BGE.W           loc_5557D4
5555EA:  LDRB.W          R0, [R4,#0x3A]
5555EE:  AND.W           R1, R0, #0xF8
5555F2:  CMP             R1, #0x18
5555F4:  BNE             loc_55566A
5555F6:  LDRSB.W         R1, [R4,#0x48F]
5555FA:  ADDS            R2, R1, #1
5555FC:  BEQ             loc_55566A
5555FE:  LDR.W           R2, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x55560A)
555602:  ADD.W           R1, R1, R1,LSL#2
555606:  ADD             R2, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
555608:  LDR             R2, [R2]; CVehicle::m_aSpecialHydraulicData ...
55560A:  ADD.W           R2, R2, R1,LSL#3
55560E:  VLDR            S0, [R2,#0x18]
555612:  VCMPE.F32       S0, S16
555616:  VMRS            APSR_nzcv, FPSCR
55561A:  BLE             loc_555636
55561C:  LDR.W           R2, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x555624)
555620:  ADD             R2, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
555622:  LDR             R2, [R2]; CVehicle::m_aSpecialHydraulicData ...
555624:  ADD.W           R2, R2, R1,LSL#3
555628:  VLDR            S0, [R2,#0x1C]
55562C:  VCMPE.F32       S0, S16
555630:  VMRS            APSR_nzcv, FPSCR
555634:  BGT             loc_5556DE
555636:  LDR.W           R2, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x55563E)
55563A:  ADD             R2, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
55563C:  LDR             R2, [R2]; CVehicle::m_aSpecialHydraulicData ...
55563E:  ADD.W           R2, R2, R1,LSL#3
555642:  VLDR            S0, [R2,#0x20]
555646:  VCMPE.F32       S0, S16
55564A:  VMRS            APSR_nzcv, FPSCR
55564E:  BLE             loc_55566A
555650:  LDR.W           R2, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x555658)
555654:  ADD             R2, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
555656:  LDR             R2, [R2]; CVehicle::m_aSpecialHydraulicData ...
555658:  ADD.W           R1, R2, R1,LSL#3
55565C:  VLDR            S0, [R1,#0x24]
555660:  VCMPE.F32       S0, S16
555664:  VMRS            APSR_nzcv, FPSCR
555668:  BGT             loc_5556DE
55566A:  CMP             R0, #7
55566C:  BHI.W           loc_5557D4
555670:  LDR.W           R0, [R4,#0x464]; this
555674:  CMP             R0, #0
555676:  BEQ.W           loc_5557D4
55567A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
55567E:  CMP             R0, #1
555680:  BNE.W           loc_5557D4
555684:  LDR.W           R0, [R4,#0x464]; this
555688:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
55568C:  MOVS            R1, #1; bool
55568E:  MOVS            R2, #1; bool
555690:  MOV             R5, R0
555692:  MOVS            R6, #1
555694:  BLX             j__ZN4CPad18GetCarGunLeftRightEbb; CPad::GetCarGunLeftRight(bool,bool)
555698:  VMOV            S0, R0
55569C:  VLDR            S22, =50.0
5556A0:  VCVT.F32.S32    S0, S0
5556A4:  VABS.F32        S0, S0
5556A8:  VCMPE.F32       S0, S22
5556AC:  VMRS            APSR_nzcv, FPSCR
5556B0:  BLE.W           loc_5557D4
5556B4:  MOVW            R3, #0x4000
5556B8:  MOV             R0, R5; this
5556BA:  MOVT            R3, #0x451C; float
5556BE:  MOVS            R1, #1; bool
5556C0:  MOVS            R2, #0; CAutomobile *
5556C2:  STR             R6, [SP,#0x140+var_140]; CHID *
5556C4:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
5556C8:  VMOV            S0, R0
5556CC:  VCVT.F32.S32    S0, S0
5556D0:  VABS.F32        S0, S0
5556D4:  VCMPE.F32       S0, S22
5556D8:  VMRS            APSR_nzcv, FPSCR
5556DC:  BGE             loc_5557D4
5556DE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5556EC)
5556E2:  ADD.W           R2, R4, #0xA8
5556E6:  LDR             R5, [R4,#0x14]
5556E8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5556EA:  VLDR            S22, [R4,#0x94]
5556EE:  VLDR            S24, [R4,#0x54]
5556F2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5556F4:  MOV             R1, R5; CVector *
5556F6:  VLDR            S26, [R4,#0x58]
5556FA:  VLDR            S28, [R4,#0x5C]
5556FE:  LDR             R6, [R0]; CTimer::ms_fTimeStep
555700:  ADD             R0, SP, #0x140+var_98; CMatrix *
555702:  VLDR            S30, [R5,#0x10]
555706:  VLDR            S17, [R5,#0x14]
55570A:  VLDR            S19, [R5,#0x18]
55570E:  VLDR            S21, [R5,#0x20]
555712:  VLDR            S23, [R5,#0x24]
555716:  VLDR            S25, [R5,#0x28]
55571A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
55571E:  VMUL.F32        S0, S26, S17
555722:  MOVW            R0, #0x28F6
555726:  VMUL.F32        S2, S24, S30
55572A:  MOVT            R0, #0x3F7C; x
55572E:  VMUL.F32        S4, S28, S19
555732:  MOV             R1, R6; y
555734:  VADD.F32        S0, S2, S0
555738:  VMOV.F32        S2, #5.0
55573C:  VADD.F32        S24, S0, S4
555740:  VMUL.F32        S0, S24, S2
555744:  VMUL.F32        S0, S24, S0
555748:  VADD.F32        S26, S0, S18
55574C:  BLX             powf
555750:  VMOV            S0, R0
555754:  MOV             R1, R6; y
555756:  VDIV.F32        S0, S0, S26
55575A:  VMOV            R0, S0; x
55575E:  BLX             powf
555762:  VMOV            S0, R0
555766:  VLDR            S6, [SP,#0x140+var_98]
55576A:  VLDR            S8, [SP,#0x140+var_98+4]
55576E:  VMUL.F32        S0, S0, S24
555772:  VLDR            S10, [SP,#0x140+var_90]
555776:  VSUB.F32        S0, S0, S24
55577A:  VMUL.F32        S2, S21, S0
55577E:  VMUL.F32        S4, S23, S0
555782:  VMUL.F32        S0, S25, S0
555786:  VMUL.F32        S2, S2, S22
55578A:  VMUL.F32        S4, S4, S22
55578E:  VMUL.F32        S0, S0, S22
555792:  VMOV            R0, S2
555796:  VLDR            S2, [R5,#4]
55579A:  VMOV            R2, S4
55579E:  VLDR            S4, [R5,#8]
5557A2:  VMOV            R3, S0
5557A6:  VLDR            S0, [R5]
5557AA:  VADD.F32        S4, S4, S10
5557AE:  VADD.F32        S0, S0, S6
5557B2:  VADD.F32        S2, S2, S8
5557B6:  VSTR            S0, [SP,#0x140+var_140]
5557BA:  VSTR            S2, [SP,#0x140+var_13C]
5557BE:  VSTR            S4, [SP,#0x140+var_138]
5557C2:  EOR.W           R1, R0, #0x80000000
5557C6:  MOV             R0, R4
5557C8:  EOR.W           R2, R2, #0x80000000
5557CC:  EOR.W           R3, R3, #0x80000000
5557D0:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5557D4:  LDR.W           R0, [R4,#0x4D0]; this
5557D8:  CMP             R0, #0
5557DA:  BEQ             loc_555884
5557DC:  LDRB.W          R1, [R4,#0x3A]
5557E0:  AND.W           R1, R1, #0xF8
5557E4:  CMP             R1, #0x50 ; 'P'
5557E6:  BNE             loc_5558B0
5557E8:  VLDR            S0, [R0,#0x48]
5557EC:  VCMP.F32        S0, #0.0
5557F0:  VMRS            APSR_nzcv, FPSCR
5557F4:  BNE             loc_555842
5557F6:  VLDR            S0, [R0,#0x4C]
5557FA:  VCMP.F32        S0, #0.0
5557FE:  VMRS            APSR_nzcv, FPSCR
555802:  BNE             loc_555842
555804:  VLDR            S0, [R0,#0x50]
555808:  VCMP.F32        S0, #0.0
55580C:  VMRS            APSR_nzcv, FPSCR
555810:  BNE             loc_555842
555812:  VLDR            S0, [R4,#0x48]
555816:  VLDR            S2, [R4,#0x4C]
55581A:  VMUL.F32        S0, S0, S0
55581E:  VLDR            S4, [R4,#0x50]
555822:  VMUL.F32        S2, S2, S2
555826:  VMUL.F32        S4, S4, S4
55582A:  VADD.F32        S0, S0, S2
55582E:  VLDR            S2, =0.01
555832:  VADD.F32        S0, S0, S4
555836:  VCMPE.F32       S0, S2
55583A:  VMRS            APSR_nzcv, FPSCR
55583E:  BLE.W           loc_5559A0
555842:  MOVS            R1, #0; bool
555844:  MOVS            R2, #0; bool
555846:  BLX             j__ZN8CVehicle17UpdateTractorLinkEbb; CVehicle::UpdateTractorLink(bool,bool)
55584A:  MOVS            R4, #1
55584C:  LDR             R6, [SP,#0x140+var_FC]
55584E:  MOVS            R1, #0; bool
555850:  MOVS            R2, #0; bool
555852:  MOV             R0, R6; this
555854:  BLX             j__ZN8CVehicle17UpdateTrailerLinkEbb; CVehicle::UpdateTrailerLink(bool,bool)
555858:  LDR.W           R0, [R6,#0x4D0]; this
55585C:  CBZ             R0, loc_5558CE
55585E:  LDRB.W          R1, [R6,#0x3A]
555862:  AND.W           R1, R1, #0xF8
555866:  CMP             R1, #0x50 ; 'P'
555868:  BNE             loc_5558CE
55586A:  CMP             R4, #1
55586C:  BNE             loc_555876
55586E:  MOVS            R1, #0; bool
555870:  MOVS            R2, #1; bool
555872:  BLX             j__ZN8CVehicle17UpdateTractorLinkEbb; CVehicle::UpdateTractorLink(bool,bool)
555876:  LDR             R6, [SP,#0x140+var_FC]
555878:  MOVS            R1, #0; bool
55587A:  MOVS            R2, #1; bool
55587C:  MOV             R0, R6; this
55587E:  BLX             j__ZN8CVehicle17UpdateTrailerLinkEbb; CVehicle::UpdateTrailerLink(bool,bool)
555882:  B               loc_5558CE
555884:  LDR.W           R0, [R4,#0x4D4]; this
555888:  MOV             R6, R4
55588A:  CBZ             R0, loc_5558CE
55588C:  LDRB.W          R1, [R0,#0x3A]
555890:  AND.W           R1, R1, #0xF8
555894:  CMP             R1, #0x50 ; 'P'
555896:  BNE             loc_5558BE
555898:  LDR.W           R0, [R0,#0x4D0]
55589C:  LDR             R6, [SP,#0x140+var_FC]
55589E:  CMP             R0, R6
5558A0:  BNE             loc_5558CE
5558A2:  MOV             R0, R6; this
5558A4:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
5558A8:  MOV             R0, R6; this
5558AA:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
5558AE:  B               loc_5558CE
5558B0:  LDR             R0, [R4]
5558B2:  LDR.W           R1, [R0,#0xFC]
5558B6:  MOV             R0, R4
5558B8:  BLX             R1
5558BA:  MOV             R6, R4
5558BC:  B               loc_5558CE
5558BE:  LDR             R6, [SP,#0x140+var_FC]
5558C0:  ADDW            R5, R6, #0x4D4
5558C4:  MOV             R1, R5; CEntity **
5558C6:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5558CA:  MOVS            R0, #0
5558CC:  STR             R0, [R5]
5558CE:  LDR             R0, [R6,#0x44]
5558D0:  AND.W           R0, R0, #0xC
5558D4:  CMP             R0, #0xC
5558D6:  BNE             loc_555900
5558D8:  LDR.W           R8, [SP,#0x140+var_124]
5558DC:  VMOV.I32        Q8, #0
5558E0:  ADD.W           R0, R8, #0x20 ; ' '
5558E4:  VST1.32         {D16-D17}, [R0]
5558E8:  MOV             R0, R8
5558EA:  VST1.32         {D16-D17}, [R0]!
5558EE:  VST1.32         {D16-D17}, [R0]
5558F2:  B               loc_555AD4
5558F4:  DCFS 0.2
5558F8:  DCFS 50.0
5558FC:  DCFS 0.01
555900:  CMP.W           R8, #0
555904:  LDR.W           R8, [SP,#0x140+var_124]
555908:  BNE.W           loc_555AD4
55590C:  LDR             R0, [SP,#0x140+var_100]
55590E:  VLDR            S0, [R0]
555912:  VCMP.F32        S0, #0.0
555916:  VMRS            APSR_nzcv, FPSCR
55591A:  BEQ             loc_55592A
55591C:  LDRB.W          R0, [R6,#0x3A]
555920:  AND.W           R0, R0, #0xF8
555924:  CMP             R0, #0x28 ; '('
555926:  BNE.W           loc_555AD4
55592A:  VLDR            S0, [R8]
55592E:  VABS.F32        S2, S0
555932:  VLDR            S0, =0.005
555936:  VCMPE.F32       S2, S0
55593A:  VMRS            APSR_nzcv, FPSCR
55593E:  BGE.W           loc_555AD4
555942:  VLDR            S2, [R6,#0x4C]
555946:  VABS.F32        S2, S2
55594A:  VCMPE.F32       S2, S0
55594E:  VMRS            APSR_nzcv, FPSCR
555952:  BGE.W           loc_555AD4
555956:  VLDR            S2, [R6,#0x50]
55595A:  VABS.F32        S2, S2
55595E:  VCMPE.F32       S2, S0
555962:  VMRS            APSR_nzcv, FPSCR
555966:  BGE.W           loc_555AD4
55596A:  VLDR            S0, [R6,#0xDC]
55596E:  VCMPE.F32       S0, #0.0
555972:  VMRS            APSR_nzcv, FPSCR
555976:  BLE             loc_55598E
555978:  LDR             R0, [SP,#0x140+var_FC]
55597A:  LDR.W           R4, [R0,#0xE0]
55597E:  MOV.W           R0, #0xFFFFFFFF; int
555982:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
555986:  LDR             R6, [SP,#0x140+var_FC]
555988:  CMP             R4, R0
55598A:  BEQ.W           loc_555AD4
55598E:  LDR.W           R0, [R6,#0x5A4]
555992:  CMP             R0, #3
555994:  BEQ             loc_5559A4
555996:  CMP             R0, #4
555998:  BNE             loc_5559B8
55599A:  ADDW            R0, R6, #0x9A8
55599E:  B               loc_5559A8
5559A0:  MOVS            R4, #0
5559A2:  B               loc_55584C
5559A4:  ADDW            R0, R6, #0x9AC
5559A8:  VLDR            S0, [R0]
5559AC:  VCMP.F32        S0, #0.0
5559B0:  VMRS            APSR_nzcv, FPSCR
5559B4:  BNE.W           loc_555AD4
5559B8:  LDRH.W          R0, [R6,#0x880]
5559BC:  CMP             R0, #0
5559BE:  ITT NE
5559C0:  LDRHNE.W        R1, [R6,#0x882]
5559C4:  CMPNE           R0, R1
5559C6:  BNE.W           loc_555AD4
5559CA:  LDRB.W          R0, [R6,#0x45]
5559CE:  LSLS            R0, R0, #0x1F
5559D0:  BNE.W           loc_555AD4
5559D4:  LDR.W           R0, [R6,#0x4D0]
5559D8:  CBZ             R0, loc_555A04
5559DA:  VLDR            S0, [R0,#0x48]
5559DE:  VCMP.F32        S0, #0.0
5559E2:  VMRS            APSR_nzcv, FPSCR
5559E6:  BNE             loc_555AD4
5559E8:  VLDR            S0, [R0,#0x4C]
5559EC:  VCMP.F32        S0, #0.0
5559F0:  VMRS            APSR_nzcv, FPSCR
5559F4:  BNE             loc_555AD4
5559F6:  VLDR            S0, [R0,#0x50]
5559FA:  VCMP.F32        S0, #0.0
5559FE:  VMRS            APSR_nzcv, FPSCR
555A02:  BNE             loc_555AD4
555A04:  ADD.W           R0, R6, #0x7F8
555A08:  VLDR            S0, [R0]
555A0C:  VCMPE.F32       S0, S18
555A10:  VMRS            APSR_nzcv, FPSCR
555A14:  BLT             loc_555A4C
555A16:  ADDW            R0, R6, #0x7FC
555A1A:  VLDR            S2, [R0]
555A1E:  VCMPE.F32       S2, S18
555A22:  VMRS            APSR_nzcv, FPSCR
555A26:  BLT             loc_555A4C
555A28:  ADD.W           R0, R6, #0x800
555A2C:  VLDR            S2, [R0]
555A30:  VCMPE.F32       S2, S18
555A34:  VMRS            APSR_nzcv, FPSCR
555A38:  BLT             loc_555A4C
555A3A:  ADDW            R0, R6, #0x804
555A3E:  VLDR            S2, [R0]
555A42:  VCMPE.F32       S2, S18
555A46:  VMRS            APSR_nzcv, FPSCR
555A4A:  BGE             loc_555AD4
555A4C:  LDRH            R0, [R6,#0x26]
555A4E:  MOVW            R1, #0x21B
555A52:  CMP             R0, R1
555A54:  BEQ             loc_555A6E
555A56:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x555A5C)
555A58:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
555A5A:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
555A5C:  LDRB.W          R0, [R0,#(byte_79681D - 0x7967F4)]
555A60:  CBNZ            R0, loc_555A6E
555A62:  MOVS            R0, #0
555A64:  STRD.W          R0, R0, [R6,#0x48]
555A68:  STR             R0, [R6,#0x50]
555A6A:  STR             R0, [R6,#0x5C]
555A6C:  B               loc_555AD4
555A6E:  VCMPE.F32       S0, S18
555A72:  VMRS            APSR_nzcv, FPSCR
555A76:  BGE             loc_555A80
555A78:  LDRB.W          R0, [R6,#0x75B]
555A7C:  CMP             R0, #0x27 ; '''
555A7E:  BEQ             loc_555ACE
555A80:  ADDW            R0, R6, #0x7FC
555A84:  VLDR            S0, [R0]
555A88:  VCMPE.F32       S0, S18
555A8C:  VMRS            APSR_nzcv, FPSCR
555A90:  BGE             loc_555A9A
555A92:  LDRB.W          R0, [R6,#0x787]
555A96:  CMP             R0, #0x27 ; '''
555A98:  BEQ             loc_555ACE
555A9A:  ADD.W           R0, R6, #0x800
555A9E:  VLDR            S0, [R0]
555AA2:  VCMPE.F32       S0, S18
555AA6:  VMRS            APSR_nzcv, FPSCR
555AAA:  BGE             loc_555AB4
555AAC:  LDRB.W          R0, [R6,#0x7B3]
555AB0:  CMP             R0, #0x27 ; '''
555AB2:  BEQ             loc_555ACE
555AB4:  ADDW            R0, R6, #0x804
555AB8:  VLDR            S0, [R0]
555ABC:  VCMPE.F32       S0, S18
555AC0:  VMRS            APSR_nzcv, FPSCR
555AC4:  BGE             loc_555A62
555AC6:  LDRB.W          R0, [R6,#0x7DF]
555ACA:  CMP             R0, #0x27 ; '''
555ACC:  BNE             loc_555A62
555ACE:  MOVS            R0, #0
555AD0:  STRB.W          R0, [R6,#0xBC]
555AD4:  LDR             R0, =(_ZN8CWeather10EarthquakeE_ptr - 0x555ADA)
555AD6:  ADD             R0, PC; _ZN8CWeather10EarthquakeE_ptr
555AD8:  LDR             R0, [R0]; CWeather::Earthquake ...
555ADA:  VLDR            S18, [R0]
555ADE:  VCMPE.F32       S18, #0.0
555AE2:  VMRS            APSR_nzcv, FPSCR
555AE6:  BLE             loc_555B3E
555AE8:  LDR             R0, [R6,#0x14]
555AEA:  ADD.W           R1, R0, #0x30 ; '0'
555AEE:  CMP             R0, #0
555AF0:  IT EQ
555AF2:  ADDEQ           R1, R6, #4
555AF4:  LDRD.W          R5, R4, [R1]
555AF8:  VLDR            S22, [R1,#8]
555AFC:  BLX             rand
555B00:  VMOV            S0, R0
555B04:  VLDR            S2, =4.6566e-10
555B08:  VMUL.F32        S4, S18, S16
555B0C:  VCVT.F32.S32    S0, S0
555B10:  LDR             R0, [R6,#0x14]
555B12:  CMP             R0, #0
555B14:  VMUL.F32        S0, S0, S2
555B18:  VMUL.F32        S0, S4, S0
555B1C:  VADD.F32        S0, S0, S20
555B20:  VADD.F32        S0, S22, S0
555B24:  BEQ             loc_555B32
555B26:  STR             R5, [R0,#0x30]
555B28:  LDR             R0, [R6,#0x14]
555B2A:  STR             R4, [R0,#0x34]
555B2C:  LDR             R0, [R6,#0x14]
555B2E:  ADDS            R0, #0x38 ; '8'
555B30:  B               loc_555B3A
555B32:  ADD.W           R0, R6, #0xC
555B36:  STRD.W          R5, R4, [R6,#4]
555B3A:  VSTR            S0, [R0]
555B3E:  LDRH            R0, [R6,#0x26]
555B40:  CMP.W           R0, #0x214
555B44:  BNE             loc_555B4E
555B46:  MOV             R0, R6; this
555B48:  BLX             j__ZN11CAutomobile16ProcessHarvesterEv; CAutomobile::ProcessHarvester(void)
555B4C:  LDRH            R0, [R6,#0x26]
555B4E:  CMP.W           R0, #0x1B0
555B52:  BNE             loc_555BCC
555B54:  VLDR            S0, [R8]
555B58:  VCMP.F32        S0, #0.0
555B5C:  VMRS            APSR_nzcv, FPSCR
555B60:  BNE             loc_555BA8
555B62:  VLDR            S0, [R6,#0x4C]
555B66:  VCMP.F32        S0, #0.0
555B6A:  VMRS            APSR_nzcv, FPSCR
555B6E:  BNE             loc_555BA8
555B70:  VLDR            S0, [R6,#0x50]
555B74:  VCMP.F32        S0, #0.0
555B78:  VMRS            APSR_nzcv, FPSCR
555B7C:  BNE             loc_555BA8
555B7E:  VLDR            S0, [R6,#0x54]
555B82:  VCMP.F32        S0, #0.0
555B86:  VMRS            APSR_nzcv, FPSCR
555B8A:  BNE             loc_555BA8
555B8C:  VLDR            S0, [R6,#0x58]
555B90:  VCMP.F32        S0, #0.0
555B94:  VMRS            APSR_nzcv, FPSCR
555B98:  BNE             loc_555BA8
555B9A:  VLDR            S0, [R6,#0x5C]
555B9E:  VCMP.F32        S0, #0.0
555BA2:  VMRS            APSR_nzcv, FPSCR
555BA6:  BEQ             loc_555BCC
555BA8:  MOV.W           R0, #0x3F800000
555BAC:  STR.W           R0, [R6,#0x62C]
555BB0:  STR.W           R0, [R6,#0x630]
555BB4:  STR.W           R0, [R6,#0x644]
555BB8:  STR.W           R0, [R6,#0x648]
555BBC:  STR.W           R0, [R6,#0x650]
555BC0:  STR.W           R0, [R6,#0x654]
555BC4:  STR.W           R0, [R6,#0x638]
555BC8:  STR.W           R0, [R6,#0x63C]
555BCC:  ADD             SP, SP, #0xE0
555BCE:  VPOP            {D8-D15}
555BD2:  ADD             SP, SP, #4
555BD4:  POP.W           {R8-R11}
555BD8:  POP             {R4-R7,PC}
