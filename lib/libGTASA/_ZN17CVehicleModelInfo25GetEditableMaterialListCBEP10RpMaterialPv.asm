; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo25GetEditableMaterialListCBEP10RpMaterialPv
; Address            : 0x388B58 - 0x388B90
; =========================================================

388B58:  PUSH            {R4,R5,R7,LR}
388B5A:  ADD             R7, SP, #8
388B5C:  MOV             R4, R0
388B5E:  MOV             R5, R1
388B60:  LDR             R0, [R4]
388B62:  CBZ             R0, loc_388B78
388B64:  LDR             R1, =(RwEngineInstance_ptr - 0x388B6C)
388B66:  ADDS            R0, #0x10
388B68:  ADD             R1, PC; RwEngineInstance_ptr
388B6A:  LDR             R1, [R1]; RwEngineInstance
388B6C:  LDR             R1, [R1]
388B6E:  LDR.W           R2, [R1,#0x110]
388B72:  ADR             R1, aVehiclegrunge2; "vehiclegrunge256"
388B74:  BLX             R2
388B76:  CBZ             R0, loc_388B7C
388B78:  MOV             R0, R4
388B7A:  POP             {R4,R5,R7,PC}
388B7C:  LDR             R1, [R5,#0x14]
388B7E:  LDR             R0, [R5]
388B80:  ADDS            R2, R1, #1
388B82:  STR             R2, [R5,#0x14]
388B84:  ADD.W           R0, R0, R1,LSL#2
388B88:  STR.W           R4, [R0,#0x248]
388B8C:  MOV             R0, R4
388B8E:  POP             {R4,R5,R7,PC}
