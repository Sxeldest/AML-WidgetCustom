; =========================================================
; Game Engine Function: _Z15AppEventHandler7RsEventPv
; Address            : 0x3F6EE0 - 0x3F6F9C
; =========================================================

3F6EE0:  PUSH            {R4,R5,R7,LR}
3F6EE2:  ADD             R7, SP, #8
3F6EE4:  MOV             R4, R1
3F6EE6:  MOV             R1, R0
3F6EE8:  CMP             R1, #0x1A
3F6EEA:  BNE             loc_3F6F02
3F6EEC:  LDR             R5, =(byte_9599B8 - 0x3F6EF2)
3F6EEE:  ADD             R5, PC; byte_9599B8
3F6EF0:  LDRB            R0, [R5]
3F6EF2:  EOR.W           R1, R0, #1; bool
3F6EF6:  MOV             R0, R4; void *
3F6EF8:  BLX             j__Z4IdlePvb; Idle(void *,bool)
3F6EFC:  MOVS            R0, #1
3F6EFE:  STRB            R0, [R5]
3F6F00:  POP             {R4,R5,R7,PC}
3F6F02:  LDR             R0, =(byte_9599B8 - 0x3F6F0C)
3F6F04:  MOVS            R2, #0
3F6F06:  CMP             R1, #0x1B; switch 28 cases
3F6F08:  ADD             R0, PC; byte_9599B8
3F6F0A:  STRB            R2, [R0]
3F6F0C:  MOV.W           R0, #(stderr+2); this
3F6F10:  BHI             def_3F6F12; jumptable 003F6F12 default case, cases 1-8,10-20,23,26
3F6F12:  TBB.W           [PC,R1]; switch jump
3F6F16:  DCB 0xE; jump table for switch statement
3F6F17:  DCB 0x3A
3F6F18:  DCB 0x3A
3F6F19:  DCB 0x3A
3F6F1A:  DCB 0x3A
3F6F1B:  DCB 0x3A
3F6F1C:  DCB 0x3A
3F6F1D:  DCB 0x3A
3F6F1E:  DCB 0x3A
3F6F1F:  DCB 0x28
3F6F20:  DCB 0x3A
3F6F21:  DCB 0x3A
3F6F22:  DCB 0x3A
3F6F23:  DCB 0x3A
3F6F24:  DCB 0x3A
3F6F25:  DCB 0x3A
3F6F26:  DCB 0x3A
3F6F27:  DCB 0x3A
3F6F28:  DCB 0x3A
3F6F29:  DCB 0x3A
3F6F2A:  DCB 0x3A
3F6F2B:  DCB 0x2B
3F6F2C:  DCB 0x2F
3F6F2D:  DCB 0x3A
3F6F2E:  DCB 0x3B
3F6F2F:  DCB 0x34
3F6F30:  DCB 0x3A
3F6F31:  DCB 0x37
3F6F32:  LDR             R0, =(_ZN5CDraw7ms_fFOVE_ptr - 0x3F6F3C); jumptable 003F6F12 case 0
3F6F34:  VLDR            S0, =0.0087266
3F6F38:  ADD             R0, PC; _ZN5CDraw7ms_fFOVE_ptr
3F6F3A:  LDR             R0, [R0]; CDraw::ms_fFOV ...
3F6F3C:  VLDR            S2, [R0]
3F6F40:  VMUL.F32        S0, S2, S0
3F6F44:  VMOV            R0, S0; x
3F6F48:  BLX             tanf
3F6F4C:  MOV             R2, R0
3F6F4E:  LDR             R0, =(Scene_ptr - 0x3F6F5A)
3F6F50:  MOVW            R3, #0xAAAB
3F6F54:  MOV             R1, R4
3F6F56:  ADD             R0, PC; Scene_ptr
3F6F58:  MOVT            R3, #0x3FAA
3F6F5C:  LDR             R0, [R0]; Scene
3F6F5E:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3F6F60:  BLX             j__Z10CameraSizeP8RwCameraP6RwRectff; CameraSize(RwCamera *,RwRect *,float,float)
3F6F64:  B               loc_3F6F88
3F6F66:  BLX             j__Z12PluginAttachv; jumptable 003F6F12 case 9
3F6F6A:  B               loc_3F6F94
3F6F6C:  MOV             R0, R4; jumptable 003F6F12 case 21
3F6F6E:  BLX             j__Z12Initialise3DPv; Initialise3D(void *)
3F6F72:  B               loc_3F6F94
3F6F74:  BLX             j__ZN5CGame18ShutdownRenderWareEv; jumptable 003F6F12 case 22
3F6F78:  BLX             j__Z13RsRwTerminatev; RsRwTerminate(void)
3F6F7C:  B               loc_3F6F88
3F6F7E:  BLX             j__ZN5CGame13FinalShutdownEv; jumptable 003F6F12 case 25
3F6F82:  B               loc_3F6F88
3F6F84:  BLX             j__Z12FrontendIdlev; jumptable 003F6F12 case 27
3F6F88:  MOVS            R0, #1
3F6F8A:  POP             {R4,R5,R7,PC}; jumptable 003F6F12 default case, cases 1-8,10-20,23,26
3F6F8C:  BLX             j__ZN5CGame22InitialiseOnceBeforeRWEv; jumptable 003F6F12 case 24
3F6F90:  BLX             j__Z12RsInitializev; RsInitialize(void)
3F6F94:  CMP             R0, #0
3F6F96:  IT NE
3F6F98:  MOVNE           R0, #1
3F6F9A:  POP             {R4,R5,R7,PC}
