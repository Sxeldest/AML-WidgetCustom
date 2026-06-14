; =========================================================
; Game Engine Function: _ZN11CPopulation16PlaceGangMembersE8ePedTypeiRK7CVector
; Address            : 0x4CED3C - 0x4CED56
; =========================================================

4CED3C:  PUSH            {R7,LR}
4CED3E:  MOV             R7, SP
4CED40:  SUB             SP, SP, #8
4CED42:  MOV             R3, R2
4CED44:  MOV             R2, R1
4CED46:  MOV             R1, R0
4CED48:  MOVS            R0, #5
4CED4A:  STR             R0, [SP,#0x10+var_10]
4CED4C:  ADD             R0, SP, #0x10+var_C
4CED4E:  BLX             j__ZNK15CPedGroupPlacer10PlaceGroupE8ePedTypeiRK7CVectori; CPedGroupPlacer::PlaceGroup(ePedType,int,CVector const&,int)
4CED52:  ADD             SP, SP, #8
4CED54:  POP             {R7,PC}
