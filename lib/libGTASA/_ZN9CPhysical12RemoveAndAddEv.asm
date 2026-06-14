; =========================================================
; Game Engine Function: _ZN9CPhysical12RemoveAndAddEv
; Address            : 0x3FD05C - 0x3FD2D0
; =========================================================

3FD05C:  PUSH            {R4-R7,LR}
3FD05E:  ADD             R7, SP, #0xC
3FD060:  PUSH.W          {R8-R11}
3FD064:  SUB             SP, SP, #4
3FD066:  VPUSH           {D8-D12}
3FD06A:  SUB             SP, SP, #0x30
3FD06C:  MOV             R4, R0
3FD06E:  LDRB            R0, [R4,#0x1D]
3FD070:  LSLS            R0, R0, #0x1F
3FD072:  BNE             loc_3FD11C
3FD074:  LDR             R0, [R4]
3FD076:  MOV             R1, R4
3FD078:  LDR.W           R5, [R4,#0xB4]
3FD07C:  LDR             R2, [R0,#0x28]
3FD07E:  ADD             R0, SP, #0x78+var_58
3FD080:  STR             R4, [SP,#0x78+var_5C]
3FD082:  BLX             R2
3FD084:  VLDR            S16, =50.0
3FD088:  VLDR            S0, [SP,#0x78+var_58]
3FD08C:  VLDR            S24, =60.0
3FD090:  VDIV.F32        S0, S0, S16
3FD094:  VADD.F32        S0, S0, S24
3FD098:  VLDR            S18, [SP,#0x78+var_54]
3FD09C:  VLDR            S20, [SP,#0x78+var_50]
3FD0A0:  VLDR            S22, [SP,#0x78+var_4C]
3FD0A4:  VMOV            R0, S0; x
3FD0A8:  BLX             floorf
3FD0AC:  VDIV.F32        S0, S22, S16
3FD0B0:  MOV             R8, R0
3FD0B2:  VADD.F32        S0, S0, S24
3FD0B6:  VMOV            R0, S0; x
3FD0BA:  BLX             floorf
3FD0BE:  VDIV.F32        S0, S20, S16
3FD0C2:  MOV             R9, R0
3FD0C4:  VADD.F32        S0, S0, S24
3FD0C8:  VMOV            R0, S0; x
3FD0CC:  BLX             floorf
3FD0D0:  VDIV.F32        S0, S18, S16
3FD0D4:  MOV             R6, R0
3FD0D6:  VADD.F32        S0, S0, S24
3FD0DA:  VMOV            R0, S0; x
3FD0DE:  BLX             floorf
3FD0E2:  VMOV            S0, R0
3FD0E6:  LDR             R3, [SP,#0x78+var_5C]
3FD0E8:  VMOV            S2, R6
3FD0EC:  VMOV            S4, R9
3FD0F0:  VCVT.S32.F32    S8, S0
3FD0F4:  VCVT.S32.F32    S0, S2
3FD0F8:  VCVT.S32.F32    S4, S4
3FD0FC:  VMOV            S6, R8
3FD100:  VCVT.S32.F32    S2, S6
3FD104:  VMOV            R0, S8
3FD108:  VMOV            R1, S4
3FD10C:  STR             R0, [SP,#0x78+var_70]
3FD10E:  CMP             R1, R0
3FD110:  BLE             loc_3FD138
3FD112:  MOV             R6, R5
3FD114:  CMP             R5, #0
3FD116:  BNE.W           loc_3FD26A
3FD11A:  B               loc_3FD2C2
3FD11C:  MOV             R0, R4; this
3FD11E:  BLX             j__ZN7CEntity6RemoveEv; CEntity::Remove(void)
3FD122:  MOV             R0, R4; this
3FD124:  ADD             SP, SP, #0x30 ; '0'
3FD126:  VPOP            {D8-D12}
3FD12A:  ADD             SP, SP, #4
3FD12C:  POP.W           {R8-R11}
3FD130:  POP.W           {R4-R7,LR}
3FD134:  B.W             sub_18FCA4
3FD138:  VMOV            R10, S0
3FD13C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3FD14A)
3FD13E:  VMOV            R2, S2
3FD142:  MOV.W           R9, #0
3FD146:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3FD148:  MOV             R6, R5
3FD14A:  LDR.W           R12, [R0]; CWorld::ms_aRepeatSectors ...
3FD14E:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3FD154)
3FD150:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3FD152:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3FD154:  STR             R0, [SP,#0x78+var_68]
3FD156:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3FD15C)
3FD158:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3FD15A:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3FD15C:  STR             R0, [SP,#0x78+var_64]
3FD15E:  STR             R2, [SP,#0x78+var_74]
3FD160:  CMP             R2, R10
3FD162:  STR             R1, [SP,#0x78+var_6C]
3FD164:  BGT             loc_3FD258
3FD166:  LSLS            R0, R1, #4
3FD168:  UXTB            R4, R0
3FD16A:  MOV             R0, R2
3FD16C:  STR             R4, [SP,#0x78+var_60]
3FD16E:  MOV             R11, R0
3FD170:  AND.W           R0, R11, #0xF
3FD174:  ORRS            R0, R4
3FD176:  LDRB.W          R1, [R3,#0x3A]
3FD17A:  ADD.W           R0, R0, R0,LSL#1
3FD17E:  AND.W           R1, R1, #7
3FD182:  CMP             R1, #4
3FD184:  ADD.W           R8, R12, R0,LSL#2
3FD188:  BEQ             loc_3FD23A
3FD18A:  CMP             R1, #3
3FD18C:  BEQ             loc_3FD1D8
3FD18E:  CMP             R1, #2
3FD190:  ITE EQ
3FD192:  MOVEQ           R6, R8
3FD194:  MOVNE           R6, #0
3FD196:  CBZ             R5, loc_3FD1E4
3FD198:  LDRD.W          R1, R0, [R5]
3FD19C:  LDR             R2, [R1]
3FD19E:  CMP             R2, R0
3FD1A0:  ITT EQ
3FD1A2:  LDREQ           R2, [R0,#4]
3FD1A4:  STREQ           R2, [R1]
3FD1A6:  LDR             R1, [R0,#8]
3FD1A8:  CMP             R1, #0
3FD1AA:  ITT NE
3FD1AC:  LDRNE           R2, [R0,#4]
3FD1AE:  STRNE           R2, [R1,#4]
3FD1B0:  LDR             R1, [R0,#4]
3FD1B2:  CMP             R1, #0
3FD1B4:  ITT NE
3FD1B6:  LDRNE           R2, [R0,#8]
3FD1B8:  STRNE           R2, [R1,#8]
3FD1BA:  STR.W           R9, [R0,#8]
3FD1BE:  LDR             R1, [R6]
3FD1C0:  STR             R1, [R0,#4]
3FD1C2:  LDR             R1, [R6]
3FD1C4:  CMP             R1, #0
3FD1C6:  IT NE
3FD1C8:  STRNE           R0, [R1,#8]
3FD1CA:  STR             R0, [R6]
3FD1CC:  STR             R6, [R5]
3FD1CE:  LDR             R6, [R5,#0x10]
3FD1D0:  STR.W           R8, [R5,#8]
3FD1D4:  MOV             R5, R6
3FD1D6:  B               loc_3FD24E
3FD1D8:  LDR             R1, [SP,#0x78+var_64]; unsigned int
3FD1DA:  ADD.W           R0, R1, R0,LSL#2
3FD1DE:  ADDS            R6, R0, #4
3FD1E0:  CMP             R5, #0
3FD1E2:  BNE             loc_3FD198
3FD1E4:  CBZ             R6, loc_3FD24A
3FD1E6:  MOVS            R0, #(byte_9+3); this
3FD1E8:  MOV             R4, R12
3FD1EA:  MOV             R9, R3
3FD1EC:  BLX             j__ZN18CPtrNodeDoubleLinknwEj; CPtrNodeDoubleLink::operator new(uint)
3FD1F0:  MOV             R5, R0
3FD1F2:  STR.W           R9, [R5]
3FD1F6:  MOV.W           R9, #0
3FD1FA:  STR.W           R9, [R5,#8]
3FD1FE:  LDR             R0, [R6]
3FD200:  STR             R0, [R5,#4]
3FD202:  LDR             R0, [R6]
3FD204:  CMP             R0, #0
3FD206:  IT NE
3FD208:  STRNE           R5, [R0,#8]
3FD20A:  MOVS            R0, #dword_14; this
3FD20C:  STR             R5, [R6]
3FD20E:  BLX             j__ZN14CEntryInfoNodenwEj; CEntryInfoNode::operator new(uint)
3FD212:  STRD.W          R6, R5, [R0]
3FD216:  MOV             R12, R4
3FD218:  STRD.W          R8, R9, [R0,#8]
3FD21C:  MOVS            R6, #0
3FD21E:  LDR             R3, [SP,#0x78+var_5C]
3FD220:  MOVS            R5, #0
3FD222:  LDR.W           R1, [R3,#0xB4]
3FD226:  STR             R1, [R0,#0x10]
3FD228:  LDR.W           R1, [R3,#0xB4]
3FD22C:  CMP             R1, #0
3FD22E:  IT NE
3FD230:  STRNE           R0, [R1,#0xC]
3FD232:  STR.W           R0, [R3,#0xB4]
3FD236:  LDR             R4, [SP,#0x78+var_60]
3FD238:  B               loc_3FD24E
3FD23A:  LDR             R1, [SP,#0x78+var_68]
3FD23C:  ADD.W           R0, R1, R0,LSL#2
3FD240:  ADD.W           R6, R0, #8
3FD244:  CMP             R5, #0
3FD246:  BNE             loc_3FD198
3FD248:  B               loc_3FD1E4
3FD24A:  MOVS            R6, #0
3FD24C:  MOVS            R5, #0
3FD24E:  ADD.W           R0, R11, #1
3FD252:  CMP             R11, R10
3FD254:  BLT.W           loc_3FD16E
3FD258:  LDR             R2, [SP,#0x78+var_6C]
3FD25A:  LDR             R1, [SP,#0x78+var_70]
3FD25C:  ADDS            R0, R2, #1
3FD25E:  CMP             R2, R1
3FD260:  LDR             R2, [SP,#0x78+var_74]
3FD262:  MOV             R1, R0
3FD264:  BLT.W           loc_3FD160
3FD268:  CBZ             R5, loc_3FD2C2
3FD26A:  LDRD.W          R1, R0, [R5]; void *
3FD26E:  LDR             R2, [R1]
3FD270:  CMP             R2, R0
3FD272:  ITT EQ
3FD274:  LDREQ           R2, [R0,#4]
3FD276:  STREQ           R2, [R1]
3FD278:  LDR             R1, [R0,#8]
3FD27A:  CMP             R1, #0
3FD27C:  ITT NE
3FD27E:  LDRNE           R2, [R0,#4]
3FD280:  STRNE           R2, [R1,#4]
3FD282:  LDR             R1, [R0,#4]
3FD284:  CMP             R1, #0
3FD286:  ITT NE
3FD288:  LDRNE           R2, [R0,#8]
3FD28A:  STRNE           R2, [R1,#8]
3FD28C:  BLX             j__ZN18CPtrNodeDoubleLinkdlEPv; CPtrNodeDoubleLink::operator delete(void *)
3FD290:  LDR             R1, [SP,#0x78+var_5C]
3FD292:  LDR             R4, [R5,#0x10]
3FD294:  LDR.W           R0, [R1,#0xB4]
3FD298:  CMP             R0, R5
3FD29A:  IT EQ
3FD29C:  STREQ.W         R4, [R1,#0xB4]
3FD2A0:  LDR             R0, [R5,#0xC]
3FD2A2:  CMP             R0, #0
3FD2A4:  ITT NE
3FD2A6:  LDRNE           R1, [R5,#0x10]
3FD2A8:  STRNE           R1, [R0,#0x10]
3FD2AA:  LDR             R0, [R5,#0x10]
3FD2AC:  CMP             R0, #0
3FD2AE:  ITT NE
3FD2B0:  LDRNE           R1, [R5,#0xC]
3FD2B2:  STRNE           R1, [R0,#0xC]
3FD2B4:  MOV             R0, R6; void *
3FD2B6:  BLX             j__ZN14CEntryInfoNodedlEPv; CEntryInfoNode::operator delete(void *)
3FD2BA:  CMP             R4, #0
3FD2BC:  MOV             R5, R4
3FD2BE:  MOV             R6, R4
3FD2C0:  BNE             loc_3FD26A
3FD2C2:  ADD             SP, SP, #0x30 ; '0'
3FD2C4:  VPOP            {D8-D12}
3FD2C8:  ADD             SP, SP, #4
3FD2CA:  POP.W           {R8-R11}
3FD2CE:  POP             {R4-R7,PC}
