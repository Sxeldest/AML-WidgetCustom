; =========================================================
; Game Engine Function: _ZN8CVehicle29CustomCarPlate_TextureDestroyEv
; Address            : 0x581C2C - 0x581C48
; =========================================================

581C2C:  PUSH            {R4,R6,R7,LR}
581C2E:  ADD             R7, SP, #8
581C30:  MOV             R4, R0
581C32:  LDR.W           R0, [R4,#0x598]
581C36:  CMP             R0, #0
581C38:  IT EQ
581C3A:  POPEQ           {R4,R6,R7,PC}
581C3C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
581C40:  MOVS            R0, #0
581C42:  STR.W           R0, [R4,#0x598]
581C46:  POP             {R4,R6,R7,PC}
