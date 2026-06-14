; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity13UpdateJetPackEff
; Address            : 0x399FF4 - 0x39A1A4
; =========================================================

399FF4:  PUSH            {R4-R7,LR}
399FF6:  ADD             R7, SP, #0xC
399FF8:  PUSH.W          {R8,R9,R11}
399FFC:  VPUSH           {D8-D10}
39A000:  MOV             R4, R0
39A002:  LDRB.W          R0, [R4,#0x98]
39A006:  CMP             R0, #0
39A008:  ITT NE
39A00A:  LDRNE.W         R0, [R4,#0xA0]
39A00E:  CMPNE           R0, #0
39A010:  BEQ.W           loc_39A19A
39A014:  LDR.W           R5, [R4,#0x9C]
39A018:  CMP             R5, #0
39A01A:  ITT NE
39A01C:  LDRNE.W         R0, [R4,#0xA4]
39A020:  CMPNE           R0, #0
39A022:  BEQ.W           loc_39A19A
39A026:  VMOV.F32        S4, #0.5
39A02A:  VLDR            S2, [R4,#0x84]
39A02E:  VMOV            S0, R1
39A032:  VCMPE.F32       S0, S4
39A036:  VMRS            APSR_nzcv, FPSCR
39A03A:  BLE             loc_39A0AC
39A03C:  VLDR            S0, =0.031
39A040:  VMOV.F32        S6, #15.0
39A044:  VLDR            S12, [R4,#0x90]
39A048:  VMOV.F32        S4, #-15.0
39A04C:  VLDR            S16, =0.71
39A050:  VMOV.F32        S14, #11.0
39A054:  VADD.F32        S0, S12, S0
39A058:  VLDR            S8, [R4,#0x88]
39A05C:  VLDR            S1, =-7.1
39A060:  ADD.W           R6, R4, #0x90
39A064:  VLDR            S10, [R4,#0x8C]
39A068:  ADD.W           R8, R4, #0x8C
39A06C:  VLDR            S3, =0.3
39A070:  VADD.F32        S8, S8, S1
39A074:  VLDR            S12, =-100.0
39A078:  ADD.W           R9, R4, #0x88
39A07C:  VADD.F32        S10, S10, S3
39A080:  VADD.F32        S2, S2, S6
39A084:  VCMPE.F32       S0, S16
39A088:  VMRS            APSR_nzcv, FPSCR
39A08C:  VMAX.F32        D4, D4, D6
39A090:  VMIN.F32        D3, D5, D7
39A094:  VMIN.F32        D9, D1, D2
39A098:  VSTR            S18, [R4,#0x84]
39A09C:  VSTR            S8, [R4,#0x88]
39A0A0:  VSTR            S6, [R4,#0x8C]
39A0A4:  IT LT
39A0A6:  VMOVLT.F32      S16, S0
39A0AA:  B               loc_39A11A
39A0AC:  VMOV.F32        S6, #-5.0
39A0B0:  VLDR            S0, =-0.3
39A0B4:  VMOV.F32        S4, #6.0
39A0B8:  VLDR            S10, [R4,#0x8C]
39A0BC:  VLDR            S8, [R4,#0x88]
39A0C0:  VMOV.F32        S14, #2.0
39A0C4:  VADD.F32        S10, S10, S0
39A0C8:  VLDR            S12, [R4,#0x90]
39A0CC:  VLDR            S1, =-0.031
39A0D0:  VMOV.F32        S20, #-17.0
39A0D4:  VLDR            S16, =0.4
39A0D8:  ADD.W           R6, R4, #0x90
39A0DC:  VADD.F32        S0, S12, S1
39A0E0:  ADD.W           R8, R4, #0x8C
39A0E4:  VADD.F32        S2, S2, S6
39A0E8:  VLDR            S6, =-100.0
39A0EC:  VADD.F32        S4, S8, S4
39A0F0:  ADD.W           R9, R4, #0x88
39A0F4:  VMAX.F32        D5, D5, D7
39A0F8:  VMAX.F32        D9, D1, D3
39A0FC:  VMIN.F32        D1, D2, D10
39A100:  VCMPE.F32       S0, S16
39A104:  VMRS            APSR_nzcv, FPSCR
39A108:  VSTR            S18, [R4,#0x84]
39A10C:  VSTR            S2, [R4,#0x88]
39A110:  VSTR            S10, [R4,#0x8C]
39A114:  BLE             loc_39A11A
39A116:  VMOV.F32        S16, S0
39A11A:  MOV             R0, R2; x
39A11C:  BLX             sinf
39A120:  BIC.W           R0, R0, #0x80000000
39A124:  VLDR            S0, =-0.07
39A128:  VMOV.F32        S4, #1.0
39A12C:  VLDR            S6, =0.0
39A130:  VMOV            S2, R0
39A134:  VSTR            S16, [R6]
39A138:  VADD.F32        S8, S18, S6
39A13C:  MOVW            R1, #0x5C29
39A140:  VMUL.F32        S0, S2, S0
39A144:  MOVT            R1, #0x3F0F
39A148:  VSTR            S8, [R5,#0x14]
39A14C:  VADD.F32        S0, S0, S4
39A150:  LDR.W           R0, [R4,#0x9C]
39A154:  VLDR            S8, =0.2
39A158:  VSTR            S0, [R0,#0x1C]
39A15C:  VLDR            S0, [R9]
39A160:  LDR.W           R0, [R4,#0xA0]
39A164:  VADD.F32        S0, S0, S6
39A168:  VSTR            S0, [R0,#0x14]
39A16C:  VMUL.F32        S0, S2, S8
39A170:  LDR.W           R0, [R4,#0xA0]
39A174:  STR             R1, [R0,#0x1C]
39A176:  VLDR            S2, [R8]
39A17A:  LDR.W           R0, [R4,#0xA4]
39A17E:  VADD.F32        S2, S2, S6
39A182:  VADD.F32        S0, S0, S4
39A186:  VSTR            S2, [R0,#0x14]
39A18A:  VLDR            S2, [R6]
39A18E:  LDR.W           R0, [R4,#0xA4]
39A192:  VMUL.F32        S0, S0, S2
39A196:  VSTR            S0, [R0,#0x1C]
39A19A:  VPOP            {D8-D10}
39A19E:  POP.W           {R8,R9,R11}
39A1A2:  POP             {R4-R7,PC}
