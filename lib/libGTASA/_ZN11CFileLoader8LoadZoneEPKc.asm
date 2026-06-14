; =========================================================
; Game Engine Function: _ZN11CFileLoader8LoadZoneEPKc
; Address            : 0x46AEA0 - 0x46AF3A
; =========================================================

46AEA0:  PUSH            {R4-R7,LR}
46AEA2:  ADD             R7, SP, #0xC
46AEA4:  PUSH.W          {R8}
46AEA8:  SUB             SP, SP, #0x68
46AEAA:  LDR             R1, =(__stack_chk_guard_ptr - 0x46AEB6)
46AEAC:  ADD             R6, SP, #0x78+var_40
46AEAE:  ADDS            R4, R6, #4
46AEB0:  ADD             R3, SP, #0x78+var_4C
46AEB2:  ADD             R1, PC; __stack_chk_guard_ptr
46AEB4:  ADD.W           LR, R3, #8
46AEB8:  ADDS            R5, R3, #4
46AEBA:  SUB.W           R8, R7, #-var_33
46AEBE:  LDR             R1, [R1]; __stack_chk_guard
46AEC0:  ADD.W           R12, SP, #0x78+var_54
46AEC4:  LDR             R2, [R1]
46AEC6:  LDR             R1, =(aSDFFFFFFDS - 0x46AEDC); "%s %d %f %f %f %f %f %f %d %s"
46AEC8:  STR             R2, [SP,#0x78+var_14]
46AECA:  ADD.W           R2, R6, #8
46AECE:  STRD.W          R6, R4, [SP,#0x78+var_78]; float
46AED2:  ADD             R4, SP, #0x78+var_70
46AED4:  STM.W           R4, {R2,R3,R5,LR}
46AED8:  ADD             R1, PC; "%s %d %f %f %f %f %f %f %d %s"
46AEDA:  SUB.W           R2, R7, #-var_29
46AEDE:  ADD             R3, SP, #0x78+var_50
46AEE0:  STRD.W          R12, R8, [SP,#0x78+var_60]
46AEE4:  BLX             sscanf
46AEE8:  CMP             R0, #0xA
46AEEA:  BNE             loc_46AF20
46AEEC:  VLDR            S0, [SP,#0x78+var_4C]
46AEF0:  VLDR            S2, [SP,#0x78+var_48]
46AEF4:  VLDR            S4, [SP,#0x78+var_44]
46AEF8:  LDRD.W          R2, R3, [SP,#0x78+var_40]; int
46AEFC:  LDR             R1, [SP,#0x78+var_50]; int
46AEFE:  LDR             R0, [SP,#0x78+var_54]
46AF00:  VLDR            S6, [SP,#0x78+var_38]
46AF04:  STRD.W          R0, R8, [SP,#0x78+var_68]; int
46AF08:  SUB.W           R0, R7, #-var_29; char *
46AF0C:  VSTR            S6, [SP,#0x78+var_78]
46AF10:  VSTR            S0, [SP,#0x78+var_74]
46AF14:  VSTR            S2, [SP,#0x78+var_70]
46AF18:  VSTR            S4, [SP,#0x78+var_6C]
46AF1C:  BLX             j__ZN9CTheZones10CreateZoneEPc9eZoneTypeffffff10eLevelNameS0_; CTheZones::CreateZone(char *,eZoneType,float,float,float,float,float,float,eLevelName,char *)
46AF20:  LDR             R0, =(__stack_chk_guard_ptr - 0x46AF28)
46AF22:  LDR             R1, [SP,#0x78+var_14]
46AF24:  ADD             R0, PC; __stack_chk_guard_ptr
46AF26:  LDR             R0, [R0]; __stack_chk_guard
46AF28:  LDR             R0, [R0]
46AF2A:  SUBS            R0, R0, R1
46AF2C:  ITTT EQ
46AF2E:  ADDEQ           SP, SP, #0x68 ; 'h'
46AF30:  POPEQ.W         {R8}
46AF34:  POPEQ           {R4-R7,PC}
46AF36:  BLX             __stack_chk_fail
