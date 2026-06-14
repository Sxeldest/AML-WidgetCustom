; =========================================================
; Game Engine Function: _Z14RsRwInitializePv
; Address            : 0x4D4428 - 0x4D44BA
; =========================================================

4D4428:  PUSH            {R4,R5,R7,LR}
4D442A:  ADD             R7, SP, #8
4D442C:  SUB             SP, SP, #8
4D442E:  MOV             R5, R0
4D4430:  BLX             j__Z20psGetMemoryFunctionsv; psGetMemoryFunctions(void)
4D4434:  MOVS            R1, #0
4D4436:  MOV.W           R2, #0x400000
4D443A:  MOVS            R4, #0
4D443C:  BLX             j__Z12RwEngineInitPK17RwMemoryFunctionsjj; RwEngineInit(RwMemoryFunctions const*,uint,uint)
4D4440:  CBZ             R0, loc_4D44B4
4D4442:  MOVS            R0, #3; int
4D4444:  MOVS            R1, #0; void *
4D4446:  MOVS            R4, #0
4D4448:  BLX             j__Z15AppEventHandler7RsEventPv; AppEventHandler(RsEvent,void *)
4D444C:  BLX             j__Z19psInstallFileSystemv; psInstallFileSystem(void)
4D4450:  MOVS            R0, #9; int
4D4452:  MOVS            R1, #0; void *
4D4454:  BLX             j__Z15AppEventHandler7RsEventPv; AppEventHandler(RsEvent,void *)
4D4458:  CBZ             R0, loc_4D44B4
4D445A:  MOVS            R0, #4; int
4D445C:  MOVS            R1, #0; void *
4D445E:  MOVS            R4, #0
4D4460:  BLX             j__Z15AppEventHandler7RsEventPv; AppEventHandler(RsEvent,void *)
4D4464:  CBZ             R0, loc_4D44B4
4D4466:  ADD             R0, SP, #0x10+var_C
4D4468:  STR             R5, [SP,#0x10+var_C]
4D446A:  BLX             j__Z12RwEngineOpenP18RwEngineOpenParams; RwEngineOpen(RwEngineOpenParams *)
4D446E:  CBZ             R0, loc_4D44AE
4D4470:  MOVS            R0, #0x17; int
4D4472:  MOV             R1, R5; void *
4D4474:  BLX             j__Z15AppEventHandler7RsEventPv; AppEventHandler(RsEvent,void *)
4D4478:  CMP             R0, #2
4D447A:  BNE             loc_4D4486
4D447C:  BLX             j__Z14psSelectDevicev; psSelectDevice(void)
4D4480:  CMP             R0, #0
4D4482:  IT NE
4D4484:  MOVNE           R0, #1
4D4486:  CBZ             R0, loc_4D44AA
4D4488:  BLX             j__Z13RwEngineStartv; RwEngineStart(void)
4D448C:  CBZ             R0, loc_4D44AA
4D448E:  MOVS            R0, #0xA; int
4D4490:  MOVS            R1, #0; void *
4D4492:  BLX             j__Z15AppEventHandler7RsEventPv; AppEventHandler(RsEvent,void *)
4D4496:  BLX             j__Z22psNativeTextureSupportv; psNativeTextureSupport(void)
4D449A:  MOVS            R0, #1; int
4D449C:  MOVS            R4, #1
4D449E:  BLX             j__Z22RwTextureSetMipmappingi; RwTextureSetMipmapping(int)
4D44A2:  MOVS            R0, #0; int
4D44A4:  BLX             j__Z26RwTextureSetAutoMipmappingi; RwTextureSetAutoMipmapping(int)
4D44A8:  B               loc_4D44B4
4D44AA:  BLX             j__Z13RwEngineClosev; RwEngineClose(void)
4D44AE:  BLX             j__Z12RwEngineTermv; RwEngineTerm(void)
4D44B2:  MOVS            R4, #0
4D44B4:  MOV             R0, R4
4D44B6:  ADD             SP, SP, #8
4D44B8:  POP             {R4,R5,R7,PC}
