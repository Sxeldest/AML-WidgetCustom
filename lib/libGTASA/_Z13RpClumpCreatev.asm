; =========================================================
; Game Engine Function: _Z13RpClumpCreatev
; Address            : 0x214174 - 0x2141DC
; =========================================================

214174:  PUSH            {R4,R6,R7,LR}
214176:  ADD             R7, SP, #8
214178:  LDR             R0, =(RwEngineInstance_ptr - 0x214180)
21417A:  LDR             R1, =(dword_6BD598 - 0x214182)
21417C:  ADD             R0, PC; RwEngineInstance_ptr
21417E:  ADD             R1, PC; dword_6BD598
214180:  LDR             R0, [R0]; RwEngineInstance
214182:  LDR             R1, [R1]
214184:  LDR             R0, [R0]
214186:  LDR.W           R2, [R0,#0x13C]
21418A:  ADD             R0, R1
21418C:  LDR             R0, [R0,#4]
21418E:  BLX             R2
214190:  MOV             R4, R0
214192:  CBZ             R4, loc_2141D8
214194:  LDR             R0, =(dword_683B60 - 0x2141B6)
214196:  MOV.W           LR, #0
21419A:  MOVS            R3, #2
21419C:  STRB.W          LR, [R4,#7]
2141A0:  STRH.W          LR, [R4,#5]
2141A4:  ADD.W           R1, R4, #0x10
2141A8:  STRB            R3, [R4]
2141AA:  ADD.W           R3, R4, #8
2141AE:  LDR.W           R12, =(nullsub_11+1 - 0x2141CA)
2141B2:  ADD             R0, PC; dword_683B60
2141B4:  ADD.W           R2, R4, #0x18
2141B8:  STRD.W          R3, R3, [R4,#8]
2141BC:  STRD.W          R1, R1, [R4,#0x10]
2141C0:  MOV             R1, R4
2141C2:  STRD.W          R2, R2, [R4,#0x18]
2141C6:  ADD             R12, PC; nullsub_11
2141C8:  STRD.W          LR, LR, [R4,#0x20]
2141CC:  STR.W           LR, [R4,#1]
2141D0:  STR.W           R12, [R4,#0x28]
2141D4:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
2141D8:  MOV             R0, R4
2141DA:  POP             {R4,R6,R7,PC}
