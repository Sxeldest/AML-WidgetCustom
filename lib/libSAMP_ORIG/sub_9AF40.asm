; =========================================================
; Game Engine Function: sub_9AF40
; Address            : 0x9AF40 - 0x9B38E
; =========================================================

9AF40:  PUSH            {R4-R7,LR}
9AF42:  ADD             R7, SP, #0xC
9AF44:  PUSH.W          {R11}
9AF48:  LDR             R4, =(dword_1ACF68 - 0x9AF52)
9AF4A:  MOVW            R5, #0x19AC
9AF4E:  ADD             R4, PC; dword_1ACF68
9AF50:  LDR             R4, [R4]
9AF52:  ADD.W           LR, R4, R5
9AF56:  LDR             R6, [R4,R5]
9AF58:  LDR.W           R12, [LR,#0x160]
9AF5C:  LDR.W           R4, [R6,#0x130]
9AF60:  CMP             R12, R4
9AF62:  BNE             loc_9B028
9AF64:  VMOV            S12, R3
9AF68:  LDR.W           R3, [R6,#0x2F8]
9AF6C:  VMOV            S10, R2
9AF70:  LDR.W           R2, [LR,#0x108]
9AF74:  VMOV            S8, R1
9AF78:  LDR.W           R1, [LR,#0x144]
9AF7C:  VLDR            S1, [R7,#arg_0]
9AF80:  CMP             R3, R2
9AF82:  ADD.W           R1, R1, #1
9AF86:  STR.W           R1, [LR,#0x144]
9AF8A:  BEQ             loc_9AFEE
9AF8C:  VMOV.F32        S0, S1
9AF90:  VMOV.F32        S2, S12
9AF94:  VMOV.F32        S6, S10
9AF98:  VMOV.F32        S4, S8
9AF9C:  LDR.W           R1, [LR,#0x198]
9AFA0:  CMP             R1, #1
9AFA2:  BHI             loc_9B032
9AFA4:  VLDR            S14, [R6,#0x21C]
9AFA8:  VMOV.F32        S8, S0
9AFAC:  VLDR            S12, [R6,#0x214]
9AFB0:  VMOV.F32        S10, S6
9AFB4:  VCMP.F32        S0, S14
9AFB8:  VMRS            APSR_nzcv, FPSCR
9AFBC:  VCMP.F32        S6, S14
9AFC0:  IT GT
9AFC2:  VMOVGT.F32      S8, S14
9AFC6:  VMRS            APSR_nzcv, FPSCR
9AFCA:  VCMP.F32        S0, S12
9AFCE:  IT GT
9AFD0:  VMOVGT.F32      S10, S14
9AFD4:  VMRS            APSR_nzcv, FPSCR
9AFD8:  VCMP.F32        S6, S12
9AFDC:  IT MI
9AFDE:  VMOVMI.F32      S8, S12
9AFE2:  VMRS            APSR_nzcv, FPSCR
9AFE6:  IT MI
9AFE8:  VMOVMI.F32      S10, S12
9AFEC:  B               loc_9B08A
9AFEE:  VLDR            S14, [R6,#0x210]
9AFF2:  VCMP.F32        S14, S8
9AFF6:  VMRS            APSR_nzcv, FPSCR
9AFFA:  BHI             loc_9B028
9AFFC:  VLDR            S3, [R6,#0x214]
9B000:  VCMP.F32        S3, S10
9B004:  VMRS            APSR_nzcv, FPSCR
9B008:  BHI             loc_9B028
9B00A:  VLDR            S5, [R6,#0x218]
9B00E:  VCMP.F32        S5, S12
9B012:  VMRS            APSR_nzcv, FPSCR
9B016:  BLT             loc_9B028
9B018:  VLDR            S4, [R6,#0x21C]
9B01C:  VCMP.F32        S4, S1
9B020:  VMRS            APSR_nzcv, FPSCR
9B024:  BGE.W           loc_9B30C
9B028:  MOVS            R1, #0
9B02A:  MOV             R0, R1
9B02C:  POP.W           {R11}
9B030:  POP             {R4-R7,PC}
9B032:  VLDR            S10, [R6,#0x218]
9B036:  VMOV.F32        S12, S2
9B03A:  VLDR            S8, [R6,#0x210]
9B03E:  VMOV.F32        S14, S4
9B042:  VCMP.F32        S2, S10
9B046:  VMRS            APSR_nzcv, FPSCR
9B04A:  VCMP.F32        S4, S10
9B04E:  IT GT
9B050:  VMOVGT.F32      S12, S10
9B054:  VMRS            APSR_nzcv, FPSCR
9B058:  VCMP.F32        S2, S8
9B05C:  IT GT
9B05E:  VMOVGT.F32      S14, S10
9B062:  VMRS            APSR_nzcv, FPSCR
9B066:  VCMP.F32        S4, S8
9B06A:  IT MI
9B06C:  VMOVMI.F32      S12, S8
9B070:  VMRS            APSR_nzcv, FPSCR
9B074:  IT MI
9B076:  VMOVMI.F32      S14, S8
9B07A:  VMOV.F32        S8, S0
9B07E:  VMOV.F32        S2, S12
9B082:  VMOV.F32        S10, S6
9B086:  VMOV.F32        S4, S14
9B08A:  VLDR            S12, [LR,#0x134]
9B08E:  VLDR            S14, [LR,#0x13C]
9B092:  VCMP.F32        S2, S12
9B096:  VMRS            APSR_nzcv, FPSCR
9B09A:  BPL             loc_9B0A2
9B09C:  VSUB.F32        S0, S2, S12
9B0A0:  B               loc_9B0B4
9B0A2:  VCMP.F32        S14, S4
9B0A6:  VMRS            APSR_nzcv, FPSCR
9B0AA:  ITE MI
9B0AC:  VSUBMI.F32      S0, S4, S14
9B0B0:  VLDRPL          S0, =0.0
9B0B4:  VLDR            S1, [LR,#0x138]
9B0B8:  VSUB.F32        S5, S8, S10
9B0BC:  VLDR            S3, [LR,#0x140]
9B0C0:  VMOV.F32        S11, S10
9B0C4:  VMOV.F32        S13, S1
9B0C8:  VLDR            S7, =0.8
9B0CC:  VSUB.F32        S6, S3, S1
9B0D0:  VLDR            S9, =0.2
9B0D4:  VMLA.F32        S11, S5, S7
9B0D8:  VMLA.F32        S13, S6, S9
9B0DC:  VCMP.F32        S11, S13
9B0E0:  VMRS            APSR_nzcv, FPSCR
9B0E4:  BPL             loc_9B0EC
9B0E6:  VSUB.F32        S6, S11, S13
9B0EA:  B               loc_9B10A
9B0EC:  VMOV.F32        S11, S10
9B0F0:  VMLA.F32        S11, S5, S9
9B0F4:  VMOV.F32        S5, S1
9B0F8:  VMLA.F32        S5, S6, S7
9B0FC:  VCMP.F32        S5, S11
9B100:  VMRS            APSR_nzcv, FPSCR
9B104:  BPL             loc_9B154
9B106:  VSUB.F32        S6, S11, S5
9B10A:  VCMP.F32        S6, #0.0
9B10E:  MOVS            R1, #0
9B110:  VMRS            APSR_nzcv, FPSCR
9B114:  VCMP.F32        S0, #0.0
9B118:  IT NE
9B11A:  MOVNE           R1, #1
9B11C:  VMRS            APSR_nzcv, FPSCR
9B120:  ITT NE
9B122:  VCMPNE.F32      S6, #0.0
9B126:  VMRSNE          APSR_nzcv, FPSCR
9B12A:  BEQ             loc_9B15A
9B12C:  VLDR            S5, =1000.0
9B130:  VCMP.F32        S0, #0.0
9B134:  VMOV.F32        S7, #-1.0
9B138:  VMRS            APSR_nzcv, FPSCR
9B13C:  VDIV.F32        S5, S0, S5
9B140:  MOV.W           R1, #1
9B144:  VMOV.F32        S9, #1.0
9B148:  IT GT
9B14A:  VMOVGT.F32      S7, S9
9B14E:  VADD.F32        S0, S5, S7
9B152:  B               loc_9B15A
9B154:  VLDR            S6, =0.0
9B158:  MOVS            R1, #0
9B15A:  VADD.F32        S1, S1, S3
9B15E:  CMP             R1, #0
9B160:  VADD.F32        S8, S8, S10
9B164:  ITT EQ
9B166:  VCMPEQ.F32      S0, #0.0
9B16A:  VMRSEQ          APSR_nzcv, FPSCR
9B16E:  VADD.F32        S4, S2, S4
9B172:  VADD.F32        S10, S12, S14
9B176:  VABS.F32        S3, S6
9B17A:  VSUB.F32        S2, S8, S1
9B17E:  VABS.F32        S1, S0
9B182:  VSUB.F32        S4, S4, S10
9B186:  VABS.F32        S8, S2
9B18A:  VADD.F32        S12, S3, S1
9B18E:  VABS.F32        S14, S4
9B192:  VADD.F32        S10, S14, S8
9B196:  BEQ             loc_9B1D0
9B198:  VCMP.F32        S0, #0.0
9B19C:  MOVS            R3, #0
9B19E:  VMRS            APSR_nzcv, FPSCR
9B1A2:  MOV.W           R1, #2
9B1A6:  VCMP.F32        S6, #0.0
9B1AA:  IT GT
9B1AC:  MOVGT           R3, #1
9B1AE:  VMRS            APSR_nzcv, FPSCR
9B1B2:  IT GT
9B1B4:  MOVGT           R1, #3
9B1B6:  VCMP.F32        S1, S3
9B1BA:  VMRS            APSR_nzcv, FPSCR
9B1BE:  IT GT
9B1C0:  MOVGT           R1, R3
9B1C2:  VMOV.F32        S4, S0
9B1C6:  VMOV.F32        S2, S6
9B1CA:  VMOV.F32        S8, S12
9B1CE:  B               loc_9B230
9B1D0:  VCMP.F32        S4, #0.0
9B1D4:  VMRS            APSR_nzcv, FPSCR
9B1D8:  ITT EQ
9B1DA:  VCMPEQ.F32      S2, #0.0
9B1DE:  VMRSEQ          APSR_nzcv, FPSCR
9B1E2:  BEQ             loc_9B214
9B1E4:  VCMP.F32        S4, #0.0
9B1E8:  MOVS            R3, #0
9B1EA:  VMRS            APSR_nzcv, FPSCR
9B1EE:  MOV.W           R1, #2
9B1F2:  VCMP.F32        S2, #0.0
9B1F6:  IT GT
9B1F8:  MOVGT           R3, #1
9B1FA:  VMRS            APSR_nzcv, FPSCR
9B1FE:  VCMP.F32        S14, S8
9B202:  IT GT
9B204:  MOVGT           R1, #3
9B206:  VMRS            APSR_nzcv, FPSCR
9B20A:  IT GT
9B20C:  MOVGT           R1, R3
9B20E:  VMOV.F32        S8, S10
9B212:  B               loc_9B230
9B214:  VLDR            S4, =0.0
9B218:  MOVS            R1, #0
9B21A:  LDR.W           R3, [LR,#0x10C]
9B21E:  VMOV.F32        S2, S4
9B222:  LDR.W           R4, [R6,#0x108]
9B226:  VMOV.F32        S8, S4
9B22A:  CMP             R4, R3
9B22C:  IT CS
9B22E:  MOVCS           R1, #1
9B230:  LDR.W           R3, [LR,#0x190]
9B234:  VLDR            S14, [R0,#0xC]
9B238:  CMP             R1, R3
9B23A:  BNE             loc_9B298
9B23C:  VCMP.F32        S12, S14
9B240:  VMRS            APSR_nzcv, FPSCR
9B244:  BPL             loc_9B250
9B246:  VSTR            S12, [R0,#0xC]
9B24A:  VSTR            S10, [R0,#0x10]
9B24E:  B               loc_9B308
9B250:  VCMP.F32        S12, S14
9B254:  VMRS            APSR_nzcv, FPSCR
9B258:  BNE             loc_9B298
9B25A:  VLDR            S12, [R0,#0x10]
9B25E:  VCMP.F32        S10, S12
9B262:  VMRS            APSR_nzcv, FPSCR
9B266:  BPL             loc_9B26E
9B268:  VSTR            S10, [R0,#0x10]
9B26C:  B               loc_9B28E
9B26E:  VCMP.F32        S10, S12
9B272:  VMRS            APSR_nzcv, FPSCR
9B276:  BNE             loc_9B298
9B278:  AND.W           R1, R1, #2
9B27C:  CMP             R1, #2
9B27E:  IT EQ
9B280:  VMOVEQ.F32      S0, S6
9B284:  VCMP.F32        S0, #0.0
9B288:  VMRS            APSR_nzcv, FPSCR
9B28C:  BPL             loc_9B298
9B28E:  MOVS            R1, #1
9B290:  B               loc_9B29A
9B292:  ALIGN 4
9B294:  DCD dword_1ACF68 - 0x9AF52
9B298:  MOVS            R1, #0
9B29A:  VLDR            S0, =3.4028e38
9B29E:  VCMP.F32        S14, S0
9B2A2:  VMRS            APSR_nzcv, FPSCR
9B2A6:  BNE.W           loc_9B02A
9B2AA:  VLDR            S0, [R0,#0x14]
9B2AE:  VCMP.F32        S8, S0
9B2B2:  VMRS            APSR_nzcv, FPSCR
9B2B6:  BPL.W           loc_9B02A
9B2BA:  CMP.W           R12, #1
9B2BE:  BNE.W           loc_9B02A
9B2C2:  LDRB            R2, [R2,#0xB]
9B2C4:  LSLS            R2, R2, #0x1B
9B2C6:  BMI.W           loc_9B02A
9B2CA:  VCMP.F32        S4, #0.0
9B2CE:  VMRS            APSR_nzcv, FPSCR
9B2D2:  BPL             loc_9B2D6
9B2D4:  CBZ             R3, loc_9B304
9B2D6:  VCMP.F32        S4, #0.0
9B2DA:  VMRS            APSR_nzcv, FPSCR
9B2DE:  BLE             loc_9B2E4
9B2E0:  CMP             R3, #1
9B2E2:  BEQ             loc_9B304
9B2E4:  CMP             R3, #2
9B2E6:  BNE             loc_9B2F2
9B2E8:  VCMP.F32        S2, #0.0
9B2EC:  VMRS            APSR_nzcv, FPSCR
9B2F0:  BMI             loc_9B304
9B2F2:  CMP             R3, #3
9B2F4:  BNE.W           loc_9B02A
9B2F8:  VCMP.F32        S2, #0.0
9B2FC:  VMRS            APSR_nzcv, FPSCR
9B300:  BLE.W           loc_9B02A
9B304:  VSTR            S8, [R0,#0x14]
9B308:  MOVS            R1, #1
9B30A:  B               loc_9B02A
9B30C:  VCMP.F32        S4, S1
9B310:  VMRS            APSR_nzcv, FPSCR
9B314:  VMOV.F32        S0, S1
9B318:  VCMP.F32        S5, S12
9B31C:  IT MI
9B31E:  VMOVMI.F32      S0, S4
9B322:  VMRS            APSR_nzcv, FPSCR
9B326:  VMOV.F32        S2, S12
9B32A:  VCMP.F32        S4, S10
9B32E:  IT MI
9B330:  VMOVMI.F32      S2, S5
9B334:  VMRS            APSR_nzcv, FPSCR
9B338:  VMOV.F32        S6, S10
9B33C:  VCMP.F32        S5, S8
9B340:  IT MI
9B342:  VMOVMI.F32      S6, S4
9B346:  VMRS            APSR_nzcv, FPSCR
9B34A:  VMOV.F32        S4, S8
9B34E:  VCMP.F32        S3, S1
9B352:  IT MI
9B354:  VMOVMI.F32      S4, S5
9B358:  VMRS            APSR_nzcv, FPSCR
9B35C:  VCMP.F32        S14, S12
9B360:  IT GT
9B362:  VMOVGT.F32      S0, S3
9B366:  VMRS            APSR_nzcv, FPSCR
9B36A:  VCMP.F32        S3, S10
9B36E:  IT GT
9B370:  VMOVGT.F32      S2, S14
9B374:  VMRS            APSR_nzcv, FPSCR
9B378:  VCMP.F32        S14, S8
9B37C:  IT GT
9B37E:  VMOVGT.F32      S6, S3
9B382:  VMRS            APSR_nzcv, FPSCR
9B386:  IT GT
9B388:  VMOVGT.F32      S4, S14
9B38C:  B               loc_9AF9C
