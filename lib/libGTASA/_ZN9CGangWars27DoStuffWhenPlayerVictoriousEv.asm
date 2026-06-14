; =========================================================
; Game Engine Function: _ZN9CGangWars27DoStuffWhenPlayerVictoriousEv
; Address            : 0x30B1E0 - 0x30B300
; =========================================================

30B1E0:  PUSH            {R4-R7,LR}
30B1E2:  ADD             R7, SP, #0xC
30B1E4:  PUSH.W          {R8-R11}; unsigned __int16 *
30B1E8:  SUB             SP, SP, #0x14
30B1EA:  MOVS            R0, #(stderr+1); this
30B1EC:  MOVS            R1, #0; bool
30B1EE:  MOV.W           R8, #1
30B1F2:  MOV.W           R9, #0
30B1F6:  BLX             j__ZN9CGangWars23ReleasePedsInAttackWaveEbb; CGangWars::ReleasePedsInAttackWave(bool,bool)
30B1FA:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x30B200)
30B1FC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
30B1FE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
30B200:  LDR             R4, [R0]; CPools::ms_pVehiclePool
30B202:  LDR             R0, [R4,#8]
30B204:  CBZ             R0, loc_30B260
30B206:  MOVW            R1, #0xA2C
30B20A:  MOVW            R10, #0xFA04
30B20E:  MUL.W           R5, R0, R1
30B212:  MOVW            R11, #0xFA00
30B216:  SUBS            R6, R0, #1
30B218:  MOVT            R10, #0xFFFF
30B21C:  MOVT            R11, #0xFFFF
30B220:  LDR             R0, [R4,#4]
30B222:  LDRSB           R0, [R0,R6]
30B224:  CMP             R0, #0
30B226:  BLT             loc_30B256
30B228:  LDR             R0, [R4]
30B22A:  ADDS            R1, R0, R5
30B22C:  SUBW            R0, R1, #0xA2C; this
30B230:  CMP             R0, #0
30B232:  ITT NE
30B234:  LDRNE.W         R2, [R1,R10]
30B238:  TSTNE.W         R2, #0x800
30B23C:  BEQ             loc_30B256
30B23E:  LDR.W           R3, [R1,R11]
30B242:  SUB.W           R1, R1, #0x600
30B246:  BIC.W           R2, R2, #0x800
30B24A:  STRD.W          R3, R2, [R1]
30B24E:  MOVS            R1, #1; int
30B250:  MOVS            R2, #0; bool
30B252:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
30B256:  SUBS            R6, #1
30B258:  SUBW            R5, R5, #0xA2C
30B25C:  ADDS            R0, R6, #1; this
30B25E:  BNE             loc_30B220
30B260:  BLX             j__ZN9CGangWars12CheerVictoryEv; CGangWars::CheerVictory(void)
30B264:  LDR             R0, =(_ZN9CGangWars5StateE_ptr - 0x30B26E)
30B266:  ADR             R4, aGwYrs; "GW_YRS"
30B268:  LDR             R1, =(TheText_ptr - 0x30B270)
30B26A:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30B26C:  ADD             R1, PC; TheText_ptr
30B26E:  LDR             R0, [R0]; CGangWars::State ...
30B270:  LDR             R5, [R1]; TheText
30B272:  MOV             R1, R4; CKeyGen *
30B274:  STR.W           R9, [R0]; CGangWars::State
30B278:  MOV             R0, R5; this
30B27A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30B27E:  MOV             R1, R0; char *
30B280:  MOV             R0, R4; this
30B282:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30B286:  MOVS            R3, #1; unsigned int
30B288:  STR.W           R8, [SP,#0x30+var_30]; unsigned __int16
30B28C:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30B290:  MOV             R0, R5; this
30B292:  MOV             R1, R4; CKeyGen *
30B294:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30B298:  MOV             R1, R0; char *
30B29A:  MOV.W           R0, #0xFFFFFFFF
30B29E:  STRD.W          R0, R0, [SP,#0x30+var_30]; int
30B2A2:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
30B2A6:  STRD.W          R0, R0, [SP,#0x30+var_28]; int
30B2AA:  MOV             R0, R4; this
30B2AC:  MOV.W           R3, #0xFFFFFFFF; int
30B2B0:  STR.W           R9, [SP,#0x30+var_20]; int
30B2B4:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
30B2B8:  LDR             R0, =(_ZN9CGangWars11ProvocationE_ptr - 0x30B2BE)
30B2BA:  ADD             R0, PC; _ZN9CGangWars11ProvocationE_ptr
30B2BC:  LDR             R0, [R0]; CGangWars::Provocation ...
30B2BE:  STR.W           R9, [R0]; CGangWars::Provocation
30B2C2:  MOVS            R0, #(stderr+1); this
30B2C4:  BLX             j__ZN9CGangWars17TellGangMembersToEi; CGangWars::TellGangMembersTo(int)
30B2C8:  MOVS            R1, #0
30B2CA:  MOVS            R0, #dword_44; this
30B2CC:  MOVT            R1, #0x4234; unsigned __int16
30B2D0:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30B2D4:  MOVS            R0, #0; this
30B2D6:  BLX             j__ZN9CTheZones24FillZonesWithGangColoursEb; CTheZones::FillZonesWithGangColours(bool)
30B2DA:  LDR             R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30B2E4)
30B2DC:  VLDR            S0, =-240000.0
30B2E0:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30B2E2:  VLDR            S4, =30000.0
30B2E6:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
30B2E8:  VLDR            S2, [R0]
30B2EC:  VADD.F32        S0, S2, S0
30B2F0:  VMAX.F32        D0, D0, D2
30B2F4:  VSTR            S0, [R0]
30B2F8:  ADD             SP, SP, #0x14
30B2FA:  POP.W           {R8-R11}
30B2FE:  POP             {R4-R7,PC}
