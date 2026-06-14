; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime15LoadFullTextureEj
; Address            : 0x1E91C8 - 0x1E93E4
; =========================================================

1E91C8:  PUSH            {R4-R7,LR}
1E91CA:  ADD             R7, SP, #0xC
1E91CC:  PUSH.W          {R8-R11}
1E91D0:  SUB             SP, SP, #0x12C
1E91D2:  MOV             R9, R0
1E91D4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1E91DC)
1E91D6:  MOV             R10, R1
1E91D8:  ADD             R0, PC; __stack_chk_guard_ptr
1E91DA:  LDR             R0, [R0]; __stack_chk_guard
1E91DC:  LDR             R0, [R0]
1E91DE:  STR             R0, [SP,#0x148+var_20]
1E91E0:  LDR.W           R0, [R9,#0x74]
1E91E4:  CMP             R0, #0
1E91E6:  BEQ             loc_1E9298
1E91E8:  LDR.W           R1, [R9,#0xB4]
1E91EC:  LDR.W           R0, [R9,#0xA8]; this
1E91F0:  LDR.W           R1, [R1,R10,LSL#2]; offset
1E91F4:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
1E91F8:  ADD             R4, SP, #0x148+ptr
1E91FA:  LDR.W           R0, [R9,#0xA8]; this
1E91FE:  MOVS            R2, #8; n
1E9200:  MOV             R1, R4; ptr
1E9202:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
1E9206:  MOV             R0, R4; this
1E9208:  BLX             j__ZNK14TextureListing12GetTotalSizeEv; TextureListing::GetTotalSize(void)
1E920C:  STR             R0, [SP,#0x148+var_114]
1E920E:  MOVS            R0, #1
1E9210:  STRB.W          R0, [SP,#0x148+var_110]
1E9214:  MOVS            R0, #0
1E9216:  STRD.W          R0, R0, [SP,#0x148+var_128]
1E921A:  ADD             R1, SP, #0x148+var_124; ptr
1E921C:  LDR.W           R0, [R9,#0xA8]; this
1E9220:  MOVS            R2, #4; n
1E9222:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
1E9226:  LDR.W           R0, [R9,#0xA8]; this
1E922A:  ADD             R1, SP, #0x148+var_128; ptr
1E922C:  MOVS            R2, #4; n
1E922E:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
1E9232:  LDR             R0, [SP,#0x148+var_128]
1E9234:  CMP             R0, #0
1E9236:  BEQ             loc_1E92C0
1E9238:  LDR             R0, [SP,#0x148+var_124]
1E923A:  SUBS            R4, R0, #4
1E923C:  MOV             R0, R4; byte_count
1E923E:  BLX             malloc
1E9242:  MOV             R11, R0
1E9244:  LDR.W           R0, [R9,#0xA8]; this
1E9248:  MOV             R1, R11; ptr
1E924A:  MOV             R2, R4; n
1E924C:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
1E9250:  ADD             R5, SP, #0x148+ptr
1E9252:  MOV             R0, R5; this
1E9254:  BLX             j__ZNK14TextureListing13GetRLESegSizeEv; TextureListing::GetRLESegSize(void)
1E9258:  LDR             R4, [SP,#0x148+var_114]
1E925A:  ADDS            R1, R0, R4
1E925C:  NEGS            R0, R0
1E925E:  SUBS            R1, #1
1E9260:  ANDS            R0, R1
1E9262:  ADDS            R0, #3
1E9264:  BIC.W           R6, R0, #3
1E9268:  MOV             R0, R6; byte_count
1E926A:  BLX             malloc
1E926E:  MOV             R8, R0
1E9270:  MOV             R1, R6
1E9272:  STR.W           R8, [SP,#0x148+var_118]
1E9276:  BLX             j___aeabi_memclr8_1
1E927A:  MOV             R0, R5; this
1E927C:  BLX             j__ZNK14TextureListing13GetRLESegSizeEv; TextureListing::GetRLESegSize(void)
1E9280:  MOV             R3, R0; size_t
1E9282:  LDR             R0, [SP,#0x148+var_128]
1E9284:  STR             R0, [SP,#0x148+var_148]; unsigned int
1E9286:  MOV             R0, R8; unsigned __int8 *
1E9288:  MOV             R1, R4; unsigned int
1E928A:  MOV             R2, R11; unsigned __int8 *
1E928C:  BLX             j__Z13RLEDecompressPhjPKhjj; RLEDecompress(uchar *,uint,uchar const*,uint,uint)
1E9290:  MOV             R0, R11; p
1E9292:  BLX             free
1E9296:  B               loc_1E92E4
1E9298:  MOVS            R6, #0x17
1E929A:  MOV             R5, R9
1E929C:  MUL.W           R0, R10, R6
1E92A0:  LDR.W           R1, [R5,#0x1C]!
1E92A4:  ADD             R4, SP, #0x148+ptr
1E92A6:  LDR             R2, [R1,R0]; char *
1E92A8:  MOV             R0, R9; this
1E92AA:  MOV             R1, R4; char *
1E92AC:  BLX             j__ZN15TextureDatabase14GetPNGFilenameEPcPKc; TextureDatabase::GetPNGFilename(char *,char const*)
1E92B0:  LDR             R0, [R5]
1E92B2:  MOV             R1, R4; char *
1E92B4:  MLA.W           R0, R10, R6, R0; this
1E92B8:  BLX             j__ZN20TextureDatabaseEntry7LoadPNGEPKc; TextureDatabaseEntry::LoadPNG(char const*)
1E92BC:  MOV             R9, R5
1E92BE:  B               loc_1E9340
1E92C0:  LDR             R5, [SP,#0x148+var_114]
1E92C2:  ADDS            R0, R5, #3
1E92C4:  BIC.W           R6, R0, #3
1E92C8:  MOV             R0, R6; byte_count
1E92CA:  BLX             malloc
1E92CE:  MOV             R4, R0
1E92D0:  MOV             R1, R6
1E92D2:  STR             R4, [SP,#0x148+var_118]
1E92D4:  BLX             j___aeabi_memclr8_1
1E92D8:  LDR.W           R0, [R9,#0xA8]; this
1E92DC:  MOV             R1, R4; ptr
1E92DE:  MOV             R2, R5; n
1E92E0:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
1E92E4:  LDRSH.W         R0, [SP,#0x148+var_11A]
1E92E8:  CMP.W           R0, #0xFFFFFFFF
1E92EC:  BGT             loc_1E932A
1E92EE:  LDR             R0, =(RQCaps_ptr - 0x1E92F4)
1E92F0:  ADD             R0, PC; RQCaps_ptr
1E92F2:  LDR             R0, [R0]; RQCaps
1E92F4:  LDRB            R0, [R0,#(byte_6B8BA4 - 0x6B8B9C)]
1E92F6:  CBZ             R0, loc_1E932A
1E92F8:  LDRH.W          R0, [SP,#0x148+var_11C]
1E92FC:  CMP             R0, #5
1E92FE:  BCC             loc_1E932A
1E9300:  MOV             R4, R9
1E9302:  MOVS            R0, #0x17
1E9304:  LDR.W           R1, [R4,#0x1C]!
1E9308:  MLA.W           R0, R10, R0, R1
1E930C:  LDR.W           R2, [R4,#-0xC]
1E9310:  LDRB            R1, [R0,#0xC]
1E9312:  ADD.W           R1, R1, R1,LSL#2
1E9316:  ADD.W           R1, R2, R1,LSL#2
1E931A:  LDR             R1, [R1,#4]
1E931C:  CMP             R1, #0xA
1E931E:  BEQ             loc_1E932A
1E9320:  LDRH            R0, [R0,#8]
1E9322:  AND.W           R0, R0, #0xF
1E9326:  CMP             R0, #7
1E9328:  BNE             loc_1E938C
1E932A:  MOVS            R0, #0x17
1E932C:  LDR.W           R1, [R9,#0x1C]!
1E9330:  MLA.W           R0, R10, R0, R1; this
1E9334:  ADD             R1, SP, #0x148+ptr; TextureListingContainer *
1E9336:  BLX             j__ZN20TextureDatabaseEntry12LoadInstanceERK23TextureListingContainer; TextureDatabaseEntry::LoadInstance(TextureListingContainer const&)
1E933A:  ADD             R0, SP, #0x148+ptr; this
1E933C:  BLX             j__ZN23TextureListingContainerD2Ev; TextureListingContainer::~TextureListingContainer()
1E9340:  MOVS            R0, #0x17
1E9342:  LDR.W           R1, [R9]
1E9346:  MLA.W           R1, R10, R0, R1
1E934A:  MOVS            R3, #3
1E934C:  LDRH            R2, [R1,#8]
1E934E:  BFI.W           R2, R3, #0xC, #0x14
1E9352:  STRH            R2, [R1,#8]
1E9354:  LDR.W           R1, [R9]
1E9358:  MLA.W           R0, R10, R0, R1
1E935C:  LDR             R1, =(RasterExtOffset_ptr - 0x1E9364)
1E935E:  LDR             R2, =(__stack_chk_guard_ptr - 0x1E9366)
1E9360:  ADD             R1, PC; RasterExtOffset_ptr
1E9362:  ADD             R2, PC; __stack_chk_guard_ptr
1E9364:  LDR             R1, [R1]; RasterExtOffset
1E9366:  LDR.W           R0, [R0,#0x13]
1E936A:  LDR             R2, [R2]; __stack_chk_guard
1E936C:  LDR             R1, [R1]
1E936E:  LDR             R0, [R0]
1E9370:  LDR             R1, [R0,R1]
1E9372:  LDRD.W          R0, R1, [R1,#4]
1E9376:  LDR             R3, [SP,#0x148+var_20]
1E9378:  LDR             R2, [R2]
1E937A:  SUBS            R2, R2, R3
1E937C:  ITTTT EQ
1E937E:  MULEQ           R0, R1
1E9380:  ADDEQ           SP, SP, #0x12C
1E9382:  POPEQ.W         {R8-R11}
1E9386:  POPEQ           {R4-R7,PC}
1E9388:  BLX             __stack_chk_fail
1E938C:  ADD             R0, SP, #0x148+ptr
1E938E:  ADD             R5, SP, #0x148+var_140
1E9390:  VLD1.64         {D16-D17}, [R0]
1E9394:  MOVS            R2, #0
1E9396:  MOV             R0, R5
1E9398:  VST1.64         {D16-D17}, [R0]!
1E939C:  LDRH.W          R1, [SP,#0x148+var_13C]
1E93A0:  LDRH.W          R3, [SP,#0x148+var_13A]
1E93A4:  STRB            R2, [R0]
1E93A6:  LSRS            R0, R1, #1
1E93A8:  STRH.W          R0, [SP,#0x148+var_13C]
1E93AC:  AND.W           R0, R3, #0x8000
1E93B0:  UBFX.W          R1, R3, #1, #0xE
1E93B4:  ORRS            R0, R1
1E93B6:  STRH.W          R0, [SP,#0x148+var_13A]
1E93BA:  MOV             R0, R5; this
1E93BC:  BLX             j__ZNK14TextureListing12GetTotalSizeEv; TextureListing::GetTotalSize(void)
1E93C0:  LDR             R2, [SP,#0x148+var_138]
1E93C2:  LDR             R1, [SP,#0x148+var_114]
1E93C4:  STR             R0, [SP,#0x148+var_134]
1E93C6:  ADD             R1, R2
1E93C8:  SUBS            R0, R1, R0
1E93CA:  STR             R0, [SP,#0x148+var_138]
1E93CC:  MOVS            R0, #0x17
1E93CE:  LDR             R1, [R4]
1E93D0:  MLA.W           R0, R10, R0, R1; this
1E93D4:  MOV             R1, R5; TextureListingContainer *
1E93D6:  BLX             j__ZN20TextureDatabaseEntry12LoadInstanceERK23TextureListingContainer; TextureDatabaseEntry::LoadInstance(TextureListingContainer const&)
1E93DA:  MOV             R0, R5; this
1E93DC:  BLX             j__ZN23TextureListingContainerD2Ev; TextureListingContainer::~TextureListingContainer()
1E93E0:  MOV             R9, R4
1E93E2:  B               loc_1E933A
