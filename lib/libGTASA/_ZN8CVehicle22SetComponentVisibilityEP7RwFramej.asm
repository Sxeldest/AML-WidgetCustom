; =========================================================
; Game Engine Function: _ZN8CVehicle22SetComponentVisibilityEP7RwFramej
; Address            : 0x588728 - 0x588766
; =========================================================

588728:  PUSH            {R4,R5,R7,LR}
58872A:  ADD             R7, SP, #8
58872C:  MOV             R5, R1
58872E:  MOV             R4, R2
588730:  CMP             R5, #0
588732:  IT EQ
588734:  POPEQ           {R4,R5,R7,PC}
588736:  CMP             R4, #2
588738:  MOV             R2, R4
58873A:  ITTT EQ
58873C:  LDREQ.W         R1, [R0,#0x42C]
588740:  ORREQ.W         R1, R1, #0x10000
588744:  STREQ.W         R1, [R0,#0x42C]
588748:  LDR             R0, =(_Z28SetVehicleAtomicVisibilityCBP8RwObjectPv_ptr - 0x58874E)
58874A:  ADD             R0, PC; _Z28SetVehicleAtomicVisibilityCBP8RwObjectPv_ptr
58874C:  LDR             R1, [R0]; SetVehicleAtomicVisibilityCB(RwObject *,void *)
58874E:  MOV             R0, R5
588750:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
588754:  LDR             R0, =(_Z28SetVehicleAtomicVisibilityCBP7RwFramePv_ptr - 0x58875C)
588756:  MOV             R2, R4
588758:  ADD             R0, PC; _Z28SetVehicleAtomicVisibilityCBP7RwFramePv_ptr
58875A:  LDR             R1, [R0]; SetVehicleAtomicVisibilityCB(RwFrame *,void *)
58875C:  MOV             R0, R5
58875E:  POP.W           {R4,R5,R7,LR}
588762:  B.W             sub_19707C
