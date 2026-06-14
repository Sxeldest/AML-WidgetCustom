; =========================================================
; Game Engine Function: _ZN11CAutomobile9PreRenderEv
; Address            : 0x559CD4 - 0x55BAC4
; =========================================================

559CD4:  PUSH            {R4-R7,LR}
559CD6:  ADD             R7, SP, #0xC
559CD8:  PUSH.W          {R8-R11}
559CDC:  SUB             SP, SP, #4
559CDE:  VPUSH           {D8-D14}
559CE2:  SUB             SP, SP, #0x138; float
559CE4:  MOV             R8, R0
559CE6:  BLX             j__ZN8CVehicle9PreRenderEv; CVehicle::PreRender(void)
559CEA:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x559CF2)
559CEE:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
559CF0:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
559CF2:  LDRB.W          R0, [R0,#(byte_79681D - 0x7967F4)]
559CF6:  CBZ             R0, loc_559D04
559CF8:  LDR.W           R0, [R8]
559CFC:  LDR.W           R1, [R0,#0x118]
559D00:  MOV             R0, R8
559D02:  BLX             R1
559D04:  MOV             R0, R8; this
559D06:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
559D0A:  LDRB.W          R1, [R8,#0x42F]
559D0E:  LDR             R5, [R0,#0x2C]
559D10:  STR.W           R8, [SP,#0x190+var_130]
559D14:  LSLS            R0, R1, #0x1F
559D16:  ITT NE
559D18:  LDRNE.W         R0, [R8,#0x5A4]
559D1C:  CMPNE           R0, #1
559D1E:  BEQ.W           loc_559F1C
559D22:  LDR.W           R0, [R8]
559D26:  LDR.W           R1, [R0,#0xD4]
559D2A:  MOV             R0, R8
559D2C:  BLX             R1
559D2E:  LDR.W           R8, [SP,#0x190+var_130]
559D32:  ADDW            R0, R8, #0x89C
559D36:  VLDR            S0, [R0]
559D3A:  ADDW            R0, R8, #0x88C
559D3E:  VLDR            S2, [R0]
559D42:  ADD.W           R0, R8, #0x7E8
559D46:  VDIV.F32        S4, S2, S0
559D4A:  VMOV.F32        S0, #1.0
559D4E:  VLDR            S6, [R0]
559D52:  LDR             R0, [R5,#0x10]
559D54:  VSUB.F32        S4, S0, S4
559D58:  VSUB.F32        S8, S0, S4
559D5C:  VSUB.F32        S4, S6, S4
559D60:  VDIV.F32        S4, S4, S8
559D64:  VCMPE.F32       S4, #0.0
559D68:  VMRS            APSR_nzcv, FPSCR
559D6C:  VMUL.F32        S8, S2, S4
559D70:  VLDR            S2, [R0,#8]
559D74:  ADDW            R0, R8, #0x84C
559D78:  VCMPE.F32       S6, S0
559D7C:  VSUB.F32        S8, S2, S8
559D80:  IT GT
559D82:  VMOVGT.F32      S2, S8
559D86:  VLDR            S4, [R0]
559D8A:  VMRS            APSR_nzcv, FPSCR
559D8E:  BGE             loc_559D9A
559D90:  VCMPE.F32       S2, S4
559D94:  VMRS            APSR_nzcv, FPSCR
559D98:  BGT             loc_559DAA
559D9A:  VMOV.F32        S6, #0.75
559D9E:  VSUB.F32        S2, S2, S4
559DA2:  VMUL.F32        S2, S2, S6
559DA6:  VADD.F32        S2, S4, S2
559DAA:  VSTR            S2, [R0]
559DAE:  ADD.W           R0, R8, #0x8A0
559DB2:  VLDR            S2, [R0]
559DB6:  ADD.W           R0, R8, #0x890
559DBA:  VLDR            S4, [R0]
559DBE:  ADDW            R0, R8, #0x7EC
559DC2:  VDIV.F32        S2, S4, S2
559DC6:  VSUB.F32        S2, S0, S2
559DCA:  VLDR            S6, [R0]
559DCE:  LDR             R0, [R5,#0x10]
559DD0:  VSUB.F32        S8, S0, S2
559DD4:  VSUB.F32        S2, S6, S2
559DD8:  VDIV.F32        S8, S2, S8
559DDC:  VCMPE.F32       S8, #0.0
559DE0:  VLDR            S2, [R0,#0x28]
559DE4:  VMRS            APSR_nzcv, FPSCR
559DE8:  VMUL.F32        S4, S4, S8
559DEC:  ADD.W           R0, R8, #0x850
559DF0:  VCMPE.F32       S6, S0
559DF4:  VSUB.F32        S4, S2, S4
559DF8:  IT GT
559DFA:  VMOVGT.F32      S2, S4
559DFE:  VLDR            S4, [R0]
559E02:  VMRS            APSR_nzcv, FPSCR
559E06:  BGE             loc_559E12
559E08:  VCMPE.F32       S2, S4
559E0C:  VMRS            APSR_nzcv, FPSCR
559E10:  BGT             loc_559E22
559E12:  VMOV.F32        S6, #0.75
559E16:  VSUB.F32        S2, S2, S4
559E1A:  VMUL.F32        S2, S2, S6
559E1E:  VADD.F32        S2, S4, S2
559E22:  VSTR            S2, [R0]
559E26:  ADDW            R0, R8, #0x8A4
559E2A:  VLDR            S2, [R0]
559E2E:  ADDW            R0, R8, #0x894
559E32:  VLDR            S4, [R0]
559E36:  ADD.W           R0, R8, #0x7F0
559E3A:  VDIV.F32        S2, S4, S2
559E3E:  VSUB.F32        S2, S0, S2
559E42:  VLDR            S6, [R0]
559E46:  LDR             R0, [R5,#0x10]
559E48:  VSUB.F32        S8, S0, S2
559E4C:  VSUB.F32        S2, S6, S2
559E50:  VDIV.F32        S8, S2, S8
559E54:  VCMPE.F32       S8, #0.0
559E58:  VLDR            S2, [R0,#0x48]
559E5C:  VMRS            APSR_nzcv, FPSCR
559E60:  VMUL.F32        S4, S4, S8
559E64:  ADDW            R0, R8, #0x854
559E68:  VCMPE.F32       S6, S0
559E6C:  VSUB.F32        S4, S2, S4
559E70:  IT GT
559E72:  VMOVGT.F32      S2, S4
559E76:  VLDR            S4, [R0]
559E7A:  VMRS            APSR_nzcv, FPSCR
559E7E:  BGE             loc_559E8A
559E80:  VCMPE.F32       S2, S4
559E84:  VMRS            APSR_nzcv, FPSCR
559E88:  BGT             loc_559E9A
559E8A:  VMOV.F32        S6, #0.75
559E8E:  VSUB.F32        S2, S2, S4
559E92:  VMUL.F32        S2, S2, S6
559E96:  VADD.F32        S2, S4, S2
559E9A:  VSTR            S2, [R0]
559E9E:  ADDW            R0, R8, #0x8A8
559EA2:  VLDR            S2, [R0]
559EA6:  ADDW            R0, R8, #0x898
559EAA:  VLDR            S4, [R0]
559EAE:  ADDW            R0, R8, #0x7F4
559EB2:  VDIV.F32        S2, S4, S2
559EB6:  VSUB.F32        S2, S0, S2
559EBA:  VLDR            S6, [R0]
559EBE:  LDR             R0, [R5,#0x10]
559EC0:  VSUB.F32        S8, S0, S2
559EC4:  VSUB.F32        S2, S6, S2
559EC8:  VDIV.F32        S8, S2, S8
559ECC:  VCMPE.F32       S8, #0.0
559ED0:  VLDR            S2, [R0,#0x68]
559ED4:  VMRS            APSR_nzcv, FPSCR
559ED8:  VMUL.F32        S4, S4, S8
559EDC:  ADDW            R0, R8, #0x858
559EE0:  VCMPE.F32       S6, S0
559EE4:  VSUB.F32        S4, S2, S4
559EE8:  IT GT
559EEA:  VMOVGT.F32      S2, S4
559EEE:  VLDR            S4, [R0]
559EF2:  VMRS            APSR_nzcv, FPSCR
559EF6:  BGE             loc_559F08
559EF8:  VCMPE.F32       S2, S4
559EFC:  VMRS            APSR_nzcv, FPSCR
559F00:  BLE             loc_559F08
559F02:  VSTR            S2, [R0]
559F06:  B               loc_559F1C
559F08:  VMOV.F32        S0, #0.75
559F0C:  VSUB.F32        S2, S2, S4
559F10:  VMUL.F32        S0, S2, S0
559F14:  VADD.F32        S0, S4, S0
559F18:  VSTR            S0, [R0]
559F1C:  STR             R5, [SP,#0x190+var_14C]; bool
559F1E:  LDR.W           R0, [R8,#0x14]
559F22:  VLDR            S0, [R8,#0x48]
559F26:  VLDR            S2, [R8,#0x4C]
559F2A:  VLDR            S6, [R0,#0x10]
559F2E:  VLDR            S8, [R0,#0x14]
559F32:  VMUL.F32        S6, S0, S6
559F36:  VLDR            S10, [R0,#0x18]
559F3A:  VMUL.F32        S8, S2, S8
559F3E:  VLDR            S4, [R8,#0x50]
559F42:  VMUL.F32        S2, S2, S2
559F46:  LDRSH.W         R0, [R8,#0x26]
559F4A:  VMUL.F32        S0, S0, S0
559F4E:  VMUL.F32        S18, S4, S10
559F52:  ADDS            R1, R0, #2
559F54:  VMUL.F32        S4, S4, S4
559F58:  VADD.F32        S20, S6, S8
559F5C:  VADD.F32        S0, S0, S2
559F60:  VADD.F32        S0, S0, S4
559F64:  VSQRT.F32       S16, S0
559F68:  BEQ.W           loc_55A1DA
559F6C:  MOVW            R1, #0x1B9
559F70:  CMP             R0, R1
559F72:  ITT NE
559F74:  MOVWNE          R1, #0x21B
559F78:  CMPNE           R0, R1
559F7A:  BEQ.W           loc_55A1DA
559F7E:  LDRB.W          R0, [R8,#0x3A]
559F82:  AND.W           R1, R0, #0xF8
559F86:  CMP             R1, #0x10
559F88:  BNE.W           loc_55A122
559F8C:  MOVS            R5, #0
559F8E:  MOVS            R2, #0
559F90:  STRD.W          R5, R5, [SP,#0x190+var_70]
559F94:  LDR.W           R0, [R8,#0x66C]
559F98:  ADD.W           R8, SP, #0x190+var_B0
559F9C:  ADD.W           R1, R0, #0x10
559FA0:  MOV             R0, R8
559FA2:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
559FA6:  LDRD.W          R0, R1, [SP,#0x190+var_80]
559FAA:  VMOV.F32        S22, #1.5
559FAE:  STRD.W          R0, R1, [SP,#0x190+var_F0]
559FB2:  ADD             R6, SP, #0x190+var_F0
559FB4:  LDR             R0, [SP,#0x190+var_130]
559FB6:  MOV             R2, R6
559FB8:  ADDW            R0, R0, #0x858
559FBC:  VLDR            S0, [R0]
559FC0:  LDR             R0, [SP,#0x190+var_130]
559FC2:  VMUL.F32        S0, S0, S22
559FC6:  VSTR            S0, [SP,#0x190+var_E8]
559FCA:  LDR             R1, [R0,#0x14]
559FCC:  ADD             R0, SP, #0x190+var_C0
559FCE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
559FD2:  VLDR            D16, [SP,#0x190+var_C0]
559FD6:  LDR             R1, [SP,#0x190+var_130]
559FD8:  LDR             R2, [SP,#0x190+var_130]
559FDA:  LDR             R0, [SP,#0x190+var_B8]
559FDC:  STR             R0, [SP,#0x190+var_60]
559FDE:  VSTR            D16, [SP,#0x190+var_68]
559FE2:  LDR.W           R1, [R1,#0x678]
559FE6:  VLDR            D16, [SP,#0x190+var_68]
559FEA:  LDR             R0, [SP,#0x190+var_60]
559FEC:  ADDS            R1, #0x10
559FEE:  STRB.W          R5, [R2,#0x7DF]
559FF2:  LDR             R2, [SP,#0x190+var_130]
559FF4:  STR.W           R0, [R2,#0x7C4]
559FF8:  MOVS            R2, #0
559FFA:  LDR             R0, [SP,#0x190+var_130]
559FFC:  ADDW            R0, R0, #0x7BC
55A000:  VSTR            D16, [R0]
55A004:  MOV             R0, R8
55A006:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55A00A:  LDRD.W          R0, R1, [SP,#0x190+var_80]
55A00E:  MOV             R2, R6
55A010:  STRD.W          R0, R1, [SP,#0x190+var_F0]
55A014:  LDR             R0, [SP,#0x190+var_130]
55A016:  ADD.W           R0, R0, #0x850
55A01A:  VLDR            S0, [R0]
55A01E:  LDR             R0, [SP,#0x190+var_130]
55A020:  VMUL.F32        S0, S0, S22
55A024:  VSTR            S0, [SP,#0x190+var_E8]
55A028:  LDR             R1, [R0,#0x14]
55A02A:  ADD             R0, SP, #0x190+var_C0
55A02C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55A030:  VLDR            D16, [SP,#0x190+var_C0]
55A034:  LDR             R1, [SP,#0x190+var_130]
55A036:  LDR             R2, [SP,#0x190+var_130]
55A038:  LDR             R0, [SP,#0x190+var_B8]
55A03A:  STR             R0, [SP,#0x190+var_60]
55A03C:  VSTR            D16, [SP,#0x190+var_68]
55A040:  LDR.W           R1, [R1,#0x664]
55A044:  VLDR            D16, [SP,#0x190+var_68]
55A048:  LDR             R0, [SP,#0x190+var_60]
55A04A:  ADDS            R1, #0x10
55A04C:  STRB.W          R5, [R2,#0x787]
55A050:  LDR             R2, [SP,#0x190+var_130]
55A052:  STR.W           R0, [R2,#0x76C]
55A056:  MOVS            R2, #0
55A058:  LDR             R0, [SP,#0x190+var_130]
55A05A:  ADDW            R0, R0, #0x764
55A05E:  VSTR            D16, [R0]
55A062:  MOV             R0, R8
55A064:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55A068:  LDRD.W          R0, R1, [SP,#0x190+var_80]
55A06C:  MOV             R2, R6
55A06E:  STRD.W          R0, R1, [SP,#0x190+var_F0]
55A072:  LDR             R0, [SP,#0x190+var_130]
55A074:  ADDW            R0, R0, #0x854
55A078:  VLDR            S0, [R0]
55A07C:  LDR             R0, [SP,#0x190+var_130]
55A07E:  VMUL.F32        S0, S0, S22
55A082:  VSTR            S0, [SP,#0x190+var_E8]
55A086:  LDR             R1, [R0,#0x14]
55A088:  ADD             R0, SP, #0x190+var_C0
55A08A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55A08E:  VLDR            D16, [SP,#0x190+var_C0]
55A092:  LDR             R1, [SP,#0x190+var_130]
55A094:  LDR             R2, [SP,#0x190+var_130]
55A096:  LDR             R0, [SP,#0x190+var_B8]
55A098:  STR             R0, [SP,#0x190+var_60]
55A09A:  VSTR            D16, [SP,#0x190+var_68]
55A09E:  LDR.W           R1, [R1,#0x670]
55A0A2:  VLDR            D16, [SP,#0x190+var_68]
55A0A6:  LDR             R0, [SP,#0x190+var_60]
55A0A8:  ADDS            R1, #0x10
55A0AA:  STRB.W          R5, [R2,#0x7B3]
55A0AE:  LDR             R2, [SP,#0x190+var_130]
55A0B0:  STR.W           R0, [R2,#0x798]
55A0B4:  MOVS            R2, #0
55A0B6:  LDR             R0, [SP,#0x190+var_130]
55A0B8:  ADD.W           R0, R0, #0x790
55A0BC:  VSTR            D16, [R0]
55A0C0:  MOV             R0, R8
55A0C2:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55A0C6:  LDRD.W          R0, R1, [SP,#0x190+var_80]
55A0CA:  MOV             R2, R6
55A0CC:  STRD.W          R0, R1, [SP,#0x190+var_F0]
55A0D0:  LDR             R0, [SP,#0x190+var_130]
55A0D2:  ADDW            R0, R0, #0x84C
55A0D6:  VLDR            S0, [R0]
55A0DA:  LDR             R0, [SP,#0x190+var_130]
55A0DC:  VMUL.F32        S0, S0, S22
55A0E0:  VSTR            S0, [SP,#0x190+var_E8]
55A0E4:  LDR             R1, [R0,#0x14]
55A0E6:  ADD             R0, SP, #0x190+var_C0
55A0E8:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55A0EC:  VLDR            D16, [SP,#0x190+var_C0]
55A0F0:  LDR             R1, [SP,#0x190+var_130]
55A0F2:  LDR             R0, [SP,#0x190+var_B8]
55A0F4:  STR             R0, [SP,#0x190+var_60]
55A0F6:  VSTR            D16, [SP,#0x190+var_68]
55A0FA:  VLDR            D16, [SP,#0x190+var_68]
55A0FE:  LDR             R0, [SP,#0x190+var_60]
55A100:  STRB.W          R5, [R1,#0x75B]
55A104:  LDR             R1, [SP,#0x190+var_130]
55A106:  STR.W           R0, [R1,#0x740]
55A10A:  LDR             R0, [SP,#0x190+var_130]
55A10C:  ADD.W           R0, R0, #0x738
55A110:  VSTR            D16, [R0]
55A114:  MOV             R0, R8; this
55A116:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55A11A:  LDR.W           R8, [SP,#0x190+var_130]
55A11E:  LDRB.W          R0, [R8,#0x3A]
55A122:  CMP             R0, #0x1F
55A124:  BHI             loc_55A1DA
55A126:  LDR.W           R0, [R8,#0x980]
55A12A:  CMP             R0, #2
55A12C:  ITT NE
55A12E:  LDRNE.W         R0, [R8,#0x988]
55A132:  CMPNE           R0, #2
55A134:  BNE             loc_55A13A
55A136:  MOVS            R2, #0
55A138:  B               loc_55A13C
55A13A:  MOVS            R2, #1
55A13C:  VMOV.F32        S22, #1.0
55A140:  ADD.W           R11, R8, #0x738
55A144:  VMOV.F32        S24, #-1.0
55A148:  MOVS            R5, #0
55A14A:  MOVS            R4, #0
55A14C:  MOVS            R6, #0
55A14E:  ADDW            R0, R8, #0x5B4
55A152:  STR             R0, [SP,#0x190+var_13C]
55A154:  STR             R2, [SP,#0x190+var_138]
55A156:  ADD.W           R9, R11, R6
55A15A:  ORR.W           R1, R6, #2
55A15E:  ADD.W           R10, R11, R6,LSL#2
55A162:  CMP             R1, #2
55A164:  LDRB.W          R0, [R9,#0xFC]!
55A168:  MOV             R8, R0
55A16A:  IT EQ
55A16C:  ORREQ.W         R8, R8, #4
55A170:  LDR.W           R1, [R10,#0x244]
55A174:  STR             R1, [SP,#0x190+var_134]
55A176:  CMP             R2, #0
55A178:  LDRB.W          R1, [R9,#4]
55A17C:  IT EQ
55A17E:  MOVEQ           R8, R0
55A180:  CMP             R1, #0
55A182:  MOV             R1, R6; int
55A184:  IT NE
55A186:  ORRNE.W         R8, R8, #2
55A18A:  LDR             R0, [SP,#0x190+var_13C]; this
55A18C:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
55A190:  MOV             R2, R0; int
55A192:  ADD.W           R0, R11, R4
55A196:  ADD.W           R1, R11, R5
55A19A:  CMP             R6, #2
55A19C:  LDR.W           R3, [R0,#0xC0]; int
55A1A0:  VMOV.F32        S0, S22
55A1A4:  LDR.W           R0, [R10,#0xEC]
55A1A8:  IT CC
55A1AA:  VMOVCC.F32      S0, S24
55A1AE:  STRD.W          R6, R0, [SP,#0x190+var_180]; float
55A1B2:  STRD.W          R9, R8, [SP,#0x190+var_178]; unsigned __int8
55A1B6:  LDR.W           R8, [SP,#0x190+var_130]
55A1BA:  STRD.W          R1, R1, [SP,#0x190+var_18C]; int
55A1BE:  LDR             R1, [SP,#0x190+var_134]; int
55A1C0:  MOV             R0, R8; int
55A1C2:  VSTR            S16, [SP,#0x190+var_190]
55A1C6:  VSTR            S0, [SP,#0x190+var_184]
55A1CA:  BLX             j__ZN8CVehicle23AddSingleWheelParticlesE11tWheelStatejffP9CColPointP7CVectorfijPbj; CVehicle::AddSingleWheelParticles(tWheelState,uint,float,float,CColPoint *,CVector *,float,int,uint,bool *,uint)
55A1CE:  LDR             R2, [SP,#0x190+var_138]
55A1D0:  ADDS            R6, #1
55A1D2:  ADDS            R5, #0x2C ; ','
55A1D4:  ADDS            R4, #4
55A1D6:  CMP             R6, #4
55A1D8:  BNE             loc_55A156
55A1DA:  VADD.F32        S18, S20, S18
55A1DE:  ADDW            R0, R8, #0x42C
55A1E2:  STR             R0, [SP,#0x190+var_134]
55A1E4:  LDR.W           R0, [R8,#0x668]
55A1E8:  VLDR            S20, =0.0055556
55A1EC:  CMP             R0, #0
55A1EE:  BEQ.W           loc_55A330
55A1F2:  LDR.W           R1, [R8,#0x14]
55A1F6:  ADD.W           R2, R8, #0x768
55A1FA:  ADDW            R6, R8, #0x764
55A1FE:  LDRB.W          R0, [R8,#0x839]
55A202:  VLDR            S6, [R2]
55A206:  ADDW            R11, R8, #0x5B4
55A20A:  VLDR            S0, [R1,#0x10]
55A20E:  CMP             R0, #0
55A210:  VLDR            S2, [R1,#0x14]
55A214:  MOV             R0, R11; this
55A216:  VLDR            S4, [R1,#0x18]
55A21A:  VADD.F32        S0, S0, S0
55A21E:  VADD.F32        S2, S2, S2
55A222:  ADDW            R1, R8, #0x76C
55A226:  VADD.F32        S4, S4, S4
55A22A:  VLDR            S8, [R6]
55A22E:  VLDR            S10, [R1]
55A232:  MOV.W           R1, #1; int
55A236:  LDRB.W          R4, [R8,#0x835]
55A23A:  VADD.F32        S0, S0, S8
55A23E:  VADD.F32        S2, S2, S6
55A242:  VADD.F32        S4, S4, S10
55A246:  VSTR            S2, [SP,#0x190+var_AC]
55A24A:  VSTR            S0, [SP,#0x190+var_B0]
55A24E:  VSTR            S4, [SP,#0x190+var_A8]
55A252:  LDR.W           R10, [R8,#0x980]
55A256:  IT NE
55A258:  ORRNE.W         R4, R4, #2
55A25C:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
55A260:  ADD.W           R9, SP, #0x190+var_B0
55A264:  MOV             R2, R0; int
55A266:  LDR.W           R3, [R8,#0x7FC]; int
55A26A:  MOV.W           R12, #5
55A26E:  LDR.W           R0, [R8,#0x828]
55A272:  MOV.W           R5, #0x3F800000
55A276:  STRD.W          R6, R9, [SP,#0x190+var_18C]; int
55A27A:  ADDW            R1, R8, #0x835
55A27E:  STRD.W          R5, R12, [SP,#0x190+var_184]; int
55A282:  ADD.W           R12, SP, #0x190+var_17C
55A286:  STM.W           R12, {R0,R1,R4}
55A28A:  MOV             R0, R8; int
55A28C:  MOV             R1, R10; int
55A28E:  VSTR            S16, [SP,#0x190+var_190]
55A292:  BLX             j__ZN8CVehicle23AddSingleWheelParticlesE11tWheelStatejffP9CColPointP7CVectorfijPbj; CVehicle::AddSingleWheelParticles(tWheelState,uint,float,float,CColPoint *,CVector *,float,int,uint,bool *,uint)
55A296:  LDR.W           R0, [R8,#0x14]
55A29A:  ADDW            R4, R8, #0x7BC
55A29E:  ADD.W           R1, R8, #0x7C0
55A2A2:  LDRB.W          R5, [R8,#0x837]
55A2A6:  VLDR            S6, [R4]
55A2AA:  VLDR            S0, [R0,#0x10]
55A2AE:  VLDR            S2, [R0,#0x14]
55A2B2:  VLDR            S4, [R0,#0x18]
55A2B6:  VADD.F32        S0, S0, S0
55A2BA:  VADD.F32        S2, S2, S2
55A2BE:  ADDW            R0, R8, #0x7C4
55A2C2:  VADD.F32        S4, S4, S4
55A2C6:  VLDR            S8, [R1]
55A2CA:  VLDR            S10, [R0]
55A2CE:  MOVS            R1, #3; int
55A2D0:  LDRB.W          R0, [R8,#0x83B]
55A2D4:  CMP             R0, #0
55A2D6:  MOV             R0, R11; this
55A2D8:  VADD.F32        S0, S0, S6
55A2DC:  VADD.F32        S2, S2, S8
55A2E0:  VADD.F32        S4, S4, S10
55A2E4:  VSTR            S0, [SP,#0x190+var_B0]
55A2E8:  VSTR            S2, [SP,#0x190+var_AC]
55A2EC:  VSTR            S4, [SP,#0x190+var_A8]
55A2F0:  LDR.W           R6, [R8,#0x988]
55A2F4:  IT NE
55A2F6:  ORRNE.W         R5, R5, #2
55A2FA:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
55A2FE:  MOV             R2, R0; int
55A300:  LDR.W           R3, [R8,#0x804]; int
55A304:  LDR.W           R0, [R8,#0x830]
55A308:  MOV.W           R12, #6
55A30C:  STRD.W          R4, R9, [SP,#0x190+var_18C]; unsigned __int8
55A310:  MOV.W           R4, #0x3F800000
55A314:  STRD.W          R4, R12, [SP,#0x190+var_184]; CVector *
55A318:  ADDW            R1, R8, #0x837
55A31C:  ADD.W           R12, SP, #0x190+var_17C
55A320:  STM.W           R12, {R0,R1,R5}
55A324:  MOV             R0, R8; int
55A326:  MOV             R1, R6; int
55A328:  VSTR            S16, [SP,#0x190+var_190]
55A32C:  BLX             j__ZN8CVehicle23AddSingleWheelParticlesE11tWheelStatejffP9CColPointP7CVectorfijPbj; CVehicle::AddSingleWheelParticles(tWheelState,uint,float,float,CColPoint *,CVector *,float,int,uint,bool *,uint)
55A330:  VDIV.F32        S16, S18, S20
55A334:  BLX             j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
55A338:  CBNZ            R0, loc_55A380
55A33A:  BLX             j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
55A33E:  CBNZ            R0, loc_55A380
55A340:  VMOV.F32        S0, #20.0
55A344:  VABS.F32        S2, S16
55A348:  VCMPE.F32       S2, S0
55A34C:  VMRS            APSR_nzcv, FPSCR
55A350:  BGE             loc_55A380
55A352:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x55A35E)
55A356:  VLDR            S2, =0.02
55A35A:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
55A35C:  LDR             R0, [R0]; CWeather::Rain ...
55A35E:  VLDR            S0, [R0]
55A362:  VCMPE.F32       S0, S2
55A366:  VMRS            APSR_nzcv, FPSCR
55A36A:  BLE             loc_55A380
55A36C:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x55A374)
55A370:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
55A372:  LDR             R0, [R0]; CGame::currArea ...
55A374:  LDR             R0, [R0]; CGame::currArea
55A376:  CMP             R0, #0
55A378:  ITT EQ
55A37A:  LDREQ           R0, [SP,#0x190+var_130]; this
55A37C:  BLXEQ           j__ZN8CVehicle23AddWaterSplashParticlesEv; CVehicle::AddWaterSplashParticles(void)
55A380:  LDR             R0, [SP,#0x190+var_134]
55A382:  LDR             R2, [R0]
55A384:  LDR             R0, [SP,#0x190+var_130]; this
55A386:  TST.W           R2, #0x10
55A38A:  BEQ             loc_55A3BE
55A38C:  LDR             R1, [SP,#0x190+var_134]
55A38E:  AND.W           R2, R2, #0x40000000
55A392:  LDR             R1, [R1,#4]
55A394:  AND.W           R1, R1, #0x800000
55A398:  ORRS            R1, R2
55A39A:  BNE             loc_55A3BE
55A39C:  VLDR            S0, =130.0
55A3A0:  VCMPE.F32       S16, S0
55A3A4:  VMRS            APSR_nzcv, FPSCR
55A3A8:  BGE             loc_55A3BE
55A3AA:  LDR.W           R1, [R0,#0x388]
55A3AE:  LDR.W           R1, [R1,#0xCC]
55A3B2:  ANDS.W          R1, R1, #0x1000
55A3B6:  BNE             loc_55A3BE
55A3B8:  BLX             j__ZN8CVehicle19AddExhaustParticlesEv; CVehicle::AddExhaustParticles(void)
55A3BC:  LDR             R0, [SP,#0x190+var_130]; this
55A3BE:  BLX             j__ZN8CVehicle26AddDamagedVehicleParticlesEv; CVehicle::AddDamagedVehicleParticles(void)
55A3C2:  LDR             R4, [SP,#0x190+var_130]
55A3C4:  LDRSH.W         R0, [R4,#0x26]
55A3C8:  SUBW            R1, R0, #0x197; switch 32 cases
55A3CC:  CMP             R1, #0x1F
55A3CE:  BLS             loc_55A430
55A3D0:  SUB.W           R1, R0, #0x254; jumptable 0055A430 default case
55A3D4:  CMP             R1, #4
55A3D6:  BCC             loc_55A474; jumptable 0055A430 cases 407,416,427
55A3D8:  CMP.W           R0, #0x1EA
55A3DC:  BNE.W           loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A3E0:  LDR             R0, [SP,#0x190+var_134]
55A3E2:  LDRB            R0, [R0,#5]
55A3E4:  LSLS            R0, R0, #0x18
55A3E6:  BPL.W           loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A3EA:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55A3FA)
55A3EE:  MOV             R1, #0x3F99999A
55A3F6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
55A3F8:  STR             R1, [SP,#0x190+var_AC]
55A3FA:  MOVS            R1, #0
55A3FC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
55A3FE:  STR             R1, [SP,#0x190+var_B0]
55A400:  MOV.W           R1, #0x3F000000
55A404:  STR             R1, [SP,#0x190+var_A8]
55A406:  LDRB            R0, [R0,#(_ZN6CTimer22m_snTimeInMillisecondsE+1 - 0x96B4D8)]; CTimer::m_snTimeInMilliseconds
55A408:  LSLS            R0, R0, #0x1F
55A40A:  BEQ.W           loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A40E:  LDR.W           R0, =(TheCamera_ptr - 0x55A418)
55A412:  LDR             R6, [R4,#0x14]
55A414:  ADD             R0, PC; TheCamera_ptr
55A416:  LDR             R0, [R0]; TheCamera
55A418:  LDR             R0, [R0,#(dword_951FBC - 0x951FA8)]
55A41A:  CMP             R0, #0
55A41C:  BEQ.W           loc_55B9DC
55A420:  VLDR            S2, [R0,#0x10]
55A424:  VLDR            S4, [R0,#0x14]
55A428:  VLDR            S0, [R0,#0x18]
55A42C:  B.W             loc_55BA04
55A430:  TBH.W           [PC,R1,LSL#1]; switch jump
55A434:  DCW 0x20; jump table for switch statement
55A436:  DCW 0x2A9
55A438:  DCW 0x2A9
55A43A:  DCW 0x2A9
55A43C:  DCW 0x2A9
55A43E:  DCW 0x2A9
55A440:  DCW 0x2A9
55A442:  DCW 0x2A9
55A444:  DCW 0x2A9
55A446:  DCW 0x20
55A448:  DCW 0x2A9
55A44A:  DCW 0x2A9
55A44C:  DCW 0x2A9
55A44E:  DCW 0x57
55A450:  DCW 0x2A9
55A452:  DCW 0x2A9
55A454:  DCW 0x2A9
55A456:  DCW 0x2A9
55A458:  DCW 0x2A9
55A45A:  DCW 0x2A9
55A45C:  DCW 0x20
55A45E:  DCW 0x2A9
55A460:  DCW 0x2A9
55A462:  DCW 0x2A9
55A464:  DCW 0x2A9
55A466:  DCW 0x2A9
55A468:  DCW 0x2A9
55A46A:  DCW 0x2A9
55A46C:  DCW 0x2A9
55A46E:  DCW 0x2A9
55A470:  DCW 0x2A9
55A472:  DCW 0xA6
55A474:  LDR             R1, [SP,#0x190+var_134]; jumptable 0055A430 cases 407,416,427
55A476:  LDRB            R1, [R1,#5]
55A478:  LSLS            R1, R1, #0x18
55A47A:  BPL.W           loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A47E:  MOV.W           R8, #0
55A482:  CMP.W           R0, #0x254
55A486:  BLT             loc_55A4A4
55A488:  SUB.W           R1, R0, #0x254
55A48C:  CMP             R1, #3
55A48E:  BCS.W           loc_55A65E
55A492:  VMOV.F32        S18, #1.0
55A496:  VLDR            S16, =0.7
55A49A:  VLDR            S20, =-0.4
55A49E:  MOV.W           R10, #0
55A4A2:  B               loc_55A67E
55A4A4:  MOVW            R1, #0x197
55A4A8:  CMP             R0, R1
55A4AA:  BEQ.W           loc_55A9CC
55A4AE:  CMP.W           R0, #0x1A0
55A4B2:  BEQ.W           loc_55A9E6
55A4B6:  MOVW            R1, #0x1AB
55A4BA:  CMP             R0, R1
55A4BC:  MOV.W           R10, #0
55A4C0:  MOV.W           R6, #0
55A4C4:  BNE.W           loc_55A688
55A4C8:  VLDR            S16, =0.55
55A4CC:  MOV.W           R10, #0
55A4D0:  VLDR            S18, =1.4
55A4D4:  MOV.W           R8, #0xFF
55A4D8:  VLDR            S20, =1.1
55A4DC:  VLDR            S22, =-0.55
55A4E0:  B               loc_55A686
55A4E2:  LDRB.W          R0, [R4,#0x87C]; jumptable 0055A430 case 420
55A4E6:  LSLS            R0, R0, #0x1F
55A4E8:  BEQ.W           loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A4EC:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x55A4F4)
55A4F0:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
55A4F2:  LDR             R0, [R0]; MobileSettings::settings ...
55A4F4:  LDR             R0, [R0,#(dword_6E03FC - 0x6E03F4)]
55A4F6:  CMP             R0, #2
55A4F8:  BLT.W           loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A4FC:  MOVW            R0, #0xCCCD
55A500:  MOVS            R5, #0
55A502:  MOVT            R0, #0xBECC
55A506:  STR             R0, [SP,#0x190+var_AC]
55A508:  MOV             R0, #0x3F733333
55A510:  STR             R5, [SP,#0x190+var_B0]
55A512:  STR             R0, [SP,#0x190+var_A8]
55A514:  ADD             R0, SP, #0x190+var_F0
55A516:  LDR             R1, [R4,#0x14]
55A518:  ADD             R4, SP, #0x190+var_B0
55A51A:  MOV             R2, R4
55A51C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55A520:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x55A52C)
55A524:  VMOV.F32        S0, #10.0
55A528:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
55A52A:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
55A52C:  VLDR            S2, [R0,#0x44]
55A530:  LDR.W           R0, =(TheCamera_ptr - 0x55A53C)
55A534:  VDIV.F32        S0, S2, S0
55A538:  ADD             R0, PC; TheCamera_ptr
55A53A:  B               loc_55A5C0
55A53C:  DCFS 0.0055556
55A540:  DCFS 0.02
55A544:  DCFS 130.0
55A548:  DCFS 0.7
55A54C:  DCFS -0.4
55A550:  DCFS 0.55
55A554:  DCFS 1.4
55A558:  DCFS 1.1
55A55C:  DCFS -0.55
55A560:  DCFS 100.0
55A564:  DCFS 150.0
55A568:  DCFS 1.2
55A56C:  DCFS -0.1
55A570:  DCFS -0.7
55A574:  DCFS 200.0
55A578:  DCFS 0.0
55A57C:  DCFS 0.33333
55A580:  LDRB.W          R0, [R4,#0x87C]; jumptable 0055A430 case 438
55A584:  LSLS            R0, R0, #0x1F
55A586:  BEQ.W           loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A58A:  MOVW            R0, #0x999A
55A58E:  MOVS            R5, #0
55A590:  MOVT            R0, #0x3F59
55A594:  STRD.W          R5, R5, [SP,#0x190+var_B0]
55A598:  STR             R0, [SP,#0x190+var_A8]
55A59A:  ADD             R0, SP, #0x190+var_F0
55A59C:  LDR             R1, [R4,#0x14]
55A59E:  ADD             R4, SP, #0x190+var_B0
55A5A0:  MOV             R2, R4
55A5A2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55A5A6:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x55A5B2)
55A5AA:  VMOV.F32        S0, #10.0
55A5AE:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
55A5B0:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
55A5B2:  VLDR            S2, [R0,#0x44]
55A5B6:  LDR.W           R0, =(TheCamera_ptr - 0x55A5C2)
55A5BA:  VDIV.F32        S0, S2, S0
55A5BE:  ADD             R0, PC; TheCamera_ptr
55A5C0:  VLDR            S6, =100.0
55A5C4:  MOVS            R6, #1
55A5C6:  LDR             R0, [R0]; TheCamera
55A5C8:  MOVS            R1, #0xFF
55A5CA:  VMUL.F32        S0, S0, S6
55A5CE:  VLDR            S2, =150.0
55A5D2:  VLDR            S4, [R0,#0xEC]
55A5D6:  MOVS            R0, #0x41700000
55A5DC:  STRD.W          R5, R0, [SP,#0x190+var_15C]; float
55A5E0:  MOV.W           R0, #0x3FC00000
55A5E4:  STRD.W          R5, R6, [SP,#0x190+var_154]; float
55A5E8:  VMUL.F32        S2, S4, S2
55A5EC:  STRD.W          R6, R5, [SP,#0x190+var_17C]; float
55A5F0:  STRD.W          R6, R5, [SP,#0x190+var_174]; unsigned __int8
55A5F4:  STRD.W          R5, R5, [SP,#0x190+var_16C]; unsigned __int8
55A5F8:  STRD.W          R5, R0, [SP,#0x190+var_164]; float
55A5FC:  MOV             R0, #0x3F4CCCCD
55A604:  STRD.W          R5, R1, [SP,#0x190+var_190]; unsigned __int8
55A608:  STRD.W          R4, R0, [SP,#0x190+var_188]; unsigned __int8
55A60C:  VCVT.U32.F32    S0, S0
55A610:  LDR             R0, [SP,#0x190+var_130]
55A612:  LDR             R1, [SP,#0x190+var_130]; unsigned int
55A614:  ADDS            R0, #0x11; this
55A616:  VSTR            S2, [SP,#0x190+var_180]
55A61A:  VMOV            R2, S0; CEntity *
55A61E:  MOV             R3, R2; unsigned __int8
55A620:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
55A624:  MOVW            R0, #0xCCCD
55A628:  MOVS            R4, #0
55A62A:  LDR             R1, [SP,#0x190+var_F0]
55A62C:  MOVT            R0, #0x3D4C
55A630:  LDR             R2, [SP,#0x190+var_F0+4]
55A632:  MOVT            R4, #0x4120
55A636:  LDR             R3, [SP,#0x190+var_E8]
55A638:  STRD.W          R6, R5, [SP,#0x190+var_170]
55A63C:  MOV             R6, #0x3DCCCCCD
55A644:  STRD.W          R5, R5, [SP,#0x190+var_190]
55A648:  STRD.W          R5, R4, [SP,#0x190+var_188]
55A64C:  STRD.W          R6, R6, [SP,#0x190+var_180]
55A650:  STRD.W          R0, R5, [SP,#0x190+var_178]
55A654:  MOVS            R0, #0
55A656:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
55A65A:  LDR             R4, [SP,#0x190+var_130]
55A65C:  B               loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A65E:  MOVW            R1, #0x257
55A662:  CMP             R0, R1
55A664:  MOV.W           R10, #0
55A668:  MOV.W           R6, #0
55A66C:  BNE             loc_55A688
55A66E:  VLDR            S16, =0.7
55A672:  MOV.W           R10, #0
55A676:  VLDR            S18, =1.2
55A67A:  VLDR            S20, =-0.1
55A67E:  VLDR            S22, =-0.7
55A682:  MOV.W           R8, #0xFF
55A686:  MOVS            R6, #0xFF
55A688:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55A690)
55A68C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
55A68E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
55A690:  LDR             R3, [R0]; CTimer::m_snTimeInMilliseconds
55A692:  AND.W           R0, R3, #0x200
55A696:  CMP.W           R0, #0x200
55A69A:  BCS             loc_55A6A4
55A69C:  MOVS            R2, #0
55A69E:  MOVS            R1, #0
55A6A0:  MOV             R0, R6
55A6A2:  B               loc_55A6BA
55A6A4:  MOV             R0, #0xAAAAAAAB
55A6AC:  UMULL.W         R1, R2, R8, R0
55A6B0:  UMULL.W         R0, R1, R10, R0
55A6B4:  MOV             R0, R10
55A6B6:  LSRS            R2, R2, #2
55A6B8:  LSRS            R1, R1, #2
55A6BA:  MOVW            R5, #0xAAAB
55A6BE:  BFC.W           R3, #9, #0x17
55A6C2:  MOVT            R5, #0xAAAA
55A6C6:  CMP             R3, #0x63 ; 'c'
55A6C8:  UMULL.W         R0, R5, R0, R5
55A6CC:  MOV.W           R0, R5,LSR#2
55A6D0:  BLS             loc_55A6DC
55A6D2:  CMP.W           R3, #0x19C
55A6D6:  BLS             loc_55A72E
55A6D8:  RSB.W           R3, R3, #0x200
55A6DC:  VMOV            S0, R3
55A6E0:  VLDR            S2, =100.0
55A6E4:  UXTB            R1, R1
55A6E6:  UXTB            R0, R0
55A6E8:  VCVT.F32.U32    S0, S0
55A6EC:  UXTB            R2, R2
55A6EE:  VMOV            S4, R1
55A6F2:  VMOV            S6, R0
55A6F6:  VDIV.F32        S0, S0, S2
55A6FA:  VMOV            S2, R2
55A6FE:  VCVT.F32.U32    S2, S2
55A702:  VCVT.F32.U32    S4, S4
55A706:  VCVT.F32.U32    S6, S6
55A70A:  VMUL.F32        S2, S0, S2
55A70E:  VMUL.F32        S4, S0, S4
55A712:  VMUL.F32        S0, S0, S6
55A716:  VCVT.U32.F32    S2, S2
55A71A:  VCVT.U32.F32    S4, S4
55A71E:  VCVT.U32.F32    S0, S0
55A722:  VMOV            R2, S2
55A726:  VMOV            R1, S4
55A72A:  VMOV            R0, S0
55A72E:  LDR             R3, [R4,#0x14]
55A730:  UXTB            R2, R2
55A732:  VMOV            S0, R2
55A736:  UXTB            R1, R1
55A738:  VMOV            S8, R1
55A73C:  ADD.W           R1, R3, #0x30 ; '0'
55A740:  VCVT.F32.U32    S0, S0
55A744:  VLDR            S2, [R3,#0x20]
55A748:  VLDR            S4, [R3,#0x24]
55A74C:  CMP             R3, #0
55A74E:  VLDR            S6, [R3,#0x28]
55A752:  VADD.F32        S2, S2, S2
55A756:  VADD.F32        S4, S4, S4
55A75A:  UXTB            R0, R0
55A75C:  VADD.F32        S6, S6, S6
55A760:  MOV.W           R5, #0
55A764:  VCVT.F32.U32    S8, S8
55A768:  IT EQ
55A76A:  ADDEQ           R1, R4, #4
55A76C:  VLDR            S10, [R1]
55A770:  VMOV            S1, R0
55A774:  VLDR            S12, [R1,#4]
55A778:  MOVS            R0, #1
55A77A:  VLDR            S14, [R1,#8]
55A77E:  VCVT.F32.U32    S1, S1
55A782:  VADD.F32        S2, S10, S2
55A786:  VLDR            S10, =200.0
55A78A:  VADD.F32        S4, S12, S4
55A78E:  STRD.W          R5, R0, [SP,#0x190+var_174]
55A792:  VADD.F32        S6, S14, S6
55A796:  MOVS            R0, #0
55A798:  VDIV.F32        S0, S0, S10
55A79C:  MOVT            R0, #0x4120
55A7A0:  STR             R5, [SP,#0x190+var_16C]
55A7A2:  STRD.W          R5, R5, [SP,#0x190+var_190]
55A7A6:  STRD.W          R5, R0, [SP,#0x190+var_188]
55A7AA:  MOVS            R0, #0
55A7AC:  VDIV.F32        S8, S8, S10
55A7B0:  VDIV.F32        S10, S1, S10
55A7B4:  VMOV            R1, S2
55A7B8:  VSTR            S10, [SP,#0x190+var_180]
55A7BC:  VMOV            R2, S4
55A7C0:  VSTR            S8, [SP,#0x190+var_17C]
55A7C4:  VMOV            R3, S6
55A7C8:  VSTR            S0, [SP,#0x190+var_178]
55A7CC:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
55A7D0:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x55A7E2)
55A7D4:  VMOV.F32        S0, #10.0
55A7D8:  LDR             R4, [SP,#0x190+var_130]
55A7DA:  VMOV            S4, R10
55A7DE:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
55A7E0:  VMOV            S6, R6
55A7E4:  VLDR            S8, =0.0
55A7E8:  VMOV.F32        S24, #3.0
55A7EC:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
55A7EE:  ADD.W           R11, R4, #0x15
55A7F2:  VLDR            S26, =0.33333
55A7F6:  MOV.W           R10, #0
55A7FA:  VLDR            S28, =150.0
55A7FE:  VLDR            S2, [R0,#0x44]
55A802:  VDIV.F32        S0, S2, S0
55A806:  VMOV            S2, R8
55A80A:  MOV.W           R8, #0
55A80E:  VMUL.F32        S8, S0, S8
55A812:  VCVT.F32.U32    S2, S2
55A816:  VCVT.F32.U32    S4, S4
55A81A:  VCVT.F32.U32    S6, S6
55A81E:  VMUL.F32        S2, S0, S2
55A822:  VMUL.F32        S4, S0, S4
55A826:  VMUL.F32        S0, S0, S6
55A82A:  VCVT.U32.F32    S2, S2
55A82E:  VCVT.U32.F32    S4, S4
55A832:  VCVT.U32.F32    S6, S8
55A836:  VCVT.U32.F32    S0, S0
55A83A:  VMOV            R0, S2
55A83E:  VMOV            R6, S6
55A842:  STR             R0, [SP,#0x190+var_138]
55A844:  VMOV            R0, S4
55A848:  STR             R0, [SP,#0x190+var_13C]
55A84A:  VMOV            R0, S0
55A84E:  STR             R0, [SP,#0x190+var_140]
55A850:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55A858)
55A854:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
55A856:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds ...
55A85A:  LDR.W           R0, =(TheCamera_ptr - 0x55A862)
55A85E:  ADD             R0, PC; TheCamera_ptr
55A860:  LDR             R0, [R0]; TheCamera
55A862:  STR             R0, [SP,#0x190+var_144]
55A864:  LDR.W           R0, =(TheCamera_ptr - 0x55A86C)
55A868:  ADD             R0, PC; TheCamera_ptr
55A86A:  LDR             R0, [R0]; TheCamera
55A86C:  STR             R0, [SP,#0x190+var_148]
55A86E:  UXTB.W          R0, R10
55A872:  VMOV            S0, R0
55A876:  VCVT.F32.U32    S0, S0
55A87A:  LDR.W           R0, [R9]; CTimer::m_snTimeInMilliseconds
55A87E:  ADD             R0, R8
55A880:  VSUB.F32        S2, S24, S0
55A884:  VMUL.F32        S4, S16, S0
55A888:  VMUL.F32        S8, S20, S0
55A88C:  VMUL.F32        S0, S18, S0
55A890:  VMUL.F32        S6, S22, S2
55A894:  VMUL.F32        S10, S20, S2
55A898:  VMUL.F32        S2, S18, S2
55A89C:  VADD.F32        S4, S4, S6
55A8A0:  VADD.F32        S6, S8, S10
55A8A4:  VADD.F32        S0, S0, S2
55A8A8:  VMUL.F32        S2, S4, S26
55A8AC:  VMUL.F32        S4, S6, S26
55A8B0:  VMUL.F32        S0, S0, S26
55A8B4:  VSTR            S2, [SP,#0x190+var_68]
55A8B8:  VSTR            S4, [SP,#0x190+var_68+4]
55A8BC:  VSTR            S0, [SP,#0x190+var_60]
55A8C0:  UBFX.W          R0, R0, #8, #2
55A8C4:  CMP             R0, #2
55A8C6:  BEQ             loc_55A91E
55A8C8:  CMP             R0, #0
55A8CA:  BNE             loc_55A976
55A8CC:  LDR             R0, [SP,#0x190+var_148]
55A8CE:  MOV             R1, R4
55A8D0:  STR             R5, [SP,#0x190+var_15C]
55A8D2:  MOV             R3, R6
55A8D4:  VLDR            S0, [R0,#0xEC]
55A8D8:  MOVS            R0, #0x41700000
55A8DE:  VMUL.F32        S0, S0, S28
55A8E2:  STRD.W          R0, R5, [SP,#0x190+var_158]
55A8E6:  MOVS            R0, #1
55A8E8:  STR             R0, [SP,#0x190+var_150]
55A8EA:  MOV.W           R0, #0x3FC00000
55A8EE:  STRD.W          R5, R5, [SP,#0x190+var_17C]
55A8F2:  STRD.W          R5, R5, [SP,#0x190+var_174]
55A8F6:  STRD.W          R5, R5, [SP,#0x190+var_16C]
55A8FA:  STR             R5, [SP,#0x190+var_164]
55A8FC:  STR             R0, [SP,#0x190+var_160]
55A8FE:  MOVS            R0, #0xFF
55A900:  STR             R6, [SP,#0x190+var_190]
55A902:  STR             R0, [SP,#0x190+var_18C]
55A904:  ADD             R0, SP, #0x190+var_68
55A906:  STR             R0, [SP,#0x190+var_188]
55A908:  MOV             R0, #0x3ECCCCCD
55A910:  LDR             R2, [SP,#0x190+var_140]
55A912:  STR             R0, [SP,#0x190+var_184]
55A914:  ADD.W           R0, R11, R10
55A918:  VSTR            S0, [SP,#0x190+var_180]
55A91C:  B               loc_55A970
55A91E:  LDR             R0, [SP,#0x190+var_144]
55A920:  MOV             R1, R4; unsigned int
55A922:  STR             R5, [SP,#0x190+var_15C]; float
55A924:  VLDR            S0, [R0,#0xEC]
55A928:  MOVS            R0, #0x41700000
55A92E:  STRD.W          R0, R5, [SP,#0x190+var_158]; float
55A932:  MOVS            R0, #1
55A934:  STR             R0, [SP,#0x190+var_150]; bool
55A936:  MOV.W           R0, #0x3FC00000
55A93A:  STRD.W          R5, R5, [SP,#0x190+var_17C]; float
55A93E:  VMUL.F32        S0, S0, S28
55A942:  STRD.W          R5, R5, [SP,#0x190+var_174]; unsigned __int8
55A946:  STRD.W          R5, R5, [SP,#0x190+var_16C]; unsigned __int8
55A94A:  STR             R5, [SP,#0x190+var_164]; float
55A94C:  STR             R0, [SP,#0x190+var_160]; float
55A94E:  LDR             R0, [SP,#0x190+var_138]
55A950:  STR             R0, [SP,#0x190+var_190]; unsigned __int8
55A952:  MOVS            R0, #0xFF
55A954:  STR             R0, [SP,#0x190+var_18C]; float
55A956:  ADD             R0, SP, #0x190+var_68
55A958:  STR             R0, [SP,#0x190+var_188]; int
55A95A:  MOVW            R0, #0xCCCD
55A95E:  LDR             R2, [SP,#0x190+var_13C]; CEntity *
55A960:  MOVT            R0, #0x3ECC
55A964:  STR             R0, [SP,#0x190+var_184]; int
55A966:  ADD.W           R0, R11, R10; this
55A96A:  VSTR            S0, [SP,#0x190+var_180]
55A96E:  MOV             R3, R2; unsigned __int8
55A970:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
55A974:  LDR             R4, [SP,#0x190+var_130]
55A976:  ADD.W           R10, R10, #1
55A97A:  ADD.W           R8, R8, #0x40 ; '@'
55A97E:  CMP.W           R10, #4
55A982:  BNE.W           loc_55A86E
55A986:  LDRSH.W         R0, [R4,#0x26]; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55A98A:  ADDS            R1, R0, #2
55A98C:  BEQ             loc_55AA08
55A98E:  CMP.W           R0, #0x1B0
55A992:  ITT NE
55A994:  MOVWNE          R1, #0x1B9
55A998:  CMPNE           R0, R1
55A99A:  BEQ             loc_55AA08
55A99C:  LDR             R0, [SP,#0x190+var_134]
55A99E:  MOVS            R1, #0
55A9A0:  LDRB            R0, [R0,#4]
55A9A2:  CMP.W           R1, R0,LSR#7
55A9A6:  BNE             loc_55AA08
55A9A8:  LDR             R0, [SP,#0x190+var_130]; this
55A9AA:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
55A9AE:  CMP             R0, #3
55A9B0:  BEQ             loc_55AA08
55A9B2:  LDR             R0, [SP,#0x190+var_130]; this
55A9B4:  LDRSH.W         R2, [R0,#0x26]
55A9B8:  CMP.W           R2, #0x214
55A9BC:  ITT NE
55A9BE:  MOVWNE          R1, #0x1D7
55A9C2:  CMPNE           R2, R1
55A9C4:  BNE             loc_55AA00
55A9C6:  LDR             R1, [R0,#0x14]
55A9C8:  MOVS            R2, #0
55A9CA:  B               loc_55AA04
55A9CC:  VLDR            S16, =0.9
55A9D0:  MOV.W           R10, #0xFF
55A9D4:  VLDR            S18, =1.3
55A9D8:  MOV.W           R8, #0
55A9DC:  VLDR            S20, =3.2
55A9E0:  VLDR            S22, =-0.9
55A9E4:  B               loc_55A686
55A9E6:  VLDR            S16, =0.6
55A9EA:  MOV.W           R8, #0xFF
55A9EE:  VLDR            S18, =1.2
55A9F2:  MOV.W           R10, #0xFF
55A9F6:  VLDR            S20, =0.9
55A9FA:  VLDR            S22, =-0.6
55A9FE:  B               loc_55A686
55AA00:  LDR             R1, [R0,#0x14]; CMatrix *
55AA02:  MOVS            R2, #3; unsigned int
55AA04:  BLX             j__ZN8CVehicle15DoVehicleLightsER7CMatrixj; CVehicle::DoVehicleLights(CMatrix &,uint)
55AA08:  MOV.W           R0, #0xFFFFFFFF; int
55AA0C:  MOVS            R1, #0; bool
55AA0E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55AA12:  LDR             R2, [SP,#0x190+var_130]
55AA14:  CMP             R2, R0
55AA16:  BNE             loc_55AA26
55AA18:  LDR             R0, =(TheCamera_ptr - 0x55AA1E)
55AA1A:  ADD             R0, PC; TheCamera_ptr
55AA1C:  LDR             R0, [R0]; TheCamera ; this
55AA1E:  BLX             j__ZN7CCamera28GetLookingForwardFirstPersonEv; CCamera::GetLookingForwardFirstPerson(void)
55AA22:  LDR             R2, [SP,#0x190+var_130]
55AA24:  CBNZ            R0, loc_55AA44
55AA26:  LDR             R0, [SP,#0x190+var_134]
55AA28:  LDRB            R0, [R0,#4]
55AA2A:  LSLS            R0, R0, #0x18
55AA2C:  BPL             loc_55AA3A
55AA2E:  LDR.W           R0, [R2,#0x5A4]
55AA32:  CBZ             R0, loc_55AA3A
55AA34:  MOV             R0, R2
55AA36:  MOVS            R1, #4
55AA38:  B               loc_55AA3E
55AA3A:  MOV             R0, R2; CPhysical *
55AA3C:  MOVS            R1, #0
55AA3E:  BLX             j__ZN8CShadows21StoreShadowForVehicleEP8CVehicle12VEH_SHD_TYPE; CShadows::StoreShadowForVehicle(CVehicle *,VEH_SHD_TYPE)
55AA42:  LDR             R2, [SP,#0x190+var_130]
55AA44:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55AA50)
55AA46:  MOVS            R4, #0
55AA48:  STRD.W          R4, R4, [SP,#0x190+var_70]
55AA4C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55AA4E:  LDRSH.W         R1, [R2,#0x26]
55AA52:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55AA54:  CMP.W           R1, #0x1B0
55AA58:  LDR.W           R0, [R0,R1,LSL#2]
55AA5C:  STR             R0, [SP,#0x190+var_144]
55AA5E:  BNE             loc_55AA76
55AA60:  LDR.W           R3, [R2,#0x960]
55AA64:  MOVS            R0, #1
55AA66:  LDR.W           R1, [R2,#0x69C]
55AA6A:  STR             R0, [SP,#0x190+var_190]; float
55AA6C:  MOV             R0, R2
55AA6E:  MOVS            R2, #2
55AA70:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55AA74:  LDR             R2, [SP,#0x190+var_130]
55AA76:  LDR.W           R0, [R2,#0x388]
55AA7A:  LDR.W           R6, [R2,#0x498]
55AA7E:  LDR             R5, [R2,#0x14]
55AA80:  LDR.W           R8, [R0,#0xCC]
55AA84:  MOV             R0, R6; x
55AA86:  STR             R4, [SP,#0x190+var_E8]
55AA88:  BLX             cosf
55AA8C:  STR             R0, [SP,#0x190+var_F0+4]
55AA8E:  MOV             R0, R6; x
55AA90:  BLX             sinf
55AA94:  EOR.W           R0, R0, #0x80000000
55AA98:  STR             R0, [SP,#0x190+var_F0]
55AA9A:  ADD             R0, SP, #0x190+var_100; CMatrix *
55AA9C:  ADD             R2, SP, #0x190+var_F0
55AA9E:  MOV             R1, R5; CVector *
55AAA0:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
55AAA4:  LDR             R1, [SP,#0x190+var_130]
55AAA6:  LDR             R5, [R1,#0x14]
55AAA8:  VLDR            D16, [R5,#0x10]
55AAAC:  LDR             R0, [R5,#0x18]
55AAAE:  STR             R0, [SP,#0x190+var_108]
55AAB0:  VSTR            D16, [SP,#0x190+var_110]
55AAB4:  LDR.W           R0, [R1,#0x390]
55AAB8:  TST.W           R0, #0x20
55AABC:  BNE             loc_55AAF0
55AABE:  LSLS            R0, R0, #0x19
55AAC0:  BPL             loc_55AB32
55AAC2:  ADDW            R0, R1, #0x49C
55AAC6:  VLDR            S0, [R0]
55AACA:  VCMP.F32        S0, #0.0
55AACE:  VMRS            APSR_nzcv, FPSCR
55AAD2:  BEQ             loc_55AB32
55AAD4:  VMOV            R6, S0
55AAD8:  MOVS            R0, #0
55AADA:  STR             R0, [SP,#0x190+var_B8]
55AADC:  MOV             R0, R6; x
55AADE:  BLX             cosf
55AAE2:  STR             R0, [SP,#0x190+var_C0+4]
55AAE4:  MOV             R0, R6; x
55AAE6:  BLX             sinf
55AAEA:  EOR.W           R0, R0, #0x80000000
55AAEE:  B               loc_55AB18
55AAF0:  ADD.W           R0, R1, #0x498
55AAF4:  ADD.W           R1, R5, #0x10
55AAF8:  VLDR            D16, [R1]
55AAFC:  LDR             R1, [R1,#8]
55AAFE:  STR             R1, [SP,#0x190+var_F8]
55AB00:  MOVS            R1, #0
55AB02:  VSTR            D16, [SP,#0x190+var_100]
55AB06:  LDR             R6, [R0]
55AB08:  STR             R1, [SP,#0x190+var_B8]
55AB0A:  MOV             R0, R6; x
55AB0C:  BLX             cosf
55AB10:  STR             R0, [SP,#0x190+var_C0+4]
55AB12:  MOV             R0, R6; x
55AB14:  BLX             sinf
55AB18:  STR             R0, [SP,#0x190+var_C0]
55AB1A:  ADD             R0, SP, #0x190+var_F0; CMatrix *
55AB1C:  ADD             R2, SP, #0x190+var_C0
55AB1E:  MOV             R1, R5; CVector *
55AB20:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
55AB24:  LDR             R1, [SP,#0x190+var_130]
55AB26:  VLDR            D16, [SP,#0x190+var_F0]
55AB2A:  LDR             R0, [SP,#0x190+var_E8]
55AB2C:  STR             R0, [SP,#0x190+var_108]
55AB2E:  VSTR            D16, [SP,#0x190+var_110]
55AB32:  ADDW            R0, R1, #0x97C
55AB36:  STR             R0, [SP,#0x190+var_138]
55AB38:  LDR             R0, [SP,#0x190+var_144]
55AB3A:  VMOV.F32        S16, #0.5
55AB3E:  AND.W           R2, R8, #0x2000000
55AB42:  ADD             R6, SP, #0x190+var_F0
55AB44:  ADDS            R0, #0x5C ; '\'
55AB46:  STR             R0, [SP,#0x190+var_13C]
55AB48:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x55AB5A)
55AB4A:  MOV.W           R9, #0
55AB4E:  MOVW            R8, #0x808
55AB52:  MOV.W           R10, #0
55AB56:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
55AB58:  STR             R2, [SP,#0x190+var_134]
55AB5A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
55AB5C:  STR             R0, [SP,#0x190+var_140]
55AB5E:  ADD.W           R4, R1, R8
55AB62:  VLDR            S0, [R4]
55AB66:  VCMPE.F32       S0, #0.0
55AB6A:  VMRS            APSR_nzcv, FPSCR
55AB6E:  BLE.W           loc_55ACA4
55AB72:  ORR.W           R11, R10, #2
55AB76:  CMP             R2, #0
55AB78:  ITT NE
55AB7A:  UXTHNE.W        R0, R11
55AB7E:  CMPNE           R0, #2
55AB80:  BNE.W           loc_55ACA4
55AB84:  LDR             R0, [R1,#0x14]
55AB86:  ADD.W           R5, R1, R9
55AB8A:  ADD.W           R2, R5, #0x738
55AB8E:  ADD.W           R3, R0, #0x30 ; '0'
55AB92:  CMP             R0, #0
55AB94:  ADDW            R0, R5, #0x73C
55AB98:  VLDR            S0, [R2]
55AB9C:  IT EQ
55AB9E:  ADDEQ           R3, R1, #4
55ABA0:  VLDR            S2, [R3]
55ABA4:  VLDR            S8, [R0]
55ABA8:  ADD.W           R0, R5, #0x740
55ABAC:  VLDR            S4, [R3,#4]
55ABB0:  VSUB.F32        S0, S0, S2
55ABB4:  VLDR            S6, [R3,#8]
55ABB8:  MOV             R5, R1
55ABBA:  VSUB.F32        S2, S8, S4
55ABBE:  VMOV            R2, S0
55ABC2:  VLDR            S0, [R0]
55ABC6:  ADD             R0, SP, #0x190+var_C0
55ABC8:  VMOV            R3, S2
55ABCC:  VSUB.F32        S0, S0, S6
55ABD0:  VSTR            S0, [SP,#0x190+var_190]
55ABD4:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
55ABD8:  LDR             R0, [SP,#0x190+var_B8]
55ABDA:  VLDR            D16, [SP,#0x190+var_C0]
55ABDE:  STR             R0, [R6,#8]
55ABE0:  UXTH.W          R0, R11
55ABE4:  CMP             R0, #2
55ABE6:  VSTR            D16, [R6]
55ABEA:  BNE             loc_55AC64
55ABEC:  LDR             R0, [SP,#0x190+var_13C]
55ABEE:  ADD             R2, SP, #0x190+var_100
55ABF0:  LDR             R1, [SP,#0x190+var_144]
55ABF2:  IT EQ
55ABF4:  ADDEQ.W         R0, R1, #0x58 ; 'X'
55ABF8:  B               loc_55AC68
55ABFA:  ALIGN 4
55ABFC:  DCD _ZN6CCheat15m_aCheatsActiveE_ptr - 0x559CF2
55AC00:  DCD _ZN8CWeather4RainE_ptr - 0x55A35E
55AC04:  DCD _ZN5CGame8currAreaE_ptr - 0x55A374
55AC08:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55A3FA
55AC0C:  DCD TheCamera_ptr - 0x55A418
55AC10:  DCD _ZN14MobileSettings8settingsE_ptr - 0x55A4F4
55AC14:  DCD _ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x55A52C
55AC18:  DCD TheCamera_ptr - 0x55A53C
55AC1C:  DCD _ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x55A5B2
55AC20:  DCD TheCamera_ptr - 0x55A5C2
55AC24:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55A690
55AC28:  DCD _ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x55A7E2
55AC2C:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55A858
55AC30:  DCD TheCamera_ptr - 0x55A862
55AC34:  DCD TheCamera_ptr - 0x55A86C
55AC38:  DCFS 0.9
55AC3C:  DCFS 1.3
55AC40:  DCFS 3.2
55AC44:  DCFS -0.9
55AC48:  DCFS 0.6
55AC4C:  DCFS 1.2
55AC50:  DCFS -0.6
55AC54:  DCD TheCamera_ptr - 0x55AA1E
55AC58:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55AA50
55AC5C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x55AB5A
55AC60:  DCFS -0.0001
55AC64:  LDR             R0, [SP,#0x190+var_13C]
55AC66:  ADD             R2, SP, #0x190+var_110; int
55AC68:  VLDR            S0, [R0]
55AC6C:  LDR             R0, [SP,#0x190+var_138]
55AC6E:  VMUL.F32        S0, S0, S16
55AC72:  LDR.W           R1, [R0,R10,LSL#2]; int
55AC76:  MOV             R0, R5; int
55AC78:  VSTR            S0, [SP,#0x190+var_190]
55AC7C:  MOV             R3, R6; int
55AC7E:  BLX             j__ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f; CVehicle::ProcessWheelRotation(tWheelState,CVector const&,CVector const&,float)
55AC82:  VMOV            S0, R0
55AC86:  VSTR            S0, [R4,#0x54]
55AC8A:  LDR             R0, [SP,#0x190+var_140]
55AC8C:  VLDR            S2, [R0]
55AC90:  VMUL.F32        S0, S0, S2
55AC94:  VLDR            S2, [R4,#0x34]
55AC98:  VADD.F32        S0, S2, S0
55AC9C:  VSTR            S0, [R4,#0x34]
55ACA0:  LDRD.W          R2, R1, [SP,#0x190+var_134]
55ACA4:  ADD.W           R10, R10, #1
55ACA8:  ADDS            R6, #0xC
55ACAA:  ADD.W           R8, R8, #4
55ACAE:  ADD.W           R9, R9, #0x2C ; ','
55ACB2:  CMP.W           R10, #4
55ACB6:  BNE.W           loc_55AB5E
55ACBA:  LDRH            R0, [R1,#0x26]
55ACBC:  MOVS            R5, #0
55ACBE:  CMP.W           R0, #0x1B0
55ACC2:  MOV             R0, R1; this
55ACC4:  IT EQ
55ACC6:  MOVEQ           R5, #7
55ACC8:  MOVS            R1, #2; int
55ACCA:  MOV             R2, R5; int
55ACCC:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
55ACD0:  LDR             R0, [SP,#0x190+var_130]; this
55ACD2:  MOVS            R1, #5; int
55ACD4:  MOV             R2, R5; int
55ACD6:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
55ACDA:  LDR             R0, [SP,#0x190+var_130]; this
55ACDC:  MOVS            R1, #4; int
55ACDE:  MOV             R2, R5; int
55ACE0:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
55ACE4:  LDR             R0, [SP,#0x190+var_130]; this
55ACE6:  MOVS            R1, #7; int
55ACE8:  MOV             R2, R5; int
55ACEA:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
55ACEE:  LDR             R4, [SP,#0x190+var_130]
55ACF0:  LDR.W           R0, [R4,#0x668]
55ACF4:  CBZ             R0, loc_55AD02
55ACF6:  MOV             R0, R4; this
55ACF8:  MOVS            R1, #3; int
55ACFA:  MOV             R2, R5; int
55ACFC:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
55AD00:  LDR             R4, [SP,#0x190+var_130]
55AD02:  LDR.W           R0, [R4,#0x674]
55AD06:  CBZ             R0, loc_55AD14
55AD08:  MOV             R0, R4; this
55AD0A:  MOVS            R1, #6; int
55AD0C:  MOV             R2, R5; int
55AD0E:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
55AD12:  LDR             R4, [SP,#0x190+var_130]
55AD14:  LDRH            R0, [R4,#0x26]
55AD16:  CMP.W           R0, #0x1B0
55AD1A:  BNE             loc_55AD2E
55AD1C:  ADDW            R9, R4, #0x8DC
55AD20:  ADDW            R8, R4, #0x8D8
55AD24:  ADD.W           R10, R4, #0x8D0
55AD28:  ADDW            R11, R4, #0x8CC
55AD2C:  B               loc_55AF52
55AD2E:  MOV             R0, R4
55AD30:  MOVS            R1, #0xA
55AD32:  MOVS            R2, #2
55AD34:  BLX             j__ZN11CAutomobile19ProcessSwingingDoorEi6eDoors; CAutomobile::ProcessSwingingDoor(int,eDoors)
55AD38:  LDR             R0, [SP,#0x190+var_130]
55AD3A:  MOVS            R1, #8
55AD3C:  MOVS            R2, #3
55AD3E:  BLX             j__ZN11CAutomobile19ProcessSwingingDoorEi6eDoors; CAutomobile::ProcessSwingingDoor(int,eDoors)
55AD42:  LDR             R0, [SP,#0x190+var_130]
55AD44:  MOVS            R1, #0xB
55AD46:  MOVS            R2, #4
55AD48:  BLX             j__ZN11CAutomobile19ProcessSwingingDoorEi6eDoors; CAutomobile::ProcessSwingingDoor(int,eDoors)
55AD4C:  LDR             R0, [SP,#0x190+var_130]
55AD4E:  MOVS            R1, #9
55AD50:  MOVS            R2, #5
55AD52:  BLX             j__ZN11CAutomobile19ProcessSwingingDoorEi6eDoors; CAutomobile::ProcessSwingingDoor(int,eDoors)
55AD56:  LDR             R0, [SP,#0x190+var_130]
55AD58:  MOVS            R1, #0x10
55AD5A:  MOVS            R2, #0
55AD5C:  BLX             j__ZN11CAutomobile19ProcessSwingingDoorEi6eDoors; CAutomobile::ProcessSwingingDoor(int,eDoors)
55AD60:  LDR             R0, [SP,#0x190+var_130]
55AD62:  MOVS            R1, #0x11
55AD64:  MOVS            R2, #1
55AD66:  BLX             j__ZN11CAutomobile19ProcessSwingingDoorEi6eDoors; CAutomobile::ProcessSwingingDoor(int,eDoors)
55AD6A:  LDR             R4, [SP,#0x190+var_130]
55AD6C:  MOV.W           R0, #0xFFFFFFFF
55AD70:  LDRSH.W         R1, [R4,#0x6C0]
55AD74:  CMP             R1, #0
55AD76:  BLT             loc_55ADC2
55AD78:  LDR             R2, [SP,#0x190+var_130]
55AD7A:  ADD.W           R0, R4, #0x6C0; int
55AD7E:  LDR.W           R5, [R4,#0x8D0]
55AD82:  LDR.W           R3, [R4,#0x8C8]; int
55AD86:  LDR.W           R12, [R2,#0x8D8]
55AD8A:  LDR             R2, [SP,#0x190+var_130]
55AD8C:  LDR.W           R6, [R4,#0x8CC]
55AD90:  LDR.W           R4, [R4,#0x8D4]
55AD94:  LDR.W           LR, [R2,#0x8DC]
55AD98:  LDR             R2, [SP,#0x190+var_130]
55AD9A:  ADD.W           R1, R2, R1,LSL#2
55AD9E:  LDR.W           R2, [R1,#0x65C]; int
55ADA2:  MOVS            R1, #0
55ADA4:  STRD.W          R6, R5, [SP,#0x190+var_190]; float
55ADA8:  ADD             R5, SP, #0x190+var_188
55ADAA:  MOVT            R1, #0xBF80
55ADAE:  STM.W           R5, {R4,R12,LR}
55ADB2:  STRD.W          R1, R1, [SP,#0x190+var_17C]; float
55ADB6:  LDR             R1, [SP,#0x190+var_130]; int
55ADB8:  BLX             j__ZN14CBouncingPanel12ProcessPanelEP8CVehicleP7RwFrame7CVectorS4_ff; CBouncingPanel::ProcessPanel(CVehicle *,RwFrame *,CVector,CVector,float,float)
55ADBC:  LDR             R4, [SP,#0x190+var_130]
55ADBE:  MOV.W           R0, #0xFFFFFFFF
55ADC2:  LDRSH.W         R1, [R4,#0x6E0]
55ADC6:  CMP             R1, R0
55ADC8:  BLE             loc_55AE14
55ADCA:  LDR             R2, [SP,#0x190+var_130]
55ADCC:  ADD.W           R0, R4, #0x6E0; int
55ADD0:  LDR.W           R5, [R4,#0x8D0]
55ADD4:  LDR.W           R3, [R4,#0x8C8]; int
55ADD8:  LDR.W           R12, [R2,#0x8D8]
55ADDC:  LDR             R2, [SP,#0x190+var_130]
55ADDE:  LDR.W           R6, [R4,#0x8CC]
55ADE2:  LDR.W           R4, [R4,#0x8D4]
55ADE6:  LDR.W           LR, [R2,#0x8DC]
55ADEA:  LDR             R2, [SP,#0x190+var_130]
55ADEC:  ADD.W           R1, R2, R1,LSL#2
55ADF0:  LDR.W           R2, [R1,#0x65C]; int
55ADF4:  MOVS            R1, #0
55ADF6:  STRD.W          R6, R5, [SP,#0x190+var_190]; float
55ADFA:  ADD             R5, SP, #0x190+var_188
55ADFC:  MOVT            R1, #0xBF80
55AE00:  STM.W           R5, {R4,R12,LR}
55AE04:  STRD.W          R1, R1, [SP,#0x190+var_17C]; float
55AE08:  LDR             R1, [SP,#0x190+var_130]; int
55AE0A:  BLX             j__ZN14CBouncingPanel12ProcessPanelEP8CVehicleP7RwFrame7CVectorS4_ff; CBouncingPanel::ProcessPanel(CVehicle *,RwFrame *,CVector,CVector,float,float)
55AE0E:  LDR             R4, [SP,#0x190+var_130]
55AE10:  MOV.W           R0, #0xFFFFFFFF
55AE14:  LDRSH.W         R1, [R4,#0x700]
55AE18:  ADDW            R9, R4, #0x8DC
55AE1C:  ADDW            R8, R4, #0x8D8
55AE20:  ADD.W           R10, R4, #0x8D0
55AE24:  ADDW            R11, R4, #0x8CC
55AE28:  CMP             R1, R0
55AE2A:  BLE             loc_55AE72
55AE2C:  LDR             R2, [SP,#0x190+var_130]
55AE2E:  ADD.W           R0, R4, #0x700; int
55AE32:  LDR.W           R5, [R4,#0x8D0]
55AE36:  LDR.W           R3, [R4,#0x8C8]; int
55AE3A:  LDR.W           R12, [R2,#0x8D8]
55AE3E:  LDR             R2, [SP,#0x190+var_130]
55AE40:  LDR.W           R6, [R4,#0x8CC]
55AE44:  LDR.W           R4, [R4,#0x8D4]
55AE48:  LDR.W           LR, [R2,#0x8DC]
55AE4C:  LDR             R2, [SP,#0x190+var_130]
55AE4E:  ADD.W           R1, R2, R1,LSL#2
55AE52:  LDR.W           R2, [R1,#0x65C]; int
55AE56:  MOVS            R1, #0
55AE58:  STRD.W          R6, R5, [SP,#0x190+var_190]; float
55AE5C:  ADD             R5, SP, #0x190+var_188
55AE5E:  MOVT            R1, #0xBF80
55AE62:  STM.W           R5, {R4,R12,LR}
55AE66:  STRD.W          R1, R1, [SP,#0x190+var_17C]; float
55AE6A:  LDR             R1, [SP,#0x190+var_130]; int
55AE6C:  BLX             j__ZN14CBouncingPanel12ProcessPanelEP8CVehicleP7RwFrame7CVectorS4_ff; CBouncingPanel::ProcessPanel(CVehicle *,RwFrame *,CVector,CVector,float,float)
55AE70:  LDR             R4, [SP,#0x190+var_130]
55AE72:  LDRB.W          R0, [R4,#0x72B]
55AE76:  CMP             R0, #1
55AE78:  BNE             loc_55AF52
55AE7A:  LDRH            R0, [R4,#0x26]
55AE7C:  MOVS            R1, #4
55AE7E:  CMP.W           R0, #0x220
55AE82:  IT EQ
55AE84:  MOVEQ           R1, #0x54 ; 'T'
55AE86:  ADDS            R0, R4, R1
55AE88:  LDR.W           R0, [R0,#0x65C]
55AE8C:  CMP             R0, #0
55AE8E:  BEQ             loc_55AF52
55AE90:  ADDW            R1, R4, #0x8D4
55AE94:  STR             R1, [SP,#0x190+var_134]
55AE96:  ADDW            R1, R4, #0x8C8
55AE9A:  STR             R1, [SP,#0x190+var_138]
55AE9C:  ADD.W           R1, R0, #0x10
55AEA0:  ADD             R0, SP, #0x190+var_B0
55AEA2:  MOVS            R2, #0
55AEA4:  ADD.W           R6, R4, #0x720
55AEA8:  MOVS            R5, #0
55AEAA:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55AEAE:  VLDR            D16, [SP,#0x190+var_80]
55AEB2:  ADD             R2, SP, #0x190+var_C0
55AEB4:  LDR             R0, [SP,#0x190+var_78]
55AEB6:  STR             R0, [SP,#0x190+var_B8]
55AEB8:  VSTR            D16, [SP,#0x190+var_C0]
55AEBC:  STRD.W          R5, R5, [SP,#0x190+var_120]
55AEC0:  STR             R5, [SP,#0x190+var_118]
55AEC2:  ADD             R5, SP, #0x190+var_12C
55AEC4:  LDR             R1, [R4,#0x14]; CVector *
55AEC6:  MOV             R0, R5; CMatrix *
55AEC8:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
55AECC:  STR             R5, [SP,#0x190+var_190]; CVector *
55AECE:  MOV             R0, R6; this
55AED0:  LDRD.W          R2, R3, [SP,#0x190+var_138]; CVector *
55AED4:  MOV             R1, R4; CVehicle *
55AED6:  BLX             j__ZN5CDoor7ProcessEP8CVehicleR7CVectorS3_S3_; CDoor::Process(CVehicle *,CVector &,CVector &,CVector &)
55AEDA:  LDRB.W          R0, [R4,#0x72A]
55AEDE:  ADD             R2, SP, #0x190+var_120
55AEE0:  LDR.W           R1, [R4,#0x72C]
55AEE4:  ADD             R3, SP, #0x190+var_120
55AEE6:  STR.W           R1, [R2,R0,LSL#2]
55AEEA:  ADD             R0, SP, #0x190+var_B0; this
55AEEC:  LDM             R3, {R1-R3}; float
55AEEE:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
55AEF2:  LDRH            R0, [R4,#0x26]
55AEF4:  CMP.W           R0, #0x220
55AEF8:  BNE             loc_55AF1A
55AEFA:  LDR             R0, [SP,#0x190+var_130]
55AEFC:  VLDR            S2, =-0.0001
55AF00:  LDRH.W          R0, [R0,#0x880]
55AF04:  VMOV            S0, R0
55AF08:  ADD             R0, SP, #0x190+var_B0; this
55AF0A:  VCVT.F32.U32    S0, S0
55AF0E:  VMUL.F32        S0, S0, S2
55AF12:  VMOV            R1, S0; x
55AF16:  BLX             j__ZN7CMatrix7RotateXEf; CMatrix::RotateX(float)
55AF1A:  VLDR            S0, [SP,#0x190+var_80]
55AF1E:  ADD             R0, SP, #0x190+var_B0; this
55AF20:  VLDR            S6, [SP,#0x190+var_C0]
55AF24:  VLDR            S2, [SP,#0x190+var_80+4]
55AF28:  VLDR            S8, [SP,#0x190+var_C0+4]
55AF2C:  VADD.F32        S0, S6, S0
55AF30:  VLDR            S4, [SP,#0x190+var_78]
55AF34:  VLDR            S10, [SP,#0x190+var_B8]
55AF38:  VADD.F32        S2, S8, S2
55AF3C:  VADD.F32        S4, S10, S4
55AF40:  VSTR            S0, [SP,#0x190+var_80]
55AF44:  VSTR            S2, [SP,#0x190+var_80+4]
55AF48:  VSTR            S4, [SP,#0x190+var_78]
55AF4C:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55AF50:  LDR             R4, [SP,#0x190+var_130]
55AF52:  VLDR            S0, [R4,#0x48]
55AF56:  ADDW            R0, R4, #0x8C8
55AF5A:  VLDR            S12, [R4,#0x60]
55AF5E:  VLDR            S4, [R4,#0x4C]
55AF62:  VLDR            S14, [R4,#0x64]
55AF66:  VADD.F32        S12, S0, S12
55AF6A:  VLDR            S2, [R4,#0x50]
55AF6E:  VLDR            S1, [R4,#0x68]
55AF72:  VADD.F32        S14, S4, S14
55AF76:  VLDR            S6, [R4,#0x54]
55AF7A:  VLDR            S3, [R4,#0x6C]
55AF7E:  VADD.F32        S1, S2, S1
55AF82:  VLDR            S8, [R4,#0x58]
55AF86:  VLDR            S5, [R4,#0x70]
55AF8A:  VADD.F32        S6, S6, S3
55AF8E:  VLDR            S10, [R4,#0x5C]
55AF92:  VLDR            S7, [R4,#0x74]
55AF96:  VADD.F32        S8, S8, S5
55AF9A:  VSTR            S12, [R0]
55AF9E:  ADDW            R0, R4, #0x8D4
55AFA2:  VADD.F32        S10, S10, S7
55AFA6:  VSTR            S14, [R11]
55AFAA:  VSTR            S1, [R10]
55AFAE:  VSTR            S6, [R0]
55AFB2:  VSTR            S8, [R8]
55AFB6:  VSTR            S10, [R9]
55AFBA:  LDRSH.W         R1, [R4,#0x26]
55AFBE:  CMP.W           R1, #0x238
55AFC2:  UXTH            R0, R1
55AFC4:  BGE.W           loc_55B206
55AFC8:  SUB.W           R2, R1, #0x1A8; switch 109 cases
55AFCC:  CMP             R2, #0x6C ; 'l'
55AFCE:  BHI.W           def_55AFD2; jumptable 0055AFD2 default case
55AFD2:  TBH.W           [PC,R2,LSL#1]; switch jump
55AFD6:  DCW 0x6D; jump table for switch statement
55AFD8:  DCW 0x39B
55AFDA:  DCW 0x39B
55AFDC:  DCW 0x39B
55AFDE:  DCW 0x39B
55AFE0:  DCW 0x39B
55AFE2:  DCW 0x39B
55AFE4:  DCW 0x39B
55AFE6:  DCW 0x11E
55AFE8:  DCW 0x39B
55AFEA:  DCW 0x131
55AFEC:  DCW 0x39B
55AFEE:  DCW 0x39B
55AFF0:  DCW 0x39B
55AFF2:  DCW 0x39B
55AFF4:  DCW 0x39B
55AFF6:  DCW 0x39B
55AFF8:  DCW 0x39B
55AFFA:  DCW 0x39B
55AFFC:  DCW 0x22A
55AFFE:  DCW 0x39B
55B000:  DCW 0x39B
55B002:  DCW 0x39B
55B004:  DCW 0x39B
55B006:  DCW 0x39B
55B008:  DCW 0x39B
55B00A:  DCW 0x39B
55B00C:  DCW 0x39B
55B00E:  DCW 0x39B
55B010:  DCW 0x39B
55B012:  DCW 0x39B
55B014:  DCW 0x39B
55B016:  DCW 0x39B
55B018:  DCW 0x39B
55B01A:  DCW 0x39B
55B01C:  DCW 0x39B
55B01E:  DCW 0x39B
55B020:  DCW 0x39B
55B022:  DCW 0x39B
55B024:  DCW 0x39B
55B026:  DCW 0x39B
55B028:  DCW 0x39B
55B02A:  DCW 0x39B
55B02C:  DCW 0x39B
55B02E:  DCW 0x39B
55B030:  DCW 0x39B
55B032:  DCW 0x39B
55B034:  DCW 0x39B
55B036:  DCW 0x39B
55B038:  DCW 0x39B
55B03A:  DCW 0x39B
55B03C:  DCW 0x39B
55B03E:  DCW 0x39B
55B040:  DCW 0x22F
55B042:  DCW 0x39B
55B044:  DCW 0x39B
55B046:  DCW 0x39B
55B048:  DCW 0x39B
55B04A:  DCW 0x39B
55B04C:  DCW 0x39B
55B04E:  DCW 0x39B
55B050:  DCW 0x39B
55B052:  DCW 0x232
55B054:  DCW 0x39B
55B056:  DCW 0x39B
55B058:  DCW 0x39B
55B05A:  DCW 0x39B
55B05C:  DCW 0x39B
55B05E:  DCW 0x39B
55B060:  DCW 0x39B
55B062:  DCW 0x39B
55B064:  DCW 0x39B
55B066:  DCW 0x39B
55B068:  DCW 0x39B
55B06A:  DCW 0x39B
55B06C:  DCW 0x39B
55B06E:  DCW 0x39B
55B070:  DCW 0x39B
55B072:  DCW 0x39B
55B074:  DCW 0x39B
55B076:  DCW 0x39B
55B078:  DCW 0x39B
55B07A:  DCW 0x39B
55B07C:  DCW 0x39B
55B07E:  DCW 0x39B
55B080:  DCW 0x39B
55B082:  DCW 0x39B
55B084:  DCW 0x39B
55B086:  DCW 0x39B
55B088:  DCW 0x39B
55B08A:  DCW 0x39B
55B08C:  DCW 0x39B
55B08E:  DCW 0x39B
55B090:  DCW 0x39B
55B092:  DCW 0x39B
55B094:  DCW 0x39B
55B096:  DCW 0x39B
55B098:  DCW 0x39B
55B09A:  DCW 0x39B
55B09C:  DCW 0x39B
55B09E:  DCW 0x247
55B0A0:  DCW 0x29A
55B0A2:  DCW 0x39B
55B0A4:  DCW 0x39B
55B0A6:  DCW 0x39B
55B0A8:  DCW 0x39B
55B0AA:  DCW 0x345
55B0AC:  DCW 0x376
55B0AE:  DCW 0x3E9
55B0B0:  ADD.W           R1, R4, #0x4A0; jumptable 0055AFD2 case 424
55B0B4:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x55B0C6)
55B0B8:  VLDR            S0, =0.3
55B0BC:  MOVS            R5, #0
55B0BE:  VLDR            S2, [R1]
55B0C2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
55B0C4:  MOVS            R2, #1
55B0C6:  VCMP.F32        S2, #0.0
55B0CA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
55B0CC:  VMRS            APSR_nzcv, FPSCR
55B0D0:  IT NE
55B0D2:  VMOVNE.F32      S0, S16
55B0D6:  VLDR            S2, [R0]
55B0DA:  LDR.W           R1, [R4,#0x6AC]
55B0DE:  MOV             R0, R4
55B0E0:  VMUL.F32        S16, S2, S0
55B0E4:  STR             R5, [SP,#0x190+var_190]
55B0E6:  VMOV            R3, S16
55B0EA:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B0EE:  VMOV.F32        S0, #1.5
55B0F2:  LDR             R0, [SP,#0x190+var_130]
55B0F4:  MOVS            R2, #1
55B0F6:  LDR.W           R1, [R0,#0x6BC]
55B0FA:  LDR             R0, [SP,#0x190+var_130]
55B0FC:  STR             R5, [SP,#0x190+var_190]
55B0FE:  VMUL.F32        S0, S16, S0
55B102:  VMOV            R3, S0
55B106:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B10A:  LDR             R0, [SP,#0x190+var_130]; this
55B10C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55B110:  LDR             R2, [SP,#0x190+var_130]
55B112:  ADD             R1, SP, #0x190+var_B0
55B114:  LDR             R5, [SP,#0x190+var_14C]
55B116:  ADD.W           R6, R1, #0x30 ; '0'
55B11A:  LDR.W           R0, [R2,#0x6B0]
55B11E:  CBZ             R0, loc_55B178
55B120:  ADD             R4, SP, #0x190+var_B0
55B122:  ADD.W           R1, R0, #0x10
55B126:  MOVS            R2, #0
55B128:  MOV             R0, R4
55B12A:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B12E:  VLDR            D16, [R6]
55B132:  LDR             R1, [SP,#0x190+var_130]
55B134:  LDR             R0, [R6,#8]
55B136:  STR             R0, [SP,#0x190+var_B8]
55B138:  VSTR            D16, [SP,#0x190+var_C0]
55B13C:  LDR             R0, [R5,#0x10]
55B13E:  LDR.W           R1, [R1,#0x388]
55B142:  VLDR            S2, [R0,#8]
55B146:  VLDR            S4, [R1,#0xB8]
55B14A:  VLDR            S0, [R0,#4]
55B14E:  VSUB.F32        S2, S2, S4
55B152:  LDR             R0, [SP,#0x190+var_130]
55B154:  VLDR            S4, [SP,#0x190+var_C0+4]
55B158:  ADDW            R0, R0, #0x84C
55B15C:  VSUB.F32        S0, S0, S4
55B160:  VLDR            S6, [R0]
55B164:  MOV             R0, R4; this
55B166:  VSUB.F32        S2, S6, S2
55B16A:  VDIV.F32        S0, S2, S0
55B16E:  VSTR            S0, [SP,#0x190+var_98]
55B172:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55B176:  LDR             R2, [SP,#0x190+var_130]
55B178:  LDR.W           R0, [R2,#0x6B4]
55B17C:  MOV             R4, R2
55B17E:  CBZ             R0, loc_55B1D4
55B180:  ADD.W           R8, SP, #0x190+var_B0
55B184:  ADD.W           R1, R0, #0x10
55B188:  MOVS            R2, #0
55B18A:  MOV             R0, R8
55B18C:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B190:  VLDR            D16, [R6]
55B194:  LDR             R0, [R6,#8]
55B196:  STR             R0, [SP,#0x190+var_B8]
55B198:  VSTR            D16, [SP,#0x190+var_C0]
55B19C:  LDR             R0, [R5,#0x10]
55B19E:  LDR.W           R1, [R4,#0x388]
55B1A2:  VLDR            S2, [R0,#0x48]
55B1A6:  VLDR            S4, [R1,#0xB8]
55B1AA:  VLDR            S0, [R0,#0x44]
55B1AE:  ADDW            R0, R4, #0x854
55B1B2:  VSUB.F32        S2, S2, S4
55B1B6:  VLDR            S4, [SP,#0x190+var_C0+4]
55B1BA:  VLDR            S6, [R0]
55B1BE:  MOV             R0, R8; this
55B1C0:  VSUB.F32        S0, S0, S4
55B1C4:  VSUB.F32        S2, S6, S2
55B1C8:  VDIV.F32        S0, S2, S0
55B1CC:  VSTR            S0, [SP,#0x190+var_98]
55B1D0:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55B1D4:  LDR             R0, [SP,#0x190+var_144]; this
55B1D6:  ADD             R2, SP, #0x190+var_C0; CVector *
55B1D8:  MOVS            R1, #1; int
55B1DA:  MOVS            R3, #0; bool
55B1DC:  MOV.W           R8, #0
55B1E0:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
55B1E4:  LDR.W           R1, [R4,#0x6B8]
55B1E8:  LDR.W           R2, [R4,#0x850]
55B1EC:  LDR.W           R3, [R4,#0x858]
55B1F0:  LDRD.W          R0, R6, [SP,#0x190+var_C0]
55B1F4:  LDR             R5, [SP,#0x190+var_B8]
55B1F6:  STRD.W          R0, R6, [SP,#0x190+var_190]
55B1FA:  MOV             R0, R4
55B1FC:  STRD.W          R5, R8, [SP,#0x190+var_188]
55B200:  BLX             j__ZN8CVehicle23SetTransmissionRotationEP7RwFrameff7CVectorb; CVehicle::SetTransmissionRotation(RwFrame *,float,float,CVector,bool)
55B204:  B               loc_55B70A
55B206:  BEQ             loc_55B238; jumptable 0055AFD2 case 434
55B208:  MOVW            R2, #0x259
55B20C:  CMP             R1, R2
55B20E:  BNE.W           loc_55B70C; jumptable 0055AFD2 cases 425-431,433,435-442,444-476,478-485,487-523,526-529
55B212:  LDR.W           R3, [R4,#0x960]; jumptable 0055AFD2 case 432
55B216:  MOVS            R5, #1
55B218:  LDR.W           R1, [R4,#0x6AC]
55B21C:  MOV             R0, R4
55B21E:  MOVS            R2, #2
55B220:  STR             R5, [SP,#0x190+var_190]
55B222:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B226:  LDR             R0, [SP,#0x190+var_130]
55B228:  LDR.W           R3, [R0,#0x964]
55B22C:  LDR             R0, [SP,#0x190+var_130]
55B22E:  LDR.W           R1, [R0,#0x6B0]
55B232:  STR             R5, [SP,#0x190+var_190]
55B234:  LDR             R0, [SP,#0x190+var_130]
55B236:  B               loc_55B702
55B238:  MOV             R0, R4; jumptable 0055AFD2 case 434
55B23A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55B23E:  LDR             R0, [SP,#0x190+var_130]
55B240:  ADD             R1, SP, #0x190+var_B0
55B242:  LDR             R4, [SP,#0x190+var_14C]
55B244:  ADD.W           R6, R1, #0x30 ; '0'
55B248:  LDR.W           R2, [R0,#0x6AC]
55B24C:  CBZ             R2, loc_55B2A6
55B24E:  ADD             R5, SP, #0x190+var_B0
55B250:  ADD.W           R1, R2, #0x10
55B254:  MOVS            R2, #0
55B256:  MOV             R0, R5
55B258:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B25C:  VLDR            D16, [R6]
55B260:  LDR             R1, [SP,#0x190+var_130]
55B262:  LDR             R0, [R6,#8]
55B264:  STR             R0, [SP,#0x190+var_B8]
55B266:  VSTR            D16, [SP,#0x190+var_C0]
55B26A:  LDR             R0, [R4,#0x10]
55B26C:  LDR.W           R1, [R1,#0x388]
55B270:  VLDR            S2, [R0,#8]
55B274:  VLDR            S4, [R1,#0xB8]
55B278:  VLDR            S0, [R0]
55B27C:  VSUB.F32        S2, S2, S4
55B280:  LDR             R0, [SP,#0x190+var_130]
55B282:  VLDR            S4, [SP,#0x190+var_C0]
55B286:  ADDW            R0, R0, #0x84C
55B28A:  VSUB.F32        S0, S0, S4
55B28E:  VLDR            S6, [R0]
55B292:  MOV             R0, R5; this
55B294:  VSUB.F32        S2, S6, S2
55B298:  VDIV.F32        S0, S2, S0
55B29C:  VSTR            S0, [SP,#0x190+var_A8]
55B2A0:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55B2A4:  LDR             R0, [SP,#0x190+var_130]
55B2A6:  LDR.W           R1, [R0,#0x6B4]
55B2AA:  CBZ             R1, loc_55B302
55B2AC:  ADD             R5, SP, #0x190+var_B0
55B2AE:  ADDS            R1, #0x10
55B2B0:  MOVS            R2, #0
55B2B2:  MOV             R0, R5
55B2B4:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B2B8:  VLDR            D16, [R6]
55B2BC:  LDR             R1, [SP,#0x190+var_130]
55B2BE:  LDR             R0, [R6,#8]
55B2C0:  STR             R0, [SP,#0x190+var_B8]
55B2C2:  VSTR            D16, [SP,#0x190+var_C0]
55B2C6:  LDR             R0, [R4,#0x10]
55B2C8:  LDR.W           R1, [R1,#0x388]
55B2CC:  VLDR            S2, [R0,#0x28]
55B2D0:  VLDR            S4, [R1,#0xB8]
55B2D4:  VLDR            S0, [R0,#0x20]
55B2D8:  VSUB.F32        S2, S2, S4
55B2DC:  LDR             R0, [SP,#0x190+var_130]
55B2DE:  VLDR            S4, [SP,#0x190+var_C0]
55B2E2:  ADD.W           R0, R0, #0x850
55B2E6:  VSUB.F32        S0, S0, S4
55B2EA:  VLDR            S6, [R0]
55B2EE:  MOV             R0, R5; this
55B2F0:  VSUB.F32        S2, S6, S2
55B2F4:  VDIV.F32        S0, S2, S0
55B2F8:  VSTR            S0, [SP,#0x190+var_A8]
55B2FC:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55B300:  LDR             R0, [SP,#0x190+var_130]
55B302:  LDR.W           R1, [R0,#0x6B0]
55B306:  CBZ             R1, loc_55B35E
55B308:  ADD             R5, SP, #0x190+var_B0
55B30A:  ADDS            R1, #0x10
55B30C:  MOVS            R2, #0
55B30E:  MOV             R0, R5
55B310:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B314:  VLDR            D16, [R6]
55B318:  LDR             R1, [SP,#0x190+var_130]
55B31A:  LDR             R0, [R6,#8]
55B31C:  STR             R0, [SP,#0x190+var_B8]
55B31E:  VSTR            D16, [SP,#0x190+var_C0]
55B322:  LDR             R0, [R4,#0x10]
55B324:  LDR.W           R1, [R1,#0x388]
55B328:  VLDR            S2, [R0,#0x48]
55B32C:  VLDR            S4, [R1,#0xB8]
55B330:  VLDR            S0, [R0,#0x40]
55B334:  VSUB.F32        S2, S2, S4
55B338:  LDR             R0, [SP,#0x190+var_130]
55B33A:  VLDR            S4, [SP,#0x190+var_C0]
55B33E:  ADDW            R0, R0, #0x854
55B342:  VSUB.F32        S0, S0, S4
55B346:  VLDR            S6, [R0]
55B34A:  MOV             R0, R5; this
55B34C:  VSUB.F32        S2, S6, S2
55B350:  VDIV.F32        S0, S2, S0
55B354:  VSTR            S0, [SP,#0x190+var_A8]
55B358:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55B35C:  LDR             R0, [SP,#0x190+var_130]
55B35E:  LDR.W           R1, [R0,#0x6B8]
55B362:  CBZ             R1, loc_55B3BA
55B364:  ADD             R5, SP, #0x190+var_B0
55B366:  ADDS            R1, #0x10
55B368:  MOVS            R2, #0
55B36A:  MOV             R0, R5
55B36C:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B370:  VLDR            D16, [R6]
55B374:  LDR             R1, [SP,#0x190+var_130]
55B376:  LDR             R0, [R6,#8]
55B378:  STR             R0, [SP,#0x190+var_B8]
55B37A:  VSTR            D16, [SP,#0x190+var_C0]
55B37E:  LDR             R0, [R4,#0x10]
55B380:  LDR.W           R1, [R1,#0x388]
55B384:  VLDR            S2, [R0,#0x68]
55B388:  VLDR            S4, [R1,#0xB8]
55B38C:  VLDR            S0, [R0,#0x60]
55B390:  VSUB.F32        S2, S2, S4
55B394:  LDR             R0, [SP,#0x190+var_130]
55B396:  VLDR            S4, [SP,#0x190+var_C0]
55B39A:  ADDW            R0, R0, #0x858
55B39E:  VSUB.F32        S0, S0, S4
55B3A2:  VLDR            S6, [R0]
55B3A6:  MOV             R0, R5; this
55B3A8:  VSUB.F32        S2, S6, S2
55B3AC:  VDIV.F32        S0, S2, S0
55B3B0:  VSTR            S0, [SP,#0x190+var_A8]
55B3B4:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55B3B8:  LDR             R0, [SP,#0x190+var_130]
55B3BA:  ADD.W           R1, R0, #0x4A0
55B3BE:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x55B3CE)
55B3C2:  VLDR            S0, =0.3
55B3C6:  VLDR            S2, [R1]
55B3CA:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
55B3CC:  VCMP.F32        S2, #0.0
55B3D0:  LDR             R1, [R2]; CTimer::ms_fTimeStep ...
55B3D2:  VMRS            APSR_nzcv, FPSCR
55B3D6:  MOV.W           R2, #0
55B3DA:  IT NE
55B3DC:  VMOVNE.F32      S0, S16
55B3E0:  VLDR            S2, [R1]
55B3E4:  LDR.W           R1, [R0,#0x6BC]
55B3E8:  VMUL.F32        S0, S2, S0
55B3EC:  STR             R2, [SP,#0x190+var_190]
55B3EE:  MOVS            R2, #1
55B3F0:  VMOV            R3, S0
55B3F4:  B               loc_55B704
55B3F6:  MOVW            R2, #0x197; jumptable 0055AFD2 default case
55B3FA:  CMP             R1, R2
55B3FC:  BNE.W           loc_55B70C; jumptable 0055AFD2 cases 425-431,433,435-442,444-476,478-485,487-523,526-529
55B400:  LDR.W           R3, [R4,#0x964]
55B404:  MOVS            R0, #1
55B406:  LDR.W           R1, [R4,#0x6AC]
55B40A:  MOVS            R2, #0
55B40C:  STR             R0, [SP,#0x190+var_190]
55B40E:  MOV             R0, R4
55B410:  MOVS            R5, #0
55B412:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B416:  LDR             R0, [SP,#0x190+var_130]
55B418:  MOVS            R2, #2
55B41A:  LDR.W           R3, [R0,#0x960]
55B41E:  LDR             R0, [SP,#0x190+var_130]
55B420:  LDR.W           R1, [R0,#0x6AC]
55B424:  STR             R5, [SP,#0x190+var_190]
55B426:  LDR             R0, [SP,#0x190+var_130]
55B428:  B               loc_55B704
55B42A:  LDRH.W          R0, [R4,#0x880]; jumptable 0055AFD2 case 443
55B42E:  VLDR            S2, =-0.0001
55B432:  B               loc_55B442
55B434:  LDR.W           R3, [R4,#0x96C]; jumptable 0055AFD2 case 477
55B438:  B               loc_55B6F8
55B43A:  LDRH.W          R0, [R4,#0x880]; jumptable 0055AFD2 case 486
55B43E:  VLDR            S2, =0.0002
55B442:  VMOV            S0, R0
55B446:  VCVT.F32.U32    S0, S0
55B44A:  VMUL.F32        S0, S0, S2
55B44E:  B               loc_55B6F4
55B450:  DCFS 0.3
55B454:  DCFS -0.0001
55B458:  DCFS 0.0002
55B45C:  DCFS 0.02
55B460:  DCFS 0.0006
55B464:  LDRB.W          R0, [R4,#0x3A]; jumptable 0055AFD2 case 524
55B468:  AND.W           R0, R0, #0xF8
55B46C:  CMP             R0, #0x28 ; '('
55B46E:  BEQ.W           loc_55B70A
55B472:  MOVW            R5, #0xB8C3
55B476:  LDR.W           R1, [R4,#0x6AC]
55B47A:  MOVT            R5, #0xBE32
55B47E:  MOVS            R6, #1
55B480:  MOV             R0, R4
55B482:  MOVS            R2, #0
55B484:  MOV             R3, R5
55B486:  STR             R6, [SP,#0x190+var_190]
55B488:  MOV.W           R8, #0
55B48C:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B490:  LDR.W           R0, =(DEFAULT_COLLISION_EXTENDLIMIT_ptr - 0x55B49C)
55B494:  MOVS            R2, #1
55B496:  LDR             R1, [SP,#0x190+var_130]
55B498:  ADD             R0, PC; DEFAULT_COLLISION_EXTENDLIMIT_ptr
55B49A:  LDR             R0, [R0]; DEFAULT_COLLISION_EXTENDLIMIT
55B49C:  LDRH.W          R1, [R1,#0x880]
55B4A0:  LDRSH.W         R0, [R0]
55B4A4:  VMOV            S0, R1
55B4A8:  VMOV            S2, R0
55B4AC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x55B4BC)
55B4B0:  VCVT.F32.U32    S0, S0
55B4B4:  VCVT.F32.S32    S2, S2
55B4B8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
55B4BA:  LDR             R1, [SP,#0x190+var_130]
55B4BC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
55B4BE:  LDR.W           R1, [R1,#0x6B0]
55B4C2:  VDIV.F32        S0, S0, S2
55B4C6:  VADD.F32        S0, S0, S16
55B4CA:  VLDR            S2, =0.02
55B4CE:  VMUL.F32        S0, S0, S2
55B4D2:  VLDR            S2, [R0]
55B4D6:  LDR             R0, [SP,#0x190+var_130]
55B4D8:  ADDW            R0, R0, #0x96C
55B4DC:  VMUL.F32        S0, S2, S0
55B4E0:  VLDR            S2, [R0]
55B4E4:  VADD.F32        S0, S2, S0
55B4E8:  VMOV            R3, S0
55B4EC:  VSTR            S0, [R0]
55B4F0:  LDR             R0, [SP,#0x190+var_130]
55B4F2:  STR             R6, [SP,#0x190+var_190]
55B4F4:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B4F8:  LDR             R0, [SP,#0x190+var_130]
55B4FA:  MOVS            R2, #0
55B4FC:  MOV             R3, R5
55B4FE:  LDR.W           R1, [R0,#0x6B0]
55B502:  STR.W           R8, [SP,#0x190+var_190]
55B506:  LDR             R0, [SP,#0x190+var_130]
55B508:  B               loc_55B704
55B50A:  LDR.W           R0, =(TOWTRUCK_ROT_ANGLE_ptr - 0x55B51C); jumptable 0055AFD2 case 525
55B50E:  MOVS            R6, #1
55B510:  LDR.W           R1, =(TOWTRUCK_HOIST_DOWN_LIMIT_ptr - 0x55B51E)
55B514:  LDRH.W          R2, [R4,#0x880]
55B518:  ADD             R0, PC; TOWTRUCK_ROT_ANGLE_ptr
55B51A:  ADD             R1, PC; TOWTRUCK_HOIST_DOWN_LIMIT_ptr
55B51C:  LDR             R0, [R0]; TOWTRUCK_ROT_ANGLE
55B51E:  VMOV            S0, R2
55B522:  LDR             R1, [R1]; TOWTRUCK_HOIST_DOWN_LIMIT
55B524:  MOVS            R2, #0
55B526:  VCVT.F32.U32    S0, S0
55B52A:  VLDR            S2, [R0]
55B52E:  LDRH            R0, [R1]
55B530:  VMOV            S4, R0
55B534:  MOV             R0, R4
55B536:  VCVT.F32.U32    S4, S4
55B53A:  LDR.W           R1, [R4,#0x6AC]
55B53E:  VMUL.F32        S0, S2, S0
55B542:  STR             R6, [SP,#0x190+var_190]
55B544:  VDIV.F32        S16, S0, S4
55B548:  VMOV            R5, S16
55B54C:  MOV             R3, R5
55B54E:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B552:  LDR             R4, [SP,#0x190+var_130]
55B554:  LDR.W           R0, [R4,#0x4D4]
55B558:  CMP             R0, #0
55B55A:  BEQ.W           loc_55B978
55B55E:  LDR             R1, [R0]
55B560:  MOVS            R2, #1
55B562:  MOV             R3, R4
55B564:  LDR.W           R6, [R1,#0xF0]
55B568:  ADD             R1, SP, #0x190+var_120
55B56A:  BLX             R6
55B56C:  CMP             R0, #1
55B56E:  BNE.W           loc_55B70A
55B572:  LDR             R0, [R4]
55B574:  ADD             R1, SP, #0x190+var_12C
55B576:  LDR.W           R3, [R4,#0x4D4]
55B57A:  MOVS            R2, #1
55B57C:  MOV.W           R8, #1
55B580:  LDR.W           R6, [R0,#0xF4]
55B584:  MOV             R0, R4
55B586:  BLX             R6
55B588:  CMP             R0, #1
55B58A:  BNE.W           loc_55B70A
55B58E:  VLDR            S0, [SP,#0x190+var_12C]
55B592:  VLDR            S6, [SP,#0x190+var_120]
55B596:  VLDR            S2, [SP,#0x190+var_128]
55B59A:  VLDR            S8, [SP,#0x190+var_11C]
55B59E:  VSUB.F32        S0, S6, S0
55B5A2:  VLDR            S10, [SP,#0x190+var_118]
55B5A6:  VLDR            S4, [SP,#0x190+var_124]
55B5AA:  VSUB.F32        S2, S8, S2
55B5AE:  VSUB.F32        S4, S10, S4
55B5B2:  VSTR            S0, [SP,#0x190+var_120]
55B5B6:  VSTR            S2, [SP,#0x190+var_11C]
55B5BA:  VSTR            S4, [SP,#0x190+var_118]
55B5BE:  LDR             R0, [R4,#0x14]
55B5C0:  VLDR            S6, [R0,#0x10]
55B5C4:  VLDR            S8, [R0,#0x14]
55B5C8:  VMUL.F32        S0, S0, S6
55B5CC:  VLDR            S10, [R0,#0x18]
55B5D0:  VMUL.F32        S2, S2, S8
55B5D4:  LDR.W           R0, =(TOWTRUCK_WIRE_LENGTH_ptr - 0x55B5E0)
55B5D8:  VMUL.F32        S4, S4, S10
55B5DC:  ADD             R0, PC; TOWTRUCK_WIRE_LENGTH_ptr
55B5DE:  LDR             R5, [R0]; TOWTRUCK_WIRE_LENGTH
55B5E0:  VADD.F32        S0, S0, S2
55B5E4:  VLDR            S2, [R5]
55B5E8:  VADD.F32        S0, S0, S4
55B5EC:  VDIV.F32        S0, S0, S2
55B5F0:  VMOV            R0, S0; x
55B5F4:  BLX             asinf
55B5F8:  VMOV            S0, R0
55B5FC:  LDR.W           R1, [R4,#0x6B0]
55B600:  MOV             R0, R4
55B602:  MOVS            R2, #0
55B604:  VSUB.F32        S0, S0, S16
55B608:  STR.W           R8, [SP,#0x190+var_190]
55B60C:  MOVS            R6, #0
55B60E:  VMOV            R3, S0
55B612:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B616:  LDR             R0, [R4,#0x14]
55B618:  VLDR            S0, [SP,#0x190+var_120]
55B61C:  VLDR            S2, [SP,#0x190+var_11C]
55B620:  VLDR            S6, [R0]
55B624:  VLDR            S8, [R0,#4]
55B628:  VMUL.F32        S0, S0, S6
55B62C:  VLDR            S4, [SP,#0x190+var_118]
55B630:  VMUL.F32        S2, S2, S8
55B634:  VLDR            S10, [R0,#8]
55B638:  VMUL.F32        S4, S4, S10
55B63C:  VADD.F32        S0, S0, S2
55B640:  VLDR            S2, [R5]
55B644:  VADD.F32        S0, S0, S4
55B648:  VNEG.F32        S0, S0
55B64C:  VDIV.F32        S0, S0, S2
55B650:  VMOV            R0, S0; x
55B654:  BLX             asinf
55B658:  MOV             R3, R0
55B65A:  LDR.W           R1, [R4,#0x6B0]
55B65E:  B               loc_55B96C
55B660:  LDR.W           R0, [R4,#0x6AC]; jumptable 0055AFD2 case 530
55B664:  CMP             R0, #0
55B666:  BEQ             loc_55B70A
55B668:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55B672)
55B66C:  MOVS            R1, #0x14
55B66E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55B670:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55B672:  LDR.W           R0, [R0,#(dword_91E500 - 0x91DCB8)]
55B676:  LDR             R0, [R0,#0x34]
55B678:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
55B67C:  LDRD.W          R9, R6, [R0,#0x40]
55B680:  ADD             R5, SP, #0x190+var_B0
55B682:  VLDR            S16, [R0,#0x48]
55B686:  MOVS            R2, #0
55B688:  LDR             R0, [SP,#0x190+var_130]
55B68A:  LDRH.W          R4, [R0,#0x880]
55B68E:  LDR             R0, [SP,#0x190+var_130]
55B690:  LDR.W           R0, [R0,#0x6AC]
55B694:  ADD.W           R1, R0, #0x10
55B698:  MOV             R0, R5
55B69A:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B69E:  VMOV            S0, R4
55B6A2:  VLDR            S2, =0.0006
55B6A6:  MOV             R0, R5; this
55B6A8:  MOV             R1, R9; float
55B6AA:  VCVT.F32.U32    S0, S0
55B6AE:  MOV             R2, R6; float
55B6B0:  VMUL.F32        S0, S0, S2
55B6B4:  VADD.F32        S0, S16, S0
55B6B8:  VMOV            R3, S0; float
55B6BC:  BLX             j__ZN7CMatrix16SetTranslateOnlyEfff; CMatrix::SetTranslateOnly(float,float,float)
55B6C0:  B               loc_55B9D4
55B6C2:  LDR.W           R0, =(TOWTRUCK_ROT_ANGLE_ptr - 0x55B6D2); jumptable 0055AFD2 case 531
55B6C6:  LDR.W           R1, =(TOWTRUCK_HOIST_DOWN_LIMIT_ptr - 0x55B6D4)
55B6CA:  LDRH.W          R2, [R4,#0x880]
55B6CE:  ADD             R0, PC; TOWTRUCK_ROT_ANGLE_ptr
55B6D0:  ADD             R1, PC; TOWTRUCK_HOIST_DOWN_LIMIT_ptr
55B6D2:  LDR             R0, [R0]; TOWTRUCK_ROT_ANGLE
55B6D4:  VMOV            S0, R2
55B6D8:  LDR             R1, [R1]; TOWTRUCK_HOIST_DOWN_LIMIT
55B6DA:  VCVT.F32.U32    S0, S0
55B6DE:  VLDR            S2, [R0]
55B6E2:  LDRH            R0, [R1]
55B6E4:  VMOV            S4, R0
55B6E8:  VCVT.F32.U32    S4, S4
55B6EC:  VMUL.F32        S0, S2, S0
55B6F0:  VDIV.F32        S0, S0, S4
55B6F4:  VMOV            R3, S0
55B6F8:  LDR.W           R1, [R4,#0x6AC]
55B6FC:  MOVS            R0, #1
55B6FE:  STR             R0, [SP,#0x190+var_190]
55B700:  MOV             R0, R4
55B702:  MOVS            R2, #0
55B704:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B708:  LDR             R4, [SP,#0x190+var_130]
55B70A:  LDRH            R0, [R4,#0x26]
55B70C:  MOVW            R1, #0x1EF; jumptable 0055AFD2 cases 425-431,433,435-442,444-476,478-485,487-523,526-529
55B710:  CMP             R0, R1
55B712:  BNE             loc_55B77E
55B714:  LDR.W           R10, [SP,#0x190+var_144]
55B718:  ADD.W           R9, SP, #0x190+var_C0
55B71C:  MOVS            R1, #0; int
55B71E:  MOVS            R3, #0; bool
55B720:  MOV             R2, R9; CVector *
55B722:  MOV.W           R8, #0
55B726:  MOV             R0, R10; this
55B728:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
55B72C:  LDR.W           R1, [R4,#0x6AC]
55B730:  MOV.W           R12, #1
55B734:  LDR.W           R2, [R4,#0x84C]
55B738:  LDR.W           R3, [R4,#0x854]
55B73C:  LDRD.W          R0, R6, [SP,#0x190+var_C0]
55B740:  LDR             R5, [SP,#0x190+var_B8]
55B742:  STRD.W          R0, R6, [SP,#0x190+var_190]
55B746:  MOV             R0, R4
55B748:  STRD.W          R5, R12, [SP,#0x190+var_188]
55B74C:  BLX             j__ZN8CVehicle23SetTransmissionRotationEP7RwFrameff7CVectorb; CVehicle::SetTransmissionRotation(RwFrame *,float,float,CVector,bool)
55B750:  MOV             R0, R10; this
55B752:  MOVS            R1, #1; int
55B754:  MOV             R2, R9; CVector *
55B756:  MOVS            R3, #0; bool
55B758:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
55B75C:  LDR.W           R1, [R4,#0x6B0]
55B760:  LDR.W           R2, [R4,#0x850]
55B764:  LDR.W           R3, [R4,#0x858]
55B768:  LDRD.W          R0, R6, [SP,#0x190+var_C0]
55B76C:  LDR             R5, [SP,#0x190+var_B8]
55B76E:  STRD.W          R0, R6, [SP,#0x190+var_190]
55B772:  MOV             R0, R4
55B774:  STRD.W          R5, R8, [SP,#0x190+var_188]
55B778:  BLX             j__ZN8CVehicle23SetTransmissionRotationEP7RwFrameff7CVectorb; CVehicle::SetTransmissionRotation(RwFrame *,float,float,CVector,bool)
55B77C:  B               loc_55B794
55B77E:  LDR.W           R0, [R4,#0x390]
55B782:  AND.W           R0, R0, #0x30000
55B786:  CMP.W           R0, #0x30000
55B78A:  BNE             loc_55B794
55B78C:  LDR.W           R0, [R4,#0x5A4]
55B790:  CMP             R0, #1
55B792:  BNE             loc_55B714
55B794:  ADD             R0, SP, #0x190+var_B0; this
55B796:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55B79A:  ADD             SP, SP, #0x138
55B79C:  VPOP            {D8-D14}
55B7A0:  ADD             SP, SP, #4
55B7A2:  POP.W           {R8-R11}
55B7A6:  POP             {R4-R7,PC}
55B7A8:  ADDW            R0, R4, #0x96C; jumptable 0055AFD2 case 532
55B7AC:  VLDR            S8, =6.2832
55B7B0:  VLDR            S18, =0.0
55B7B4:  VLDR            S6, [R0]
55B7B8:  VCMPE.F32       S6, S8
55B7BC:  VMRS            APSR_nzcv, FPSCR
55B7C0:  ITTT GT
55B7C2:  VLDRGT          S8, =-6.2832
55B7C6:  VADDGT.F32      S6, S6, S8
55B7CA:  VSTRGT          S6, [R0]
55B7CE:  LDR             R1, [R4,#0x14]
55B7D0:  VLDR            S8, [R1,#0x10]
55B7D4:  VLDR            S10, [R1,#0x14]
55B7D8:  VMUL.F32        S0, S0, S8
55B7DC:  VLDR            S12, [R1,#0x18]
55B7E0:  VMUL.F32        S4, S4, S10
55B7E4:  VMUL.F32        S2, S2, S12
55B7E8:  VADD.F32        S0, S0, S4
55B7EC:  VADD.F32        S0, S0, S2
55B7F0:  VLDR            S2, =0.1
55B7F4:  VCMPE.F32       S0, S2
55B7F8:  VMRS            APSR_nzcv, FPSCR
55B7FC:  BGT             loc_55B80C
55B7FE:  VMOV.F32        S4, S18
55B802:  VCMPE.F32       S0, #0.0
55B806:  VMRS            APSR_nzcv, FPSCR
55B80A:  BLT             loc_55B81E
55B80C:  VCMPE.F32       S0, S2
55B810:  VMRS            APSR_nzcv, FPSCR
55B814:  VMOV.F32        S4, S2
55B818:  IT LE
55B81A:  VMOVLE.F32      S4, S0
55B81E:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x55B82C)
55B820:  MOVS            R6, #1
55B822:  MOVS            R2, #0
55B824:  MOV.W           R8, #0
55B828:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
55B82A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
55B82C:  VLDR            S0, [R1]
55B830:  VMUL.F32        S0, S4, S0
55B834:  VSUB.F32        S0, S6, S0
55B838:  VMOV            R3, S0
55B83C:  VSTR            S0, [R0]
55B840:  LDR.W           R1, [R4,#0x6B0]
55B844:  MOV             R0, R4
55B846:  STR             R6, [SP,#0x190+var_190]
55B848:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B84C:  LDR             R0, [SP,#0x190+var_144]; this
55B84E:  ADD             R2, SP, #0x190+var_120; CVector *
55B850:  MOVS            R1, #0; int
55B852:  MOVS            R3, #0; bool
55B854:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
55B858:  LDR             R0, [SP,#0x190+var_130]
55B85A:  MOVS            R2, #0
55B85C:  LDR.W           R0, [R0,#0x6AC]
55B860:  ADD.W           R1, R0, #0x10
55B864:  ADD             R0, SP, #0x190+var_B0
55B866:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B86A:  LDR             R0, [SP,#0x190+var_78]
55B86C:  STR             R0, [SP,#0x190+var_B8]
55B86E:  LDR             R0, [SP,#0x190+var_130]
55B870:  VLDR            D16, [SP,#0x190+var_80]
55B874:  ADDW            R0, R0, #0x854
55B878:  VLDR            S2, [SP,#0x190+var_11C]
55B87C:  VSTR            D16, [SP,#0x190+var_C0]
55B880:  VLDR            S20, [R0]
55B884:  LDR             R0, [SP,#0x190+var_130]
55B886:  VLDR            S4, [SP,#0x190+var_C0+4]
55B88A:  ADDW            R0, R0, #0x84C
55B88E:  VLDR            S6, [SP,#0x190+var_118]
55B892:  VSUB.F32        S2, S4, S2
55B896:  VLDR            S22, [R0]
55B89A:  VADD.F32        S0, S22, S20
55B89E:  VMOV            R1, S2; x
55B8A2:  VMUL.F32        S0, S0, S16
55B8A6:  VSUB.F32        S0, S0, S6
55B8AA:  VMOV            R0, S0; y
55B8AE:  BLX             atan2f
55B8B2:  VLDR            S0, [SP,#0x190+var_120]
55B8B6:  VSUB.F32        S2, S22, S20
55B8BA:  VABS.F32        S0, S0
55B8BE:  VMOV            R2, S2
55B8C2:  VMOV            S2, R0
55B8C6:  VADD.F32        S0, S0, S0
55B8CA:  VMOV            R1, S0; x
55B8CE:  VLDR            S0, =3.1416
55B8D2:  VSUB.F32        S16, S0, S2
55B8D6:  MOV             R0, R2; y
55B8D8:  BLX             atan2f
55B8DC:  VMOV            R3, S16
55B8E0:  MOV             R5, R0
55B8E2:  LDR             R0, [SP,#0x190+var_130]
55B8E4:  MOVS            R2, #0
55B8E6:  LDR.W           R1, [R0,#0x6AC]
55B8EA:  LDR             R0, [SP,#0x190+var_130]
55B8EC:  STR             R6, [SP,#0x190+var_190]
55B8EE:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B8F2:  LDR             R0, [SP,#0x190+var_130]
55B8F4:  MOVS            R2, #1
55B8F6:  MOV             R3, R5
55B8F8:  LDR.W           R1, [R0,#0x6AC]
55B8FC:  LDR             R0, [SP,#0x190+var_130]
55B8FE:  STR.W           R8, [SP,#0x190+var_190]
55B902:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B906:  LDR             R2, [SP,#0x190+var_130]
55B908:  LDR             R0, [R2,#0x14]
55B90A:  VLDR            S0, [R0,#0x28]
55B90E:  VCMPE.F32       S0, #0.0
55B912:  VMRS            APSR_nzcv, FPSCR
55B916:  BLE             loc_55B92A
55B918:  LDRB.W          R1, [R2,#0x48A]
55B91C:  CMP             R1, #0
55B91E:  ITT EQ
55B920:  LDRBEQ.W        R1, [R2,#0x48B]
55B924:  CMPEQ           R1, #0
55B926:  BEQ.W           loc_55BA92
55B92A:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x55B930)
55B92C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
55B92E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
55B930:  LDR             R1, [R0]; y
55B932:  MOV             R0, #0x3F733333; x
55B93A:  BLX             powf
55B93E:  VMOV.F32        S0, #1.0
55B942:  LDR             R4, [SP,#0x190+var_130]
55B944:  VMOV            S2, R0
55B948:  ADD.W           R0, R4, #0x960
55B94C:  LDR.W           R1, [R4,#0x660]
55B950:  VLDR            S4, [R0]
55B954:  VSUB.F32        S0, S0, S2
55B958:  VMUL.F32        S2, S2, S4
55B95C:  VMUL.F32        S0, S18, S0
55B960:  VADD.F32        S0, S2, S0
55B964:  VMOV            R3, S0
55B968:  VSTR            S0, [R0]
55B96C:  MOV             R0, R4
55B96E:  MOVS            R2, #1
55B970:  STR             R6, [SP,#0x190+var_190]
55B972:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B976:  B               loc_55B70A
55B978:  LDR.W           R1, [R4,#0x6B0]
55B97C:  EOR.W           R3, R5, #0x80000000
55B980:  MOV             R0, R4
55B982:  MOVS            R2, #0
55B984:  STR             R6, [SP,#0x190+var_190]
55B986:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
55B98A:  LDR             R4, [SP,#0x190+var_130]
55B98C:  LDRH.W          R0, [R4,#0x6C0]
55B990:  CMP             R0, #0x15
55B992:  BNE.W           loc_55B70A
55B996:  LDR.W           R0, [R4,#0x6B0]
55B99A:  ADD             R5, SP, #0x190+var_B0
55B99C:  MOVS            R2, #0
55B99E:  ADD.W           R1, R0, #0x10
55B9A2:  MOV             R0, R5
55B9A4:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55B9A8:  LDR             R0, [SP,#0x190+var_130]
55B9AA:  VLDR            S2, [SP,#0x190+var_8C]
55B9AE:  ADD.W           R0, R0, #0x6C8
55B9B2:  VLDR            S0, [SP,#0x190+var_90]
55B9B6:  VLDR            S4, [R0]
55B9BA:  LDR             R0, [SP,#0x190+var_130]
55B9BC:  VADD.F32        S2, S4, S2
55B9C0:  ADDW            R0, R0, #0x6CC
55B9C4:  VSTR            S2, [SP,#0x190+var_8C]
55B9C8:  VLDR            S2, [R0]
55B9CC:  VADD.F32        S0, S2, S0
55B9D0:  VSTR            S0, [SP,#0x190+var_90]
55B9D4:  MOV             R0, R5; this
55B9D6:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55B9DA:  B               loc_55B708
55B9DC:  LDR             R0, =(TheCamera_ptr - 0x55B9E2)
55B9DE:  ADD             R0, PC; TheCamera_ptr
55B9E0:  LDR             R0, [R0]; TheCamera
55B9E2:  LDR             R5, [R0,#(dword_951FB8 - 0x951FA8)]
55B9E4:  MOV             R0, R5; x
55B9E6:  BLX             sinf
55B9EA:  MOV             R8, R0
55B9EC:  MOV             R0, R5; x
55B9EE:  BLX             cosf
55B9F2:  VMOV            S4, R0
55B9F6:  EOR.W           R0, R8, #0x80000000
55B9FA:  LDR             R4, [SP,#0x190+var_130]
55B9FC:  VLDR            S0, =0.0
55BA00:  VMOV            S2, R0
55BA04:  VLDR            S6, [R6,#0x10]
55BA08:  VLDR            S8, [R6,#0x14]
55BA0C:  VMUL.F32        S2, S2, S6
55BA10:  VLDR            S10, [R6,#0x18]
55BA14:  VMUL.F32        S4, S4, S8
55BA18:  VMUL.F32        S0, S0, S10
55BA1C:  VADD.F32        S2, S2, S4
55BA20:  VADD.F32        S0, S2, S0
55BA24:  VCMPE.F32       S0, #0.0
55BA28:  VMRS            APSR_nzcv, FPSCR
55BA2C:  BGE.W           loc_55A986; jumptable 0055A430 cases 408-415,417-419,421-426,428-437
55BA30:  LDR             R0, =(TheCamera_ptr - 0x55BA3E)
55BA32:  MOVS            R2, #0
55BA34:  VLDR            S0, =150.0
55BA38:  MOVS            R1, #0
55BA3A:  ADD             R0, PC; TheCamera_ptr
55BA3C:  MOVT            R2, #0x4170
55BA40:  MOVS            R3, #0; unsigned __int8
55BA42:  LDR             R0, [R0]; TheCamera
55BA44:  VLDR            S2, [R0,#0xEC]
55BA48:  MOVS            R0, #1
55BA4A:  STRD.W          R1, R2, [SP,#0x190+var_15C]; float
55BA4E:  MOVS            R2, #0xFF
55BA50:  VMUL.F32        S0, S2, S0
55BA54:  STRD.W          R1, R0, [SP,#0x190+var_154]; float
55BA58:  MOV.W           R0, #0x3FC00000
55BA5C:  STRD.W          R1, R1, [SP,#0x190+var_17C]; float
55BA60:  STRD.W          R1, R1, [SP,#0x190+var_174]; unsigned __int8
55BA64:  STRD.W          R1, R1, [SP,#0x190+var_16C]; unsigned __int8
55BA68:  STRD.W          R1, R0, [SP,#0x190+var_164]; float
55BA6C:  MOV             R0, #0x3ECCCCCD
55BA74:  STRD.W          R2, R2, [SP,#0x190+var_190]; unsigned __int8
55BA78:  ADD             R1, SP, #0x190+var_B0
55BA7A:  STRD.W          R1, R0, [SP,#0x190+var_188]; unsigned __int8
55BA7E:  ADD.W           R0, R4, #0x15; this
55BA82:  MOV             R1, R4; unsigned int
55BA84:  MOVS            R2, #0; CEntity *
55BA86:  VSTR            S0, [SP,#0x190+var_180]
55BA8A:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
55BA8E:  B.W             loc_55A65A
55BA92:  LDR             R0, [R0,#8]; x
55BA94:  BLX             asinf
55BA98:  VLDR            S18, =0.5236
55BA9C:  VMOV            S0, R0
55BAA0:  VCMPE.F32       S0, S18
55BAA4:  VMRS            APSR_nzcv, FPSCR
55BAA8:  BGT.W           loc_55B92A
55BAAC:  VLDR            S2, =-0.5236
55BAB0:  VMOV.F32        S18, S0
55BAB4:  VCMPE.F32       S0, S2
55BAB8:  VMRS            APSR_nzcv, FPSCR
55BABC:  IT LT
55BABE:  VMOVLT.F32      S18, S2
55BAC2:  B               loc_55B92A
