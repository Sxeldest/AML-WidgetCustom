; =========================================================
; Game Engine Function: sub_212BE0
; Address            : 0x212BE0 - 0x212CCE
; =========================================================

212BE0:  PUSH            {R4-R7,LR}
212BE2:  ADD             R7, SP, #0xC
212BE4:  PUSH.W          {R8-R10}
212BE8:  SUB             SP, SP, #0x20
212BEA:  MOV             R8, R3
212BEC:  MOV             R9, R2
212BEE:  MOV             R10, R1
212BF0:  MOV             R1, R9
212BF2:  MOV             R2, R8
212BF4:  MOV             R4, R0
212BF6:  BL              sub_212798
212BFA:  MOVW            R6, #:lower16:(stru_35FF8.st_size+3)
212BFE:  MOV             R2, R0
212C00:  MOVT            R6, #:upper16:(stru_35FF8.st_size+3)
212C04:  MOVW            R5, #0xFFFF
212C08:  MOV             R0, R10
212C0A:  MOVS            R1, #0xA
212C0C:  MOV             R3, R6
212C0E:  STR             R5, [SP,#0x38+var_38]
212C10:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
212C14:  CMP             R0, #0
212C16:  BEQ             loc_212CB0
212C18:  MOV             R0, R10
212C1A:  MOVS            R1, #1
212C1C:  MOVS            R2, #0x18
212C1E:  MOV             R3, R6
212C20:  STR             R5, [SP,#0x38+var_38]
212C22:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
212C26:  CMP             R0, #0
212C28:  BEQ             loc_212CB0
212C2A:  LDM.W           R4, {R0-R3,R6}
212C2E:  LDR             R5, [R4,#0x14]
212C30:  STRD.W          R0, R1, [SP,#0x38+var_30]
212C34:  MOVS            R1, #4; unsigned int
212C36:  LDR             R0, [R2]
212C38:  LSRS            R0, R0, #0x1F
212C3A:  STR             R0, [SP,#0x38+var_28]
212C3C:  LDR             R0, [R3]
212C3E:  LSRS            R0, R0, #0x1F
212C40:  STRD.W          R0, R6, [SP,#0x38+var_24]
212C44:  ADD             R6, SP, #0x38+var_30
212C46:  ADDS            R0, R6, #4; void *
212C48:  STR             R5, [SP,#0x38+var_1C]
212C4A:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
212C4E:  ADD.W           R0, R6, #0x10; void *
212C52:  MOVS            R1, #4; unsigned int
212C54:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
212C58:  ADD.W           R0, R6, #0x14; void *
212C5C:  MOVS            R1, #4; unsigned int
212C5E:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
212C62:  MOV             R0, R6; void *
212C64:  MOVS            R1, #0x18; unsigned int
212C66:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
212C6A:  MOV             R0, R10; int
212C6C:  MOV             R1, R6; void *
212C6E:  MOVS            R2, #0x18; size_t
212C70:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
212C74:  CBZ             R0, loc_212CB0
212C76:  LDR             R0, [R4,#8]
212C78:  LDR             R1, [R0]
212C7A:  CMP.W           R1, #0xFFFFFFFF
212C7E:  BLE             loc_212CA2
212C80:  MOV             R1, R10
212C82:  MOV             R2, R9
212C84:  MOV             R3, R8
212C86:  BL              sub_212BE0
212C8A:  CBZ             R0, loc_212CB0
212C8C:  LDR             R0, [R4,#0xC]
212C8E:  LDR             R1, [R0]
212C90:  CMP.W           R1, #0xFFFFFFFF
212C94:  BLE             loc_212CBC
212C96:  MOV             R1, R10
212C98:  MOV             R2, R9
212C9A:  MOV             R3, R8
212C9C:  BL              sub_212BE0
212CA0:  B               loc_212CC6
212CA2:  MOV             R1, R10
212CA4:  MOV             R2, R9
212CA6:  MOV             R3, R8
212CA8:  BL              sub_2129F8
212CAC:  CMP             R0, #0
212CAE:  BNE             loc_212C8C
212CB0:  MOVS            R4, #0
212CB2:  MOV             R0, R4
212CB4:  ADD             SP, SP, #0x20 ; ' '
212CB6:  POP.W           {R8-R10}
212CBA:  POP             {R4-R7,PC}
212CBC:  MOV             R1, R10
212CBE:  MOV             R2, R9
212CC0:  MOV             R3, R8
212CC2:  BL              sub_2129F8
212CC6:  CMP             R0, #0
212CC8:  IT EQ
212CCA:  MOVEQ           R4, #0
212CCC:  B               loc_212CB2
