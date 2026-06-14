; =========================================================
; Game Engine Function: _Z19RpAtomicSetGeometryP8RpAtomicP10RpGeometryj
; Address            : 0x21426A - 0x2142C4
; =========================================================

21426A:  PUSH            {R4-R7,LR}
21426C:  ADD             R7, SP, #0xC
21426E:  PUSH.W          {R11}
214272:  MOV             R4, R0
214274:  MOV             R6, R2
214276:  LDR             R0, [R4,#0x18]
214278:  MOV             R5, R1
21427A:  CMP             R0, R5
21427C:  BEQ             loc_2142BC
21427E:  CBZ             R5, loc_214288
214280:  MOV             R0, R5
214282:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
214286:  LDR             R0, [R4,#0x18]
214288:  CMP             R0, #0
21428A:  IT NE
21428C:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
214290:  LSLS            R0, R6, #0x1F
214292:  STR             R5, [R4,#0x18]
214294:  BNE             loc_2142BC
214296:  CBZ             R5, loc_2142A8
214298:  LDR             R0, [R5,#0x60]
21429A:  ADDS            R0, #4
21429C:  VLD1.32         {D16-D17}, [R0]
2142A0:  ADD.W           R0, R4, #0x1C
2142A4:  VST1.32         {D16-D17}, [R0]
2142A8:  LDR             R5, [R4,#4]
2142AA:  CBZ             R5, loc_2142BC
2142AC:  MOV             R0, R4
2142AE:  BLX             j__Z16RpAtomicGetWorldPK8RpAtomic; RpAtomicGetWorld(RpAtomic const*)
2142B2:  CMP             R0, #0
2142B4:  ITT NE
2142B6:  MOVNE           R0, R5
2142B8:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
2142BC:  MOV             R0, R4
2142BE:  POP.W           {R11}
2142C2:  POP             {R4-R7,PC}
