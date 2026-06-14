; =========================================================
; Game Engine Function: alGenBuffers
; Address            : 0x23EFAC - 0x23F26C
; =========================================================

23EFAC:  PUSH            {R4-R7,LR}
23EFAE:  ADD             R7, SP, #0xC
23EFB0:  PUSH.W          {R8-R11}
23EFB4:  SUB             SP, SP, #0x1C
23EFB6:  STR             R1, [SP,#0x38+var_28]
23EFB8:  MOV             R6, R0
23EFBA:  BLX             j_GetContextRef
23EFBE:  CMP             R0, #0
23EFC0:  BEQ.W           loc_23F1D8
23EFC4:  STR             R0, [SP,#0x38+var_30]
23EFC6:  ADD.W           R4, R0, #0x50 ; 'P'
23EFCA:  LDR             R0, =(TrapALError_ptr - 0x23EFDC)
23EFCC:  MOV.W           R9, #1
23EFD0:  LDR.W           R8, =(dword_6D681C - 0x23EFE2)
23EFD4:  LDR.W           R10, =(dword_6D681C - 0x23EFE4)
23EFD8:  ADD             R0, PC; TrapALError_ptr
23EFDA:  LDR.W           R11, =(dword_6D681C - 0x23EFE8)
23EFDE:  ADD             R8, PC; dword_6D681C
23EFE0:  ADD             R10, PC; dword_6D681C
23EFE2:  LDR             R0, [R0]; TrapALError
23EFE4:  ADD             R11, PC; dword_6D681C
23EFE6:  STRD.W          R0, R4, [SP,#0x38+var_38]
23EFEA:  STR             R6, [SP,#0x38+var_2C]
23EFEC:  CMP             R6, #0
23EFEE:  BLT.W           loc_23F234
23EFF2:  CMP             R6, #1
23EFF4:  BLT.W           loc_23F224
23EFF8:  LDR             R0, [SP,#0x38+var_30]
23EFFA:  MOVS            R5, #0
23EFFC:  LDR.W           R0, [R0,#0x88]
23F000:  ADDS            R0, #0x40 ; '@'
23F002:  STR             R0, [SP,#0x38+var_24]
23F004:  MOVS            R0, #1; item_count
23F006:  MOVS            R1, #0x48 ; 'H'; item_size
23F008:  BLX             calloc
23F00C:  MOV             R4, R0
23F00E:  CMP             R4, #0
23F010:  BEQ.W           loc_23F1E0
23F014:  MOVS            R0, #0
23F016:  STR             R5, [SP,#0x38+var_20]
23F018:  STR             R0, [R4,#0x30]
23F01A:  STR             R0, [R4,#0x34]
23F01C:  STR             R0, [R4,#0x38]
23F01E:  STR             R0, [R4,#0x3C]
23F020:  STR             R0, [R4,#0x40]
23F022:  ADD.W           R0, R4, #0x44 ; 'D'
23F026:  BLX             j_NewThunkEntry
23F02A:  LDR             R6, [R4,#0x44]
23F02C:  CBNZ            R0, loc_23F04E
23F02E:  LDR             R0, [SP,#0x38+var_24]
23F030:  MOV             R1, R6
23F032:  MOV             R2, R4
23F034:  BLX             j_InsertUIntMapEntry
23F038:  LDR             R6, [R4,#0x44]
23F03A:  CBNZ            R0, loc_23F04E
23F03C:  LDR             R0, [SP,#0x38+var_28]
23F03E:  LDR             R5, [SP,#0x38+var_20]
23F040:  STR.W           R6, [R0,R5,LSL#2]
23F044:  ADDS            R5, #1
23F046:  LDR             R6, [SP,#0x38+var_2C]
23F048:  CMP             R5, R6
23F04A:  BLT             loc_23F004
23F04C:  B               loc_23F224
23F04E:  LDR             R2, =(dword_6D681C - 0x23F056)
23F050:  STR             R0, [SP,#0x38+var_24]
23F052:  ADD             R2, PC; dword_6D681C
23F054:  DMB.W           ISH
23F058:  LDREX.W         R0, [R2,#0xC]
23F05C:  STREX.W         R1, R9, [R2,#0xC]
23F060:  CMP             R1, #0
23F062:  BNE             loc_23F058
23F064:  B               loc_23F07A
23F066:  BLX             sched_yield
23F06A:  DMB.W           ISH
23F06E:  LDREX.W         R0, [R8,#0xC]
23F072:  STREX.W         R1, R9, [R8,#0xC]
23F076:  CMP             R1, #0
23F078:  BNE             loc_23F06E
23F07A:  CMP             R0, #1
23F07C:  DMB.W           ISH
23F080:  BEQ             loc_23F066
23F082:  LDR             R2, =(dword_6D681C - 0x23F08C)
23F084:  DMB.W           ISH
23F088:  ADD             R2, PC; dword_6D681C
23F08A:  LDREX.W         R0, [R2,#8]
23F08E:  STREX.W         R1, R9, [R2,#8]
23F092:  CMP             R1, #0
23F094:  BNE             loc_23F08A
23F096:  B               loc_23F0AC
23F098:  BLX             sched_yield
23F09C:  DMB.W           ISH
23F0A0:  LDREX.W         R0, [R10,#8]
23F0A4:  STREX.W         R1, R9, [R10,#8]
23F0A8:  CMP             R1, #0
23F0AA:  BNE             loc_23F0A0
23F0AC:  CMP             R0, #1
23F0AE:  DMB.W           ISH
23F0B2:  BEQ             loc_23F098
23F0B4:  LDR             R3, =(dword_6D681C - 0x23F0BE)
23F0B6:  DMB.W           ISH
23F0BA:  ADD             R3, PC; dword_6D681C
23F0BC:  LDREX.W         R0, [R3]
23F0C0:  ADDS            R1, R0, #1
23F0C2:  STREX.W         R2, R1, [R3]
23F0C6:  CMP             R2, #0
23F0C8:  BNE             loc_23F0BC
23F0CA:  CMP             R0, #0
23F0CC:  DMB.W           ISH
23F0D0:  BNE             loc_23F104
23F0D2:  LDR             R2, =(dword_6D681C - 0x23F0DC)
23F0D4:  DMB.W           ISH
23F0D8:  ADD             R2, PC; dword_6D681C
23F0DA:  LDREX.W         R0, [R2,#0x10]
23F0DE:  STREX.W         R1, R9, [R2,#0x10]
23F0E2:  CMP             R1, #0
23F0E4:  BNE             loc_23F0DA
23F0E6:  B               loc_23F0FC
23F0E8:  BLX             sched_yield
23F0EC:  DMB.W           ISH
23F0F0:  LDREX.W         R0, [R11,#0x10]
23F0F4:  STREX.W         R1, R9, [R11,#0x10]
23F0F8:  CMP             R1, #0
23F0FA:  BNE             loc_23F0F0
23F0FC:  CMP             R0, #1
23F0FE:  DMB.W           ISH
23F102:  BEQ             loc_23F0E8
23F104:  LDR             R1, =(dword_6D681C - 0x23F110)
23F106:  MOVS            R3, #0
23F108:  DMB.W           ISH
23F10C:  ADD             R1, PC; dword_6D681C
23F10E:  LDREX.W         R0, [R1,#8]
23F112:  STREX.W         R0, R3, [R1,#8]
23F116:  CMP             R0, #0
23F118:  BNE             loc_23F10E
23F11A:  LDR             R1, =(dword_6D681C - 0x23F12A)
23F11C:  DMB.W           ISH
23F120:  LDR             R5, =(dword_6D681C - 0x23F12C)
23F122:  DMB.W           ISH
23F126:  ADD             R1, PC; dword_6D681C
23F128:  ADD             R5, PC; dword_6D681C
23F12A:  LDREX.W         R0, [R1,#0xC]
23F12E:  STREX.W         R0, R3, [R1,#0xC]
23F132:  CMP             R0, #0
23F134:  BNE             loc_23F12A
23F136:  LDR             R0, =(dword_6D6830 - 0x23F140)
23F138:  DMB.W           ISH
23F13C:  ADD             R0, PC; dword_6D6830
23F13E:  LDR             R1, [R0]
23F140:  SUBS            R0, R6, #1
23F142:  LDR             R6, [SP,#0x38+var_2C]
23F144:  CMP             R0, R1
23F146:  BCS             loc_23F166
23F148:  LDR             R1, =(dword_6D6834 - 0x23F14E)
23F14A:  ADD             R1, PC; dword_6D6834
23F14C:  LDR             R1, [R1]
23F14E:  DMB.W           ISH
23F152:  ADD.W           R0, R1, R0,LSL#2
23F156:  LDREX.W         R1, [R0]
23F15A:  STREX.W         R1, R3, [R0]
23F15E:  CMP             R1, #0
23F160:  BNE             loc_23F156
23F162:  DMB.W           ISH
23F166:  DMB.W           ISH
23F16A:  LDREX.W         R0, [R5]
23F16E:  SUBS            R1, R0, #1
23F170:  STREX.W         R2, R1, [R5]
23F174:  CMP             R2, #0
23F176:  BNE             loc_23F16A
23F178:  LDR             R1, =(dword_6D681C - 0x23F184)
23F17A:  CMP             R0, #1
23F17C:  DMB.W           ISH
23F180:  ADD             R1, PC; dword_6D681C
23F182:  BNE             loc_23F198
23F184:  DMB.W           ISH
23F188:  LDREX.W         R0, [R1,#0x10]
23F18C:  STREX.W         R0, R3, [R1,#0x10]
23F190:  CMP             R0, #0
23F192:  BNE             loc_23F188
23F194:  DMB.W           ISH
23F198:  MOV             R0, R4; p
23F19A:  BLX             free
23F19E:  LDR             R0, [SP,#0x38+var_38]
23F1A0:  LDRB            R0, [R0]
23F1A2:  CBZ             R0, loc_23F1AA
23F1A4:  MOVS            R0, #5; sig
23F1A6:  BLX             raise
23F1AA:  LDR             R4, [SP,#0x38+var_34]
23F1AC:  LDREX.W         R0, [R4]
23F1B0:  LDR             R1, [SP,#0x38+var_24]
23F1B2:  CBNZ            R0, loc_23F1C6
23F1B4:  DMB.W           ISH
23F1B8:  STREX.W         R0, R1, [R4]
23F1BC:  CBZ             R0, loc_23F1CA
23F1BE:  LDREX.W         R0, [R4]
23F1C2:  CMP             R0, #0
23F1C4:  BEQ             loc_23F1B8
23F1C6:  CLREX.W
23F1CA:  DMB.W           ISH
23F1CE:  CMP             R1, #0
23F1D0:  LDR             R5, [SP,#0x38+var_20]
23F1D2:  BEQ.W           loc_23EFEC
23F1D6:  B               loc_23F218
23F1D8:  ADD             SP, SP, #0x1C
23F1DA:  POP.W           {R8-R11}
23F1DE:  POP             {R4-R7,PC}
23F1E0:  LDR             R0, =(TrapALError_ptr - 0x23F1E6)
23F1E2:  ADD             R0, PC; TrapALError_ptr
23F1E4:  LDR             R0, [R0]; TrapALError
23F1E6:  LDRB            R0, [R0]
23F1E8:  CMP             R0, #0
23F1EA:  ITT NE
23F1EC:  MOVNE           R0, #5; sig
23F1EE:  BLXNE           raise
23F1F2:  LDR             R2, [SP,#0x38+var_34]
23F1F4:  LDREX.W         R0, [R2]
23F1F8:  CBNZ            R0, loc_23F210
23F1FA:  MOVW            R0, #0xA005
23F1FE:  DMB.W           ISH
23F202:  STREX.W         R1, R0, [R2]
23F206:  CBZ             R1, loc_23F214
23F208:  LDREX.W         R1, [R2]
23F20C:  CMP             R1, #0
23F20E:  BEQ             loc_23F202
23F210:  CLREX.W
23F214:  DMB.W           ISH
23F218:  CMP             R5, #1
23F21A:  BLT             loc_23F224
23F21C:  LDR             R1, [SP,#0x38+var_28]
23F21E:  MOV             R0, R5
23F220:  BLX             j_alDeleteBuffers
23F224:  LDR             R0, [SP,#0x38+var_30]
23F226:  ADD             SP, SP, #0x1C
23F228:  POP.W           {R8-R11}
23F22C:  POP.W           {R4-R7,LR}
23F230:  B.W             ALCcontext_DecRef
23F234:  LDR             R0, =(TrapALError_ptr - 0x23F23A)
23F236:  ADD             R0, PC; TrapALError_ptr
23F238:  LDR             R0, [R0]; TrapALError
23F23A:  LDRB            R0, [R0]
23F23C:  CMP             R0, #0
23F23E:  ITT NE
23F240:  MOVNE           R0, #5; sig
23F242:  BLXNE           raise
23F246:  LDREX.W         R0, [R4]
23F24A:  CBNZ            R0, loc_23F262
23F24C:  MOVW            R0, #0xA003
23F250:  DMB.W           ISH
23F254:  STREX.W         R1, R0, [R4]
23F258:  CBZ             R1, loc_23F266
23F25A:  LDREX.W         R1, [R4]
23F25E:  CMP             R1, #0
23F260:  BEQ             loc_23F254
23F262:  CLREX.W
23F266:  DMB.W           ISH
23F26A:  B               loc_23F224
