; =========================================================
; Game Engine Function: _ZN8CVehicle14ProcessWeaponsEv
; Address            : 0x58DEA8 - 0x58E104
; =========================================================

58DEA8:  PUSH            {R4-R7,LR}
58DEAA:  ADD             R7, SP, #0xC
58DEAC:  PUSH.W          {R8}
58DEB0:  SUB             SP, SP, #8
58DEB2:  MOV             R8, R0
58DEB4:  LDR.W           R0, [R8,#0x5A4]
58DEB8:  CMP             R0, #4
58DEBA:  BNE             loc_58DED8
58DEBC:  MOV.W           R0, #0xFFFFFFFF; int
58DEC0:  MOVS            R1, #0; bool
58DEC2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
58DEC6:  CMP             R0, R8
58DEC8:  BNE             loc_58DED8
58DECA:  LDR.W           R0, [R8,#0x9F0]
58DECE:  CMP             R0, #0
58DED0:  ITT EQ
58DED2:  MOVEQ           R0, #0; this
58DED4:  BLXEQ           j__ZN14CWeaponEffects25ClearCrossHairImmediatelyEi; CWeaponEffects::ClearCrossHairImmediately(int)
58DED8:  LDRB.W          R0, [R8,#0x47]
58DEDC:  LSLS            R0, R0, #0x1A
58DEDE:  BMI.W           loc_58E0E4; jumptable 0058E078 cases 465-475,477-486,488-496
58DEE2:  MOVS            R0, #0
58DEE4:  MOVS            R1, #8
58DEE6:  STRB.W          R0, [R7,#var_11]
58DEEA:  STR             R0, [SP,#0x18+var_18]
58DEEC:  LDRB.W          R0, [R8,#0x3A]
58DEF0:  ORR.W           R0, R1, R0,LSR#3
58DEF4:  CMP             R0, #8
58DEF6:  BNE             loc_58DF38
58DEF8:  SUB.W           R1, R7, #-var_11
58DEFC:  MOV             R2, SP
58DEFE:  MOV             R0, R8
58DF00:  BLX             j__ZN8CVehicle26GetPlaneWeaponFiringStatusERbR13eOrdnanceType; CVehicle::GetPlaneWeaponFiringStatus(bool &,eOrdnanceType &)
58DF04:  MOV             R1, R0
58DF06:  LDRSH.W         R2, [R8,#0x26]
58DF0A:  LDR             R5, [SP,#0x18+var_18]
58DF0C:  LDRB.W          R0, [R7,#var_11]
58DF10:  CMP.W           R2, #0x1DC
58DF14:  BGE             loc_58DF48
58DF16:  MOVW            R3, #0x1A9
58DF1A:  CMP             R2, R3
58DF1C:  BEQ             loc_58DF56
58DF1E:  MOVW            R3, #0x1BF
58DF22:  CMP             R2, R3
58DF24:  IT NE
58DF26:  CMPNE.W         R2, #0x1D0
58DF2A:  BNE             loc_58DFC6
58DF2C:  CMP             R0, #0
58DF2E:  ITE EQ
58DF30:  LDRBEQ.W        R2, [R8,#0x523]
58DF34:  MOVNE           R2, #1
58DF36:  B               loc_58DFC2
58DF38:  LDRB.W          R0, [R8,#0x430]
58DF3C:  LSLS            R0, R0, #0x1B
58DF3E:  BMI             loc_58DF5C
58DF40:  MOVS            R0, #0
58DF42:  MOVS            R5, #0
58DF44:  MOVS            R1, #0
58DF46:  B               loc_58DFC6
58DF48:  BEQ             loc_58DF82
58DF4A:  CMP.W           R2, #0x208
58DF4E:  BEQ             loc_58DF94
58DF50:  CMP.W           R2, #0x240
58DF54:  BNE             loc_58DFC6
58DF56:  CBZ             R0, loc_58DFB8
58DF58:  MOVS            R2, #1
58DF5A:  B               loc_58DFBC
58DF5C:  MOVS            R0, #1
58DF5E:  STRB.W          R0, [R7,#var_11]
58DF62:  STR             R0, [SP,#0x18+var_18]
58DF64:  LDRH.W          R1, [R8,#0x26]
58DF68:  CMP.W           R1, #0x208
58DF6C:  BNE             loc_58DFB4
58DF6E:  LDRB.W          R0, [R8,#0x523]
58DF72:  CMP             R0, #3
58DF74:  BNE.W           loc_58E0EC
58DF78:  MOVS            R5, #2
58DF7A:  MOVS            R1, #0
58DF7C:  MOVS            R0, #1
58DF7E:  STR             R5, [SP,#0x18+var_18]
58DF80:  B               loc_58DFC6
58DF82:  CMP             R0, #0
58DF84:  ITE EQ
58DF86:  LDRBEQ.W        R2, [R8,#0x523]
58DF8A:  MOVNE           R2, #1
58DF8C:  CMP             R5, #1
58DF8E:  IT EQ
58DF90:  MOVEQ           R2, #2
58DF92:  B               loc_58DFC2
58DF94:  CMP             R0, #0
58DF96:  ITE EQ
58DF98:  LDRBEQ.W        R2, [R8,#0x523]
58DF9C:  MOVNE           R2, #1
58DF9E:  CMP             R5, #2
58DFA0:  STRB.W          R2, [R8,#0x523]
58DFA4:  BEQ.W           loc_58E0F4
58DFA8:  CMP             R5, #1
58DFAA:  ITT EQ
58DFAC:  MOVEQ           R2, #4
58DFAE:  STRBEQ.W        R2, [R8,#0x523]
58DFB2:  B               loc_58DFC6
58DFB4:  MOVS            R1, #0
58DFB6:  B               loc_58E0F0
58DFB8:  LDRB.W          R2, [R8,#0x523]
58DFBC:  CMP             R5, #1
58DFBE:  IT EQ
58DFC0:  MOVEQ           R2, #4
58DFC2:  STRB.W          R2, [R8,#0x523]
58DFC6:  LDRB.W          R2, [R8,#0x523]
58DFCA:  SUBS            R2, #1; switch 4 cases
58DFCC:  CMP             R2, #3
58DFCE:  BHI             def_58DFD0; jumptable 0058DFD0 default case
58DFD0:  TBB.W           [PC,R2]; switch jump
58DFD4:  DCB 2; jump table for switch statement
58DFD5:  DCB 7
58DFD6:  DCB 0xE
58DFD7:  DCB 0x18
58DFD8:  CBZ             R0, def_58DFD0; jumptable 0058DFD0 case 1
58DFDA:  MOV             R0, R8; this
58DFDC:  BLX.W           j__ZN8CVehicle13FirePlaneGunsEv; CVehicle::FirePlaneGuns(void)
58DFE0:  B               def_58DFD0; jumptable 0058DFD0 default case
58DFE2:  CBZ             R5, def_58DFD0; jumptable 0058DFD0 case 2
58DFE4:  MOV             R0, R8
58DFE6:  MOV             R1, R5
58DFE8:  MOVS            R2, #1
58DFEA:  BLX             j__ZN8CVehicle33PossiblyDropFreeFallBombForPlayerE13eOrdnanceTypeb; CVehicle::PossiblyDropFreeFallBombForPlayer(eOrdnanceType,bool)
58DFEE:  B               def_58DFD0; jumptable 0058DFD0 default case
58DFF0:  CBZ             R5, def_58DFD0; jumptable 0058DFD0 case 3
58DFF2:  LDRB.W          R0, [R8,#0x3A]
58DFF6:  MOVS            R2, #8
58DFF8:  ORR.W           R0, R2, R0,LSR#3
58DFFC:  CMP             R0, #8
58DFFE:  BNE             loc_58E012
58E000:  CBNZ            R1, loc_58E03E
58E002:  B               def_58DFD0; jumptable 0058DFD0 default case
58E004:  CBZ             R5, def_58DFD0; jumptable 0058DFD0 case 4
58E006:  MOV             R0, R8
58E008:  MOV             R1, R5
58E00A:  MOVS            R2, #1
58E00C:  BLX             j__ZN8CVehicle19FireUnguidedMissileE13eOrdnanceTypeb; CVehicle::FireUnguidedMissile(eOrdnanceType,bool)
58E010:  B               def_58DFD0; jumptable 0058DFD0 default case
58E012:  LDRSB.W         R0, [R8,#0x3BE]
58E016:  SUBS            R0, #0x23 ; '#'
58E018:  CMP             R0, #0x1C
58E01A:  BHI.W           loc_58E0F8
58E01E:  MOVS            R1, #1
58E020:  LSL.W           R0, R1, R0
58E024:  MOVS            R1, #0x11000001
58E02A:  TST             R0, R1
58E02C:  BEQ.W           loc_58E0F8
58E030:  MOV.W           R0, #0xFFFFFFFF; int
58E034:  MOVS            R1, #0; bool
58E036:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
58E03A:  MOV             R1, R0
58E03C:  CBZ             R1, def_58DFD0; jumptable 0058DFD0 default case
58E03E:  MOV             R0, R8
58E040:  MOV             R2, R5
58E042:  MOVS            R3, #1
58E044:  BLX             j__ZN8CVehicle22FireHeatSeakingMissileEP7CEntity13eOrdnanceTypeb; CVehicle::FireHeatSeakingMissile(CEntity *,eOrdnanceType,bool)
58E048:  LDR.W           R0, [R8,#0x5A4]; jumptable 0058DFD0 default case
58E04C:  CMP             R0, #4
58E04E:  BEQ             loc_58E05A
58E050:  CMP             R0, #3
58E052:  BNE             loc_58E0E4; jumptable 0058E078 cases 465-475,477-486,488-496
58E054:  ADD.W           R0, R8, #0xA20
58E058:  B               loc_58E05E
58E05A:  ADDW            R0, R8, #0x9E8
58E05E:  LDR             R5, [R0]
58E060:  CMP             R5, #0
58E062:  BEQ             loc_58E0E4; jumptable 0058E078 cases 465-475,477-486,488-496
58E064:  LDRSH.W         R0, [R8,#0x26]
58E068:  MOVS            R6, #1
58E06A:  CMP.W           R0, #0x208
58E06E:  BGE             loc_58E0A2
58E070:  SUB.W           R1, R0, #0x1D0; switch 34 cases
58E074:  CMP             R1, #0x21 ; '!'
58E076:  BHI             def_58E078; jumptable 0058E078 default case
58E078:  TBB.W           [PC,R1]; switch jump
58E07C:  DCB 0x24; jump table for switch statement
58E07D:  DCB 0x34
58E07E:  DCB 0x34
58E07F:  DCB 0x34
58E080:  DCB 0x34
58E081:  DCB 0x34
58E082:  DCB 0x34
58E083:  DCB 0x34
58E084:  DCB 0x34
58E085:  DCB 0x34
58E086:  DCB 0x34
58E087:  DCB 0x34
58E088:  DCB 0x11
58E089:  DCB 0x34
58E08A:  DCB 0x34
58E08B:  DCB 0x34
58E08C:  DCB 0x34
58E08D:  DCB 0x34
58E08E:  DCB 0x34
58E08F:  DCB 0x34
58E090:  DCB 0x34
58E091:  DCB 0x34
58E092:  DCB 0x34
58E093:  DCB 0x24
58E094:  DCB 0x34
58E095:  DCB 0x34
58E096:  DCB 0x34
58E097:  DCB 0x34
58E098:  DCB 0x34
58E099:  DCB 0x34
58E09A:  DCB 0x34
58E09B:  DCB 0x34
58E09C:  DCB 0x34
58E09D:  DCB 0x24
58E09E:  MOVS            R6, #6; jumptable 0058E078 case 476
58E0A0:  B               loc_58E0C4; jumptable 0058E078 cases 464,487,497
58E0A2:  BEQ             loc_58E0B0
58E0A4:  CMP.W           R0, #0x224
58E0A8:  BEQ             loc_58E0C4; jumptable 0058E078 cases 464,487,497
58E0AA:  CMP.W           R0, #0x240
58E0AE:  BNE             loc_58E0E4; jumptable 0058E078 cases 465-475,477-486,488-496
58E0B0:  MOVS            R6, #2
58E0B2:  B               loc_58E0C4; jumptable 0058E078 cases 464,487,497
58E0B4:  MOVW            R1, #0x1A9; jumptable 0058E078 default case
58E0B8:  CMP             R0, R1
58E0BA:  BEQ             loc_58E0C4; jumptable 0058E078 cases 464,487,497
58E0BC:  MOVW            R1, #0x1BF
58E0C0:  CMP             R0, R1
58E0C2:  BNE             loc_58E0E4; jumptable 0058E078 cases 465-475,477-486,488-496
58E0C4:  MOVS            R4, #0; jumptable 0058E078 cases 464,487,497
58E0C6:  LDR.W           R0, [R5,R4,LSL#2]
58E0CA:  CBZ             R0, loc_58E0DE
58E0CC:  LDR.W           R1, [R8,#0x18]
58E0D0:  CMP             R1, #0
58E0D2:  ITTE NE
58E0D4:  LDRNE           R1, [R1,#4]
58E0D6:  ADDNE           R1, #0x10
58E0D8:  MOVEQ           R1, #0
58E0DA:  BLX.W           j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
58E0DE:  ADDS            R4, #1
58E0E0:  CMP             R4, R6
58E0E2:  BLT             loc_58E0C6
58E0E4:  ADD             SP, SP, #8; jumptable 0058E078 cases 465-475,477-486,488-496
58E0E6:  POP.W           {R8}
58E0EA:  POP             {R4-R7,PC}
58E0EC:  MOVS            R1, #0
58E0EE:  MOVS            R0, #1
58E0F0:  MOVS            R5, #1
58E0F2:  B               loc_58DFC6
58E0F4:  MOVS            R2, #3
58E0F6:  B               loc_58DFC2
58E0F8:  LDR.W           R1, [R8,#0x420]
58E0FC:  CMP             R1, #0
58E0FE:  BNE.W           loc_58E03E
58E102:  B               def_58DFD0; jumptable 0058DFD0 default case
