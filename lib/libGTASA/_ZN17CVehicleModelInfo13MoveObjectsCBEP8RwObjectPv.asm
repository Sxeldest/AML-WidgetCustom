; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo13MoveObjectsCBEP8RwObjectPv
; Address            : 0x387EA8 - 0x387EB6
; =========================================================

387EA8:  PUSH            {R4,R6,R7,LR}
387EAA:  ADD             R7, SP, #8
387EAC:  MOV             R4, R0
387EAE:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
387EB2:  MOV             R0, R4
387EB4:  POP             {R4,R6,R7,PC}
