; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer21InitialiseDirtTextureEv
; Address            : 0x2CA000 - 0x2CA0F6
; =========================================================

2CA000:  PUSH            {R4-R7,LR}
2CA002:  ADD             R7, SP, #0xC
2CA004:  PUSH.W          {R8-R11}
2CA008:  SUB             SP, SP, #0xC
2CA00A:  ADR             R0, aVehicle; "vehicle"
2CA00C:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
2CA010:  MOV             R4, R0
2CA012:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
2CA016:  MOV             R0, R4; this
2CA018:  MOVS            R1, #0; int
2CA01A:  MOVS            R5, #0
2CA01C:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
2CA020:  LDR             R0, =(aVehiclegrunge2_0 - 0x2CA028); "vehiclegrunge256"
2CA022:  MOVS            R1, #0; char *
2CA024:  ADD             R0, PC; "vehiclegrunge256"
2CA026:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
2CA02A:  LDR             R2, [R0]
2CA02C:  MOVS            R1, #2
2CA02E:  STR             R0, [SP,#0x28+var_24]
2CA030:  STRB.W          R1, [R0,#0x50]
2CA034:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2CA03E)
2CA036:  LDRD.W          R9, R8, [R2,#0xC]
2CA03A:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2CA03C:  MOV.W           R11, R9,LSL#2
2CA040:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2CA042:  STR             R0, [SP,#0x28+var_28]
2CA044:  LDR             R0, [SP,#0x28+var_24]
2CA046:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
2CA04A:  LDR             R1, =(aVehiclegrunge2_0 - 0x2CA052); "vehiclegrunge256"
2CA04C:  LDR             R4, [SP,#0x28+var_28]
2CA04E:  ADD             R1, PC; "vehiclegrunge256"
2CA050:  STR.W           R0, [R4,R5,LSL#2]
2CA054:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
2CA058:  LDR.W           R0, [R4,R5,LSL#2]
2CA05C:  MOVS            R1, #0
2CA05E:  MOVS            R2, #3
2CA060:  LDR             R0, [R0]
2CA062:  STR             R0, [SP,#0x28+var_20]
2CA064:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
2CA068:  CMP.W           R8, #1
2CA06C:  BLT             loc_2CA0DC
2CA06E:  RSB.W           R1, R5, #0x10
2CA072:  ADD.W           R12, R0, #1
2CA076:  MOV.W           LR, #0
2CA07A:  RSB.W           R1, R1, R1,LSL#8
2CA07E:  LSRS            R1, R1, #4
2CA080:  CMP.W           R9, #1
2CA084:  MOV             R3, R12
2CA086:  MOV             R4, R9
2CA088:  BLT             loc_2CA0D2
2CA08A:  LDRB.W          R6, [R3,#-1]
2CA08E:  SUBS            R4, #1
2CA090:  LDRB            R0, [R3]
2CA092:  LDRB            R2, [R3,#1]
2CA094:  MUL.W           R6, R5, R6
2CA098:  MUL.W           R0, R5, R0
2CA09C:  MUL.W           R2, R5, R2
2CA0A0:  MOV.W           R10, R6,ASR#31
2CA0A4:  ADD.W           R6, R6, R10,LSR#28
2CA0A8:  ADD.W           R6, R1, R6,LSR#4
2CA0AC:  STRB.W          R6, [R3,#-1]
2CA0B0:  MOV.W           R6, R0,ASR#31
2CA0B4:  ADD.W           R0, R0, R6,LSR#28
2CA0B8:  ADD.W           R0, R1, R0,LSR#4
2CA0BC:  STRB            R0, [R3]
2CA0BE:  MOV.W           R0, R2,ASR#31
2CA0C2:  ADD.W           R0, R2, R0,LSR#28
2CA0C6:  ADD.W           R0, R1, R0,LSR#4
2CA0CA:  STRB            R0, [R3,#1]
2CA0CC:  ADD.W           R3, R3, #4
2CA0D0:  BNE             loc_2CA08A
2CA0D2:  ADD.W           LR, LR, #1
2CA0D6:  ADD             R12, R11
2CA0D8:  CMP             LR, R8
2CA0DA:  BNE             loc_2CA080
2CA0DC:  LDR             R0, [SP,#0x28+var_20]
2CA0DE:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
2CA0E2:  ADDS            R5, #1
2CA0E4:  CMP             R5, #0x10
2CA0E6:  BNE             loc_2CA044
2CA0E8:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
2CA0EC:  MOVS            R0, #1
2CA0EE:  ADD             SP, SP, #0xC
2CA0F0:  POP.W           {R8-R11}
2CA0F4:  POP             {R4-R7,PC}
