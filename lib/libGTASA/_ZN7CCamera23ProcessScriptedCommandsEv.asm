; =========================================================
; Game Engine Function: _ZN7CCamera23ProcessScriptedCommandsEv
; Address            : 0x3DE08C - 0x3DE37A
; =========================================================

3DE08C:  PUSH            {R4,R6,R7,LR}
3DE08E:  ADD             R7, SP, #8
3DE090:  VPUSH           {D8-D9}
3DE094:  MOV             R4, R0
3DE096:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DE09C)
3DE098:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DE09A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3DE09C:  VLDR            S0, [R0]
3DE0A0:  ADDW            R0, R4, #0xC48
3DE0A4:  VCVT.F32.U32    S16, S0
3DE0A8:  VLDR            S0, [R0]
3DE0AC:  VCMPE.F32       S0, S16
3DE0B0:  VMRS            APSR_nzcv, FPSCR
3DE0B4:  BGE             loc_3DE0C6
3DE0B6:  LDRB.W          R0, [R4,#0xC76]
3DE0BA:  CMP             R0, #0
3DE0BC:  ITT NE
3DE0BE:  MOVNE           R0, #1
3DE0C0:  STRBNE.W        R0, [R4,#0xC74]
3DE0C4:  B               loc_3DE1BA
3DE0C6:  ADDW            R0, R4, #0xC44
3DE0CA:  ADDW            R1, R4, #0xC4C
3DE0CE:  VLDR            S2, [R0]
3DE0D2:  LDRB.W          R0, [R4,#0xC64]
3DE0D6:  VSUB.F32        S0, S0, S2
3DE0DA:  VLDR            S18, [R1]
3DE0DE:  VSUB.F32        S2, S16, S2
3DE0E2:  MOVS            R1, #1
3DE0E4:  CMP             R0, #0
3DE0E6:  STRB.W          R1, [R4,#0xC74]
3DE0EA:  VDIV.F32        S0, S2, S0
3DE0EE:  BEQ             loc_3DE152
3DE0F0:  VLDR            S2, =180.0
3DE0F4:  VLDR            S4, =270.0
3DE0F8:  VMUL.F32        S0, S0, S2
3DE0FC:  VSUB.F32        S0, S4, S0
3DE100:  VLDR            S4, =3.1416
3DE104:  VMUL.F32        S0, S0, S4
3DE108:  VDIV.F32        S0, S0, S2
3DE10C:  VMOV            R0, S0; x
3DE110:  BLX             sinf
3DE114:  VMOV.F32        S0, #1.0
3DE118:  VMOV            S2, R0
3DE11C:  ADDW            R0, R4, #0xC58
3DE120:  VMOV.F32        S4, #0.5
3DE124:  VADD.F32        S0, S2, S0
3DE128:  VLDR            S2, [R0]
3DE12C:  ADD.W           R0, R4, #0xC50
3DE130:  VSUB.F32        S6, S2, S18
3DE134:  VLDR            S2, [R0]
3DE138:  ADDW            R0, R4, #0xC5C
3DE13C:  VMUL.F32        S4, S0, S4
3DE140:  VLDR            S0, [R0]
3DE144:  VSUB.F32        S0, S0, S2
3DE148:  VMUL.F32        S6, S4, S6
3DE14C:  VMOV.F32        S8, S4
3DE150:  B               loc_3DE17A
3DE152:  ADDW            R0, R4, #0xC58
3DE156:  VMOV.F32        S8, S0
3DE15A:  VLDR            S2, [R0]
3DE15E:  ADD.W           R0, R4, #0xC50
3DE162:  VSUB.F32        S6, S2, S18
3DE166:  VLDR            S2, [R0]
3DE16A:  ADDW            R0, R4, #0xC5C
3DE16E:  VLDR            S4, [R0]
3DE172:  VSUB.F32        S4, S4, S2
3DE176:  VMUL.F32        S6, S0, S6
3DE17A:  ADDW            R0, R4, #0xC54
3DE17E:  VMUL.F32        S0, S0, S4
3DE182:  VADD.F32        S6, S18, S6
3DE186:  VLDR            S10, [R0]
3DE18A:  ADD.W           R0, R4, #0xC60
3DE18E:  VLDR            S12, [R0]
3DE192:  ADDW            R0, R4, #0xC68
3DE196:  VSUB.F32        S12, S12, S10
3DE19A:  VADD.F32        S0, S2, S0
3DE19E:  VSTR            S6, [R0]
3DE1A2:  ADDW            R0, R4, #0xC6C
3DE1A6:  VMUL.F32        S4, S8, S12
3DE1AA:  VSTR            S0, [R0]
3DE1AE:  ADD.W           R0, R4, #0xC70
3DE1B2:  VADD.F32        S2, S10, S4
3DE1B6:  VSTR            S2, [R0]
3DE1BA:  ADDW            R0, R4, #0xBE8
3DE1BE:  VLDR            S0, [R0]
3DE1C2:  VCMPE.F32       S0, S16
3DE1C6:  VMRS            APSR_nzcv, FPSCR
3DE1CA:  BGE             loc_3DE1DC
3DE1CC:  LDRB.W          R0, [R4,#0xC77]
3DE1D0:  CMP             R0, #0
3DE1D2:  ITT NE
3DE1D4:  MOVNE           R0, #1
3DE1D6:  STRBNE.W        R0, [R4,#0xC14]
3DE1DA:  B               loc_3DE2D0
3DE1DC:  ADDW            R0, R4, #0xBE4
3DE1E0:  ADDW            R1, R4, #0xBEC
3DE1E4:  VLDR            S2, [R0]
3DE1E8:  LDRB.W          R0, [R4,#0xC04]
3DE1EC:  VSUB.F32        S0, S0, S2
3DE1F0:  VLDR            S18, [R1]
3DE1F4:  VSUB.F32        S2, S16, S2
3DE1F8:  MOVS            R1, #1
3DE1FA:  CMP             R0, #0
3DE1FC:  STRB.W          R1, [R4,#0xC14]
3DE200:  VDIV.F32        S0, S2, S0
3DE204:  BEQ             loc_3DE268
3DE206:  VLDR            S2, =180.0
3DE20A:  VLDR            S4, =270.0
3DE20E:  VMUL.F32        S0, S0, S2
3DE212:  VSUB.F32        S0, S4, S0
3DE216:  VLDR            S4, =3.1416
3DE21A:  VMUL.F32        S0, S0, S4
3DE21E:  VDIV.F32        S0, S0, S2
3DE222:  VMOV            R0, S0; x
3DE226:  BLX             sinf
3DE22A:  VMOV.F32        S0, #1.0
3DE22E:  VMOV            S2, R0
3DE232:  ADDW            R0, R4, #0xBF8
3DE236:  VMOV.F32        S4, #0.5
3DE23A:  VADD.F32        S0, S2, S0
3DE23E:  VLDR            S2, [R0]
3DE242:  ADD.W           R0, R4, #0xBF0
3DE246:  VSUB.F32        S6, S2, S18
3DE24A:  VLDR            S2, [R0]
3DE24E:  ADDW            R0, R4, #0xBFC
3DE252:  VMUL.F32        S4, S0, S4
3DE256:  VLDR            S0, [R0]
3DE25A:  VSUB.F32        S0, S0, S2
3DE25E:  VMUL.F32        S6, S4, S6
3DE262:  VMOV.F32        S8, S4
3DE266:  B               loc_3DE290
3DE268:  ADDW            R0, R4, #0xBF8
3DE26C:  VMOV.F32        S8, S0
3DE270:  VLDR            S2, [R0]
3DE274:  ADD.W           R0, R4, #0xBF0
3DE278:  VSUB.F32        S6, S2, S18
3DE27C:  VLDR            S2, [R0]
3DE280:  ADDW            R0, R4, #0xBFC
3DE284:  VLDR            S4, [R0]
3DE288:  VSUB.F32        S4, S4, S2
3DE28C:  VMUL.F32        S6, S0, S6
3DE290:  ADDW            R0, R4, #0xBF4
3DE294:  VMUL.F32        S0, S0, S4
3DE298:  VADD.F32        S6, S18, S6
3DE29C:  VLDR            S10, [R0]
3DE2A0:  ADD.W           R0, R4, #0xC00
3DE2A4:  VLDR            S12, [R0]
3DE2A8:  ADDW            R0, R4, #0xC08
3DE2AC:  VSUB.F32        S12, S12, S10
3DE2B0:  VADD.F32        S0, S2, S0
3DE2B4:  VSTR            S6, [R0]
3DE2B8:  ADDW            R0, R4, #0xC0C
3DE2BC:  VMUL.F32        S4, S8, S12
3DE2C0:  VSTR            S0, [R0]
3DE2C4:  ADD.W           R0, R4, #0xC10
3DE2C8:  VADD.F32        S2, S10, S4
3DE2CC:  VSTR            S2, [R0]
3DE2D0:  ADD.W           R0, R4, #0xC30
3DE2D4:  VLDR            S0, [R0]
3DE2D8:  VCMPE.F32       S0, S16
3DE2DC:  VMRS            APSR_nzcv, FPSCR
3DE2E0:  BGE             loc_3DE2F6
3DE2E2:  LDRB.W          R0, [R4,#0xC75]
3DE2E6:  CMP             R0, #0
3DE2E8:  ITT NE
3DE2EA:  MOVNE           R0, #1
3DE2EC:  STRBNE.W        R0, [R4,#0xC3D]
3DE2F0:  VPOP            {D8-D9}
3DE2F4:  POP             {R4,R6,R7,PC}
3DE2F6:  ADDW            R0, R4, #0xC2C
3DE2FA:  ADDW            R1, R4, #0xC34
3DE2FE:  VLDR            S2, [R0]
3DE302:  LDRB.W          R0, [R4,#0xC3C]
3DE306:  VSUB.F32        S0, S0, S2
3DE30A:  VSUB.F32        S2, S16, S2
3DE30E:  VLDR            S16, [R1]
3DE312:  MOVS            R1, #1
3DE314:  CMP             R0, #0
3DE316:  STRB.W          R1, [R4,#0xC3D]
3DE31A:  VDIV.F32        S0, S2, S0
3DE31E:  BEQ             loc_3DE358
3DE320:  VLDR            S2, =180.0
3DE324:  VLDR            S4, =270.0
3DE328:  VMUL.F32        S0, S0, S2
3DE32C:  VSUB.F32        S0, S4, S0
3DE330:  VLDR            S4, =3.1416
3DE334:  VMUL.F32        S0, S0, S4
3DE338:  VDIV.F32        S0, S0, S2
3DE33C:  VMOV            R0, S0; x
3DE340:  BLX             sinf
3DE344:  VMOV.F32        S0, #1.0
3DE348:  VMOV            S2, R0
3DE34C:  VMOV.F32        S4, #0.5
3DE350:  VADD.F32        S0, S2, S0
3DE354:  VMUL.F32        S0, S0, S4
3DE358:  ADDW            R0, R4, #0xC38
3DE35C:  VLDR            S2, [R0]
3DE360:  ADD.W           R0, R4, #0xC40
3DE364:  VSUB.F32        S2, S2, S16
3DE368:  VMUL.F32        S0, S0, S2
3DE36C:  VADD.F32        S0, S16, S0
3DE370:  VSTR            S0, [R0]
3DE374:  VPOP            {D8-D9}
3DE378:  POP             {R4,R6,R7,PC}
