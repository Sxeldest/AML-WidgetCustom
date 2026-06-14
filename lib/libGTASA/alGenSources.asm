; =========================================================
; Game Engine Function: alGenSources
; Address            : 0x255F1C - 0x2562E0
; =========================================================

255F1C:  PUSH            {R4-R7,LR}
255F1E:  ADD             R7, SP, #0xC
255F20:  PUSH.W          {R8-R11}
255F24:  SUB             SP, SP, #0x24
255F26:  STR             R1, [SP,#0x40+var_20]
255F28:  MOV             R8, R0
255F2A:  BLX             j_GetContextRef
255F2E:  CMP             R0, #0
255F30:  BEQ.W           loc_25624C
255F34:  ADD.W           R1, R0, #8
255F38:  STR             R1, [SP,#0x40+var_2C]
255F3A:  STR             R0, [SP,#0x40+var_34]
255F3C:  ADD.W           R4, R0, #0x50 ; 'P'
255F40:  LDR.W           R0, =(DefaultResampler_ptr - 0x255F52)
255F44:  MOV.W           R9, #0
255F48:  LDR.W           R11, =(dword_6D681C - 0x255F58)
255F4C:  MOVS            R5, #1
255F4E:  ADD             R0, PC; DefaultResampler_ptr
255F50:  LDR.W           R10, =(dword_6D681C - 0x255F5C)
255F54:  ADD             R11, PC; dword_6D681C
255F56:  LDR             R0, [R0]; DefaultResampler
255F58:  ADD             R10, PC; dword_6D681C
255F5A:  STR             R0, [SP,#0x40+var_28]
255F5C:  LDR.W           R0, =(TrapALError_ptr - 0x255F64)
255F60:  ADD             R0, PC; TrapALError_ptr
255F62:  LDR             R0, [R0]; TrapALError
255F64:  STR             R0, [SP,#0x40+var_38]
255F66:  STR.W           R8, [SP,#0x40+var_24]
255F6A:  STR             R4, [SP,#0x40+var_30]
255F6C:  CMP.W           R8, #0
255F70:  BLT.W           loc_2562A8
255F74:  CMP.W           R8, #1
255F78:  BLT.W           loc_256298
255F7C:  MOVS            R6, #0
255F7E:  MOVW            R0, #0x59A0; byte_count
255F82:  BLX             malloc
255F86:  MOV             R4, R0
255F88:  CMP             R4, #0
255F8A:  BEQ.W           loc_256254
255F8E:  STRB.W          R9, [R4],#1
255F92:  TST.W           R4, #0xF
255F96:  BEQ             loc_255FA4
255F98:  MOVS            R0, #0x55 ; 'U'
255F9A:  STRB.W          R0, [R4],#1
255F9E:  TST.W           R4, #0xF
255FA2:  BNE             loc_255F9A
255FA4:  MOV             R0, R4
255FA6:  MOVW            R1, #0x5990
255FAA:  BLX             j___aeabi_memclr8_1
255FAE:  MOVS            R0, #0
255FB0:  MOV.W           R1, #0x3F800000
255FB4:  MOVT            R0, #0x43B4
255FB8:  MOVW            R2, #0x1011
255FBC:  STR             R0, [R4,#0x14]
255FBE:  MOVW            R8, #0x5988
255FC2:  STR             R0, [R4,#0x18]
255FC4:  MOV             R0, #0x7F7FFFFF
255FCC:  STR             R1, [R4]
255FCE:  STR.W           R9, [R4,#0x28]
255FD2:  STR.W           R9, [R4,#0x2C]
255FD6:  STR.W           R9, [R4,#0x30]
255FDA:  STR.W           R9, [R4,#0x40]
255FDE:  STR.W           R9, [R4,#0x44]
255FE2:  STR.W           R9, [R4,#0x48]
255FE6:  STR.W           R9, [R4,#0x34]
255FEA:  STR.W           R9, [R4,#0x38]
255FEE:  STR.W           R9, [R4,#0x3C]
255FF2:  STR             R1, [R4,#0x1C]
255FF4:  STR             R0, [R4,#0x20]
255FF6:  MOVW            R0, #0xD002
255FFA:  STR             R1, [R4,#0x24]
255FFC:  STRB.W          R9, [R4,#0x4D]
256000:  STR             R1, [R4,#4]
256002:  STR.W           R9, [R4,#0xC]
256006:  STR             R1, [R4,#0x10]
256008:  STR.W           R9, [R4,#8]
25600C:  STR             R1, [R4,#0x58]
25600E:  STRB.W          R5, [R4,#0x55]
256012:  STRB.W          R5, [R4,#0x56]
256016:  STRB.W          R5, [R4,#0x57]
25601A:  STR.W           R9, [R4,#0x5C]
25601E:  STR.W           R9, [R4,#0x60]
256022:  STR             R1, [R4,#0x64]
256024:  STRB.W          R9, [R4,#0x54]
256028:  STR             R0, [R4,#0x50]
25602A:  LDR             R0, [SP,#0x40+var_28]
25602C:  LDR             R0, [R0]
25602E:  STR.W           R2, [R4,#0x80]
256032:  MOVW            R2, #0x1030
256036:  STR             R2, [R4,#0x7C]
256038:  MOV.W           R2, #0x5980
25603C:  STR             R5, [R4,R2]
25603E:  STR             R0, [R4,#0x68]
256040:  MOVS            R0, #0xBFF00000
256046:  STR.W           R9, [R4,#0x84]
25604A:  STRD.W          R9, R0, [R4,#0x70]
25604E:  STRD.W          R1, R1, [R4,#0xA4]
256052:  STRD.W          R1, R1, [R4,#0xB0]
256056:  STRD.W          R1, R1, [R4,#0xBC]
25605A:  STRD.W          R1, R1, [R4,#0xC8]
25605E:  STRD.W          R1, R1, [R4,#0xD4]
256062:  STRB.W          R9, [R4,#0xE0]
256066:  STR.W           R9, [R4,#0xE4]
25606A:  ADD.W           R9, R4, R8
25606E:  MOV             R0, R9
256070:  BLX             j_NewThunkEntry
256074:  LDR.W           R8, [R4,R8]
256078:  CBNZ            R0, loc_2560A0
25607A:  LDR             R0, [SP,#0x40+var_2C]
25607C:  MOV             R1, R8
25607E:  MOV             R2, R4
256080:  BLX             j_InsertUIntMapEntry
256084:  LDR.W           R8, [R9]
256088:  CBNZ            R0, loc_2560A0
25608A:  LDR             R0, [SP,#0x40+var_20]
25608C:  MOV.W           R9, #0
256090:  STR.W           R8, [R0,R6,LSL#2]
256094:  ADDS            R6, #1
256096:  LDR             R0, [SP,#0x40+var_24]
256098:  CMP             R6, R0
25609A:  BLT.W           loc_255F7E
25609E:  B               loc_256298
2560A0:  LDR             R2, =(dword_6D681C - 0x2560A8)
2560A2:  STR             R0, [SP,#0x40+var_3C]
2560A4:  ADD             R2, PC; dword_6D681C
2560A6:  DMB.W           ISH
2560AA:  LDREX.W         R0, [R2,#0xC]
2560AE:  STREX.W         R1, R5, [R2,#0xC]
2560B2:  CMP             R1, #0
2560B4:  BNE             loc_2560AA
2560B6:  CMP             R0, #1
2560B8:  MOV.W           R9, #0
2560BC:  DMB.W           ISH
2560C0:  BNE             loc_2560DE
2560C2:  BLX             sched_yield
2560C6:  DMB.W           ISH
2560CA:  LDREX.W         R0, [R11,#0xC]
2560CE:  STREX.W         R1, R5, [R11,#0xC]
2560D2:  CMP             R1, #0
2560D4:  BNE             loc_2560CA
2560D6:  CMP             R0, #1
2560D8:  DMB.W           ISH
2560DC:  BEQ             loc_2560C2
2560DE:  LDR             R2, =(dword_6D681C - 0x2560E8)
2560E0:  DMB.W           ISH
2560E4:  ADD             R2, PC; dword_6D681C
2560E6:  LDREX.W         R0, [R2,#8]
2560EA:  STREX.W         R1, R5, [R2,#8]
2560EE:  CMP             R1, #0
2560F0:  BNE             loc_2560E6
2560F2:  B               loc_256108
2560F4:  BLX             sched_yield
2560F8:  DMB.W           ISH
2560FC:  LDREX.W         R0, [R10,#8]
256100:  STREX.W         R1, R5, [R10,#8]
256104:  CMP             R1, #0
256106:  BNE             loc_2560FC
256108:  CMP             R0, #1
25610A:  DMB.W           ISH
25610E:  BEQ             loc_2560F4
256110:  LDR             R3, =(dword_6D681C - 0x25611A)
256112:  DMB.W           ISH
256116:  ADD             R3, PC; dword_6D681C
256118:  LDREX.W         R0, [R3]
25611C:  ADDS            R1, R0, #1
25611E:  STREX.W         R2, R1, [R3]
256122:  CMP             R2, #0
256124:  BNE             loc_256118
256126:  CMP             R0, #0
256128:  DMB.W           ISH
25612C:  BNE             loc_256164
25612E:  LDR             R2, =(dword_6D681C - 0x256138)
256130:  DMB.W           ISH
256134:  ADD             R2, PC; dword_6D681C
256136:  LDREX.W         R0, [R2,#0x10]
25613A:  STREX.W         R1, R5, [R2,#0x10]
25613E:  CMP             R1, #0
256140:  BNE             loc_256136
256142:  B               loc_25615C
256144:  BLX             sched_yield
256148:  LDR             R2, =(dword_6D681C - 0x256152)
25614A:  DMB.W           ISH
25614E:  ADD             R2, PC; dword_6D681C
256150:  LDREX.W         R0, [R2,#0x10]
256154:  STREX.W         R1, R5, [R2,#0x10]
256158:  CMP             R1, #0
25615A:  BNE             loc_256150
25615C:  CMP             R0, #1
25615E:  DMB.W           ISH
256162:  BEQ             loc_256144
256164:  LDR             R1, =(dword_6D681C - 0x25616E)
256166:  DMB.W           ISH
25616A:  ADD             R1, PC; dword_6D681C
25616C:  LDREX.W         R0, [R1,#8]
256170:  STREX.W         R0, R9, [R1,#8]
256174:  CMP             R0, #0
256176:  BNE             loc_25616C
256178:  LDR             R1, =(dword_6D681C - 0x256186)
25617A:  DMB.W           ISH
25617E:  DMB.W           ISH
256182:  ADD             R1, PC; dword_6D681C
256184:  LDREX.W         R0, [R1,#0xC]
256188:  STREX.W         R0, R9, [R1,#0xC]
25618C:  CMP             R0, #0
25618E:  BNE             loc_256184
256190:  LDR             R0, =(dword_6D6830 - 0x25619C)
256192:  DMB.W           ISH
256196:  LDR             R3, =(dword_6D681C - 0x2561A2)
256198:  ADD             R0, PC; dword_6D6830
25619A:  LDR.W           R12, =(dword_6D681C - 0x2561AA)
25619E:  ADD             R3, PC; dword_6D681C
2561A0:  LDR             R1, [R0]
2561A2:  SUB.W           R0, R8, #1
2561A6:  ADD             R12, PC; dword_6D681C
2561A8:  CMP             R0, R1
2561AA:  BCS             loc_2561CA
2561AC:  LDR             R1, =(dword_6D6834 - 0x2561B2)
2561AE:  ADD             R1, PC; dword_6D6834
2561B0:  LDR             R1, [R1]
2561B2:  DMB.W           ISH
2561B6:  ADD.W           R0, R1, R0,LSL#2
2561BA:  LDREX.W         R1, [R0]
2561BE:  STREX.W         R1, R9, [R0]
2561C2:  CMP             R1, #0
2561C4:  BNE             loc_2561BA
2561C6:  DMB.W           ISH
2561CA:  DMB.W           ISH
2561CE:  LDREX.W         R0, [R3]
2561D2:  SUBS            R1, R0, #1
2561D4:  STREX.W         R2, R1, [R3]
2561D8:  CMP             R2, #0
2561DA:  BNE             loc_2561CE
2561DC:  CMP             R0, #1
2561DE:  DMB.W           ISH
2561E2:  BNE             loc_2561F8
2561E4:  DMB.W           ISH
2561E8:  LDREX.W         R0, [R12,#0x10]
2561EC:  STREX.W         R0, R9, [R12,#0x10]
2561F0:  CMP             R0, #0
2561F2:  BNE             loc_2561E8
2561F4:  DMB.W           ISH
2561F8:  MOV             R0, R4
2561FA:  MOVW            R1, #0x5990
2561FE:  BLX             j___aeabi_memclr8
256202:  LDRB.W          R0, [R4,#-1]!
256206:  CMP             R0, #0x55 ; 'U'
256208:  BEQ             loc_256202
25620A:  MOV             R0, R4; p
25620C:  BLX             free
256210:  LDR             R0, [SP,#0x40+var_38]
256212:  LDRB            R0, [R0]
256214:  CBZ             R0, loc_25621C
256216:  MOVS            R0, #5; sig
256218:  BLX             raise
25621C:  LDR             R4, [SP,#0x40+var_30]
25621E:  LDREX.W         R0, [R4]
256222:  LDR             R1, [SP,#0x40+var_3C]
256224:  CBNZ            R0, loc_256238
256226:  DMB.W           ISH
25622A:  STREX.W         R0, R1, [R4]
25622E:  CBZ             R0, loc_25623C
256230:  LDREX.W         R0, [R4]
256234:  CMP             R0, #0
256236:  BEQ             loc_25622A
256238:  CLREX.W
25623C:  DMB.W           ISH
256240:  CMP             R1, #0
256242:  LDR.W           R8, [SP,#0x40+var_24]
256246:  BEQ.W           loc_255F6C
25624A:  B               loc_25628C
25624C:  ADD             SP, SP, #0x24 ; '$'
25624E:  POP.W           {R8-R11}
256252:  POP             {R4-R7,PC}
256254:  LDR             R0, =(TrapALError_ptr - 0x25625A)
256256:  ADD             R0, PC; TrapALError_ptr
256258:  LDR             R0, [R0]; TrapALError
25625A:  LDRB            R0, [R0]
25625C:  CMP             R0, #0
25625E:  ITT NE
256260:  MOVNE           R0, #5; sig
256262:  BLXNE           raise
256266:  LDR             R2, [SP,#0x40+var_30]
256268:  LDREX.W         R0, [R2]
25626C:  CBNZ            R0, loc_256284
25626E:  MOVW            R0, #0xA005
256272:  DMB.W           ISH
256276:  STREX.W         R1, R0, [R2]
25627A:  CBZ             R1, loc_256288
25627C:  LDREX.W         R1, [R2]
256280:  CMP             R1, #0
256282:  BEQ             loc_256276
256284:  CLREX.W
256288:  DMB.W           ISH
25628C:  CMP             R6, #1
25628E:  BLT             loc_256298
256290:  LDR             R1, [SP,#0x40+var_20]
256292:  MOV             R0, R6
256294:  BLX             j_alDeleteSources
256298:  LDR             R0, [SP,#0x40+var_34]
25629A:  ADD             SP, SP, #0x24 ; '$'
25629C:  POP.W           {R8-R11}
2562A0:  POP.W           {R4-R7,LR}
2562A4:  B.W             ALCcontext_DecRef
2562A8:  LDR             R0, =(TrapALError_ptr - 0x2562AE)
2562AA:  ADD             R0, PC; TrapALError_ptr
2562AC:  LDR             R0, [R0]; TrapALError
2562AE:  LDRB            R0, [R0]
2562B0:  CMP             R0, #0
2562B2:  ITT NE
2562B4:  MOVNE           R0, #5; sig
2562B6:  BLXNE           raise
2562BA:  LDREX.W         R0, [R4]
2562BE:  CBNZ            R0, loc_2562D6
2562C0:  MOVW            R0, #0xA003
2562C4:  DMB.W           ISH
2562C8:  STREX.W         R1, R0, [R4]
2562CC:  CBZ             R1, loc_2562DA
2562CE:  LDREX.W         R1, [R4]
2562D2:  CMP             R1, #0
2562D4:  BEQ             loc_2562C8
2562D6:  CLREX.W
2562DA:  DMB.W           ISH
2562DE:  B               loc_256298
