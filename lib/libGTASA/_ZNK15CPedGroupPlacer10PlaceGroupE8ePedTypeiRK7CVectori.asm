; =========================================================
; Game Engine Function: _ZNK15CPedGroupPlacer10PlaceGroupE8ePedTypeiRK7CVectori
; Address            : 0x4B7BEC - 0x4B7C28
; =========================================================

4B7BEC:  PUSH            {R7,LR}
4B7BEE:  MOV             R7, SP
4B7BF0:  SUB             SP, SP, #8
4B7BF2:  LDR.W           R12, [R7,#8]
4B7BF6:  CMP.W           R12, #2
4B7BFA:  BCC             loc_4B7C0C
4B7BFC:  SUB.W           R0, R12, #2
4B7C00:  CMP             R0, #2
4B7C02:  BCS             loc_4B7C14
4B7C04:  BLX             j__ZNK15CPedGroupPlacer14PlaceChatGroupE8ePedTypeiRK7CVectori; CPedGroupPlacer::PlaceChatGroup(ePedType,int,CVector const&,int)
4B7C08:  ADD             SP, SP, #8
4B7C0A:  POP             {R7,PC}
4B7C0C:  BLX             j__ZNK15CPedGroupPlacer19PlaceFormationGroupE8ePedTypeiRK7CVectori; CPedGroupPlacer::PlaceFormationGroup(ePedType,int,CVector const&,int)
4B7C10:  ADD             SP, SP, #8
4B7C12:  POP             {R7,PC}
4B7C14:  CMP.W           R12, #5
4B7C18:  ITTT NE
4B7C1A:  MOVNE           R0, #0
4B7C1C:  ADDNE           SP, SP, #8
4B7C1E:  POPNE           {R7,PC}
4B7C20:  BLX             j__ZNK15CPedGroupPlacer16PlaceRandomGroupE8ePedTypeiRK7CVectori; CPedGroupPlacer::PlaceRandomGroup(ePedType,int,CVector const&,int)
4B7C24:  ADD             SP, SP, #8
4B7C26:  POP             {R7,PC}
