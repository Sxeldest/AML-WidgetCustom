; =========================================================
; Game Engine Function: _ZN16CAEStaticChannel12SetAudioDataEPvjtsst
; Address            : 0x3A9140 - 0x3A92F6
; =========================================================

3A9140:  PUSH            {R4-R7,LR}
3A9142:  ADD             R7, SP, #0xC
3A9144:  PUSH.W          {R8-R11}
3A9148:  SUB             SP, SP, #4
3A914A:  MOV             R5, R2
3A914C:  CMP             R5, #0
3A914E:  ITT NE
3A9150:  LDRNE.W         R8, [R7,#arg_8]
3A9154:  CMPNE.W         R8, #0
3A9158:  MOV             R9, R3
3A915A:  MOV             R10, R1
3A915C:  MOV             R4, R0
3A915E:  MOV.W           R6, #0
3A9162:  BEQ.W           loc_3A92EC
3A9166:  LDRD.W          R11, R6, [R7,#arg_0]
3A916A:  LDR             R0, [R4,#4]; this
3A916C:  CBZ             R0, loc_3A917E
3A916E:  LDR             R1, =(g_numSoundChannelsUsed_ptr - 0x3A9174)
3A9170:  ADD             R1, PC; g_numSoundChannelsUsed_ptr
3A9172:  LDR             R1, [R1]; g_numSoundChannelsUsed
3A9174:  LDR             R2, [R1]
3A9176:  SUBS            R2, #1
3A9178:  STR             R2, [R1]
3A917A:  BLX             j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
3A917E:  MOVS            R0, #0
3A9180:  STR             R0, [R4,#4]
3A9182:  STRB.W          R0, [R4,#0x28]
3A9186:  STRB.W          R0, [R4,#0x2B]
3A918A:  STRB            R0, [R4,#0x1C]
3A918C:  STRD.W          R0, R0, [R4,#0x30]
3A9190:  STR             R0, [R4,#0x38]
3A9192:  ADDS            R0, R6, #1
3A9194:  MOV             R0, R5
3A9196:  STR.W           R10, [R4,#0x50]
3A919A:  STR             R5, [R4,#0x10]
3A919C:  STRH.W          R9, [R4,#0x54]
3A91A0:  STRH.W          R11, [R4,#0x58]
3A91A4:  BEQ             loc_3A91D4
3A91A6:  MOVS            R0, #1
3A91A8:  LSLS            R1, R6, #1
3A91AA:  STRB.W          R0, [R4,#0x28]
3A91AE:  CMP             R6, #0
3A91B0:  MOV             R0, R5
3A91B2:  STRD.W          R1, R5, [R4,#0x30]
3A91B6:  BEQ             loc_3A91D4
3A91B8:  SUBS            R6, R5, R1
3A91BA:  MOVW            R0, #0x5DC0
3A91BE:  CMP             R5, R0
3A91C0:  IT HI
3A91C2:  MOVHI           R0, R5
3A91C4:  MOV             R1, R6
3A91C6:  BLX             __aeabi_uidiv
3A91CA:  ADDS            R1, R0, #1
3A91CC:  STR             R6, [R4,#0x48]
3A91CE:  STR             R1, [R4,#0x38]
3A91D0:  MUL.W           R0, R1, R6
3A91D4:  STR             R0, [R4,#8]
3A91D6:  MOVS            R0, #0x30 ; '0'; unsigned int
3A91D8:  STRD.W          R8, R8, [R4,#0x20]
3A91DC:  BLX             _Znwj; operator new(uint)
3A91E0:  BLX             j__ZN9OALSourceC2Ev; OALSource::OALSource(void)
3A91E4:  LDR             R6, [R4,#8]
3A91E6:  STR             R0, [R4,#4]
3A91E8:  MOV             R0, R6; byte_count
3A91EA:  BLX             malloc
3A91EE:  MOV             R1, R6
3A91F0:  MOV             R9, R0
3A91F2:  BLX             j___aeabi_memclr8_1
3A91F6:  LDR             R0, =(g_numSoundChannelsUsed_ptr - 0x3A91FC)
3A91F8:  ADD             R0, PC; g_numSoundChannelsUsed_ptr
3A91FA:  LDR             R0, [R0]; g_numSoundChannelsUsed
3A91FC:  LDR             R1, [R0]
3A91FE:  ADDS            R1, #1
3A9200:  STR             R1, [R0]
3A9202:  LDR             R2, [R4,#0x30]; size_t
3A9204:  CMP             R2, #0
3A9206:  BEQ             loc_3A928C
3A9208:  SUB.W           R10, R6, R2
3A920C:  LDR             R1, [R4,#0x50]; void *
3A920E:  ADD.W           R0, R10, R9; void *
3A9212:  BLX             memcpy_1
3A9216:  LDR             R6, [R4,#0x30]
3A9218:  LDR             R5, [R4,#0x48]
3A921A:  LDR.W           R11, [R4,#8]
3A921E:  MOV             R0, R6
3A9220:  LDR.W           R8, [R4,#0x38]
3A9224:  MOV             R1, R5
3A9226:  BLX             __aeabi_uidiv
3A922A:  ADDS            R0, #1
3A922C:  STRH.W          R0, [R4,#0x4C]
3A9230:  UXTH            R1, R0
3A9232:  CMP             R8, R1
3A9234:  MLS.W           R2, R5, R1, R11
3A9238:  STR             R2, [R4,#0x44]
3A923A:  BEQ             loc_3A927A
3A923C:  LDR             R0, [R4,#0x50]
3A923E:  MOV             R2, R5; size_t
3A9240:  ADDS            R1, R6, R0; void *
3A9242:  MOV             R0, R9; void *
3A9244:  BLX             memcpy_1
3A9248:  LDRH.W          R0, [R4,#0x4C]
3A924C:  LDR             R1, [R4,#0x38]
3A924E:  SUBS            R0, R1, R0
3A9250:  CMP             R0, #2
3A9252:  BCC             loc_3A9278
3A9254:  MOVS            R0, #1
3A9256:  MOVS            R5, #1
3A9258:  LDR             R2, [R4,#0x48]; size_t
3A925A:  LDR             R1, [R4,#0x30]
3A925C:  LDR             R3, [R4,#0x50]
3A925E:  MLA.W           R0, R2, R0, R9; void *
3A9262:  ADD             R1, R3; void *
3A9264:  BLX             memcpy_1
3A9268:  LDRH.W          R0, [R4,#0x4C]
3A926C:  ADDS            R5, #1
3A926E:  LDR             R1, [R4,#0x38]
3A9270:  SUBS            R1, R1, R0
3A9272:  UXTH            R0, R5
3A9274:  CMP             R1, R0
3A9276:  BHI             loc_3A9258
3A9278:  LDR             R6, [R4,#0x30]
3A927A:  MOV             R0, R4; this
3A927C:  MOV             R1, R6; CAEAudioUtility *
3A927E:  LDR.W           R8, [R7,#arg_8]
3A9282:  BLX             j__ZN15CAEAudioChannel20ConvertFromBytesToMSEj; CAEAudioChannel::ConvertFromBytesToMS(uint)
3A9286:  MOVS            R1, #1
3A9288:  STR             R0, [R4,#0x40]
3A928A:  B               loc_3A92AC
3A928C:  LDR             R1, [R4,#0x50]; void *
3A928E:  MOV             R0, R9; void *
3A9290:  MOV             R2, R5; size_t
3A9292:  BLX             memcpy_1
3A9296:  LDR             R1, [R4,#0x10]
3A9298:  CMP             R1, R5
3A929A:  BLS             loc_3A92A6
3A929C:  ADD.W           R0, R9, R5
3A92A0:  SUBS            R1, R1, R5
3A92A2:  BLX             j___aeabi_memclr8_1
3A92A6:  MOV.W           R10, #0
3A92AA:  MOVS            R1, #0
3A92AC:  LDRD.W          R0, R2, [R4,#4]; unsigned int
3A92B0:  MOVS            R6, #1
3A92B2:  STRB.W          R1, [R4,#0x2B]
3A92B6:  MOV             R1, R9; void *
3A92B8:  MOV             R3, R8; unsigned int
3A92BA:  STR             R6, [SP,#0x20+var_20]; unsigned int
3A92BC:  BLX             j__ZN9OALSource7SetDataEPvjjj; OALSource::SetData(void *,uint,uint,uint)
3A92C0:  LDR             R5, [R4,#4]
3A92C2:  MOV             R0, R5; this
3A92C4:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A92C8:  LDR             R0, [R5,#8]
3A92CA:  MOVW            R1, #0x1026
3A92CE:  MOV             R2, R10
3A92D0:  BLX             j_alSourcei
3A92D4:  MOV             R0, R9; p
3A92D6:  STR.W           R10, [R5,#0x20]
3A92DA:  BLX             free
3A92DE:  LDR             R0, [R4,#4]; this
3A92E0:  MOVS            R1, #0xC2C80000; float
3A92E6:  STR             R1, [R4,#0x18]
3A92E8:  BLX             j__ZN9OALSource9SetVolumeEf; OALSource::SetVolume(float)
3A92EC:  MOV             R0, R6
3A92EE:  ADD             SP, SP, #4
3A92F0:  POP.W           {R8-R11}
3A92F4:  POP             {R4-R7,PC}
