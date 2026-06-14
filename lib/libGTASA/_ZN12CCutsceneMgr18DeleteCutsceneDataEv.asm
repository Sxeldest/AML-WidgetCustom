; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr18DeleteCutsceneDataEv
; Address            : 0x38FE9C - 0x38FEBC
; =========================================================

38FE9C:  PUSH            {R7,LR}
38FE9E:  MOV             R7, SP
38FEA0:  BLX             j__ZN12CCutsceneMgr26DeleteCutsceneData_overlayEv; CCutsceneMgr::DeleteCutsceneData_overlay(void)
38FEA4:  MOVS            R0, #(stderr+1); this
38FEA6:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
38FEAA:  LDR             R0, =(byte_942E54 - 0x38FEB0)
38FEAC:  ADD             R0, PC; byte_942E54
38FEAE:  LDRB            R0, [R0]; this
38FEB0:  CMP             R0, #1
38FEB2:  IT NE
38FEB4:  POPNE           {R7,PC}
38FEB6:  POP.W           {R7,LR}
38FEBA:  B               _ZN12CCutsceneMgr43LoadEverythingBecauseCutsceneDeletedAllOfItEv; CCutsceneMgr::LoadEverythingBecauseCutsceneDeletedAllOfIt(void)
