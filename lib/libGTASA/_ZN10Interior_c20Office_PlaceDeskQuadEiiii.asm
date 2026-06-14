; =========================================================
; Game Engine Function: _ZN10Interior_c20Office_PlaceDeskQuadEiiii
; Address            : 0x44D92C - 0x44D9F4
; =========================================================

44D92C:  PUSH            {R4-R7,LR}
44D92E:  ADD             R7, SP, #0xC
44D930:  PUSH.W          {R8-R11}
44D934:  SUB             SP, SP, #0xC; int
44D936:  MOV             R6, R3
44D938:  LDR.W           R11, [R7,#arg_0]
44D93C:  SUB.W           R8, R6, #2
44D940:  MOV             R9, R2
44D942:  MOV.W           R10, #0
44D946:  MOV             R1, R9; int
44D948:  MOV             R2, R8; int
44D94A:  MOVS            R3, #2; int
44D94C:  MOV             R4, R0
44D94E:  STRD.W          R10, R11, [SP,#0x28+var_24]; unsigned __int8
44D952:  BLX             j__ZN10Interior_c16Office_PlaceDeskEiiiihi; Interior_c::Office_PlaceDesk(int,int,int,int,uchar,int)
44D956:  MOV             R0, R4; this
44D958:  MOV             R1, R9; int
44D95A:  MOV             R2, R6; int
44D95C:  MOVS            R3, #0; int
44D95E:  STRD.W          R10, R11, [SP,#0x28+var_24]; unsigned __int8
44D962:  BLX             j__ZN10Interior_c16Office_PlaceDeskEiiiihi; Interior_c::Office_PlaceDesk(int,int,int,int,uchar,int)
44D966:  SUB.W           R5, R9, #2
44D96A:  MOV             R0, R4; this
44D96C:  MOV             R2, R6; int
44D96E:  MOVS            R3, #0; int
44D970:  MOV             R1, R5; int
44D972:  STRD.W          R10, R11, [SP,#0x28+var_24]; unsigned __int8
44D976:  BLX             j__ZN10Interior_c16Office_PlaceDeskEiiiihi; Interior_c::Office_PlaceDesk(int,int,int,int,uchar,int)
44D97A:  MOV             R0, R4; this
44D97C:  MOV             R1, R5; int
44D97E:  MOV             R2, R8; int
44D980:  MOVS            R3, #2; int
44D982:  STRD.W          R10, R11, [SP,#0x28+var_24]; int
44D986:  BLX             j__ZN10Interior_c16Office_PlaceDeskEiiiihi; Interior_c::Office_PlaceDesk(int,int,int,int,uchar,int)
44D98A:  SUB.W           R5, R9, #3
44D98E:  MOV.W           R11, #3
44D992:  MOVS            R0, #1
44D994:  SUBS            R2, R6, #3; int
44D996:  STRD.W          R0, R11, [SP,#0x28+var_28]; int
44D99A:  MOV             R0, R4; this
44D99C:  MOV             R1, R5; int
44D99E:  MOVS            R3, #6; int
44D9A0:  STR.W           R10, [SP,#0x28+var_20]; unsigned __int8
44D9A4:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44D9A8:  MOVS            R0, #1
44D9AA:  ADDS            R2, R6, #2; int
44D9AC:  STRD.W          R0, R11, [SP,#0x28+var_28]; int
44D9B0:  MOV             R0, R4; this
44D9B2:  MOV             R1, R5; int
44D9B4:  MOVS            R3, #6; int
44D9B6:  STR.W           R10, [SP,#0x28+var_20]; unsigned __int8
44D9BA:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44D9BE:  MOVS            R6, #4
44D9C0:  MOV             R0, R4; this
44D9C2:  MOV             R1, R5; int
44D9C4:  MOV             R2, R8; int
44D9C6:  MOVS            R3, #1; int
44D9C8:  STRD.W          R6, R11, [SP,#0x28+var_28]; int
44D9CC:  STR.W           R10, [SP,#0x28+var_20]; unsigned __int8
44D9D0:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44D9D4:  ADD.W           R1, R9, #2; int
44D9D8:  MOV             R0, R4; this
44D9DA:  MOV             R2, R8; int
44D9DC:  MOVS            R3, #1; int
44D9DE:  STRD.W          R6, R11, [SP,#0x28+var_28]; int
44D9E2:  STR.W           R10, [SP,#0x28+var_20]; unsigned __int8
44D9E6:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44D9EA:  MOVS            R0, #6
44D9EC:  ADD             SP, SP, #0xC
44D9EE:  POP.W           {R8-R11}
44D9F2:  POP             {R4-R7,PC}
