; =========================================================
; Game Engine Function: _Z21RpGeometryCreateSpacef
; Address            : 0x215A78 - 0x215ABE
; =========================================================

215A78:  PUSH            {R4-R7,LR}
215A7A:  ADD             R7, SP, #0xC
215A7C:  PUSH.W          {R11}
215A80:  MOV             R5, R0
215A82:  MOVS            R0, #0; int
215A84:  MOVS            R1, #0; int
215A86:  MOVS            R2, #0; unsigned int
215A88:  MOVS            R6, #0
215A8A:  BLX             j__Z16RpGeometryCreateiij; RpGeometryCreate(int,int,uint)
215A8E:  MOV             R4, R0
215A90:  CMP             R4, #0
215A92:  ITTTT NE
215A94:  VMOVNE          S0, R5
215A98:  LDRNE           R0, [R4,#0x60]
215A9A:  STRDNE.W        R6, R6, [R0,#4]
215A9E:  STRNE           R6, [R0,#0xC]
215AA0:  IT NE
215AA2:  VSTRNE          S0, [R0,#0x10]
215AA6:  MOV             R0, R4
215AA8:  BLX             j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
215AAC:  CBNZ            R0, loc_215AB6
215AAE:  MOV             R0, R4
215AB0:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
215AB4:  MOVS            R4, #0
215AB6:  MOV             R0, R4
215AB8:  POP.W           {R11}
215ABC:  POP             {R4-R7,PC}
