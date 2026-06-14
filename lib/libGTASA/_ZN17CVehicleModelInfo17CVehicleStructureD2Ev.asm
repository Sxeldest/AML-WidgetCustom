; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo17CVehicleStructureD2Ev
; Address            : 0x386D06 - 0x386D4C
; =========================================================

386D06:  PUSH            {R4-R7,LR}
386D08:  ADD             R7, SP, #0xC
386D0A:  PUSH.W          {R8}
386D0E:  MOV             R8, R0
386D10:  LDRSB.W         R0, [R8,#0x324]
386D14:  CMP             R0, #1
386D16:  BLT             loc_386D44
386D18:  MOVS            R6, #0
386D1A:  ADD.W           R4, R8, R6,LSL#2
386D1E:  LDR.W           R0, [R4,#0x2F4]
386D22:  LDR             R5, [R0,#4]
386D24:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
386D28:  LDR.W           R0, [R4,#0x30C]
386D2C:  CMP             R0, #0
386D2E:  IT NE
386D30:  BLXNE           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
386D34:  MOV             R0, R5
386D36:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
386D3A:  LDRSB.W         R0, [R8,#0x324]
386D3E:  ADDS            R6, #1
386D40:  CMP             R6, R0
386D42:  BLT             loc_386D1A
386D44:  MOV             R0, R8
386D46:  POP.W           {R8}
386D4A:  POP             {R4-R7,PC}
