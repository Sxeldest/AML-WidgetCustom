; =========================================================
; Game Engine Function: _ZN11CWaterLevel13SetUpWaterFogEiiii
; Address            : 0x599F90 - 0x59A0E8
; =========================================================

599F90:  PUSH            {R4-R7,LR}
599F92:  ADD             R7, SP, #0xC
599F94:  PUSH.W          {R8,R9,R11}
599F98:  VPUSH           {D8-D9}
599F9C:  SUB             SP, SP, #0x20
599F9E:  MOV             R4, R0
599FA0:  LDR             R0, =(_ZN11CWaterLevel11m_bWaterFogE_ptr - 0x599FAA)
599FA2:  MOV             R8, R3
599FA4:  MOV             R9, R2
599FA6:  ADD             R0, PC; _ZN11CWaterLevel11m_bWaterFogE_ptr
599FA8:  MOV             R6, R1
599FAA:  LDR             R0, [R0]; CWaterLevel::m_bWaterFog ...
599FAC:  LDRB            R0, [R0]; CWaterLevel::m_bWaterFog
599FAE:  CMP             R0, #0
599FB0:  BEQ.W           loc_59A0DC
599FB4:  LDR             R0, =(dword_A1DC9C - 0x599FBA)
599FB6:  ADD             R0, PC; dword_A1DC9C
599FB8:  LDR             R0, [R0]
599FBA:  CMP             R0, #0x45 ; 'E'
599FBC:  BGT.W           loc_59A0DC
599FC0:  ADD             R0, SP, #0x48+var_34; int
599FC2:  MOV.W           R1, #0xFFFFFFFF
599FC6:  BLX.W           j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
599FCA:  VMOV            S0, R4
599FCE:  ADD             R2, SP, #0x48+var_40
599FD0:  ADD             R3, SP, #0x48+var_3C
599FD2:  MOVS            R5, #0
599FD4:  VCVT.F32.S32    S18, S0
599FD8:  VMOV            S0, R6
599FDC:  VCVT.F32.S32    S16, S0
599FE0:  STRD.W          R3, R2, [SP,#0x48+var_48]; float *
599FE4:  ADD             R3, SP, #0x48+var_38; float
599FE6:  MOVS            R2, #0; float
599FE8:  VMOV            R0, S18; this
599FEC:  VMOV            R1, S16; float
599FF0:  BLX             j__ZN11CWaterLevel20GetWaterLevelNoWavesEfffPfS0_S0_; CWaterLevel::GetWaterLevelNoWaves(float,float,float,float *,float *,float *)
599FF4:  CBZ             R0, loc_59A026
599FF6:  VLDR            S0, [SP,#0x48+var_40]
599FFA:  MOVS            R0, #0
599FFC:  VLDR            S2, [SP,#0x48+var_3C]
59A000:  VCMP.F32        S0, #0.0
59A004:  VMRS            APSR_nzcv, FPSCR
59A008:  VCMP.F32        S2, #0.0
59A00C:  IT EQ
59A00E:  MOVEQ           R0, #1
59A010:  VMRS            APSR_nzcv, FPSCR
59A014:  IT EQ
59A016:  MOVEQ           R5, #1
59A018:  TST             R5, R0
59A01A:  BNE             loc_59A0DC
59A01C:  VLDR            S0, [SP,#0x48+var_38]
59A020:  VMOV            R5, S0
59A024:  B               loc_59A02C
59A026:  VLDR            S0, =0.0
59A02A:  STR             R5, [SP,#0x48+var_38]
59A02C:  LDR             R0, =(_ZN11CWaterLevel17m_fWaterFogHeightE_ptr - 0x59A03A)
59A02E:  VMOV            S2, R9
59A032:  MOVS            R1, #0
59A034:  MOVS            R2, #0
59A036:  ADD             R0, PC; _ZN11CWaterLevel17m_fWaterFogHeightE_ptr
59A038:  VCVT.F32.S32    S2, S2
59A03C:  LDR             R0, [R0]; CWaterLevel::m_fWaterFogHeight ...
59A03E:  VLDR            S4, [R0]
59A042:  MOVS            R0, #0
59A044:  VADD.F32        S0, S0, S4
59A048:  VMOV            S4, R8
59A04C:  VCVT.F32.S32    S4, S4
59A050:  VLDR            S6, [SP,#0x48+var_34]
59A054:  VLDR            S8, [SP,#0x48+var_30]
59A058:  VCMPE.F32       S6, S18
59A05C:  VLDR            S10, [SP,#0x48+var_2C]
59A060:  VMRS            APSR_nzcv, FPSCR
59A064:  VCMPE.F32       S6, S2
59A068:  IT GE
59A06A:  MOVGE           R1, #1
59A06C:  VMRS            APSR_nzcv, FPSCR
59A070:  VCMPE.F32       S10, S0
59A074:  IT LE
59A076:  MOVLE           R2, #1
59A078:  VMRS            APSR_nzcv, FPSCR
59A07C:  AND.W           R1, R1, R2
59A080:  VCMPE.F32       S8, S16
59A084:  MOV.W           R2, #0
59A088:  IT LT
59A08A:  ADDLT           R1, #1
59A08C:  VMRS            APSR_nzcv, FPSCR
59A090:  VCMPE.F32       S8, S4
59A094:  IT GE
59A096:  MOVGE           R2, #1
59A098:  VMRS            APSR_nzcv, FPSCR
59A09C:  IT LE
59A09E:  MOVLE           R0, #1
59A0A0:  ANDS            R0, R2
59A0A2:  ADD             R0, R1
59A0A4:  CMP             R0, #3
59A0A6:  BNE             loc_59A0B0
59A0A8:  LDR             R0, =(byte_A1DCA0 - 0x59A0B0)
59A0AA:  MOVS            R1, #1
59A0AC:  ADD             R0, PC; byte_A1DCA0
59A0AE:  STRB            R1, [R0]
59A0B0:  LDR             R0, =(dword_A1DC9C - 0x59A0B8)
59A0B2:  LDR             R1, =(_ZN11CWaterLevel11ms_WaterFogE_ptr - 0x59A0BA)
59A0B4:  ADD             R0, PC; dword_A1DC9C
59A0B6:  ADD             R1, PC; _ZN11CWaterLevel11ms_WaterFogE_ptr
59A0B8:  LDR             R2, [R0]
59A0BA:  LDR             R1, [R1]; CWaterLevel::ms_WaterFog ...
59A0BC:  ADD.W           R3, R1, R2,LSL#1
59A0C0:  STRH.W          R4, [R1,R2,LSL#1]
59A0C4:  ADD.W           R1, R1, R2,LSL#2
59A0C8:  STRH.W          R6, [R3,#0x8C]
59A0CC:  STRH.W          R9, [R3,#0x118]
59A0D0:  STRH.W          R8, [R3,#0x1A4]
59A0D4:  STR.W           R5, [R1,#0x230]
59A0D8:  ADDS            R1, R2, #1
59A0DA:  STR             R1, [R0]
59A0DC:  ADD             SP, SP, #0x20 ; ' '
59A0DE:  VPOP            {D8-D9}
59A0E2:  POP.W           {R8,R9,R11}
59A0E6:  POP             {R4-R7,PC}
