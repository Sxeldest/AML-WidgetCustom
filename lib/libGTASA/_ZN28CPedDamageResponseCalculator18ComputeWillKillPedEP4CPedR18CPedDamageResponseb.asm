; =========================================================
; Game Engine Function: _ZN28CPedDamageResponseCalculator18ComputeWillKillPedEP4CPedR18CPedDamageResponseb
; Address            : 0x371F90 - 0x372122
; =========================================================

371F90:  PUSH            {R4-R7,LR}
371F92:  ADD             R7, SP, #0xC
371F94:  PUSH.W          {R8,R9,R11}
371F98:  VPUSH           {D8}
371F9C:  SUB             SP, SP, #0x10
371F9E:  MOV             R9, R1
371FA0:  MOV             R5, R0
371FA2:  MOV             R0, R9; this
371FA4:  MOV             R8, R3
371FA6:  MOV             R6, R2
371FA8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371FAC:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x371FB2)
371FAE:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
371FB0:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
371FB2:  LDRB.W          R1, [R1,#(byte_796839 - 0x7967F4)]
371FB6:  CMP             R1, #0
371FB8:  IT NE
371FBA:  CMPNE           R0, #0
371FBC:  BEQ             loc_371FC4
371FBE:  LDR             R0, [R5,#0xC]
371FC0:  CMP             R0, #0x2F ; '/'
371FC2:  BLT             loc_372032
371FC4:  ADDW            R4, R9, #0x544
371FC8:  MOV             R0, R5; int
371FCA:  MOV             R1, R9; this
371FCC:  VLDR            S16, [R4]
371FD0:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeWillForceDeathEP4CPedR18CPedDamageResponse; CPedDamageResponseCalculator::ComputeWillForceDeath(CPed *,CPedDamageResponse &)
371FD4:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x371FDC)
371FD6:  STRB            R0, [R6,#9]
371FD8:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
371FDA:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
371FDC:  LDRB.W          R0, [R1,#(byte_79683F - 0x7967F4)]
371FE0:  CBZ             R0, loc_371FF0
371FE2:  LDR             R0, [R5,#0xC]
371FE4:  CMP             R0, #2
371FE6:  BCC             loc_371FEC
371FE8:  CMP             R0, #0x2E ; '.'
371FEA:  BNE             loc_371FF0
371FEC:  LDR             R0, [R4]
371FEE:  STR             R0, [R5,#4]
371FF0:  MOV.W           R0, #0xFFFFFFFF; int
371FF4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371FF8:  CMP             R0, R9
371FFA:  BNE             loc_372022
371FFC:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x372002)
371FFE:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
372000:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
372002:  LDR             R0, [R0]; CTheScripts::pActiveScripts
372004:  CBZ             R0, loc_372022
372006:  LDR             R1, =(aIntro1 - 0x37200E); "intro1"
372008:  ADDS            R0, #8; char *
37200A:  ADD             R1, PC; "intro1"
37200C:  BLX             strcmp
372010:  CBNZ            R0, loc_372022
372012:  VLDR            S0, =0.77
372016:  VLDR            S2, [R5,#4]
37201A:  VMUL.F32        S0, S2, S0
37201E:  VSTR            S0, [R5,#4]
372022:  LDRB            R0, [R6,#9]
372024:  CBZ             R0, loc_37203E
372026:  MOVS            R0, #1
372028:  STRB            R0, [R6,#8]
37202A:  LDR             R0, [R4]
37202C:  STR             R0, [R6]
37202E:  MOVS            R0, #0
372030:  STR             R0, [R4]
372032:  ADD             SP, SP, #0x10
372034:  VPOP            {D8}
372038:  POP.W           {R8,R9,R11}
37203C:  POP             {R4-R7,PC}
37203E:  LDR             R0, [R5,#0xC]
372040:  CMP             R0, #0x36 ; '6'
372042:  BNE             loc_37207C
372044:  LDRB            R0, [R5,#0x10]
372046:  CBZ             R0, loc_37207C
372048:  MOVS            R0, #0
37204A:  VMOV.F32        S4, #5.0
37204E:  STRB            R0, [R6,#8]
372050:  CMP.W           R8, #1
372054:  VLDR            S0, [R5,#4]
372058:  VLDR            S2, [R4]
37205C:  VSUB.F32        S0, S2, S0
372060:  VMAX.F32        D0, D0, D2
372064:  VSUB.F32        S2, S16, S0
372068:  VSTR            S0, [R4]
37206C:  VSTR            S2, [R6]
372070:  BNE             loc_372032
372072:  STRD.W          R0, R0, [SP,#0x30+var_30]
372076:  MOVW            R1, #0x159
37207A:  B               loc_372112
37207C:  VLDR            S0, [R5,#4]
372080:  VMOV.F32        S4, #1.0
372084:  VLDR            S2, [R4]
372088:  VSUB.F32        S0, S2, S0
37208C:  VCMPE.F32       S0, S4
372090:  VMRS            APSR_nzcv, FPSCR
372094:  BLT             loc_372026
372096:  MOVS            R0, #0
372098:  CMP.W           R8, #1
37209C:  STRB            R0, [R6,#8]
37209E:  LDR             R0, [R5,#4]
3720A0:  STR             R0, [R6]
3720A2:  VLDR            S0, [R5,#4]
3720A6:  VLDR            S2, [R4]
3720AA:  VSUB.F32        S0, S2, S0
3720AE:  VSTR            S0, [R4]
3720B2:  BNE             loc_372032
3720B4:  LDR             R0, [R5,#0xC]
3720B6:  CMP             R0, #0x35 ; '5'
3720B8:  BNE             loc_3720C2
3720BA:  MOVS            R0, #0
3720BC:  MOVW            R1, #0x165
3720C0:  B               loc_37210E
3720C2:  NOP
3720C4:  MOVS            R0, #0; int
3720C6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3720CA:  CMP             R0, R9
3720CC:  BNE             loc_3720E0
3720CE:  BLX             j__ZN10TouchSense8instanceEv; TouchSense::instance(void)
3720D2:  MOVS            R1, #0x14
3720D4:  MOVS            R2, #0x65 ; 'e'; int
3720D6:  STR             R1, [SP,#0x30+var_30]; int
3720D8:  MOVS            R1, #2; int
3720DA:  MOVS            R3, #0x73 ; 's'; int
3720DC:  BLX             j__ZN10TouchSense17playBuiltinEffectEiiii; TouchSense::playBuiltinEffect(int,int,int,int)
3720E0:  VMOV.F32        S0, #5.0
3720E4:  VLDR            S2, [R5,#4]
3720E8:  VCMPE.F32       S2, S0
3720EC:  VMRS            APSR_nzcv, FPSCR
3720F0:  BGE             loc_372108
3720F2:  VMOV.F32        S0, #10.0
3720F6:  VLDR            S2, [R4]
3720FA:  VCMPE.F32       S2, S0
3720FE:  VMRS            APSR_nzcv, FPSCR
372102:  BLE             loc_372108
372104:  MOVS            R0, #0
372106:  B               loc_372072
372108:  MOVS            R0, #0
37210A:  MOV.W           R1, #0x158; unsigned __int16
37210E:  STRD.W          R0, R0, [SP,#0x30+var_30]; unsigned __int8
372112:  STR             R0, [SP,#0x30+var_28]; unsigned __int8
372114:  MOV             R0, R9; this
372116:  MOVS            R2, #0; unsigned int
372118:  MOV.W           R3, #0x3F800000; float
37211C:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
372120:  B               loc_372032
