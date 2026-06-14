; =========================================================
; Game Engine Function: _ZN12CHIDJoystickC2EPKc
; Address            : 0x28CC78 - 0x28CCD6
; =========================================================

28CC78:  PUSH            {R4-R7,LR}
28CC7A:  ADD             R7, SP, #0xC
28CC7C:  PUSH.W          {R8,R9,R11}
28CC80:  MOV             R5, R1
28CC82:  MOV             R4, R0
28CC84:  BLX             j__ZN4CHIDC2Ev; CHID::CHID(void)
28CC88:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x28CC96)
28CC8A:  ADD.W           R6, R4, #0x10
28CC8E:  MOV.W           R9, #0
28CC92:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
28CC94:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
28CC96:  ADDS            R0, #8
28CC98:  STRD.W          R0, R9, [R4]
28CC9C:  MOV             R0, R6; this
28CC9E:  STRD.W          R9, R9, [R4,#8]
28CCA2:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
28CCA6:  LDR             R0, =(_ZN12CHIDJoystick22m_bInstanceEverCreatedE_ptr - 0x28CCB2)
28CCA8:  CMP             R5, #0
28CCAA:  MOV.W           R1, #1
28CCAE:  ADD             R0, PC; _ZN12CHIDJoystick22m_bInstanceEverCreatedE_ptr
28CCB0:  LDR             R0, [R0]; this
28CCB2:  STRB            R1, [R0]; CHIDJoystick::m_bInstanceEverCreated
28CCB4:  BEQ             loc_28CCCA
28CCB6:  BLX             j__ZN15CTouchInterface13LoadTextureDBEv; CTouchInterface::LoadTextureDB(void)
28CCBA:  MOV             R8, R0
28CCBC:  MOV             R0, R6; this
28CCBE:  MOV             R1, R5; char *
28CCC0:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
28CCC4:  MOV             R0, R8; this
28CCC6:  BLX             j__ZN15CTouchInterface15UnloadTextureDBEP22TextureDatabaseRuntime; CTouchInterface::UnloadTextureDB(TextureDatabaseRuntime *)
28CCCA:  STRB.W          R9, [R4,#0x14]
28CCCE:  MOV             R0, R4
28CCD0:  POP.W           {R8,R9,R11}
28CCD4:  POP             {R4-R7,PC}
