; =========================================================
; Game Engine Function: _ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities
; Address            : 0x41BE84 - 0x41C300
; =========================================================

41BE84:  CMP             R0, #0xF; switch 16 cases
41BE86:  BHI.W           def_41BE8A; jumptable 0041BE8A default case
41BE8A:  TBH.W           [PC,R0,LSL#1]; switch jump
41BE8E:  DCW 0x10; jump table for switch statement
41BE90:  DCW 0x32
41BE92:  DCW 0x5F
41BE94:  DCW 0x88
41BE96:  DCW 0xB1
41BE98:  DCW 0xD3
41BE9A:  DCW 0x1DD
41BE9C:  DCW 0x114
41BE9E:  DCW 0x217
41BEA0:  DCW 0x124
41BEA2:  DCW 0x234
41BEA4:  DCW 0x134
41BEA6:  DCW 0x142
41BEA8:  DCW 0x150
41BEAA:  DCW 0x168
41BEAC:  DCW 0x196
41BEAE:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41BEBA); jumptable 0041BE8A case 0
41BEB2:  VLDR            S0, =800.0
41BEB6:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41BEB8:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41BEBA:  VLDR            S2, [R0,#0x54]
41BEBE:  VCMPE.F32       S2, S0
41BEC2:  VMRS            APSR_nzcv, FPSCR
41BEC6:  ITTT GT
41BEC8:  VMOVGT.F32      S0, #2.0
41BECC:  VMOVGT          R0, S0
41BED0:  BXGT            LR
41BED2:  VLDR            S4, =400.0
41BED6:  VMOV.F32        S6, #1.0
41BEDA:  VLDR            S0, =0.0
41BEDE:  VCMPE.F32       S2, S4
41BEE2:  VMRS            APSR_nzcv, FPSCR
41BEE6:  IT GT
41BEE8:  VMOVGT.F32      S0, S6
41BEEC:  VMOV            R0, S0
41BEF0:  BX              LR
41BEF2:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41BEFE); jumptable 0041BE8A case 1
41BEF6:  VLDR            S6, =-200.0
41BEFA:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41BEFC:  VLDR            S0, =-50.0
41BF00:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41BF02:  VLDR            S2, [R0,#0x54]
41BF06:  VLDR            S4, [R0,#0x5C]
41BF0A:  VADD.F32        S2, S2, S6
41BF0E:  VLDR            S6, =800.0
41BF12:  VADD.F32        S0, S4, S0
41BF16:  VLDR            S4, =0.2
41BF1A:  VDIV.F32        S2, S2, S6
41BF1E:  VMUL.F32        S0, S0, S4
41BF22:  VLDR            S4, =950.0
41BF26:  VLDR            S6, =-0.4
41BF2A:  VDIV.F32        S0, S0, S4
41BF2E:  VLDR            S4, =0.0
41BF32:  VMAX.F32        D1, D1, D2
41BF36:  VMOV.F32        S4, #1.0
41BF3A:  VMUL.F32        S2, S2, S6
41BF3E:  VADD.F32        S2, S2, S4
41BF42:  VADD.F32        S0, S0, S2
41BF46:  VLDR            S2, =0.7
41BF4A:  B               loc_41C208
41BF4C:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41BF58); jumptable 0041BE8A case 2
41BF50:  VLDR            S6, =-200.0
41BF54:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41BF56:  VLDR            S0, =-50.0
41BF5A:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41BF5C:  VLDR            S2, [R0,#0x54]
41BF60:  VLDR            S4, [R0,#0x5C]
41BF64:  VADD.F32        S2, S2, S6
41BF68:  VLDR            S6, =800.0
41BF6C:  VADD.F32        S0, S4, S0
41BF70:  VLDR            S4, =-0.1
41BF74:  VDIV.F32        S2, S2, S6
41BF78:  VMUL.F32        S0, S0, S4
41BF7C:  VLDR            S4, =950.0
41BF80:  VLDR            S6, =-0.2
41BF84:  VDIV.F32        S0, S0, S4
41BF88:  VLDR            S4, =0.0
41BF8C:  VMAX.F32        D1, D1, D2
41BF90:  VMOV.F32        S4, #1.0
41BF94:  VMUL.F32        S2, S2, S6
41BF98:  VADD.F32        S2, S2, S4
41BF9C:  B               loc_41BFE6
41BF9E:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41BFAA); jumptable 0041BE8A case 3
41BFA2:  VLDR            S0, =-200.0
41BFA6:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41BFA8:  VLDR            S6, =-0.2
41BFAC:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41BFAE:  VLDR            S2, [R0,#0x54]
41BFB2:  VLDR            S4, [R0,#0x5C]
41BFB6:  VADD.F32        S0, S2, S0
41BFBA:  VLDR            S2, =-50.0
41BFBE:  VADD.F32        S2, S4, S2
41BFC2:  VLDR            S4, =-0.1
41BFC6:  VMUL.F32        S0, S0, S6
41BFCA:  VLDR            S6, =800.0
41BFCE:  VMUL.F32        S2, S2, S4
41BFD2:  VLDR            S4, =950.0
41BFD6:  VDIV.F32        S0, S0, S6
41BFDA:  VDIV.F32        S2, S2, S4
41BFDE:  VMOV.F32        S4, #1.0
41BFE2:  VADD.F32        S0, S0, S4
41BFE6:  VADD.F32        S0, S0, S2
41BFEA:  VLDR            S2, =0.8
41BFEE:  B               loc_41C208
41BFF0:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41BFFE); jumptable 0041BE8A case 4
41BFF2:  VMOV.F32        S6, #0.5
41BFF6:  VLDR            S0, =-200.0
41BFFA:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41BFFC:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41BFFE:  VLDR            S2, [R0,#0x54]
41C002:  VLDR            S4, [R0,#0x5C]
41C006:  VADD.F32        S0, S2, S0
41C00A:  VLDR            S2, =-50.0
41C00E:  VADD.F32        S2, S4, S2
41C012:  VLDR            S4, =950.0
41C016:  VMUL.F32        S0, S0, S6
41C01A:  VLDR            S6, =800.0
41C01E:  VDIV.F32        S4, S2, S4
41C022:  VDIV.F32        S0, S0, S6
41C026:  VMOV.F32        S2, #1.0
41C02A:  VADD.F32        S0, S0, S2
41C02E:  VMOV.F32        S2, #2.0
41C032:  B               loc_41C1A2
41C034:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41C042); jumptable 0041BE8A case 5
41C036:  VMOV.F32        S10, #0.5
41C03A:  VLDR            S0, =-200.0
41C03E:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41C040:  VLDR            S8, =-800.0
41C044:  VLDR            S12, =1000.0
41C048:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41C04A:  VLDR            S14, =950.0
41C04E:  VLDR            S2, [R0,#0x54]
41C052:  VLDR            S6, [R0,#0x5C]
41C056:  VADD.F32        S0, S2, S0
41C05A:  VLDR            S2, =-50.0
41C05E:  VLDR            S4, [R0,#0x58]
41C062:  VADD.F32        S2, S6, S2
41C066:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41C070)
41C068:  VDIV.F32        S4, S4, S12
41C06C:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41C06E:  LDR             R0, [R0]; CStats::StatTypesInt ...
41C070:  VMUL.F32        S2, S2, S10
41C074:  VDIV.F32        S0, S0, S8
41C078:  VDIV.F32        S2, S2, S14
41C07C:  VLDR            S8, [R0,#0x1B8]
41C080:  VMOV.F32        S6, #1.0
41C084:  VMUL.F32        S4, S4, S10
41C088:  VCVT.F32.S32    S8, S8
41C08C:  VADD.F32        S0, S0, S6
41C090:  VDIV.F32        S6, S8, S12
41C094:  VADD.F32        S0, S0, S2
41C098:  VADD.F32        S2, S4, S0
41C09C:  VMOV.F32        S0, #2.0
41C0A0:  VADD.F32        S2, S6, S2
41C0A4:  VCMPE.F32       S2, S0
41C0A8:  VMRS            APSR_nzcv, FPSCR
41C0AC:  BGT.W           loc_41C2B6
41C0B0:  VMOV.F32        S4, #0.25
41C0B4:  B               loc_41C29E
41C0B6:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41C0C0); jumptable 0041BE8A case 7
41C0B8:  VLDR            S0, =1000.0
41C0BC:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41C0BE:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41C0C0:  VLDR            S2, [R0,#0x58]
41C0C4:  VDIV.F32        S0, S2, S0
41C0C8:  VLDR            S2, =3000.0
41C0CC:  VMUL.F32        S0, S0, S2
41C0D0:  VLDR            S2, =150.0
41C0D4:  B               loc_41C2EC
41C0D6:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41C0E0); jumptable 0041BE8A case 9
41C0D8:  VLDR            S0, =1000.0
41C0DC:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41C0DE:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41C0E0:  VLDR            S2, [R0,#0x60]
41C0E4:  VDIV.F32        S0, S2, S0
41C0E8:  VLDR            S2, =220.0
41C0EC:  VMUL.F32        S0, S0, S2
41C0F0:  VMOV            R0, S0
41C0F4:  BX              LR
41C0F6:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41C100); jumptable 0041BE8A case 11
41C0F8:  VLDR            S2, =1000.0
41C0FC:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41C0FE:  LDR             R0, [R0]; CStats::StatTypesInt ...
41C100:  VLDR            S0, [R0,#0x1B4]
41C104:  VCVT.F32.S32    S0, S0
41C108:  VDIV.F32        S0, S0, S2
41C10C:  VMOV.F32        S2, #0.5
41C110:  B               loc_41C148
41C112:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41C11C); jumptable 0041BE8A case 12
41C114:  VLDR            S2, =1000.0
41C118:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41C11A:  LDR             R0, [R0]; CStats::StatTypesInt ...
41C11C:  VLDR            S0, [R0,#0x1B4]
41C120:  VCVT.F32.S32    S0, S0
41C124:  VDIV.F32        S0, S0, S2
41C128:  VLDR            S2, =0.3
41C12C:  B               loc_41C148
41C12E:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41C138); jumptable 0041BE8A case 13
41C130:  VLDR            S2, =1000.0
41C134:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41C136:  LDR             R0, [R0]; CStats::StatTypesInt ...
41C138:  VLDR            S0, [R0,#0x1B4]
41C13C:  VCVT.F32.S32    S0, S0
41C140:  VDIV.F32        S0, S0, S2
41C144:  VMOV.F32        S2, #0.25
41C148:  VMOV.F32        S4, #1.0
41C14C:  VMIN.F32        D0, D0, D2
41C150:  VMUL.F32        S0, S0, S2
41C154:  VADD.F32        S0, S0, S4
41C158:  VMOV            R0, S0
41C15C:  BX              LR
41C15E:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41C16A); jumptable 0041BE8A case 14
41C160:  VMOV.F32        S6, #0.5
41C164:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41C170)
41C166:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41C168:  VLDR            S0, =-200.0
41C16C:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
41C16E:  VLDR            S8, =800.0
41C172:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41C174:  LDR             R1, [R1]; CStats::StatTypesInt ...
41C176:  VLDR            S2, [R0,#0x54]
41C17A:  VLDR            S4, [R1,#0xA0]
41C17E:  VADD.F32        S0, S2, S0
41C182:  VCVT.F32.S32    S2, S4
41C186:  VLDR            S4, =1000.0
41C18A:  VMUL.F32        S0, S0, S6
41C18E:  VDIV.F32        S4, S2, S4
41C192:  VMOV.F32        S2, #1.0
41C196:  VMUL.F32        S4, S4, S6
41C19A:  VDIV.F32        S0, S0, S8
41C19E:  VADD.F32        S4, S4, S2
41C1A2:  VADD.F32        S0, S4, S0
41C1A6:  VCMPE.F32       S0, S2
41C1AA:  VMRS            APSR_nzcv, FPSCR
41C1AE:  IT GT
41C1B0:  VMOVGT.F32      S0, S2
41C1B4:  VMOV            R0, S0
41C1B8:  BX              LR
41C1BA:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41C1CC); jumptable 0041BE8A case 15
41C1BC:  VMOV.F32        S6, #-0.5
41C1C0:  VLDR            S0, =-200.0
41C1C4:  VMOV.F32        S8, #-0.25
41C1C8:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41C1CA:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41C1CC:  VLDR            S2, [R0,#0x54]
41C1D0:  VLDR            S4, [R0,#0x5C]
41C1D4:  VADD.F32        S0, S2, S0
41C1D8:  VLDR            S2, =-50.0
41C1DC:  VADD.F32        S2, S4, S2
41C1E0:  VLDR            S4, =800.0
41C1E4:  VMUL.F32        S0, S0, S6
41C1E8:  VLDR            S6, =950.0
41C1EC:  VMUL.F32        S2, S2, S8
41C1F0:  VDIV.F32        S0, S0, S4
41C1F4:  VDIV.F32        S4, S2, S6
41C1F8:  VMOV.F32        S2, #1.0
41C1FC:  VADD.F32        S0, S0, S2
41C200:  VMOV.F32        S2, #0.5
41C204:  VADD.F32        S0, S0, S4
41C208:  VCMPE.F32       S0, S2
41C20C:  VMRS            APSR_nzcv, FPSCR
41C210:  BGE             loc_41C2B6
41C212:  VMOV.F32        S0, S2
41C216:  VMOV            R0, S0
41C21A:  BX              LR
41C21C:  VMOV.F32        S0, #1.0; jumptable 0041BE8A default case
41C220:  VMOV            R0, S0
41C224:  BX              LR
41C226:  ALIGN 4
41C228:  DCFS 800.0
41C22C:  DCFS 400.0
41C230:  DCFS 0.0
41C234:  DCFS -200.0
41C238:  DCFS -50.0
41C23C:  DCFS 0.2
41C240:  DCFS 950.0
41C244:  DCFS -0.4
41C248:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41C256); jumptable 0041BE8A case 6
41C24A:  VMOV.F32        S4, #-0.5
41C24E:  VLDR            S0, =-200.0
41C252:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41C254:  VLDR            S6, =1000.0
41C258:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41C25A:  VLDR            S2, [R0,#0x54]
41C25E:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41C268)
41C260:  VADD.F32        S0, S2, S0
41C264:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41C266:  LDR             R0, [R0]; CStats::StatTypesInt ...
41C268:  VLDR            S2, [R0,#0x1B8]
41C26C:  VMUL.F32        S0, S0, S4
41C270:  VLDR            S4, =800.0
41C274:  VCVT.F32.S32    S2, S2
41C278:  VDIV.F32        S0, S0, S4
41C27C:  VDIV.F32        S2, S2, S6
41C280:  VMOV.F32        S4, #1.0
41C284:  VADD.F32        S4, S0, S4
41C288:  VMOV.F32        S0, #2.0
41C28C:  VADD.F32        S2, S2, S4
41C290:  VCMPE.F32       S2, S0
41C294:  VMRS            APSR_nzcv, FPSCR
41C298:  BGT             loc_41C2B6
41C29A:  VMOV.F32        S4, #0.5
41C29E:  VMOV.F32        S0, S2
41C2A2:  VCMPE.F32       S2, S4
41C2A6:  VMRS            APSR_nzcv, FPSCR
41C2AA:  ITTT LT
41C2AC:  VMOVLT.F32      S0, S4
41C2B0:  VMOVLT          R0, S0
41C2B4:  BXLT            LR
41C2B6:  VMOV            R0, S0
41C2BA:  BX              LR
41C2BC:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41C2C4); jumptable 0041BE8A case 8
41C2BE:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41C2C6)
41C2C0:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41C2C2:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
41C2C4:  LDR             R0, [R0]; CStats::StatTypesInt ...
41C2C6:  VLDR            S0, [R0,#0x1A4]
41C2CA:  LDR             R0, [R1]; CStats::StatTypesFloat ...
41C2CC:  VCVT.F32.S32    S0, S0
41C2D0:  VLDR            S2, [R0,#0x58]
41C2D4:  VADD.F32        S0, S2, S0
41C2D8:  VLDR            S2, =2000.0
41C2DC:  VDIV.F32        S0, S0, S2
41C2E0:  VLDR            S2, =3000.0
41C2E4:  VMUL.F32        S0, S0, S2
41C2E8:  VLDR            S2, =1000.0
41C2EC:  VADD.F32        S0, S0, S2
41C2F0:  VMOV            R0, S0
41C2F4:  BX              LR
41C2F6:  VLDR            S0, =220.0; jumptable 0041BE8A case 10
41C2FA:  VMOV            R0, S0
41C2FE:  BX              LR
