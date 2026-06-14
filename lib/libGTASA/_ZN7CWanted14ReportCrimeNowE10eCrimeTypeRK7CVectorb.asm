; =========================================================
; Game Engine Function: _ZN7CWanted14ReportCrimeNowE10eCrimeTypeRK7CVectorb
; Address            : 0x421FF8 - 0x4220E6
; =========================================================

421FF8:  PUSH            {R4-R7,LR}
421FFA:  ADD             R7, SP, #0xC
421FFC:  PUSH.W          {R8-R10}
422000:  VPUSH           {D8-D9}
422004:  MOV             R6, R0
422006:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x422010)
422008:  MOV             R4, R3
42200A:  MOV             R8, R2
42200C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
42200E:  MOV             R10, R1
422010:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
422012:  LDRB.W          R0, [R0,#(byte_79683D - 0x7967F4)]
422016:  CMP             R0, #0
422018:  BNE             loc_4220DC
42201A:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x422028)
42201C:  VLDR            S0, =0.3
422020:  VLDR            S16, [R6,#0x14]
422024:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
422026:  LDR.W           R9, [R6,#0x2C]
42202A:  VMUL.F32        S0, S16, S0
42202E:  LDR             R0, [R0]; CDarkel::Status ...
422030:  VLDR            S18, =0.0
422034:  LDRH            R0, [R0]; this
422036:  CMP             R0, #1
422038:  IT EQ
42203A:  VMOVEQ.F32      S16, S0
42203E:  VCMPE.F32       S16, #0.0
422042:  VMRS            APSR_nzcv, FPSCR
422046:  IT LT
422048:  VMOVLT.F32      S16, S18
42204C:  BLX             j__ZN9CGangWars22GangWarFightingGoingOnEv; CGangWars::GangWarFightingGoingOn(void)
422050:  CMP             R0, #0
422052:  SUB.W           R5, R10, #2
422056:  IT NE
422058:  VMOVNE.F32      S16, S18
42205C:  BLX             j__ZN9CGangWars22GangWarFightingGoingOnEv; CGangWars::GangWarFightingGoingOn(void)
422060:  CMP             R5, #0x15
422062:  BCS             loc_4220AA
422064:  VLDR            S0, =0.333
422068:  CMP             R4, #0
42206A:  LDR             R1, =(unk_617C70 - 0x422074)
42206C:  VMUL.F32        S0, S16, S0
422070:  ADD             R1, PC; unk_617C70
422072:  IT NE
422074:  VMOVNE.F32      S16, S0
422078:  CMP             R0, #0
42207A:  ADD.W           R0, R1, R5,LSL#2
42207E:  IT NE
422080:  VMOVNE.F32      S16, S18
422084:  VLDR            S0, [R6]
422088:  VLDR            S2, [R0]
42208C:  VCVT.F32.S32    S0, S0
422090:  VMUL.F32        S2, S16, S2
422094:  VADD.F32        S0, S2, S0
422098:  VCVT.S32.F32    S2, S0
42209C:  VCVT.S32.F32    S0, S0
4220A0:  VSTR            S2, [R6]
4220A4:  VMOV            R0, S0
4220A8:  B               loc_4220AC
4220AA:  LDR             R0, [R6]
4220AC:  LDR             R1, [R6,#4]
4220AE:  CMP             R0, R1
4220B0:  IT GT
4220B2:  MOVGT           R1, R0
4220B4:  MOV             R0, R6; this
4220B6:  STR             R1, [R6]
4220B8:  BLX             j__ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
4220BC:  LDR             R0, [R6,#0x2C]
4220BE:  CMP             R0, R9
4220C0:  BLE             loc_4220DC
4220C2:  ADD.W           R0, R6, #0x21C
4220C6:  MOVS            R1, #0xA4
4220C8:  MOV             R2, R10
4220CA:  MOV             R3, R8
4220CC:  VPOP            {D8-D9}
4220D0:  POP.W           {R8-R10}
4220D4:  POP.W           {R4-R7,LR}
4220D8:  B.W             j_j__ZN27CAEPoliceScannerAudioEntity13AddAudioEventEi10eCrimeTypeRK7CVector; j_CAEPoliceScannerAudioEntity::AddAudioEvent(int,eCrimeType,CVector const&)
4220DC:  VPOP            {D8-D9}
4220E0:  POP.W           {R8-R10}
4220E4:  POP             {R4-R7,PC}
