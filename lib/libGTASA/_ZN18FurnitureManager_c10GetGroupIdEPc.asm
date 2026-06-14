; =========================================================
; Game Engine Function: _ZN18FurnitureManager_c10GetGroupIdEPc
; Address            : 0x47568C - 0x4756EE
; =========================================================

47568C:  PUSH            {R4,R6,R7,LR}
47568E:  ADD             R7, SP, #8
475690:  MOV             R4, R1
475692:  ADR             R1, aItShop; "IT_SHOP"
475694:  MOV             R0, R4; char *
475696:  BLX             strcmp
47569A:  CBZ             R0, loc_4756DA
47569C:  ADR             R1, aItOffice; "IT_OFFICE"
47569E:  MOV             R0, R4; char *
4756A0:  BLX             strcmp
4756A4:  CBZ             R0, loc_4756DE
4756A6:  ADR             R1, aItLounge; "IT_LOUNGE"
4756A8:  MOV             R0, R4; char *
4756AA:  BLX             strcmp
4756AE:  CBZ             R0, loc_4756E2
4756B0:  ADR             R1, aItBedroom; "IT_BEDROOM"
4756B2:  MOV             R0, R4; char *
4756B4:  BLX             strcmp
4756B8:  CBZ             R0, loc_4756E6
4756BA:  ADR             R1, aItKitchen; "IT_KITCHEN"
4756BC:  MOV             R0, R4; char *
4756BE:  BLX             strcmp
4756C2:  CBZ             R0, loc_4756EA
4756C4:  ADR             R1, aItMisc; "IT_MISC"
4756C6:  MOV             R0, R4; char *
4756C8:  BLX             strcmp
4756CC:  MOV             R1, R0
4756CE:  MOV.W           R0, #0xFFFFFFFF
4756D2:  CMP             R1, #0
4756D4:  IT EQ
4756D6:  MOVEQ           R0, #8
4756D8:  POP             {R4,R6,R7,PC}
4756DA:  MOVS            R0, #0
4756DC:  POP             {R4,R6,R7,PC}
4756DE:  MOVS            R0, #1
4756E0:  POP             {R4,R6,R7,PC}
4756E2:  MOVS            R0, #2
4756E4:  POP             {R4,R6,R7,PC}
4756E6:  MOVS            R0, #3
4756E8:  POP             {R4,R6,R7,PC}
4756EA:  MOVS            R0, #4
4756EC:  POP             {R4,R6,R7,PC}
