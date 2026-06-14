; =========================================================
; Game Engine Function: sub_217014
; Address            : 0x217014 - 0x217046
; =========================================================

217014:  PUSH            {R4,R6,R7,LR}
217016:  ADD             R7, SP, #8
217018:  MOV             R4, R0
21701A:  LDR             R0, =(dword_683B90 - 0x217022)
21701C:  MOV             R1, R4
21701E:  ADD             R0, PC; dword_683B90
217020:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
217024:  MOV             R0, R4; void *
217026:  BLX             j__Z29_rwObjectHasFrameReleaseFramePv; _rwObjectHasFrameReleaseFrame(void *)
21702A:  LDR             R0, =(RwEngineInstance_ptr - 0x217032)
21702C:  LDR             R1, =(dword_6BD5C8 - 0x217034)
21702E:  ADD             R0, PC; RwEngineInstance_ptr
217030:  ADD             R1, PC; dword_6BD5C8
217032:  LDR             R0, [R0]; RwEngineInstance
217034:  LDR             R1, [R1]
217036:  LDR             R2, [R0]
217038:  LDR             R0, [R2,R1]
21703A:  MOV             R1, R4
21703C:  LDR.W           R2, [R2,#0x140]
217040:  POP.W           {R4,R6,R7,LR}
217044:  BX              R2
