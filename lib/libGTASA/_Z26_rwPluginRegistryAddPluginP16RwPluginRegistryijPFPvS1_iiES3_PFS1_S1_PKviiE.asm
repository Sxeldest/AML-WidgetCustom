; =========================================================
; Game Engine Function: _Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE
; Address            : 0x1E5FB4 - 0x1E61B2
; =========================================================

1E5FB4:  PUSH            {R4-R7,LR}
1E5FB6:  ADD             R7, SP, #0xC
1E5FB8:  PUSH.W          {R8-R11}
1E5FBC:  SUB             SP, SP, #0xC
1E5FBE:  MOV             R4, R0
1E5FC0:  LDR             R0, =(dword_6BD0D8 - 0x1E5FCA)
1E5FC2:  MOV             R8, R3
1E5FC4:  MOV             R5, R2
1E5FC6:  ADD             R0, PC; dword_6BD0D8
1E5FC8:  MOV             R10, R1
1E5FCA:  LDR             R0, [R0]
1E5FCC:  CBZ             R0, loc_1E5FEE
1E5FCE:  MOV             R9, #0x80000017
1E5FD6:  BLX             j__Z24_rwGetNumEngineInstancesv; _rwGetNumEngineInstances(void)
1E5FDA:  CBZ             R0, loc_1E5FFA
1E5FDC:  MOVS            R0, #0
1E5FDE:  STR             R0, [SP,#0x28+var_24]
1E5FE0:  MOV             R0, R9; int
1E5FE2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E5FE6:  STR             R0, [SP,#0x28+var_20]
1E5FE8:  ADD             R0, SP, #0x28+var_24
1E5FEA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E5FEE:  MOV.W           R0, #0xFFFFFFFF
1E5FF2:  ADD             SP, SP, #0xC
1E5FF4:  POP.W           {R8-R11}
1E5FF8:  POP             {R4-R7,PC}
1E5FFA:  LDR             R0, =(RwEngineInstance_ptr - 0x1E6002)
1E5FFC:  LDR             R1, =(_Z20_rwFreeListAllocRealP10RwFreeList_ptr - 0x1E6004)
1E5FFE:  ADD             R0, PC; RwEngineInstance_ptr
1E6000:  ADD             R1, PC; _Z20_rwFreeListAllocRealP10RwFreeList_ptr
1E6002:  LDR             R0, [R0]; RwEngineInstance
1E6004:  LDR             R1, [R1]; _rwFreeListAllocReal(RwFreeList *)
1E6006:  LDR             R0, [R0]
1E6008:  LDR.W           R2, [R0,#0x13C]
1E600C:  CMP             R2, R1
1E600E:  BEQ             loc_1E60EE
1E6010:  LDR             R1, =(dword_6BD0DC - 0x1E6016)
1E6012:  ADD             R1, PC; dword_6BD0DC
1E6014:  LDR             R1, [R1]
1E6016:  CBZ             R1, loc_1E6030
1E6018:  LDR             R2, =(dword_6BD0E0 - 0x1E601E)
1E601A:  ADD             R2, PC; dword_6BD0E0
1E601C:  LDR             R3, [R2]
1E601E:  MOVS            R2, #0
1E6020:  LDR.W           R6, [R3,R2,LSL#2]
1E6024:  CMP             R6, R4
1E6026:  BEQ             loc_1E6032
1E6028:  ADDS            R2, #1
1E602A:  CMP             R2, R1
1E602C:  BCC             loc_1E6020
1E602E:  B               loc_1E6032
1E6030:  MOVS            R2, #0
1E6032:  CMP             R1, R2
1E6034:  BNE             loc_1E60EE
1E6036:  LDR.W           R3, [R0,#0x12C]
1E603A:  MOVS            R2, #4
1E603C:  ADD.W           R0, R2, R1,LSL#2
1E6040:  BLX             R3
1E6042:  MOV             R9, R0
1E6044:  LDR             R0, =(dword_6BD0E0 - 0x1E604A)
1E6046:  ADD             R0, PC; dword_6BD0E0
1E6048:  LDR             R0, [R0]
1E604A:  CBZ             R0, loc_1E6060
1E604C:  LDR             R1, =(dword_6BD0DC - 0x1E6054)
1E604E:  MOVS            R6, #0
1E6050:  ADD             R1, PC; dword_6BD0DC
1E6052:  LDR             R1, [R1]
1E6054:  CBZ             R1, loc_1E6066
1E6056:  CMP             R1, #4
1E6058:  BCS             loc_1E606C
1E605A:  MOV.W           R11, #0
1E605E:  B               loc_1E60AC
1E6060:  MOV.W           R11, #0
1E6064:  B               loc_1E60D0
1E6066:  MOV.W           R11, #0
1E606A:  B               loc_1E60BC
1E606C:  BIC.W           R11, R1, #3
1E6070:  CMP.W           R11, #0
1E6074:  BEQ             loc_1E608C
1E6076:  ADD.W           R2, R0, R1,LSL#2
1E607A:  CMP             R9, R2
1E607C:  BCS             loc_1E6092
1E607E:  ADD.W           R2, R9, R1,LSL#2
1E6082:  CMP             R2, R0
1E6084:  BLS             loc_1E6092
1E6086:  MOV.W           R11, #0
1E608A:  B               loc_1E60AC
1E608C:  MOV.W           R11, #0
1E6090:  B               loc_1E60AC
1E6092:  MOV             R2, R11
1E6094:  MOV             R3, R9
1E6096:  MOV             R6, R0
1E6098:  VLD1.32         {D16-D17}, [R6]!
1E609C:  SUBS            R2, #4
1E609E:  VST1.32         {D16-D17}, [R3]!
1E60A2:  BNE             loc_1E6098
1E60A4:  CMP             R1, R11
1E60A6:  MOV.W           R6, #0
1E60AA:  BEQ             loc_1E60BC
1E60AC:  LDR.W           R2, [R0,R11,LSL#2]
1E60B0:  STR.W           R2, [R9,R11,LSL#2]
1E60B4:  ADD.W           R11, R11, #1
1E60B8:  CMP             R11, R1
1E60BA:  BCC             loc_1E60AC
1E60BC:  LDR             R1, =(RwEngineInstance_ptr - 0x1E60C2)
1E60BE:  ADD             R1, PC; RwEngineInstance_ptr
1E60C0:  LDR             R1, [R1]; RwEngineInstance
1E60C2:  LDR             R1, [R1]
1E60C4:  LDR.W           R1, [R1,#0x130]
1E60C8:  BLX             R1
1E60CA:  LDR             R0, =(dword_6BD0E0 - 0x1E60D0)
1E60CC:  ADD             R0, PC; dword_6BD0E0
1E60CE:  STR             R6, [R0]
1E60D0:  LDR             R0, =(dword_6BD0DC - 0x1E60D8)
1E60D2:  LDR             R1, =(dword_6BD0E0 - 0x1E60DE)
1E60D4:  ADD             R0, PC; dword_6BD0DC
1E60D6:  STR.W           R4, [R9,R11,LSL#2]
1E60DA:  ADD             R1, PC; dword_6BD0E0
1E60DC:  LDR             R2, [R0]
1E60DE:  STR.W           R9, [R1]
1E60E2:  MOV             R9, #0x80000017
1E60EA:  ADDS            R1, R2, #1
1E60EC:  STR             R1, [R0]
1E60EE:  LDR             R6, [R4,#0x10]
1E60F0:  CBZ             R6, loc_1E60FE
1E60F2:  LDR             R0, [R6,#8]
1E60F4:  CMP             R0, R5
1E60F6:  BEQ             loc_1E6192
1E60F8:  LDR             R6, [R6,#0x30]
1E60FA:  CMP             R6, #0
1E60FC:  BNE             loc_1E60F2
1E60FE:  ADD.W           R2, R10, #3
1E6102:  LDR             R1, [R4]
1E6104:  LDR             R0, [R4,#8]
1E6106:  BIC.W           R2, R2, #3
1E610A:  ADDS            R6, R1, R2
1E610C:  CBZ             R0, loc_1E6114
1E610E:  CMP             R6, R0
1E6110:  BGT.W           loc_1E5FEE
1E6114:  LDR             R0, =(RwEngineInstance_ptr - 0x1E611C)
1E6116:  LDR             R1, =(dword_6BD0D8 - 0x1E611E)
1E6118:  ADD             R0, PC; RwEngineInstance_ptr
1E611A:  ADD             R1, PC; dword_6BD0D8
1E611C:  LDR             R0, [R0]; RwEngineInstance
1E611E:  LDR             R2, [R0]
1E6120:  LDR             R0, [R1]
1E6122:  LDR.W           R1, [R2,#0x13C]
1E6126:  BLX             R1
1E6128:  CMP             R0, #0
1E612A:  BEQ.W           loc_1E5FEE
1E612E:  LDRD.W          LR, R12, [R7,#arg_0]
1E6132:  VMOV.I32        Q8, #0
1E6136:  LDR             R2, =(nullsub_4+1 - 0x1E6146)
1E6138:  LDR             R3, [R4]
1E613A:  CMP.W           LR, #0
1E613E:  LDR.W           R9, =(nullsub_5+1 - 0x1E6150)
1E6142:  ADD             R2, PC; nullsub_4
1E6144:  STR             R3, [R0]
1E6146:  ADD.W           R3, R0, #0xC
1E614A:  LDR             R1, =(nullsub_6+1 - 0x1E6158)
1E614C:  ADD             R9, PC; nullsub_5
1E614E:  STR             R6, [R4]
1E6150:  VST1.32         {D16-D17}, [R3]
1E6154:  ADD             R1, PC; nullsub_6
1E6156:  MOV.W           R3, #0
1E615A:  STRD.W          R10, R5, [R0,#4]
1E615E:  IT NE
1E6160:  MOVNE           R2, LR
1E6162:  CMP.W           R12, #0
1E6166:  IT NE
1E6168:  MOVNE           R9, R12
1E616A:  CMP.W           R8, #0
1E616E:  IT NE
1E6170:  MOVNE           R1, R8
1E6172:  STRD.W          R3, R1, [R0,#0x1C]
1E6176:  STRD.W          R2, R9, [R0,#0x24]
1E617A:  STRD.W          R3, R3, [R0,#0x2C]
1E617E:  STRD.W          R3, R4, [R0,#0x34]
1E6182:  LDR             R1, [R4,#0x10]
1E6184:  CBZ             R1, loc_1E61A8
1E6186:  LDR.W           R1, [R4,#0x14]!
1E618A:  STR             R0, [R1,#0x30]
1E618C:  LDR             R1, [R4]
1E618E:  STR             R1, [R0,#0x34]
1E6190:  B               loc_1E61AC
1E6192:  MOVS            R0, #0
1E6194:  STR             R0, [SP,#0x28+var_24]
1E6196:  MOV             R0, R9; int
1E6198:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E619C:  STR             R0, [SP,#0x28+var_20]
1E619E:  ADD             R0, SP, #0x28+var_24
1E61A0:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E61A4:  LDR             R0, [R6]
1E61A6:  B               loc_1E5FF2
1E61A8:  STR             R0, [R4,#0x10]
1E61AA:  ADDS            R4, #0x14
1E61AC:  STR             R0, [R4]
1E61AE:  LDR             R0, [R0]
1E61B0:  B               loc_1E5FF2
