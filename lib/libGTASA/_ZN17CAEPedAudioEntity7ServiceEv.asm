; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity7ServiceEv
; Address            : 0x399AD4 - 0x399D80
; =========================================================

399AD4:  PUSH            {R4-R7,LR}
399AD6:  ADD             R7, SP, #0xC
399AD8:  PUSH.W          {R11}
399ADC:  VPUSH           {D8-D12}
399AE0:  MOV             R4, R0
399AE2:  LDR.W           R0, [R4,#0x94]; this
399AE6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
399AEA:  CMP             R0, #1
399AEC:  BNE             loc_399B10
399AEE:  LDR.W           R1, [R4,#0x94]
399AF2:  LDR.W           R0, [R1,#0x100]
399AF6:  CBZ             R0, loc_399B04
399AF8:  LDRB.W          R0, [R0,#0x3A]
399AFC:  AND.W           R0, R0, #7
399B00:  CMP             R0, #2
399B02:  BEQ             loc_399B1A
399B04:  LDRB.W          R0, [R1,#0x485]
399B08:  LSLS            R0, R0, #0x1F
399B0A:  BNE             loc_399B1A
399B0C:  MOVS            R5, #1
399B0E:  B               loc_399B1C
399B10:  VPOP            {D8-D12}
399B14:  POP.W           {R11}
399B18:  POP             {R4-R7,PC}
399B1A:  MOVS            R5, #0
399B1C:  VMOV.F32        S16, #1.0
399B20:  LDR.W           R0, [R1,#0x44C]
399B24:  VLDR            S20, =-100.0
399B28:  CMP             R0, #0x32 ; '2'
399B2A:  BNE             loc_399BC6
399B2C:  LDR.W           R0, [R1,#0x590]
399B30:  CMP             R0, #0
399B32:  BEQ             loc_399BC6
399B34:  LDR.W           R2, [R0,#0x5A0]
399B38:  CMP             R2, #9
399B3A:  BEQ             loc_399B50
399B3C:  CMP             R2, #0
399B3E:  BNE             loc_399BC6
399B40:  LDR             R1, [R0]
399B42:  LDR.W           R1, [R1,#0xA0]
399B46:  BLX             R1
399B48:  CMP             R0, #1
399B4A:  BNE             loc_399BC6
399B4C:  LDR.W           R1, [R4,#0x94]
399B50:  LDR.W           R1, [R1,#0x590]; float
399B54:  VLDR            S0, [R1,#0x48]
399B58:  VLDR            S2, [R1,#0x4C]
399B5C:  VMUL.F32        S0, S0, S0
399B60:  VLDR            S4, [R1,#0x50]
399B64:  VMUL.F32        S2, S2, S2
399B68:  VMUL.F32        S4, S4, S4
399B6C:  VADD.F32        S0, S0, S2
399B70:  VADD.F32        S0, S0, S4
399B74:  VSQRT.F32       S0, S0
399B78:  VCMPE.F32       S0, #0.0
399B7C:  VMRS            APSR_nzcv, FPSCR
399B80:  BLE             loc_399BC6
399B82:  VMOV.F32        S2, #1.0
399B86:  LDRB.W          R6, [R1,#0x1BC]
399B8A:  VMIN.F32        D8, D0, D1
399B8E:  VMOV            R0, S16; this
399B92:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
399B96:  VMOV.F32        S2, #20.0
399B9A:  VLDR            S4, =0.4
399B9E:  VMOV            S8, R0
399BA2:  CMP             R6, #2
399BA4:  VMOV.F32        S6, #-17.0
399BA8:  VMUL.F32        S4, S16, S4
399BAC:  VMOV.F32        S0, #-10.0
399BB0:  VMUL.F32        S2, S8, S2
399BB4:  IT EQ
399BB6:  VMOVEQ.F32      S0, S6
399BBA:  VLDR            S6, =0.8
399BBE:  VADD.F32        S16, S4, S6
399BC2:  VADD.F32        S20, S0, S2
399BC6:  LDR.W           R0, [R4,#0x94]
399BCA:  LDR.W           R0, [R0,#0x440]; this
399BCE:  CMP             R0, #0
399BD0:  BEQ             loc_399C58
399BD2:  BLX             j__ZNK16CPedIntelligence17GetUsingParachuteEv; CPedIntelligence::GetUsingParachute(void)
399BD6:  CMP             R5, #0
399BD8:  BEQ             loc_399C5E
399BDA:  LDR.W           R1, [R4,#0x94]; float
399BDE:  CMP             R0, #0
399BE0:  VLDR            S0, [R1,#0x48]
399BE4:  VLDR            S2, [R1,#0x4C]
399BE8:  VMUL.F32        S0, S0, S0
399BEC:  VLDR            S4, [R1,#0x50]
399BF0:  VMUL.F32        S2, S2, S2
399BF4:  VMUL.F32        S4, S4, S4
399BF8:  VADD.F32        S0, S0, S2
399BFC:  VLDR            S2, =0.7
399C00:  VADD.F32        S0, S0, S4
399C04:  VSQRT.F32       S0, S0
399C08:  VDIV.F32        S16, S0, S2
399C0C:  BEQ             loc_399C68
399C0E:  LDR             R0, [R1,#0x18]; int
399C10:  ADR             R1, aFallSkydiveAcc; "FALL_SkyDive_accel"
399C12:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
399C16:  VMOV.F32        S24, #1.0
399C1A:  VLDR            S22, =0.0
399C1E:  CMP             R0, #0
399C20:  ADR             R1, aParaDecel; "Para_decel"
399C22:  VMOV            D0, D11
399C26:  IT NE
399C28:  VLDRNE          S0, [R0,#0x18]
399C2C:  LDR.W           R0, [R4,#0x94]
399C30:  VMIN.F32        D16, D0, D12
399C34:  LDR             R0, [R0,#0x18]; int
399C36:  VMAX.F32        D9, D16, D11
399C3A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
399C3E:  CMP             R0, #0
399C40:  VMOV            D0, D11
399C44:  IT NE
399C46:  VLDRNE          S0, [R0,#0x18]
399C4A:  VMOV.F32        S20, #-7.0
399C4E:  VMIN.F32        D16, D0, D12
399C52:  VMAX.F32        D11, D16, D11
399C56:  B               loc_399C98
399C58:  MOVS            R0, #0
399C5A:  CMP             R5, #0
399C5C:  BNE             loc_399BDA
399C5E:  VLDR            S18, =0.0
399C62:  VMOV            D11, D9
399C66:  B               loc_399CCC
399C68:  VMOV.F32        S0, #0.5
399C6C:  VLDR            S18, =0.0
399C70:  VMOV.F32        S20, #-16.0
399C74:  VCMPE.F32       S16, S0
399C78:  VMRS            APSR_nzcv, FPSCR
399C7C:  BGE             loc_399C88
399C7E:  VMOV            D8, D9
399C82:  VMOV            D11, D9
399C86:  B               loc_399C98
399C88:  VMOV.F32        S0, #-0.5
399C8C:  VMOV            D11, D9
399C90:  VADD.F32        S0, S16, S0
399C94:  VADD.F32        S16, S0, S0
399C98:  VMOV.F32        S0, #1.0
399C9C:  VLDR            S2, =0.0
399CA0:  VMIN.F32        D16, D8, D0
399CA4:  VMAX.F32        D8, D16, D1
399CA8:  VMOV            R0, S16; this
399CAC:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
399CB0:  VMOV.F32        S0, #20.0
399CB4:  VLDR            S2, =0.8
399CB8:  VMOV            S4, R0
399CBC:  VMUL.F32        S6, S16, S2
399CC0:  VMUL.F32        S0, S4, S0
399CC4:  VADD.F32        S16, S6, S2
399CC8:  VADD.F32        S20, S20, S0
399CCC:  VMOV.F32        S0, #4.0
399CD0:  VMOV.F32        S2, #-6.0
399CD4:  VMUL.F32        S0, S18, S0
399CD8:  VMUL.F32        S2, S22, S2
399CDC:  VADD.F32        S0, S20, S0
399CE0:  VADD.F32        S2, S0, S2
399CE4:  VLDR            S0, [R4,#0x158]
399CE8:  VCMPE.F32       S2, S0
399CEC:  VMRS            APSR_nzcv, FPSCR
399CF0:  BLE             loc_399D00
399CF2:  VMOV.F32        S4, #5.0
399CF6:  VADD.F32        S0, S0, S4
399CFA:  VMIN.F32        D0, D0, D1
399CFE:  B               loc_399D0E
399D00:  BGT             loc_399D12
399D02:  VMOV.F32        S4, #-2.0
399D06:  VADD.F32        S0, S0, S4
399D0A:  VMAX.F32        D0, D0, D1
399D0E:  VSTR            S0, [R4,#0x158]
399D12:  VMOV.F32        S4, #-20.0
399D16:  VCMPE.F32       S2, S4
399D1A:  VMRS            APSR_nzcv, FPSCR
399D1E:  BGE             loc_399D32
399D20:  VCMPE.F32       S0, S4
399D24:  VMRS            APSR_nzcv, FPSCR
399D28:  ITT LT
399D2A:  VSTRLT          S2, [R4,#0x158]
399D2E:  VMOVLT          D0, D1
399D32:  VLDR            S2, =-100.0
399D36:  VCMPE.F32       S0, S2
399D3A:  VMRS            APSR_nzcv, FPSCR
399D3E:  BLE             loc_399D6C
399D40:  VMOV.F32        S2, #0.5
399D44:  MOV             R0, R4; this
399D46:  VMOV.F32        S4, #1.0
399D4A:  VMOV            R1, S0; float
399D4E:  VMUL.F32        S2, S18, S2
399D52:  VADD.F32        S2, S2, S4
399D56:  VMUL.F32        S2, S16, S2
399D5A:  VMOV            R2, S2; float
399D5E:  VPOP            {D8-D12}
399D62:  POP.W           {R11}
399D66:  POP.W           {R4-R7,LR}
399D6A:  B               _ZN17CAEPedAudioEntity13PlayShirtFlapEff; CAEPedAudioEntity::PlayShirtFlap(float,float)
399D6C:  ADD.W           R0, R4, #0xA8; this
399D70:  VPOP            {D8-D12}
399D74:  POP.W           {R11}
399D78:  POP.W           {R4-R7,LR}
399D7C:  B.W             sub_197778
