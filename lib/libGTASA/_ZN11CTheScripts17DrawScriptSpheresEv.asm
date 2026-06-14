; =========================================================
; Game Engine Function: _ZN11CTheScripts17DrawScriptSpheresEv
; Address            : 0x34A79C - 0x34A810
; =========================================================

34A79C:  PUSH            {R4-R7,LR}
34A79E:  ADD             R7, SP, #0xC
34A7A0:  PUSH.W          {R8-R11}; __int16
34A7A4:  SUB             SP, SP, #0x1C; float
34A7A6:  LDR             R0, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x34A7B8)
34A7A8:  MOV.W           R11, #0xE4
34A7AC:  LDR.W           R10, =(byte_81A9D0 - 0x34A7BA)
34A7B0:  MOV.W           R8, #0
34A7B4:  ADD             R0, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
34A7B6:  ADD             R10, PC; byte_81A9D0
34A7B8:  LDR             R5, [R0]; CTheScripts::ScriptSphereArray ...
34A7BA:  LDR             R0, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x34A7C0)
34A7BC:  ADD             R0, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
34A7BE:  LDR.W           R9, [R0]; CTheScripts::ScriptSphereArray ...
34A7C2:  LDRB.W          R0, [R5,R8]
34A7C6:  CBZ             R0, loc_34A7FE
34A7C8:  ADD.W           R6, R9, R8
34A7CC:  LDRB.W          R1, [R10]
34A7D0:  LDRB.W          R2, [R10,#(byte_81A9D1 - 0x81A9D0)]
34A7D4:  LDRB.W          R4, [R10,#(byte_81A9D2 - 0x81A9D0)]
34A7D8:  LDR             R0, [R6,#4]; this
34A7DA:  LDR             R3, [R6,#0x14]; CVector *
34A7DC:  STMEA.W         SP, {R1,R2,R4,R11}
34A7E0:  MOV.W           R1, #0x800
34A7E4:  ADD.W           R2, R6, #8; unsigned __int16
34A7E8:  STR             R1, [SP,#0x38+var_28]; unsigned __int8
34A7EA:  MOV             R1, #0x3DCCCCCD
34A7F2:  STR             R1, [SP,#0x38+var_24]; float
34A7F4:  MOVS            R1, #0
34A7F6:  STR             R1, [SP,#0x38+var_20]; float
34A7F8:  MOVS            R1, #1; unsigned int
34A7FA:  BLX             j__ZN10C3dMarkers14PlaceMarkerSetEjtR7CVectorfhhhhtfs; C3dMarkers::PlaceMarkerSet(uint,ushort,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short)
34A7FE:  ADD.W           R8, R8, #0x18
34A802:  CMP.W           R8, #0x180
34A806:  BNE             loc_34A7C2
34A808:  ADD             SP, SP, #0x1C
34A80A:  POP.W           {R8-R11}
34A80E:  POP             {R4-R7,PC}
