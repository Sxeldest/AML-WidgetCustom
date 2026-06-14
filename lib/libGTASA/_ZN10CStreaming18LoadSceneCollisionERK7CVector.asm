; =========================================================
; Game Engine Function: _ZN10CStreaming18LoadSceneCollisionERK7CVector
; Address            : 0x2D5068 - 0x2D508C
; =========================================================

2D5068:  PUSH            {R4,R6,R7,LR}
2D506A:  ADD             R7, SP, #8
2D506C:  MOV             R4, R0
2D506E:  MOVS            R3, #1
2D5070:  LDM.W           R4, {R0-R2}
2D5074:  BLX             j__ZN9CColStore13LoadCollisionE7CVectorb; CColStore::LoadCollision(CVector,bool)
2D5078:  LDM.W           R4, {R0-R2}
2D507C:  MOVS            R3, #1
2D507E:  BLX             j__ZN9CIplStore8LoadIplsE7CVectorb; CIplStore::LoadIpls(CVector,bool)
2D5082:  MOVS            R0, #0; this
2D5084:  POP.W           {R4,R6,R7,LR}
2D5088:  B.W             _ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
