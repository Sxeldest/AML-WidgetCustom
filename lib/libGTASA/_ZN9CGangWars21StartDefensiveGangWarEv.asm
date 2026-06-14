; =========================================================
; Game Engine Function: _ZN9CGangWars21StartDefensiveGangWarEv
; Address            : 0x30AD70 - 0x30AF12
; =========================================================

30AD70:  PUSH            {R4-R7,LR}
30AD72:  ADD             R7, SP, #0xC
30AD74:  PUSH.W          {R11}
30AD78:  SUB             SP, SP, #0x18
30AD7A:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
30AD7E:  CMP             R0, #0
30AD80:  BNE.W           loc_30AE90
30AD84:  BLX             j__ZN9CGangWars16PickZoneToAttackEv; CGangWars::PickZoneToAttack(void)
30AD88:  CMP             R0, #1
30AD8A:  BNE.W           loc_30AE90
30AD8E:  LDR             R0, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x30AD98)
30AD90:  ADR             R4, aGwAtk; "GW_ATK"
30AD92:  LDR             R1, =(_ZN9CGangWars10DifficultyE_ptr - 0x30AD9C)
30AD94:  ADD             R0, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
30AD96:  LDR             R2, =(TheText_ptr - 0x30ADA0)
30AD98:  ADD             R1, PC; _ZN9CGangWars10DifficultyE_ptr
30AD9A:  LDR             R0, [R0]; CGangWars::TerritoryUnderControlPercentage ...
30AD9C:  ADD             R2, PC; TheText_ptr
30AD9E:  LDR             R1, [R1]; CGangWars::Difficulty ...
30ADA0:  LDR             R3, [R0]; CGangWars::TerritoryUnderControlPercentage
30ADA2:  LDR             R0, [R2]; TheText ; this
30ADA4:  STR             R3, [R1]; CGangWars::Difficulty
30ADA6:  MOV             R1, R4; CKeyGen *
30ADA8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30ADAC:  MOV             R1, R0; char *
30ADAE:  MOVS            R0, #0
30ADB0:  MOVS            R5, #1
30ADB2:  MOVS            R2, #(stderr+1); unsigned __int16 *
30ADB4:  STRD.W          R5, R0, [SP,#0x28+var_28]; bool
30ADB8:  MOV             R0, R4; this
30ADBA:  MOVS            R3, #0; bool
30ADBC:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
30ADC0:  LDR             R0, =(_ZN9CGangWars6State2E_ptr - 0x30ADCA)
30ADC2:  MOV.W           R1, #0xFFFFFFFF
30ADC6:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
30ADC8:  LDR             R0, [R0]; CGangWars::State2 ...
30ADCA:  STR             R5, [R0]; CGangWars::State2
30ADCC:  ADD             R0, SP, #0x28+var_1C; int
30ADCE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30ADD2:  LDR             R0, =(_ZN9CGangWars13PointOfAttackE_ptr - 0x30ADDC)
30ADD4:  VLDR            S4, [SP,#0x28+var_1C]
30ADD8:  ADD             R0, PC; _ZN9CGangWars13PointOfAttackE_ptr
30ADDA:  VLDR            S6, [SP,#0x28+var_18]
30ADDE:  LDR             R1, =(_ZN9CGangWars10FightTimerE_ptr - 0x30ADE8)
30ADE0:  LDR             R0, [R0]; CGangWars::PointOfAttack ...
30ADE2:  LDR             R2, =(_ZN9CGangWars5Gang1E_ptr - 0x30ADF0)
30ADE4:  ADD             R1, PC; _ZN9CGangWars10FightTimerE_ptr
30ADE6:  LDR             R3, =(gaGangColoursB_ptr - 0x30ADF6)
30ADE8:  VLDR            S0, [R0]
30ADEC:  ADD             R2, PC; _ZN9CGangWars5Gang1E_ptr
30ADEE:  VLDR            S2, [R0,#4]
30ADF2:  ADD             R3, PC; gaGangColoursB_ptr
30ADF4:  VSUB.F32        S4, S4, S0
30ADF8:  LDR.W           R12, =(gaGangColoursG_ptr - 0x30AE0A)
30ADFC:  VSUB.F32        S6, S6, S2
30AE00:  LDR.W           LR, =(gaGangColoursR_ptr - 0x30AE0E)
30AE04:  LDR             R1, [R1]; CGangWars::FightTimer ...
30AE06:  ADD             R12, PC; gaGangColoursG_ptr
30AE08:  LDR             R6, [R2]; CGangWars::Gang1 ...
30AE0A:  ADD             LR, PC; gaGangColoursR_ptr
30AE0C:  LDR.W           R2, [R12]; gaGangColoursG
30AE10:  ADR.W           R12, aCodegw1; "CODEGW1"
30AE14:  LDR.W           R4, [LR]; gaGangColoursR
30AE18:  MOV.W           LR, #2
30AE1C:  LDR             R5, [R3]; gaGangColoursB
30AE1E:  VMUL.F32        S4, S4, S4
30AE22:  VMUL.F32        S6, S6, S6
30AE26:  VADD.F32        S4, S4, S6
30AE2A:  VLDR            S6, =200.0
30AE2E:  VSQRT.F32       S4, S4
30AE32:  VMUL.F32        S4, S4, S6
30AE36:  VLDR            S6, =240000.0
30AE3A:  VADD.F32        S4, S4, S6
30AE3E:  VCVT.S32.F32    S4, S4
30AE42:  LDR             R3, [R0,#(dword_7A2330 - 0x7A2328)]
30AE44:  VSTR            S4, [R1]
30AE48:  LDR             R1, [R6]; CGangWars::Gang1
30AE4A:  LDRB            R0, [R5,R1]
30AE4C:  LDRB            R5, [R2,R1]
30AE4E:  LDRB            R2, [R4,R1]
30AE50:  VMOV            R1, S0
30AE54:  LSLS            R4, R2, #0x18
30AE56:  VMOV            R2, S2
30AE5A:  ORR.W           R4, R4, R5,LSL#16
30AE5E:  ORR.W           R0, R4, R0,LSL#8
30AE62:  ORR.W           R0, R0, #0xFF
30AE66:  STRD.W          R0, LR, [SP,#0x28+var_28]
30AE6A:  MOVS            R0, #4
30AE6C:  STR.W           R12, [SP,#0x28+var_20]
30AE70:  BLX             j__ZN6CRadar12SetCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc; CRadar::SetCoordBlip(eBlipType,CVector,uint,eBlipDisplay,char *)
30AE74:  LDR             R1, =(_ZN9CGangWars9RadarBlipE_ptr - 0x30AE7A)
30AE76:  ADD             R1, PC; _ZN9CGangWars9RadarBlipE_ptr
30AE78:  LDR             R1, [R1]; CGangWars::RadarBlip ...
30AE7A:  STR             R0, [R1]; CGangWars::RadarBlip
30AE7C:  LDR             R1, [R6]; CGangWars::Gang1
30AE7E:  CMP             R1, #4; switch 5 cases
30AE80:  BHI             def_30AE82; jumptable 0030AE82 default case, case 1
30AE82:  TBB.W           [PC,R1]; switch jump
30AE86:  DCB 0x28; jump table for switch statement
30AE87:  DCB 0x2A
30AE88:  DCB 3
30AE89:  DCB 0x2C
30AE8A:  DCB 3
30AE8B:  ALIGN 2
30AE8C:  MOVS            R1, #0x3C ; '<'; jumptable 0030AE82 cases 2,4
30AE8E:  B               loc_30AEE0
30AE90:  BLX             rand
30AE94:  VMOV            S0, R0
30AE98:  VLDR            S2, =4.6566e-10
30AE9C:  LDR             R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30AEA6)
30AE9E:  VCVT.F32.S32    S0, S0
30AEA2:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30AEA4:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
30AEA6:  VMUL.F32        S0, S0, S2
30AEAA:  VLDR            S2, =0.9
30AEAE:  VMUL.F32        S0, S0, S2
30AEB2:  VLDR            S2, =0.6
30AEB6:  VADD.F32        S0, S0, S2
30AEBA:  VLDR            S2, =1080000.0
30AEBE:  VMUL.F32        S0, S0, S2
30AEC2:  VCVT.U32.F32    S0, S0
30AEC6:  VCVT.F32.U32    S0, S0
30AECA:  VSTR            S0, [R0]
30AECE:  ADD             SP, SP, #0x18
30AED0:  POP.W           {R11}
30AED4:  POP             {R4-R7,PC}
30AED6:  MOVS            R1, #0x3B ; ';'; jumptable 0030AE82 case 0
30AED8:  B               loc_30AEE0
30AEDA:  MOVS            R1, #0x13; jumptable 0030AE82 default case, case 1
30AEDC:  B               loc_30AEE0
30AEDE:  MOVS            R1, #0x3A ; ':'; jumptable 0030AE82 case 3
30AEE0:  BLX             j__ZN6CRadar13SetBlipSpriteEii; CRadar::SetBlipSprite(int,int)
30AEE4:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30AEEE)
30AEE6:  MOVS            R2, #0
30AEE8:  LDR             R1, =(_ZN9CGangWars16bPlayerIsClosebyE_ptr - 0x30AEF0)
30AEEA:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30AEEC:  ADD             R1, PC; _ZN9CGangWars16bPlayerIsClosebyE_ptr
30AEEE:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30AEF0:  LDR             R1, [R1]; CGangWars::bPlayerIsCloseby ...
30AEF2:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver
30AEF4:  STRB            R2, [R1]; CGangWars::bPlayerIsCloseby
30AEF6:  MOVS            R2, #0xA00000FF
30AEFC:  LDRH.W          R1, [R0,#0xF]
30AF00:  STR.W           R2, [R0,#0xB]
30AF04:  BIC.W           R1, R1, #0x60 ; '`'
30AF08:  ORR.W           R1, R1, #0x40 ; '@'
30AF0C:  STRH.W          R1, [R0,#0xF]
30AF10:  B               loc_30AECE
