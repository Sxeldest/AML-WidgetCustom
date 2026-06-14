; =========================================================
; Game Engine Function: _ZN10CGameLogic25SortOutStreamingAndMemoryERK7CVectorf
; Address            : 0x307CB0 - 0x307D06
; =========================================================

307CB0:  PUSH            {R4,R5,R7,LR}
307CB2:  ADD             R7, SP, #8
307CB4:  MOV             R5, R1
307CB6:  MOV             R4, R0
307CB8:  BLX             j__ZN6CTimer4StopEv; CTimer::Stop(void)
307CBC:  LDM.W           R4, {R0-R2}
307CC0:  BLX             j__ZN10CTimeCycle19FindFarClipForCoorsE7CVector; CTimeCycle::FindFarClipForCoors(CVector)
307CC4:  MOV             R1, R0
307CC6:  LDR             R0, =(TheCamera_ptr - 0x307CCC)
307CC8:  ADD             R0, PC; TheCamera_ptr
307CCA:  LDR             R0, [R0]; TheCamera
307CCC:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
307CD0:  BLX             j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
307CD4:  BLX             j__ZN10CStreaming16FlushRequestListEv; CStreaming::FlushRequestList(void)
307CD8:  MOV             R0, R4; this
307CDA:  BLX             j__ZN10CStreaming25DeleteRwObjectsAfterDeathERK7CVector; CStreaming::DeleteRwObjectsAfterDeath(CVector const&)
307CDE:  BLX             j__ZN10CStreaming30RemoveUnusedModelsInLoadedListEv; CStreaming::RemoveUnusedModelsInLoadedList(void)
307CE2:  MOVS            R0, #(stderr+1); this
307CE4:  BLX             j__ZN5CGame19DrasticTidyUpMemoryEb; CGame::DrasticTidyUpMemory(bool)
307CE8:  MOV             R0, R4; this
307CEA:  BLX             j__ZN10CStreaming18LoadSceneCollisionERK7CVector; CStreaming::LoadSceneCollision(CVector const&)
307CEE:  MOV             R0, R4; this
307CF0:  MOV             R1, R5; CVector *
307CF2:  MOVS            R2, #0x20 ; ' '; float
307CF4:  BLX             j__ZN9CRenderer25RequestObjectsInDirectionERK7CVectorfi; CRenderer::RequestObjectsInDirection(CVector const&,float,int)
307CF8:  MOV             R0, R4; this
307CFA:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
307CFE:  POP.W           {R4,R5,R7,LR}
307D02:  B.W             j_j__ZN6CTimer6UpdateEv; j_CTimer::Update(void)
