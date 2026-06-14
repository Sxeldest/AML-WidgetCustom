; =========================================================
; Game Engine Function: _ZN11CFileLoader15LoadPedPathNodeEPKcii
; Address            : 0x46A088 - 0x46A1F6
; =========================================================

46A088:  PUSH            {R4-R7,LR}
46A08A:  ADD             R7, SP, #0xC
46A08C:  PUSH.W          {R8-R11}
46A090:  SUB             SP, SP, #0x64
46A092:  MOV             R8, R2
46A094:  MOV.W           R2, #0x3F800000
46A098:  ADD             R3, SP, #0x80+var_50
46A09A:  STR             R2, [SP,#0x80+var_50]
46A09C:  MOV.W           R9, #0
46A0A0:  ADD             R2, SP, #0x80+var_3C
46A0A2:  STR.W           R9, [SP,#0x80+var_3C]
46A0A6:  ADD             R4, SP, #0x80+var_38
46A0A8:  STRD.W          R4, R3, [SP,#0x80+var_60]
46A0AC:  ADD             R3, SP, #0x80+var_40
46A0AE:  STR             R2, [SP,#0x80+var_58]; bool
46A0B0:  ADD             R2, SP, #0x80+var_48
46A0B2:  MOV             R10, R1
46A0B4:  LDR             R1, =(aDDDFFFFDDDDFD - 0x46A0D6); "%d %d %d %f %f %f %f %d %d %d %d %f %d"
46A0B6:  ADD             R4, SP, #0x80+var_28
46A0B8:  STRD.W          R4, R3, [SP,#0x80+var_80]; float
46A0BC:  ADD             R5, SP, #0x80+var_44
46A0BE:  STRD.W          R5, R2, [SP,#0x80+var_78]; float
46A0C2:  ADD.W           LR, SP, #0x80+var_30
46A0C6:  ADD.W           R11, SP, #0x80+var_2C
46A0CA:  ADD             R6, SP, #0x80+var_4C
46A0CC:  ADD             R2, SP, #0x80+var_70
46A0CE:  STM.W           R2, {R6,R11,LR}
46A0D2:  ADD             R1, PC; "%d %d %d %f %f %f %f %d %d %d %d %f %d"
46A0D4:  ADD             R2, SP, #0x80+var_20
46A0D6:  ADD             R3, SP, #0x80+var_24
46A0D8:  ADD.W           R12, SP, #0x80+var_34
46A0DC:  STR.W           R12, [SP,#0x80+var_64]
46A0E0:  BLX             sscanf
46A0E4:  ADDS.W          R0, R10, #1
46A0E8:  BEQ             loc_46A168
46A0EA:  VLDR            S2, [SP,#0x80+var_40]
46A0EE:  VMOV.F32        S4, #15.0
46A0F2:  VLDR            S8, [SP,#0x80+var_48]
46A0F6:  VLDR            S10, [SP,#0x80+var_44]
46A0FA:  LDR             R2, [SP,#0x80+var_3C]
46A0FC:  VLDR            S6, [SP,#0x80+var_50]
46A100:  LDRSB.W         R3, [SP,#0x80+var_20]; signed __int8
46A104:  CMP             R2, #0
46A106:  LDRSB.W         R0, [SP,#0x80+var_24]
46A10A:  VLDR            S0, [SP,#0x80+var_4C]
46A10E:  VMUL.F32        S4, S6, S4
46A112:  LDR             R1, [SP,#0x80+var_28]
46A114:  VCVT.S32.F32    S2, S2
46A118:  VCVT.S32.F32    S10, S10
46A11C:  LDR             R6, =(ThePaths_ptr - 0x46A138)
46A11E:  VCVT.S32.F32    S8, S8
46A122:  STR.W           R9, [SP,#0x80+var_60]; unsigned __int8
46A126:  IT NE
46A128:  MOVNE           R2, #1
46A12A:  CMP             R1, #0
46A12C:  STR             R2, [SP,#0x80+var_64]; bool
46A12E:  IT NE
46A130:  MOVNE           R1, #1
46A132:  STR             R1, [SP,#0x80+var_6C]; bool
46A134:  ADD             R6, PC; ThePaths_ptr
46A136:  VSTR            S0, [SP,#0x80+var_70]
46A13A:  VMOV            R1, S8
46A13E:  STR             R1, [SP,#0x80+var_74]; __int16
46A140:  VMOV            R1, S10
46A144:  STR             R1, [SP,#0x80+var_78]; __int16
46A146:  VMOV            R1, S2
46A14A:  STR             R1, [SP,#0x80+var_7C]; __int16
46A14C:  VCVT.U32.F32    S0, S4
46A150:  STR             R0, [SP,#0x80+var_80]; signed __int8
46A152:  SXTH.W          R1, R10; __int16
46A156:  LDR             R0, [R6]; ThePaths ; this
46A158:  VMOV            R2, S0
46A15C:  STR             R2, [SP,#0x80+var_68]; unsigned __int8
46A15E:  SXTH.W          R2, R8; __int16
46A162:  BLX             j__ZN9CPathFind16StoreNodeInfoPedEssaasssfbhbh; CPathFind::StoreNodeInfoPed(short,short,signed char,signed char,short,short,short,float,bool,uchar,bool,uchar)
46A166:  B               loc_46A1EE
46A168:  VLDR            S4, [SP,#0x80+var_40]
46A16C:  VMOV.F32        S8, #15.0
46A170:  VLDR            S6, [SP,#0x80+var_48]
46A174:  VLDR            S10, [SP,#0x80+var_44]
46A178:  VLDR            S2, [SP,#0x80+var_50]
46A17C:  LDR             R1, [SP,#0x80+var_28]
46A17E:  LDR             R3, [SP,#0x80+var_24]; int
46A180:  LDRSB.W         R2, [SP,#0x80+var_20]; signed __int8
46A184:  CMP             R1, #0
46A186:  VLDR            S0, [SP,#0x80+var_4C]
46A18A:  VMUL.F32        S2, S2, S8
46A18E:  LDR             R0, [SP,#0x80+var_38]
46A190:  LDRB.W          R6, [SP,#0x80+var_3C]
46A194:  VCVT.S32.F32    S6, S6
46A198:  VCVT.S32.F32    S10, S10
46A19C:  LDR             R5, =(ThePaths_ptr - 0x46A1AA)
46A19E:  VCVT.S32.F32    S4, S4
46A1A2:  STRD.W          R6, R9, [SP,#0x80+var_5C]; unsigned __int8
46A1A6:  ADD             R5, PC; ThePaths_ptr
46A1A8:  VCVT.F32.S32    S4, S4
46A1AC:  UBFX.W          R6, R0, #0xB, #1
46A1B0:  STR             R6, [SP,#0x80+var_60]; bool
46A1B2:  VCVT.F32.S32    S6, S6
46A1B6:  VCVT.F32.S32    S10, S10
46A1BA:  UBFX.W          R6, R0, #2, #1
46A1BE:  STR             R6, [SP,#0x80+var_68]; bool
46A1C0:  AND.W           R0, R0, #1
46A1C4:  STR             R0, [SP,#0x80+var_6C]; bool
46A1C6:  IT NE
46A1C8:  MOVNE           R1, #1
46A1CA:  STR             R1, [SP,#0x80+var_70]; bool
46A1CC:  VSTR            S0, [SP,#0x80+var_74]
46A1D0:  LDR             R0, [R5]; ThePaths ; this
46A1D2:  VSTR            S6, [SP,#0x80+var_78]
46A1D6:  VSTR            S10, [SP,#0x80+var_7C]
46A1DA:  VCVT.U32.F32    S0, S2
46A1DE:  VSTR            S4, [SP,#0x80+var_80]
46A1E2:  VMOV            R1, S0
46A1E6:  STR             R1, [SP,#0x80+var_64]; unsigned __int8
46A1E8:  MOV             R1, R8; int
46A1EA:  BLX             j__ZN9CPathFind24StoreDetachedNodeInfoPedEiaiffffbbbhbhb; CPathFind::StoreDetachedNodeInfoPed(int,signed char,int,float,float,float,float,bool,bool,bool,uchar,bool,uchar,bool)
46A1EE:  ADD             SP, SP, #0x64 ; 'd'
46A1F0:  POP.W           {R8-R11}
46A1F4:  POP             {R4-R7,PC}
