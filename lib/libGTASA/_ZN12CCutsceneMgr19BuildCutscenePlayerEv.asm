; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr19BuildCutscenePlayerEv
; Address            : 0x38FE70 - 0x38FE9C
; =========================================================

38FE70:  PUSH            {R4,R6,R7,LR}
38FE72:  ADD             R7, SP, #8
38FE74:  MOV.W           R0, #0xFFFFFFFF; int
38FE78:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
38FE7C:  MOV             R4, R0
38FE7E:  BLX             j__ZN8CClothes21RebuildPlayerIfNeededEP10CPlayerPed; CClothes::RebuildPlayerIfNeeded(CPlayerPed *)
38FE82:  MOVS            R0, #(stderr+1); this
38FE84:  MOVS            R1, #0x1C; int
38FE86:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
38FE8A:  MOVS            R0, #(stderr+1); this
38FE8C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
38FE90:  MOV             R0, R4; this
38FE92:  MOVS            R1, #(stderr+1); CPlayerPed *
38FE94:  POP.W           {R4,R6,R7,LR}
38FE98:  B.W             sub_191844
