; =========================================================
; Game Engine Function: _Z15AddSCCloudWatchv
; Address            : 0x287100 - 0x287198
; =========================================================

287100:  PUSH            {R4,R6,R7,LR}
287102:  ADD             R7, SP, #8
287104:  SUB             SP, SP, #8
287106:  LDR             R0, =(byte_6E0003 - 0x28710C)
287108:  ADD             R0, PC; byte_6E0003
28710A:  LDRB            R0, [R0]
28710C:  CBNZ            R0, loc_28716A
28710E:  LDR             R0, =(byte_6E0003 - 0x28711A)
287110:  MOVS            R1, #1
287112:  LDR             R2, =(aGtacloudsaveSe - 0x28711C); "gtacloudsave.set"
287114:  MOVS            R3, #0
287116:  ADD             R0, PC; byte_6E0003
287118:  ADD             R2, PC; "gtacloudsave.set"
28711A:  STRB            R1, [R0]
28711C:  ADD             R1, SP, #0x10+var_C
28711E:  MOVS            R0, #1
287120:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
287124:  CBNZ            R0, loc_28713C
287126:  LDR             R1, =(myCloudSaves_ptr - 0x287132)
287128:  MOV.W           R2, #0x182; n
28712C:  LDR             R0, [SP,#0x10+var_C]; this
28712E:  ADD             R1, PC; myCloudSaves_ptr
287130:  LDR             R1, [R1]; myCloudSaves ; ptr
287132:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
287136:  LDR             R0, [SP,#0x10+var_C]; this
287138:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
28713C:  LDR             R0, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x287142)
28713E:  ADD             R0, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
287140:  LDR             R0, [R0]; CGenericGameStorage::ms_Slots ...
287142:  LDR             R0, [R0,#(dword_9FAA94 - 0x9FAA7C)]
287144:  CBZ             R0, loc_287152
287146:  LDR             R0, =(myCloudSaves_ptr - 0x28714E)
287148:  MOVS            R1, #0xC1
28714A:  ADD             R0, PC; myCloudSaves_ptr
28714C:  LDR             R0, [R0]; myCloudSaves
28714E:  BLX             j___aeabi_memclr8_1
287152:  LDR             R0, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x287158)
287154:  ADD             R0, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
287156:  LDR             R0, [R0]; CGenericGameStorage::ms_Slots ...
287158:  LDR             R0, [R0,#(dword_9FAA98 - 0x9FAA7C)]
28715A:  CBZ             R0, loc_28716A
28715C:  LDR             R0, =(myCloudSaves_ptr - 0x287164)
28715E:  MOVS            R1, #0xC1
287160:  ADD             R0, PC; myCloudSaves_ptr
287162:  LDR             R0, [R0]; myCloudSaves
287164:  ADDS            R0, #0xC1
287166:  BLX             j___aeabi_memclr8_1
28716A:  LDR             R0, =(isWatching_ptr - 0x287170)
28716C:  ADD             R0, PC; isWatching_ptr
28716E:  LDR             R0, [R0]; isWatching
287170:  LDRB            R0, [R0]
287172:  CBZ             R0, loc_287178
287174:  ADD             SP, SP, #8
287176:  POP             {R4,R6,R7,PC}
287178:  LDR             R0, =(cloudFilename_ptr - 0x287182)
28717A:  MOVS            R2, #1
28717C:  LDR             R1, =(isWatching_ptr - 0x287184)
28717E:  ADD             R0, PC; cloudFilename_ptr
287180:  ADD             R1, PC; isWatching_ptr
287182:  LDR             R4, [R0]; cloudFilename
287184:  LDR             R1, [R1]; isWatching
287186:  LDR             R0, [R4]; "SaveGame0.save" ...
287188:  STRB            R2, [R1]
28718A:  BLX             cloudModAddWatch
28718E:  LDR             R0, [R4,#(off_68570C - 0x685708)]; "SaveGame1.save" ...
287190:  BLX             cloudModAddWatch
287194:  ADD             SP, SP, #8
287196:  POP             {R4,R6,R7,PC}
