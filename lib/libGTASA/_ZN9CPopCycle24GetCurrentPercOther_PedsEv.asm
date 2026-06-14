; =========================================================
; Game Engine Function: _ZN9CPopCycle24GetCurrentPercOther_PedsEv
; Address            : 0x4CBA6C - 0x4CBB1C
; =========================================================

4CBA6C:  PUSH            {R4,R6,R7,LR}
4CBA6E:  ADD             R7, SP, #8
4CBA70:  VPUSH           {D8-D10}
4CBA74:  LDR             R0, =(_ZN8CWeather4RainE_ptr - 0x4CBA80)
4CBA76:  VMOV.F32        S16, #1.0
4CBA7A:  LDR             R2, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CBA84)
4CBA7C:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
4CBA7E:  LDR             R1, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CBA8A)
4CBA80:  ADD             R2, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CBA82:  LDR             R3, =(_ZN9CPopCycle12m_nPercOtherE_ptr - 0x4CBA8E)
4CBA84:  LDR             R0, [R0]; CWeather::Rain ...
4CBA86:  ADD             R1, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CBA88:  LDR             R2, [R2]; CPopCycle::m_nCurrentTimeOfWeek ...
4CBA8A:  ADD             R3, PC; _ZN9CPopCycle12m_nPercOtherE_ptr
4CBA8C:  VLDR            S2, =-0.8
4CBA90:  VLDR            S0, [R0]
4CBA94:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CBAA0)
4CBA96:  VSQRT.F32       S0, S0
4CBA9A:  LDR             R2, [R2]; CPopCycle::m_nCurrentTimeOfWeek
4CBA9C:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CBA9E:  LDR             R1, [R1]; CPopCycle::m_nCurrentZoneType ...
4CBAA0:  LDR             R3, [R3]; CPopCycle::m_nPercOther ...
4CBAA2:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CBAA4:  ADD.W           R2, R2, R2,LSL#2
4CBAA8:  LDR             R1, [R1]; CPopCycle::m_nCurrentZoneType
4CBAAA:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex
4CBAAC:  ADD.W           R0, R0, R0,LSL#2
4CBAB0:  ADD.W           R0, R3, R0,LSL#3
4CBAB4:  ADD.W           R0, R0, R2,LSL#2; this
4CBAB8:  LDRB            R4, [R0,R1]
4CBABA:  VMUL.F32        S0, S0, S2
4CBABE:  VADD.F32        S18, S0, S16
4CBAC2:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
4CBAC6:  CBZ             R0, loc_4CBAF6
4CBAC8:  MOV.W           R0, #0xFFFFFFFF; int
4CBACC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4CBAD0:  CBZ             R0, loc_4CBAF6
4CBAD2:  LDRB.W          R1, [R0,#0x485]
4CBAD6:  LSLS            R1, R1, #0x1F
4CBAD8:  ITT NE
4CBADA:  LDRNE.W         R0, [R0,#0x590]
4CBADE:  CMPNE           R0, #0
4CBAE0:  BEQ             loc_4CBAF6
4CBAE2:  LDRSH.W         R0, [R0,#0x26]; this
4CBAE6:  CMP.W           R0, #0x1B6
4CBAEA:  IT NE
4CBAEC:  CMPNE.W         R0, #0x1A4
4CBAF0:  BNE             loc_4CBAF6
4CBAF2:  VMOV.F32        S18, S16
4CBAF6:  VMOV            S0, R4
4CBAFA:  VCVT.F32.U32    S20, S0
4CBAFE:  BLX             j__ZN7CDarkel13FrenzyOnGoingEv; CDarkel::FrenzyOnGoing(void)
4CBB02:  CMP             R0, #0
4CBB04:  IT NE
4CBB06:  VMOVNE.F32      S18, S16
4CBB0A:  VMUL.F32        S0, S18, S20
4CBB0E:  VCVT.S32.F32    S0, S0
4CBB12:  VMOV            R0, S0
4CBB16:  VPOP            {D8-D10}
4CBB1A:  POP             {R4,R6,R7,PC}
