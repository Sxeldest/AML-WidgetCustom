; =========================================================
; Game Engine Function: _ZN22CTaskComplexUseGoggles17CreateNextSubTaskEP4CPed
; Address            : 0x4F1248 - 0x4F1284
; =========================================================

4F1248:  PUSH            {R4,R6,R7,LR}
4F124A:  ADD             R7, SP, #8
4F124C:  LDR             R0, [R0,#8]
4F124E:  MOV             R4, R1
4F1250:  LDR             R1, [R0]
4F1252:  LDR             R1, [R1,#0x14]
4F1254:  BLX             R1
4F1256:  MOVW            R1, #0x646
4F125A:  CMP             R0, R1
4F125C:  BEQ             loc_4F127A
4F125E:  MOVW            R1, #0x645
4F1262:  CMP             R0, R1
4F1264:  BNE             loc_4F1280
4F1266:  MOV             R0, R4; this
4F1268:  BLX             j__ZN4CPed12PutOnGogglesEv; CPed::PutOnGoggles(void)
4F126C:  ADD.W           R0, R4, #0x398; this
4F1270:  MOVS            R1, #0x91; int
4F1272:  BLX             j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
4F1276:  MOVS            R0, #0
4F1278:  POP             {R4,R6,R7,PC}
4F127A:  MOV             R0, R4; this
4F127C:  BLX             j__ZN4CPed14TakeOffGogglesEv; CPed::TakeOffGoggles(void)
4F1280:  MOVS            R0, #0
4F1282:  POP             {R4,R6,R7,PC}
