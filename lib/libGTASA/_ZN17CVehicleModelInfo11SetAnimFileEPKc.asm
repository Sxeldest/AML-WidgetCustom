; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo11SetAnimFileEPKc
; Address            : 0x386E90 - 0x386EC6
; =========================================================

386E90:  PUSH            {R4,R5,R7,LR}
386E92:  ADD             R7, SP, #8
386E94:  MOV             R4, R1
386E96:  ADR             R1, aNull_1; "null"
386E98:  MOV             R5, R0
386E9A:  MOV             R0, R4; char *
386E9C:  BLX             strcasecmp
386EA0:  CBZ             R0, loc_386EBC
386EA2:  MOV             R0, R4; char *
386EA4:  BLX             strlen
386EA8:  ADDS            R0, #1; unsigned int
386EAA:  BLX             _Znaj; operator new[](uint)
386EAE:  STR.W           R0, [R5,#0x3A4]
386EB2:  MOV             R1, R4; char *
386EB4:  POP.W           {R4,R5,R7,LR}
386EB8:  B.W             j_strcpy
386EBC:  MOV.W           R0, #0xFFFFFFFF
386EC0:  STR.W           R0, [R5,#0x3A4]
386EC4:  POP             {R4,R5,R7,PC}
