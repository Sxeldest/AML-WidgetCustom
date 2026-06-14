; =========================================================
; Game Engine Function: _Z15RemoveObjectsCBP7RwFramePv
; Address            : 0x58D170 - 0x58D198
; =========================================================

58D170:  PUSH            {R4,R5,R7,LR}
58D172:  ADD             R7, SP, #8
58D174:  MOV             R5, R0
58D176:  LDR             R0, =(_Z15RemoveObjectsCBP8RwObjectPv_ptr - 0x58D17E)
58D178:  MOV             R4, R1
58D17A:  ADD             R0, PC; _Z15RemoveObjectsCBP8RwObjectPv_ptr
58D17C:  MOV             R2, R4
58D17E:  LDR             R1, [R0]; RemoveObjectsCB(RwObject *,void *)
58D180:  MOV             R0, R5
58D182:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58D186:  LDR             R0, =(_Z15RemoveObjectsCBP7RwFramePv_ptr - 0x58D18E)
58D188:  MOV             R2, R4
58D18A:  ADD             R0, PC; _Z15RemoveObjectsCBP7RwFramePv_ptr
58D18C:  LDR             R1, [R0]; RemoveObjectsCB(RwFrame *,void *)
58D18E:  MOV             R0, R5
58D190:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58D194:  MOV             R0, R5
58D196:  POP             {R4,R5,R7,PC}
