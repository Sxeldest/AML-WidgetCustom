; =========================================================
; Game Engine Function: _ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb
; Address            : 0x4259AC - 0x425B30
; =========================================================

4259AC:  PUSH            {R4-R7,LR}
4259AE:  ADD             R7, SP, #0xC
4259B0:  PUSH.W          {R8-R11}
4259B4:  SUB             SP, SP, #4
4259B6:  VPUSH           {D8}
4259BA:  SUB             SP, SP, #0x20
4259BC:  STRD.W          R0, R1, [SP,#0x48+var_34]
4259C0:  MOV             R10, R2
4259C2:  LDR             R1, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x4259CC)
4259C4:  MOV             R11, R3
4259C6:  LDR             R2, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x4259D0)
4259C8:  ADD             R1, PC; _ZN6CWorld14bIncludeBikersE_ptr
4259CA:  LDR             R0, =(_ZN6CWorld17fWeaponSpreadRateE_ptr - 0x4259D6)
4259CC:  ADD             R2, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
4259CE:  LDR             R6, [R7,#arg_0]
4259D0:  LDR             R1, [R1]; CWorld::bIncludeBikers ...
4259D2:  ADD             R0, PC; _ZN6CWorld17fWeaponSpreadRateE_ptr
4259D4:  LDR             R2, [R2]; CWorld::bIncludeDeadPeds ...
4259D6:  LDR             R5, [R6]
4259D8:  LDRB            R6, [R1]; CWorld::bIncludeBikers
4259DA:  LDR             R3, [R0]; CWorld::fWeaponSpreadRate ...
4259DC:  MOVS            R0, #0
4259DE:  LDRB            R4, [R2]; CWorld::bIncludeDeadPeds
4259E0:  CMP             R6, #0
4259E2:  STRB            R0, [R1]; CWorld::bIncludeBikers
4259E4:  MOV             R9, R6
4259E6:  LDR             R1, [R7,#arg_8]
4259E8:  VLDR            S16, [R3]
4259EC:  MOV             R8, R4
4259EE:  STR             R0, [R3]; CWorld::fWeaponSpreadRate
4259F0:  STRB            R0, [R2]; CWorld::bIncludeDeadPeds
4259F2:  STR             R5, [SP,#0x48+var_2C]
4259F4:  IT NE
4259F6:  MOVNE.W         R9, #1
4259FA:  CMP             R4, #0
4259FC:  IT NE
4259FE:  MOVNE.W         R8, #1
425A02:  CBZ             R1, loc_425A1E
425A04:  LDR             R1, [R7,#arg_4]
425A06:  ADD             R3, SP, #0x48+var_2C
425A08:  STR             R1, [SP,#0x48+var_48]
425A0A:  MOV             R2, R11
425A0C:  LDR             R1, [R7,#arg_1C]
425A0E:  STRD.W          R1, R0, [SP,#0x48+var_44]
425A12:  MOV             R1, R10
425A14:  LDR             R0, [R7,#arg_24]
425A16:  STR             R0, [SP,#0x48+var_3C]
425A18:  LDR             R0, [SP,#0x48+var_34]
425A1A:  BLX             j__ZN6CWorld28ProcessLineOfSightSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybbb; CWorld::ProcessLineOfSightSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool)
425A1E:  LDR             R0, [R7,#arg_C]
425A20:  VCMPE.F32       S16, #0.0
425A24:  MOV             R5, R10
425A26:  VMRS            APSR_nzcv, FPSCR
425A2A:  BLE             loc_425A36
425A2C:  LDR             R1, =(_ZN6CWorld17fWeaponSpreadRateE_ptr - 0x425A32)
425A2E:  ADD             R1, PC; _ZN6CWorld17fWeaponSpreadRateE_ptr
425A30:  LDR             R1, [R1]; CWorld::fWeaponSpreadRate ...
425A32:  VSTR            S16, [R1]
425A36:  LDR.W           R10, [R7,#arg_10]
425A3A:  CMP             R0, #1
425A3C:  BNE             loc_425A5A
425A3E:  LDR             R1, [R7,#arg_4]
425A40:  MOVS            R0, #0
425A42:  STR             R1, [SP,#0x48+var_48]
425A44:  ADD             R3, SP, #0x48+var_2C
425A46:  LDR             R1, [R7,#arg_1C]
425A48:  MOV             R2, R11
425A4A:  STRD.W          R1, R0, [SP,#0x48+var_44]
425A4E:  MOV             R1, R5
425A50:  LDR             R0, [R7,#arg_24]
425A52:  STR             R0, [SP,#0x48+var_3C]
425A54:  LDR             R0, [SP,#0x48+var_30]
425A56:  BLX             j__ZN6CWorld28ProcessLineOfSightSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybbb; CWorld::ProcessLineOfSightSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool)
425A5A:  LDR             R0, [R7,#arg_14]
425A5C:  CMP.W           R10, #1
425A60:  BNE             loc_425AAC
425A62:  MOV             R10, R0
425A64:  CBZ             R4, loc_425A70
425A66:  LDR             R0, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x425A6E)
425A68:  MOVS            R1, #1
425A6A:  ADD             R0, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
425A6C:  LDR             R0, [R0]; CWorld::bIncludeDeadPeds ...
425A6E:  STRB            R1, [R0]; CWorld::bIncludeDeadPeds
425A70:  CBZ             R6, loc_425A7C
425A72:  LDR             R0, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x425A7A)
425A74:  MOVS            R1, #1
425A76:  ADD             R0, PC; _ZN6CWorld14bIncludeBikersE_ptr
425A78:  LDR             R0, [R0]; CWorld::bIncludeBikers ...
425A7A:  STRB            R1, [R0]; CWorld::bIncludeBikers
425A7C:  LDR             R0, [R7,#arg_4]
425A7E:  MOVS            R4, #0
425A80:  STR             R0, [SP,#0x48+var_48]
425A82:  ADD             R3, SP, #0x48+var_2C
425A84:  LDR             R0, [R7,#arg_1C]
425A86:  MOV             R1, R5
425A88:  STRD.W          R0, R4, [SP,#0x48+var_44]
425A8C:  MOV             R2, R11
425A8E:  LDR             R0, [R7,#arg_24]
425A90:  STR             R0, [SP,#0x48+var_3C]
425A92:  LDR             R0, [SP,#0x48+var_30]
425A94:  ADDS            R0, #4
425A96:  BLX             j__ZN6CWorld28ProcessLineOfSightSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybbb; CWorld::ProcessLineOfSightSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool)
425A9A:  LDR             R0, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x425AA2)
425A9C:  LDR             R1, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x425AA4)
425A9E:  ADD             R0, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
425AA0:  ADD             R1, PC; _ZN6CWorld14bIncludeBikersE_ptr
425AA2:  LDR             R0, [R0]; CWorld::bIncludeDeadPeds ...
425AA4:  LDR             R1, [R1]; CWorld::bIncludeBikers ...
425AA6:  STRB            R4, [R0]; CWorld::bIncludeDeadPeds
425AA8:  MOV             R0, R10
425AAA:  STRB            R4, [R1]; CWorld::bIncludeBikers
425AAC:  LDR             R4, [R7,#arg_18]
425AAE:  CMP             R0, #1
425AB0:  BNE             loc_425AD0
425AB2:  LDR             R0, [R7,#arg_20]
425AB4:  ADD             R3, SP, #0x48+var_2C
425AB6:  LDR             R1, [R7,#arg_4]
425AB8:  MOV             R2, R11
425ABA:  STR             R1, [SP,#0x48+var_48]
425ABC:  LDR             R1, [R7,#arg_1C]
425ABE:  STRD.W          R1, R0, [SP,#0x48+var_44]
425AC2:  MOV             R1, R5
425AC4:  LDR             R0, [R7,#arg_24]
425AC6:  STR             R0, [SP,#0x48+var_3C]
425AC8:  LDR             R0, [SP,#0x48+var_30]
425ACA:  ADDS            R0, #8
425ACC:  BLX             j__ZN6CWorld28ProcessLineOfSightSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybbb; CWorld::ProcessLineOfSightSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool)
425AD0:  CMP             R4, #1
425AD2:  BNE             loc_425AF2
425AD4:  LDR             R1, [R7,#arg_4]
425AD6:  MOVS            R0, #0
425AD8:  STR             R1, [SP,#0x48+var_48]
425ADA:  ADD             R3, SP, #0x48+var_2C
425ADC:  LDR             R1, [R7,#arg_1C]
425ADE:  MOV             R2, R11
425AE0:  STRD.W          R1, R0, [SP,#0x48+var_44]
425AE4:  MOV             R1, R5
425AE6:  LDR             R0, [R7,#arg_24]
425AE8:  STR             R0, [SP,#0x48+var_3C]
425AEA:  LDR             R0, [SP,#0x48+var_34]
425AEC:  ADDS            R0, #4
425AEE:  BLX             j__ZN6CWorld28ProcessLineOfSightSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybbb; CWorld::ProcessLineOfSightSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool)
425AF2:  LDR             R0, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x425AFA)
425AF4:  LDR             R1, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x425B00)
425AF6:  ADD             R0, PC; _ZN6CWorld14bIncludeBikersE_ptr
425AF8:  VLDR            S0, [SP,#0x48+var_2C]
425AFC:  ADD             R1, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
425AFE:  LDR             R0, [R0]; CWorld::bIncludeBikers ...
425B00:  LDR             R1, [R1]; CWorld::bIncludeDeadPeds ...
425B02:  STRB.W          R9, [R0]; CWorld::bIncludeBikers
425B06:  LDR             R0, [R7,#arg_0]
425B08:  STRB.W          R8, [R1]; CWorld::bIncludeDeadPeds
425B0C:  VLDR            S2, [R0]
425B10:  VCMPE.F32       S0, S2
425B14:  VMRS            APSR_nzcv, FPSCR
425B18:  ITTE LT
425B1A:  VSTRLT          S0, [R0]
425B1E:  MOVLT           R0, #1
425B20:  MOVGE           R0, #0
425B22:  ADD             SP, SP, #0x20 ; ' '
425B24:  VPOP            {D8}
425B28:  ADD             SP, SP, #4
425B2A:  POP.W           {R8-R11}
425B2E:  POP             {R4-R7,PC}
