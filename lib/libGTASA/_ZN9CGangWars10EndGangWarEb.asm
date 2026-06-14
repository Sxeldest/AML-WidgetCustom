; =========================================================
; Game Engine Function: _ZN9CGangWars10EndGangWarEb
; Address            : 0x30C55C - 0x30C6BC
; =========================================================

30C55C:  PUSH            {R4-R7,LR}
30C55E:  ADD             R7, SP, #0xC
30C560:  PUSH.W          {R8-R10}
30C564:  LDR             R1, =(_ZN9CGangWars6State2E_ptr - 0x30C572)
30C566:  MOV             R9, R0
30C568:  LDR             R0, =(_ZN9CGangWars5StateE_ptr - 0x30C574)
30C56A:  MOV.W           R8, #0
30C56E:  ADD             R1, PC; _ZN9CGangWars6State2E_ptr
30C570:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30C572:  LDR             R1, [R1]; CGangWars::State2 ...
30C574:  LDR             R0, [R0]; CGangWars::State ...
30C576:  STR.W           R8, [R0]; CGangWars::State
30C57A:  LDR             R0, [R1]; CGangWars::State2
30C57C:  CMP             R0, #0
30C57E:  BEQ             loc_30C638
30C580:  LDR             R0, =(_ZN9CGangWars6State2E_ptr - 0x30C586)
30C582:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
30C584:  LDR             R0, [R0]; CGangWars::State2 ...
30C586:  STR.W           R8, [R0]; CGangWars::State2
30C58A:  BLX             rand
30C58E:  VMOV            S0, R0
30C592:  VLDR            S2, =4.6566e-10
30C596:  LDR             R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30C5A2)
30C598:  VCVT.F32.S32    S0, S0
30C59C:  LDR             R1, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30C5A4)
30C59E:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30C5A0:  ADD             R1, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30C5A2:  LDR             R0, [R0]; CGangWars::Gang1 ...
30C5A4:  LDR             R1, [R1]; CGangWars::TimeTillNextAttack ...
30C5A6:  VMUL.F32        S0, S0, S2
30C5AA:  VLDR            S2, =0.9
30C5AE:  VMUL.F32        S0, S0, S2
30C5B2:  VLDR            S2, =0.6
30C5B6:  VADD.F32        S0, S0, S2
30C5BA:  VLDR            S2, =1080000.0
30C5BE:  VMUL.F32        S0, S0, S2
30C5C2:  VCVT.U32.F32    S0, S0
30C5C6:  VCVT.F32.U32    S0, S0
30C5CA:  LDR.W           R10, [R0]; CGangWars::Gang1
30C5CE:  MOVS            R0, #(stderr+1); this
30C5D0:  VSTR            S0, [R1]
30C5D4:  MOVS            R1, #0; bool
30C5D6:  BLX             j__ZN9CGangWars23ReleasePedsInAttackWaveEbb; CGangWars::ReleasePedsInAttackWave(bool,bool)
30C5DA:  LDR             R1, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30C5E0)
30C5DC:  ADD             R1, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30C5DE:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver ...
30C5E0:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver
30C5E2:  LDRB            R2, [R1,#1]
30C5E4:  CBZ             R2, loc_30C5F6
30C5E6:  LDRB            R3, [R1]
30C5E8:  MOVS            R4, #0
30C5EA:  LDRB            R5, [R1,#2]
30C5EC:  ADDS            R6, R5, R3
30C5EE:  CMP             R6, R2
30C5F0:  IT LS
30C5F2:  MOVLS           R4, #1
30C5F4:  B               loc_30C600
30C5F6:  CBZ             R1, loc_30C638
30C5F8:  LDRB            R3, [R1]
30C5FA:  MOVS            R2, #0
30C5FC:  LDRB            R5, [R1,#2]
30C5FE:  MOVS            R4, #0
30C600:  ADD             R3, R5
30C602:  CMN             R3, R2
30C604:  BEQ             loc_30C638
30C606:  LDRB.W          R2, [R1,R10]
30C60A:  ADD.W           R0, R0, R0,LSL#1
30C60E:  CMP             R4, #0
30C610:  ADD             R0, R2
30C612:  STRB.W          R0, [R1,R10]
30C616:  BEQ             loc_30C638
30C618:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30C61E)
30C61A:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30C61C:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30C61E:  LDR             R1, [R0]; CGangWars::pZoneInfoToFightOver
30C620:  LDRB            R0, [R1,#1]
30C622:  CBZ             R0, loc_30C62E
30C624:  LDRB            R2, [R1]; float
30C626:  LDRB            R1, [R1,#2]
30C628:  ADD             R1, R2
30C62A:  CMP             R1, R0
30C62C:  BLS             loc_30C638
30C62E:  MOVS            R0, #(dword_E8+3); this
30C630:  MOV.W           R1, #0x3F800000; unsigned __int16
30C634:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30C638:  LDR             R0, =(_ZN9CGangWars11ProvocationE_ptr - 0x30C63E)
30C63A:  ADD             R0, PC; _ZN9CGangWars11ProvocationE_ptr
30C63C:  LDR             R0, [R0]; CGangWars::Provocation ...
30C63E:  STR.W           R8, [R0]; CGangWars::Provocation
30C642:  MOVS            R0, #0; this
30C644:  BLX             j__ZN9CTheZones24FillZonesWithGangColoursEb; CTheZones::FillZonesWithGangColours(bool)
30C648:  MOVS            R0, #(stderr+1); this
30C64A:  MOV             R1, R9; bool
30C64C:  BLX             j__ZN9CGangWars23ReleasePedsInAttackWaveEbb; CGangWars::ReleasePedsInAttackWave(bool,bool)
30C650:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x30C656)
30C652:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
30C654:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
30C656:  LDR             R4, [R0]; CPools::ms_pVehiclePool
30C658:  LDR             R0, [R4,#8]
30C65A:  CBZ             R0, loc_30C6B6
30C65C:  MOVW            R1, #0xA2C
30C660:  MOVW            R8, #0xFA04
30C664:  MUL.W           R5, R0, R1
30C668:  MOVW            R9, #0xFA00
30C66C:  SUBS            R6, R0, #1
30C66E:  MOVT            R8, #0xFFFF
30C672:  MOVT            R9, #0xFFFF
30C676:  LDR             R0, [R4,#4]
30C678:  LDRSB           R0, [R0,R6]
30C67A:  CMP             R0, #0
30C67C:  BLT             loc_30C6AC
30C67E:  LDR             R0, [R4]
30C680:  ADDS            R1, R0, R5
30C682:  SUBW            R0, R1, #0xA2C; this
30C686:  CMP             R0, #0
30C688:  ITT NE
30C68A:  LDRNE.W         R2, [R1,R8]
30C68E:  TSTNE.W         R2, #0x800
30C692:  BEQ             loc_30C6AC
30C694:  LDR.W           R3, [R1,R9]
30C698:  SUB.W           R1, R1, #0x600
30C69C:  BIC.W           R2, R2, #0x800
30C6A0:  STRD.W          R3, R2, [R1]
30C6A4:  MOVS            R1, #1; int
30C6A6:  MOVS            R2, #0; bool
30C6A8:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
30C6AC:  SUBS            R6, #1
30C6AE:  SUBW            R5, R5, #0xA2C
30C6B2:  ADDS            R0, R6, #1
30C6B4:  BNE             loc_30C676
30C6B6:  POP.W           {R8-R10}
30C6BA:  POP             {R4-R7,PC}
