; =========================================================
; Game Engine Function: _ZN10CEntryExit22FindValidTeleportPointER7CVector
; Address            : 0x306FF8 - 0x3071CA
; =========================================================

306FF8:  PUSH            {R4-R7,LR}
306FFA:  ADD             R7, SP, #0xC
306FFC:  PUSH.W          {R8-R11}
307000:  SUB             SP, SP, #4
307002:  VPUSH           {D8-D11}
307006:  SUB             SP, SP, #0x30
307008:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x307018)
30700A:  MOV             R11, R1
30700C:  MOVW            R3, #0x3333
307010:  MOV.W           R10, #0
307014:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
307016:  MOVS            R5, #1
307018:  MOVT            R3, #0x3EB3
30701C:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
30701E:  LDR             R2, [R0]; CEntryExit::ms_spawnPoint
307020:  ADDS            R2, #0x20 ; ' '
307022:  LDM             R2, {R0-R2}
307024:  STM.W           R11, {R0-R2}
307028:  STRD.W          R10, R5, [SP,#0x70+var_70]
30702C:  STRD.W          R5, R5, [SP,#0x70+var_68]
307030:  STRD.W          R5, R5, [SP,#0x70+var_60]
307034:  STR.W           R10, [SP,#0x70+var_58]
307038:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
30703C:  CMP             R0, #0
30703E:  BEQ.W           loc_3071BC
307042:  VMOV.F32        S18, #0.125
307046:  MOVW            R9, #0x3333
30704A:  VMOV.F32        S20, #1.25
30704E:  VLDR            S16, =3.1416
307052:  ADD.W           R8, SP, #0x70+var_50
307056:  MOV.W           R4, #0xFFFFFFFF
30705A:  MOVT            R9, #0x3EB3
30705E:  ADDS            R4, #1
307060:  VMOV            S0, R4
307064:  VCVT.F32.S32    S0, S0
307068:  VMUL.F32        S0, S0, S16
30706C:  VADD.F32        S0, S0, S0
307070:  VMUL.F32        S0, S0, S18
307074:  VMOV            R6, S0
307078:  MOV             R0, R6; x
30707A:  BLX             cosf
30707E:  VMOV            S22, R0
307082:  MOV             R0, R6; x
307084:  BLX             sinf
307088:  VMOV            S0, R0
30708C:  VLDR            D16, [R11]
307090:  VMUL.F32        S2, S22, S20
307094:  MOV             R3, R9
307096:  VMUL.F32        S0, S0, S20
30709A:  VSTR            D16, [SP,#0x70+var_50]
30709E:  VLDR            S4, [SP,#0x70+var_50]
3070A2:  VLDR            S6, [SP,#0x70+var_50+4]
3070A6:  LDR.W           R2, [R11,#8]
3070AA:  STR             R2, [SP,#0x70+var_48]
3070AC:  VADD.F32        S2, S2, S4
3070B0:  VADD.F32        S0, S0, S6
3070B4:  VMOV            R0, S2
3070B8:  VSTR            S2, [SP,#0x70+var_50]
3070BC:  VMOV            R1, S0
3070C0:  VSTR            S0, [SP,#0x70+var_50+4]
3070C4:  STRD.W          R10, R5, [SP,#0x70+var_70]
3070C8:  STRD.W          R5, R5, [SP,#0x70+var_68]
3070CC:  STRD.W          R5, R5, [SP,#0x70+var_60]
3070D0:  STR.W           R10, [SP,#0x70+var_58]
3070D4:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3070D8:  CBNZ            R0, loc_3070F6
3070DA:  MOV             R0, R11; this
3070DC:  MOV             R1, R8; CVector *
3070DE:  MOVS            R2, #(stderr+1); CVector *
3070E0:  MOVS            R3, #1; bool
3070E2:  STRD.W          R10, R5, [SP,#0x70+var_70]; bool
3070E6:  STRD.W          R5, R10, [SP,#0x70+var_68]; bool
3070EA:  STR.W           R10, [SP,#0x70+var_60]; bool
3070EE:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3070F2:  CMP             R0, #0
3070F4:  BNE             loc_3071AE
3070F6:  CMP             R4, #7
3070F8:  BLT             loc_30705E
3070FA:  MOVW            R9, #0x3333
3070FE:  ADD.W           R8, SP, #0x70+var_50
307102:  MOV.W           R4, #0xFFFFFFFF
307106:  MOV.W           R10, #0
30710A:  MOVS            R5, #1
30710C:  MOVT            R9, #0x3EB3
307110:  ADDS            R4, #1
307112:  VMOV            S0, R4
307116:  VCVT.F32.S32    S0, S0
30711A:  VMUL.F32        S0, S0, S16
30711E:  VADD.F32        S0, S0, S0
307122:  VMUL.F32        S0, S0, S18
307126:  VMOV            R6, S0
30712A:  MOV             R0, R6; x
30712C:  BLX             cosf
307130:  VMOV            S20, R0
307134:  MOV             R0, R6; x
307136:  BLX             sinf
30713A:  VMOV            S0, R0
30713E:  VLDR            D16, [R11]
307142:  VADD.F32        S2, S20, S20
307146:  MOV             R3, R9
307148:  VADD.F32        S0, S0, S0
30714C:  VSTR            D16, [SP,#0x70+var_50]
307150:  VLDR            S4, [SP,#0x70+var_50]
307154:  VLDR            S6, [SP,#0x70+var_50+4]
307158:  LDR.W           R2, [R11,#8]
30715C:  STR             R2, [SP,#0x70+var_48]
30715E:  VADD.F32        S2, S2, S4
307162:  VADD.F32        S0, S0, S6
307166:  VMOV            R0, S2
30716A:  VSTR            S2, [SP,#0x70+var_50]
30716E:  VMOV            R1, S0
307172:  VSTR            S0, [SP,#0x70+var_50+4]
307176:  STRD.W          R10, R5, [SP,#0x70+var_70]
30717A:  STRD.W          R5, R5, [SP,#0x70+var_68]
30717E:  STRD.W          R5, R5, [SP,#0x70+var_60]
307182:  STR.W           R10, [SP,#0x70+var_58]
307186:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
30718A:  CBNZ            R0, loc_3071A8
30718C:  MOV             R0, R11; this
30718E:  MOV             R1, R8; CVector *
307190:  MOVS            R2, #(stderr+1); CVector *
307192:  MOVS            R3, #1; bool
307194:  STRD.W          R10, R5, [SP,#0x70+var_70]; bool
307198:  STRD.W          R5, R10, [SP,#0x70+var_68]; bool
30719C:  STR.W           R10, [SP,#0x70+var_60]; bool
3071A0:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3071A4:  CMP             R0, #1
3071A6:  BEQ             loc_3071AE
3071A8:  CMP             R4, #7
3071AA:  BLT             loc_307110
3071AC:  B               loc_3071BC
3071AE:  VLDR            D16, [SP,#0x70+var_50]
3071B2:  LDR             R0, [SP,#0x70+var_48]
3071B4:  STR.W           R0, [R11,#8]
3071B8:  VSTR            D16, [R11]
3071BC:  ADD             SP, SP, #0x30 ; '0'
3071BE:  VPOP            {D8-D11}
3071C2:  ADD             SP, SP, #4
3071C4:  POP.W           {R8-R11}
3071C8:  POP             {R4-R7,PC}
