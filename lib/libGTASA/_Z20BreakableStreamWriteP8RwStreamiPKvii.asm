; =========================================================
; Game Engine Function: _Z20BreakableStreamWriteP8RwStreamiPKvii
; Address            : 0x450E20 - 0x450EC0
; =========================================================

450E20:  PUSH            {R4-R7,LR}
450E22:  ADD             R7, SP, #0xC
450E24:  PUSH.W          {R11}
450E28:  MOV             R4, R0
450E2A:  LDR             R0, =(g_BreakablePlugin_ptr - 0x450E34)
450E2C:  MOV             R5, R2
450E2E:  MOVS            R2, #4; size_t
450E30:  ADD             R0, PC; g_BreakablePlugin_ptr
450E32:  LDR             R0, [R0]; g_BreakablePlugin
450E34:  LDR             R6, [R0]
450E36:  MOV             R0, R4; int
450E38:  ADDS            R1, R5, R6; void *
450E3A:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450E3E:  LDR             R5, [R5,R6]
450E40:  CBZ             R5, loc_450EB8
450E42:  MOV             R0, R4; int
450E44:  MOV             R1, R5; void *
450E46:  MOVS            R2, #0x34 ; '4'; size_t
450E48:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450E4C:  LDRH            R0, [R5,#4]
450E4E:  LDR             R1, [R5,#8]; void *
450E50:  ADD.W           R0, R0, R0,LSL#1
450E54:  LSLS            R2, R0, #2; size_t
450E56:  MOV             R0, R4; int
450E58:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450E5C:  LDRH            R0, [R5,#4]
450E5E:  LDR             R1, [R5,#0xC]; void *
450E60:  LSLS            R2, R0, #3; size_t
450E62:  MOV             R0, R4; int
450E64:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450E68:  LDRH            R0, [R5,#4]
450E6A:  LDR             R1, [R5,#0x10]; void *
450E6C:  LSLS            R2, R0, #2; size_t
450E6E:  MOV             R0, R4; int
450E70:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450E74:  LDRH            R0, [R5,#0x14]
450E76:  LDR             R1, [R5,#0x18]; void *
450E78:  ADD.W           R0, R0, R0,LSL#1
450E7C:  LSLS            R2, R0, #1; size_t
450E7E:  MOV             R0, R4; int
450E80:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450E84:  LDRH            R0, [R5,#0x14]
450E86:  LDR             R1, [R5,#0x1C]; void *
450E88:  LSLS            R2, R0, #1; size_t
450E8A:  MOV             R0, R4; int
450E8C:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450E90:  LDRH            R0, [R5,#0x20]
450E92:  LDR             R1, [R5,#0x28]; void *
450E94:  LSLS            R2, R0, #5; size_t
450E96:  MOV             R0, R4; int
450E98:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450E9C:  LDRH            R0, [R5,#0x20]
450E9E:  LDR             R1, [R5,#0x2C]; void *
450EA0:  LSLS            R2, R0, #5; size_t
450EA2:  MOV             R0, R4; int
450EA4:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450EA8:  LDRH            R0, [R5,#0x20]
450EAA:  LDR             R1, [R5,#0x30]; void *
450EAC:  ADD.W           R0, R0, R0,LSL#1
450EB0:  LSLS            R2, R0, #2; size_t
450EB2:  MOV             R0, R4; int
450EB4:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
450EB8:  MOV             R0, R4
450EBA:  POP.W           {R11}
450EBE:  POP             {R4-R7,PC}
