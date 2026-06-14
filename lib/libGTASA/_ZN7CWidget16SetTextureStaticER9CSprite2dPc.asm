; =========================================================
; Game Engine Function: _ZN7CWidget16SetTextureStaticER9CSprite2dPc
; Address            : 0x2B3F78 - 0x2B3FA0
; =========================================================

2B3F78:  PUSH            {R4-R7,LR}
2B3F7A:  ADD             R7, SP, #0xC
2B3F7C:  PUSH.W          {R11}
2B3F80:  MOV             R4, R1
2B3F82:  MOV             R5, R0
2B3F84:  BLX             j__ZN15CTouchInterface13LoadTextureDBEv; CTouchInterface::LoadTextureDB(void)
2B3F88:  MOV             R6, R0
2B3F8A:  MOV             R0, R5; this
2B3F8C:  MOV             R1, R4; char *
2B3F8E:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2B3F92:  MOV             R0, R6
2B3F94:  POP.W           {R11}
2B3F98:  POP.W           {R4-R7,LR}
2B3F9C:  B.W             j_j__ZN15CTouchInterface15UnloadTextureDBEP22TextureDatabaseRuntime; j_CTouchInterface::UnloadTextureDB(TextureDatabaseRuntime *)
