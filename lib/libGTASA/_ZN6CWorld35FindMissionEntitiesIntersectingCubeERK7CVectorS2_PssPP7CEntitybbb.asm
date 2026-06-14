; =========================================================
; Game Engine Function: _ZN6CWorld35FindMissionEntitiesIntersectingCubeERK7CVectorS2_PssPP7CEntitybbb
; Address            : 0x429F80 - 0x42A136
; =========================================================

429F80:  PUSH            {R4-R7,LR}
429F82:  ADD             R7, SP, #0xC
429F84:  PUSH.W          {R8-R11}
429F88:  SUB             SP, SP, #4
429F8A:  VPUSH           {D8-D10}
429F8E:  SUB             SP, SP, #0x38
429F90:  STRD.W          R3, R2, [SP,#0x70+var_40]
429F94:  MOV             R4, R0
429F96:  VLDR            S16, =50.0
429F9A:  MOV             R6, R1
429F9C:  VLDR            S0, [R4]
429FA0:  VLDR            S20, =60.0
429FA4:  VDIV.F32        S0, S0, S16
429FA8:  VADD.F32        S0, S0, S20
429FAC:  VLDR            S18, [R4,#4]
429FB0:  VMOV            R0, S0; x
429FB4:  BLX             floorf
429FB8:  VDIV.F32        S4, S18, S16
429FBC:  VLDR            S0, [R6]
429FC0:  VADD.F32        S4, S4, S20
429FC4:  VLDR            S2, [R6,#4]
429FC8:  VMOV            S18, R0
429FCC:  VDIV.F32        S0, S0, S16
429FD0:  VMOV            R1, S4
429FD4:  VDIV.F32        S2, S2, S16
429FD8:  MOV             R0, R1; x
429FDA:  VADD.F32        S0, S0, S20
429FDE:  VADD.F32        S16, S2, S20
429FE2:  VMOV            R9, S0
429FE6:  BLX             floorf
429FEA:  VMOV            S20, R0
429FEE:  MOV             R0, R9; x
429FF0:  BLX             floorf
429FF4:  MOV             R9, R0
429FF6:  VMOV            R0, S16; x
429FFA:  LDR             R5, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42A000)
429FFC:  ADD             R5, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429FFE:  BLX             floorf
42A002:  VMOV            S0, R0
42A006:  LDR             R0, [R5]; CWorld::ms_nCurrentScanCode ...
42A008:  VMOV            S2, R9
42A00C:  VCVT.S32.F32    S0, S0
42A010:  VCVT.S32.F32    S16, S2
42A014:  VCVT.S32.F32    S2, S20
42A018:  VCVT.S32.F32    S18, S18
42A01C:  LDRH            R0, [R0]; this
42A01E:  VMOV            R1, S0
42A022:  STR             R1, [SP,#0x70+var_58]
42A024:  VMOV            R1, S2
42A028:  STR             R1, [SP,#0x70+var_50]
42A02A:  MOVW            R1, #0xFFFF
42A02E:  CMP             R0, R1
42A030:  BEQ             loc_42A036
42A032:  ADDS            R0, #1
42A034:  B               loc_42A03C
42A036:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
42A03A:  MOVS            R0, #1
42A03C:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42A044)
42A03E:  MOVS            R5, #0
42A040:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42A042:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
42A044:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
42A046:  LDR             R0, [SP,#0x70+var_3C]
42A048:  STRH            R5, [R0]
42A04A:  LDR             R0, [SP,#0x70+var_58]
42A04C:  LDR             R1, [SP,#0x70+var_50]
42A04E:  CMP             R1, R0
42A050:  BGT             loc_42A128
42A052:  VMOV            R0, S18
42A056:  VMOV            R9, S16
42A05A:  STR             R0, [SP,#0x70+var_54]
42A05C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42A062)
42A05E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42A060:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42A062:  STR             R0, [SP,#0x70+var_44]
42A064:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42A06A)
42A066:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42A068:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42A06A:  STR             R0, [SP,#0x70+var_48]
42A06C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42A072)
42A06E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42A070:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42A072:  STR             R0, [SP,#0x70+var_4C]
42A074:  LDR             R0, [SP,#0x70+var_54]
42A076:  CMP             R0, R9
42A078:  BGT             loc_42A118
42A07A:  LDR             R0, [SP,#0x70+var_50]
42A07C:  LDR.W           R8, [SP,#0x70+var_54]
42A080:  LSLS            R0, R0, #4
42A082:  UXTB.W          R10, R0
42A086:  AND.W           R0, R8, #0xF
42A08A:  ORR.W           R11, R0, R10
42A08E:  LDR             R0, [R7,#arg_4]
42A090:  CMP             R0, #1
42A092:  BNE             loc_42A0B8
42A094:  LDR             R0, [SP,#0x70+var_40]
42A096:  MOV             R2, R6; CVector *
42A098:  STR             R0, [SP,#0x70+var_70]; __int16 *
42A09A:  LDR             R0, [R7,#arg_0]
42A09C:  STR             R0, [SP,#0x70+var_6C]; __int16
42A09E:  MOVS            R0, #(stderr+1)
42A0A0:  STRD.W          R0, R5, [SP,#0x70+var_68]; CEntity **
42A0A4:  ADD.W           R0, R11, R11,LSL#1
42A0A8:  LDR             R1, [SP,#0x70+var_44]
42A0AA:  LDR             R3, [SP,#0x70+var_3C]; CVector *
42A0AC:  ADD.W           R0, R1, R0,LSL#2; this
42A0B0:  MOV             R1, R4; CPtrList *
42A0B2:  STR             R5, [SP,#0x70+var_60]; bool
42A0B4:  BLX             j__ZN6CWorld45FindMissionEntitiesIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntitybbb; CWorld::FindMissionEntitiesIntersectingCubeSectorList(CPtrList &,CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool)
42A0B8:  LDR             R0, [R7,#arg_8]
42A0BA:  CMP             R0, #1
42A0BC:  BNE             loc_42A0E4
42A0BE:  LDR             R0, [SP,#0x70+var_40]
42A0C0:  MOV             R2, R6; CVector *
42A0C2:  STR             R0, [SP,#0x70+var_70]; __int16 *
42A0C4:  LDR             R0, [R7,#arg_0]
42A0C6:  STRD.W          R0, R5, [SP,#0x70+var_6C]; __int16
42A0CA:  MOVS            R0, #1
42A0CC:  STRD.W          R0, R5, [SP,#0x70+var_64]; bool
42A0D0:  ADD.W           R0, R11, R11,LSL#1
42A0D4:  LDR             R1, [SP,#0x70+var_48]
42A0D6:  LDR             R3, [SP,#0x70+var_3C]; CVector *
42A0D8:  ADD.W           R0, R1, R0,LSL#2
42A0DC:  MOV             R1, R4; CPtrList *
42A0DE:  ADDS            R0, #4; this
42A0E0:  BLX             j__ZN6CWorld45FindMissionEntitiesIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntitybbb; CWorld::FindMissionEntitiesIntersectingCubeSectorList(CPtrList &,CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool)
42A0E4:  LDR             R0, [R7,#arg_C]
42A0E6:  CMP             R0, #1
42A0E8:  BNE             loc_42A10E
42A0EA:  LDR             R0, [SP,#0x70+var_40]
42A0EC:  MOV             R2, R6; CVector *
42A0EE:  STR             R0, [SP,#0x70+var_70]; __int16 *
42A0F0:  LDR             R0, [R7,#arg_0]
42A0F2:  STRD.W          R0, R5, [SP,#0x70+var_6C]; __int16
42A0F6:  ADD.W           R0, R11, R11,LSL#1
42A0FA:  STRD.W          R5, R5, [SP,#0x70+var_64]; bool
42A0FE:  LDR             R1, [SP,#0x70+var_4C]
42A100:  LDR             R3, [SP,#0x70+var_3C]; CVector *
42A102:  ADD.W           R0, R1, R0,LSL#2
42A106:  MOV             R1, R4; CPtrList *
42A108:  ADDS            R0, #8; this
42A10A:  BLX             j__ZN6CWorld45FindMissionEntitiesIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntitybbb; CWorld::FindMissionEntitiesIntersectingCubeSectorList(CPtrList &,CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool)
42A10E:  ADD.W           R0, R8, #1
42A112:  CMP             R8, R9
42A114:  MOV             R8, R0
42A116:  BLT             loc_42A086
42A118:  LDR             R0, [SP,#0x70+var_50]
42A11A:  LDR             R1, [SP,#0x70+var_58]
42A11C:  MOV             R2, R0
42A11E:  CMP             R2, R1
42A120:  ADD.W           R0, R2, #1
42A124:  STR             R0, [SP,#0x70+var_50]
42A126:  BLT             loc_42A074
42A128:  ADD             SP, SP, #0x38 ; '8'
42A12A:  VPOP            {D8-D10}
42A12E:  ADD             SP, SP, #4
42A130:  POP.W           {R8-R11}
42A134:  POP             {R4-R7,PC}
