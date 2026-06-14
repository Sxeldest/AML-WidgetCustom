; =========================================================
; Game Engine Function: _ZN10FxPrimBP_cD2Ev
; Address            : 0x36DB44 - 0x36DB8C
; =========================================================

36DB44:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxPrimBP_c::~FxPrimBP_c()'
36DB46:  ADD             R7, SP, #8
36DB48:  MOV             R4, R0
36DB4A:  LDR             R0, =(_ZTV10FxPrimBP_c_ptr - 0x36DB50)
36DB4C:  ADD             R0, PC; _ZTV10FxPrimBP_c_ptr
36DB4E:  LDR             R1, [R0]; `vtable for'FxPrimBP_c ...
36DB50:  LDR             R0, [R4,#0xC]
36DB52:  ADDS            R1, #8
36DB54:  STR             R1, [R4]
36DB56:  CBZ             R0, loc_36DB60
36DB58:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
36DB5C:  MOVS            R0, #0
36DB5E:  STR             R0, [R4,#0xC]
36DB60:  LDR             R0, [R4,#0x10]
36DB62:  CBZ             R0, loc_36DB6C
36DB64:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
36DB68:  MOVS            R0, #0
36DB6A:  STR             R0, [R4,#0x10]
36DB6C:  LDR             R0, [R4,#0x14]
36DB6E:  CBZ             R0, loc_36DB78
36DB70:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
36DB74:  MOVS            R0, #0
36DB76:  STR             R0, [R4,#0x14]
36DB78:  ADD.W           R0, R4, #0x2C ; ','; this
36DB7C:  BLX             j__ZN15FxInfoManager_cD2Ev; FxInfoManager_c::~FxInfoManager_c()
36DB80:  ADD.W           R0, R4, #0x20 ; ' '; this
36DB84:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
36DB88:  MOV             R0, R4
36DB8A:  POP             {R4,R6,R7,PC}
